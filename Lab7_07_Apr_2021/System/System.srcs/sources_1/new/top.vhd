----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2021 11:00:49 PM
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.math_real.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
          generic ( WIDTH: integer:= 8; -- for every 8 bit signal/input/output
                  top_g_WIDTH: integer:=8; --for width of fifo
                  top_g_DEPTH: integer:=4; -- for depth of fifo
                  top_g_CLKS_PER_BIT : integer:= 869 -- for UART
                  );Port (
                
                top_clk          : in std_logic;
                top_rst          : in std_logic;-- reset for barrel shifter clock
                top_SS_rst       : in std_logic;-- reset for seven segment
                top_ALU_rst      : in std_logic;-- reset for ALU
                top_fifo_rst     : in std_logic;-- reset for FIFOs
                top_switch       : in std_logic_vector(1 downto 0); -- switches for ALU (+,-,*)
                top_lod          : in std_logic;--loads onto ALU
                top_fifo_A_rd    : in std_logic;-- reads input from uart onto fifo A
                top_fifo_B_rd    : in std_logic;-- reads input from uart onto fifo B
                top_control_A    : in std_logic_vector(2 downto 0);-- will control number of bits rotating
                top_control_B    : in std_logic_vector(2 downto 0);-- will control number of bits rotating
                top_rotate       : in std_logic; -- will determine the direction of rotation 
                top_rx_serial    : in std_logic; -- input from UART
                top_fifo_empty_A : out std_logic; -- empty for FIFO A
                top_fifo_empty_B : out std_logic; -- empty for FIFO B
                top_fifo_full_A  : out std_logic;  -- full for FIFO A
                top_fifo_full_B  : out std_logic;  -- full for FIFO A
                top_En           : out std_logic_vector(7 downto 0);
                top_SS           : out std_logic_vector(6 downto 0);
                top_DP           : out std_logic
                );
          
end top;

architecture Behavioral of top is

component ALU 
            generic(width : integer:=8);
          Port (
                ALU_clk     : in std_logic;
                ALU_rst     : in std_logic; 
                ALU_input1  : in std_logic_vector(width-1 downto 0);
                ALU_input2  : in std_logic_vector(width-1 downto 0);
                ALU_switch  : in std_logic_vector(1 downto 0);
                ALU_output  : out std_logic_vector(2*width-1 downto 0)
                );
end component;

component Seven_Seg
        Port (
           clk          : in std_logic;
           rst          : in std_logic;
           SSD_input_A0  : in STD_LOGIC_VECTOR(3 downto 0); -- seven seg for input
           SSD_input_A1  : in STD_LOGIC_VECTOR(3 downto 0); -- seven seg for input
           SSD_input_B0 : in STD_LOGIC_VECTOR(3 downto 0); -- seven seg for output of rotation
           SSD_input_B1 : in STD_LOGIC_VECTOR(3 downto 0); -- seven seg for output of rotation
           SSD_output_ALU_0  : in STD_LOGIC_VECTOR(3 downto 0); -- seven seg for control of rotation
           SSD_output_ALU_1  : in STD_LOGIC_VECTOR(3 downto 0); -- seven seg for control of rotation
           SSD_output_ALU_2  : in STD_LOGIC_VECTOR(3 downto 0); -- seven seg for control of rotation
           SSD_output_ALU_3  : in STD_LOGIC_VECTOR(3 downto 0); -- seven seg for control of rotation
           EN_out       : out std_logic_vector(7 downto 0);
           DP           : out std_logic;
           SSD_out    : out STD_LOGIC_VECTOR(6 downto 0)
         );
end component;

component barrel_shifter is
        generic(width: integer:=8
                );
          Port (
                bs_clk      :  in std_logic;
                bs_rst      :  in std_logic;
                bs_input    :  in std_logic_vector(width-1 downto 0); -- barrel shifter input 
                bs_control  :  in std_logic_vector(integer(LOG2(real(width)))-1 downto 0); -- controls number of bits being rotated
                bs_rotation :  in std_logic; -- will rotate the input left or right
                bs_output   :  out std_logic_vector(width-1 downto 0) -- barrel shifter output
 
               );
end component;


component UART_RX is
  generic (
    g_CLKS_PER_BIT : integer := 869;     -- Needs to be set correctly
    width : integer:= 8;
    depth : integer:=4
    );
  port (
    i_Clk       : in  std_logic;
    FIFO_RST    : in std_logic;
    i_RX_Serial : in  std_logic;
    FIFO_A_read : in std_logic;
    FIFO_B_read : in std_logic;
    FIFO_A_EMPTY : out std_logic;
    FIFO_B_EMPTY : out std_logic;
    FIFO_A_FULL : out std_logic;
    FIFO_B_FULL : out std_logic;
    DATAOUT_FIFO_A: out std_logic_vector(7 downto 0);
    DATAOUT_FIFO_B: out std_logic_vector(7 downto 0)
    );
end component;
 

signal ALU_input1: std_logic_vector(WIDTH-1 downto 0);
signal ALU_input2: std_logic_vector(WIDTH-1 downto 0);
signal ALU_out_buf: std_logic_vector(2*width-1 downto 0);

signal BS_input1: std_logic_vector(WIDTH-1 downto 0);
signal BS_input2: std_logic_vector(WIDTH-1 downto 0);

signal BIT_16_out_buf: std_logic_vector(2*width-1 downto 0);

signal top_output_BS1 : std_logic_vector(2*width-1 downto 0);
signal top_output_BS2 : std_logic_vector(2*width-1 downto 0);

signal delay_sig      : std_logic;

signal input_B : std_logic_vector(WIDTH-1 downto 0);
signal full_A : std_logic;

signal uart_out : std_logic_vector(WIDTH-1 downto 0);

signal ascii_hex1: std_logic_vector(width-1 downto 0);
signal ascii_hex2: std_logic_vector(width-1 downto 0);

begin

DELAY: process(top_clk, top_rst)
       variable v_count: std_logic_vector(24 downto 0);
       begin
        if(rising_edge(top_clk))then
            if(top_rst ='1')then
            v_count := (others => '0');
            else 
            v_count := v_count + 1;
            end if;    
        end if;
        delay_sig <= v_count(24);
        end process;
                
BRL_SHFT1: barrel_shifter
            port map(
                    bs_clk      => delay_sig,
                    bs_rst      => top_lod,
                    bs_input    => ascii_hex1,
                    bs_control  => top_control_A,
                    bs_rotation => top_rotate,
                    bs_output   => ALU_input1
                    );
                    
BRL_SHFT2: barrel_shifter
            port map(
                    bs_clk      => delay_sig,
                    bs_rst      => top_lod,
                    bs_input    => ascii_hex2,
                    bs_control  => top_control_B,
                    bs_rotation => top_rotate,
                    bs_output   => ALU_input2
                    );



BCD_ALU:  ALU 
    generic map( width => width)
    port map( 
                ALU_clk    => top_clk,
                ALU_rst    => top_ALU_rst,
                ALU_input1 => ALU_input1,
                ALU_input2 => ALU_input2,
                ALU_switch => top_switch(1 downto 0),
                ALU_output => ALU_out_buf
                );

GEN_CONV1: process(BS_input1)
          begin
          case BS_input1 is
          when x"30" => ascii_hex1 <= x"00";
          when x"31" => ascii_hex1 <= x"01";
          when x"32" => ascii_hex1 <= x"02";
          when x"33" => ascii_hex1 <= x"03";
          when x"34" => ascii_hex1 <= x"04";
          when x"35" => ascii_hex1 <= x"05";
          when x"36" => ascii_hex1 <= x"06";        
          when x"37" => ascii_hex1 <= x"07";
          when x"38" => ascii_hex1 <= x"08";
          when x"39" => ascii_hex1 <= x"09";
          when others => ascii_hex1 <= (others => 'U');
          end case; 
          end process;

GEN_CONV2: process(BS_input2)
          begin
          case BS_input2 is
          when x"30" => ascii_hex2 <= x"00";
          when x"31" => ascii_hex2 <= x"01";
          when x"32" => ascii_hex2 <= x"02";
          when x"33" => ascii_hex2 <= x"03";
          when x"34" => ascii_hex2 <= x"04";
          when x"35" => ascii_hex2 <= x"05";
          when x"36" => ascii_hex2 <= x"06";        
          when x"37" => ascii_hex2 <= x"07";
          when x"38" => ascii_hex2 <= x"08";
          when x"39" => ascii_hex2 <= x"09";
          when others => ascii_hex2 <= (others => 'U');
          end case; 
          end process;          

SS: Seven_Seg 
    port map(
            clk      => top_clk,
            rst      => top_SS_rst,
            SSD_input_A0  => ALU_input1(3 downto 0),
            SSD_input_A1  => ALU_input1(7 downto 4),
            SSD_input_B0  => ALU_input2(3 downto 0),
            SSD_input_B1  => ALU_input2(7 downto 4),
            SSD_output_ALU_0  => ALU_out_buf(3 downto 0),
            SSD_output_ALU_1  => ALU_out_buf(7 downto 4),
            SSD_output_ALU_2  => ALU_out_buf(11 downto 8),
            SSD_output_ALU_3  => ALU_out_buf(15 downto 12),
            EN_out   => top_En,
            DP       => top_DP,
            SSD_out => top_SS
            );


GEN_UART_RX: UART_RX 
generic map(g_CLKS_PER_BIT => top_g_CLKS_PER_BIT, width => top_g_WIDTH, depth => top_g_DEPTH)
  port map(
    i_Clk           => top_clk,
    FIFO_RST        => top_fifo_rst,
    i_RX_Serial     => top_rx_serial,
    FIFO_A_read     => top_fifo_A_rd,
    FIFO_B_read     => top_fifo_B_rd,
    FIFO_A_EMPTY    => top_fifo_empty_A,
    FIFO_B_EMPTY    => top_fifo_empty_B,
    FIFO_A_FULL     => top_fifo_full_A,
    FIFO_B_FULL     => top_fifo_full_B,
    DATAOUT_FIFO_A  => BS_input1,
    DATAOUT_FIFO_B  => BS_input2
   
    );


end Behavioral;
