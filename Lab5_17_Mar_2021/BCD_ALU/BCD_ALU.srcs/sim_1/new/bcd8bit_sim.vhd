----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/17/2021 10:42:08 AM
-- Design Name: 
-- Module Name: bcd8bit_sim - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bcd8bit_sim is
--  Port ( );
end bcd8bit_sim;

architecture Behavioral of bcd8bit_sim is

signal bcd_in_tb: std_logic_vector(7 downto 0);
signal bcd_out_tb: std_logic_vector(9 downto 0);
signal clk_tb: std_logic:= '1';
constant clock_period:time:=10ns;


component BCD_8bit is
    Port ( BCD_in  : in  STD_LOGIC_VECTOR(7 downto 0);
           BCD_out : out STD_LOGIC_VECTOR(9 downto 0));
end component;

begin

CLK_GEN: process
begin
    clk_tb <= not clk_tb;
    wait for clock_period/2;
end process;

BCD_TB: BCD_8bit
    port map(
        BCD_in => bcd_in_tb,
        BCD_out => bcd_out_tb
        );

TEST: process
    begin
    bcd_in_tb <= b"01010001";
    wait for clock_period * 20;
    bcd_in_tb <= b"11111111";
    wait for clock_period * 20;
    end process;
end Behavioral;
