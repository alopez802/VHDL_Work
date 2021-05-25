----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/18/2021 10:12:37 PM
-- Design Name: 
-- Module Name: sim - Behavioral
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

entity sim is
--  Port ( );
end sim;

architecture Behavioral of sim is

component top 
  Port (
                top_clk : in std_logic;
                top_rst : in std_logic;
                top_input_0: in std_logic_vector(3 downto 0);
                top_input_1: in std_logic_vector(3 downto 0);
                top_En  : out std_logic_vector(7 downto 0);
                top_SS : out std_logic_vector(6 downto 0);
                top_DP : out std_logic
          
                
                );
end component;

signal tb_top_clk : std_logic;
signal tb_top_rst : std_logic;
signal tb_input_0 : std_logic_vector(3 downto 0);
signal tb_input_1 : std_logic_vector(3 downto 0);
signal tb_top_En : std_logic_vector(7 downto 0);
signal tb_top_SS : std_logic_vector(6 downto 0);
signal tb_top_DP : std_logic;

constant clock_period:time:=1ns;

begin

CLK: process 
    begin
       tb_top_clk <= '0';
       wait for clock_period/2;
       tb_top_clk <= '1';
       wait for clock_period/2;
    end process;

TOP_TB: top 
    port map (
              top_clk => tb_top_clk,
              top_rst => tb_top_rst,
              top_input_0 => tb_input_0,
              top_input_1 => tb_input_1,
              top_En => tb_top_En,
              top_SS => tb_top_SS,
              top_DP => tb_top_DP

             );
             
TEST: process
      begin
        tb_top_rst <= '1';
        tb_input_0 <= "0000";
        tb_input_1 <= "0000";
        wait for clock_period;
        tb_top_rst <= '0';
        tb_input_0 <= "0001";
        tb_input_1 <= "0001";
        wait for 10*clock_period;
        tb_top_rst <= '0';
        tb_input_0 <= "0010";
        tb_input_1 <= "0010";
        wait for 10*clock_period;
        tb_top_rst <= '0';
        tb_input_0 <= "0100";
        tb_input_1 <= "0100";
        wait for 10*clock_period;
        tb_top_rst <= '0';
        tb_input_0 <= "1000";
        tb_input_1 <= "1000";
        wait for 10*clock_period;
        tb_top_rst <= '0';
        tb_input_0 <= "1001";
        tb_input_1 <= "1001";
        wait for 10*clock_period;
        tb_top_rst <= '0';
        tb_input_0 <= "1010";
        tb_input_1 <= "1010";
        wait for 10*clock_period;
        tb_top_rst <= '0';
        tb_input_0 <= "1100";
        tb_input_1 <= "1100";
        wait for 10*clock_period;
      end process;


end Behavioral;
