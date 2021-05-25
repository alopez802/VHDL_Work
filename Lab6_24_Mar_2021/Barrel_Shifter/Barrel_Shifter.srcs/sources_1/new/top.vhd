----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/20/2021 12:17:03 PM
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
      Port (
                top_clk      : in std_logic;
                top_input    : in std_logic_vector(7 downto 0);-- input
                top_rst      : in std_logic;-- reset for seven seg
                top_lod      : in std_logic;
                top_control  : in std_logic_vector(2 downto 0);-- will control number of bits rotating
                top_rotate   : in std_logic; -- will determine the direction of rotation 
                top_led      : out std_logic_vector(7 downto 0);
                top_En       : out std_logic_vector(7 downto 0);
                top_SS       : out std_logic_vector(6 downto 0);
                top_DP       : out std_logic
                );
end top;

architecture Behavioral of top is

component Seven_Seg 
        Port (
           clk          : in std_logic;
           rst          : in std_logic;
           SSD_input_0  : in STD_LOGIC_VECTOR(3 downto 0); -- seven seg for input
           SSD_input_1  : in STD_LOGIC_VECTOR(3 downto 0); -- seven seg for input
           SSD_output_0 : in STD_LOGIC_VECTOR(3 downto 0); -- seven seg for output of rotation
           SSD_output_1 : in STD_LOGIC_VECTOR(3 downto 0); -- seven seg for output of rotation
           SSD_control  : in STD_LOGIC_VECTOR(3 downto 0); -- seven seg for control of rotation
           EN_out       : out std_logic_vector(7 downto 0);
           DP           : out std_logic;
           SSD_out      : out STD_LOGIC_VECTOR(6 downto 0)
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

signal top_input0_BS  : std_logic_vector(3 downto 0);
signal top_input1_BS  : std_logic_vector(3 downto 0);
signal top_output0_BS : std_logic_vector(3 downto 0);
signal top_output1_BS : std_logic_vector(3 downto 0);
signal top_control_BS : std_logic_vector(3 downto 0);
signal top_output_BS  : std_logic_vector(7 downto 0);
signal delay_sig      : std_logic;


begin

SS_GEN: Seven_Seg 
        port map(
                 clk            => top_clk,
                 rst            => top_rst,
                 SSD_input_0    => top_input0_BS,
                 SSD_input_1    => top_input1_BS,
                 SSD_output_0   => top_output0_BS,
                 SSD_output_1   => top_output1_BS,
                 SSD_control    => top_control_BS,
                 EN_out         => top_En,
                 DP             => top_DP,
                 SSD_out        => top_SS
                );
                
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
                
BRL_SHFT: barrel_shifter
            port map(
                    bs_clk      => delay_sig,
                    bs_rst      => top_lod,
                    bs_input    => top_input,
                    bs_control  => top_control,
                    bs_rotation => top_rotate,
                    bs_output   => top_output_BS
                    );

top_input0_BS  <= top_input(3 downto 0);
top_input1_BS  <= top_input(7 downto 4);
top_output0_BS <= top_output_BS(3 downto 0);
top_output1_BS <= top_output_BS(7 downto 4);
top_led <= top_output_BS;

top_control_BS <= b"0" & top_control;
end Behavioral;
