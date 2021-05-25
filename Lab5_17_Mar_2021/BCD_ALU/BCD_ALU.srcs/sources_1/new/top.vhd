----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/12/2021 12:30:15 PM
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
use IEEE.NUMERIC_STD.ALL;
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
                top_input1   : in std_logic_vector(3 downto 0);
                top_input2   : in std_logic_vector(3 downto 0);
                top_rst      : in std_logic;
                top_switch   : in std_logic_vector(3 downto 0);
                top_En       : out std_logic_vector(7 downto 0);
                top_SS       : out std_logic_vector(6 downto 0);
                top_DP       : out std_logic
                );
end top;

architecture Behavioral of top is
signal BCD_in1:  std_logic_vector(3 downto 0);
signal BCD_in2:  std_logic_vector(3 downto 0);
signal BCD_out3: std_logic_vector(9 downto 0);

signal BCD_outA: std_logic_vector(3 downto 0);
signal BCD_outB: std_logic_vector(3 downto 0);


signal EN1: std_logic;
signal EN2: std_logic;
signal EN3: std_logic;
signal EN4: std_logic;
signal EN5: std_logic;
signal EN6: std_logic;
signal EN7: std_logic;
signal EN8: std_logic;

signal ALU_out_buf: std_logic_vector(7 downto 0);



component Seven_Seg

Port (     clk      : in std_logic;
           rst      : in std_logic;
           SSD_in_0 : in STD_LOGIC_VECTOR(3 downto 0);
           SSD_in_1 : in STD_LOGIC_VECTOR(3 downto 0);
           SSD_in_2 : in STD_LOGIC_VECTOR(3 downto 0);
           SSD_in_3 : in STD_LOGIC_VECTOR(3 downto 0);
           EN_out   : out std_logic_vector(7 downto 0);
           DP       : out std_logic;
           SSD_out_0  : out STD_LOGIC_VECTOR(6 downto 0)
         );
end component;

component ALU 
          Port ( 
                ALU_clk     : in std_logic;
                ALU_rst     : in std_logic;
                ALU_input1  : in std_logic_vector(3 downto 0);
                ALU_input2  : in std_logic_vector(3 downto 0);
                ALU_switch  : in std_logic_vector(1 downto 0);
                ALU_output  : out std_logic_vector(7 downto 0)
                );
end component;

component BCD_8bit
    Port ( BCD_in  : in  STD_LOGIC_VECTOR(7 downto 0);
           BCD_out : out STD_LOGIC_VECTOR(9 downto 0));
end component;

begin

process(top_input1, top_input2, top_switch)
    begin
    if(top_switch(0) = '1')
    then
            if(top_input1 < x"a")then
                BCD_outA <= top_input1;
            else
                BCD_outA <= top_input1 + x"6";
                end if;
    else
                BCD_outA <= top_input1;
                end if;
    if(top_switch(1) = '1')
    then
            if(top_input2 < x"a")then
                BCD_outB <= top_input2;
            else 
                BCD_outB <= top_input2 + x"6";
        end if;
    else 
                BCD_outB <= top_input2;
        end if;
end process;


SS: Seven_Seg 
    port map(
            clk      => top_clk,
            rst      => top_rst,
            SSD_in_0 => BCD_outA,
            SSD_in_1 => BCD_outB,
            SSD_in_2 => BCD_out3(3 downto 0),
            SSD_in_3 => BCD_out3(7 downto 4),
            EN_out   => top_En,
            DP       => top_DP,
            SSD_out_0 => top_SS
            );
            
BCD_ALU:  ALU 
    port map( 
                ALU_clk    => top_clk,
                ALU_rst    => top_rst,
                ALU_input1 => BCD_outA,
                ALU_input2 => BCD_outB,
                ALU_switch => top_switch(3 downto 2),
                ALU_output => ALU_out_buf
                );

BCD8bit: BCD_8bit
    port map(
            BCD_In  => ALU_out_buf,
            BCD_out => BCD_out3
            );
end Behavioral;
