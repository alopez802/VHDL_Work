----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/15/2021 08:39:01 PM
-- Design Name: 
-- Module Name: mul_sim - Behavioral
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

entity mul_sim is
    generic (WIDTH: integer:= 4);
--  Port ( );
end mul_sim;

architecture Behavioral of mul_sim is

component MUL
    generic(mul_width: integer:= 4);
    Port (
           mul_clk: in std_logic;
           mul_rst: in std_logic;
           go:      in std_logic;
           M:       in std_logic_vector(mul_width-1 downto 0);
           Q:       in std_logic_vector(mul_width-1 downto 0);
           Product: out std_logic_vector(mul_width*2-1 downto 0)
          );
end component;

signal tb_mul_clk: std_logic;
signal tb_mul_rst: std_logic;
signal tb_M:       std_logic_vector(WIDTH-1 downto 0);
signal tb_Q:       std_logic_vector(WIDTH-1 downto 0);
signal tb_go:      std_logic;
signal tb_Product: std_logic_vector(WIDTH*2-1 downto 0);

constant Period: time:=10ns;

begin

MULT: MUL 
          generic map (mul_width => width)
          port map(
                   mul_clk => tb_mul_clk,
                   mul_rst => tb_mul_rst,
                   go      => tb_go,
                   M       => tb_M,
                   Q       => tb_Q,
                   Product => tb_Product
                   );


clk_gen: process
        begin
        tb_mul_clk <= '0';
        wait for 1ns;
        tb_mul_clk <= '1';
        wait for 1ns;  
            
        end process; 

TEST: process
      begin
      tb_mul_rst <= '0';
      tb_Q       <= "1101";
      tb_M       <= "1011";
      tb_go      <= '1';
      wait for 10ns;
      tb_mul_rst <= '0';
      tb_go <= '0';
      wait;
      end process;

end Behavioral;
