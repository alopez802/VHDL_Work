----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/17/2021 04:51:56 PM
-- Design Name: 
-- Module Name: top_sim - Behavioral
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

entity top_sim is
--  Port ( );
end top_sim;

architecture Behavioral of top_sim is

signal clk, rst, dp : std_logic;
signal in1, in2, sw : std_logic_vector(3 downto 0);
signal en : std_logic_vector(7 downto 0);
signal ss : std_logic_vector(6 downto 0);

constant clock_period:time:=10ns;

component top is
   
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
end component;
begin

GEN: top 
        port map(
                 top_clk      => clk,
                 top_input1   => in1,
                 top_input2   => in2,
                 top_rst      => rst,
                 top_switch   => sw,
                 top_En       => en,
                 top_SS       => ss,
                 top_DP       => dp
                );

clk_gen: process
        begin
        clk <= '0';
        wait for clock_period/2;
        clk <= '1';
        wait for clock_period/2;  
            
        end process; 
        
        
 TEST: process
        begin
        rst <= '1';
        wait for clock_period;
        rst <= '0';
        in1 <= x"9";
        in2 <= x"3";
        sw  <= b"1111";
        
        wait for clock_period*10;
        in1 <= x"4";
        in2 <= x"2";
        
        wait for clock_period *10;
        end process;
        

end Behavioral;
