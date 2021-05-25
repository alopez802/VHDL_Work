----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/17/2021 04:32:13 PM
-- Design Name: 
-- Module Name: div_sim - Behavioral
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

entity div_sim is
--  Port ( );
end div_sim;

architecture Behavioral of div_sim is

component divide 
    
    Port (
           div_clk: in std_logic;
           div_rst: in std_logic;
           go:      in std_logic;
           Q:       in std_logic_vector(3 downto 0);
           D:       in std_logic_vector(3 downto 0);
           Division: out std_logic_vector(7 downto 0)
          );
end component;

signal div_clk_tb : std_logic;
signal div_rst_tb : std_logic;
signal div_go_tb : std_logic;
signal div_Q_tb : std_logic_vector(3 downto 0);
signal div_D_tb : std_logic_vector(3 downto 0);
signal div_division_tb : std_logic_vector(7 downto 0);

constant clock_period:time:=10ns;

begin

GEN: divide 
        port map(
                 div_clk  => div_clk_tb,
                 div_rst  => div_rst_tb,
                 go       => div_go_tb,
                 Q        => div_Q_tb,
                 D        => div_D_tb,
                 Division => div_division_tb
 
                );

clk_gen: process
        begin
        div_clk_tb <= '0';
        wait for clock_period/2;
        div_clk_tb <= '1';
        wait for clock_period/2;  
            
        end process; 

TEST: process
        begin
        div_rst_tb <= '0';
        div_go_tb  <= '1';
        div_Q_tb   <= "1000";
        div_D_tb   <= "0010";
        
        wait for clock_period*10;
        div_go_tb  <= '0';
        div_Q_tb   <= "1000";
        div_D_tb   <= "0010";
        
        wait for clock_period*10;
        div_go_tb  <= '1';
        div_Q_tb   <= "1111";
        div_D_tb   <= "0011";
        
        wait for clock_period*10;
        end process;

end Behavioral;
