----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/17/2021 01:55:34 PM
-- Design Name: 
-- Module Name: alu_sim - Behavioral
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

entity alu_sim is
--  Port ( );
end alu_sim;

architecture Behavioral of alu_sim is

signal rst_tb: std_logic;
signal input1_tb, input2_tb: std_logic_vector(3 downto 0);
signal sw_tb: std_logic_vector(1 downto 0);
signal output_tb: std_logic_vector(7 downto 0);

signal clk_tb: std_logic:= '1';
constant clock_period:time:=10ns;

component ALU is
    
          Port (
                ALU_clk     : in std_logic;
                ALU_rst     : in std_logic; 
                ALU_input1  : in std_logic_vector(3 downto 0);
                ALU_input2  : in std_logic_vector(3 downto 0);
                ALU_switch  : in std_logic_vector(1 downto 0);
                ALU_output  : out std_logic_vector(7 downto 0)
                );
end component;
begin
CLK_GEN: process
begin
    clk_tb <= not clk_tb;
    wait for clock_period/2;
end process;

ALU_TB: ALU
        port map(
        ALU_clk => clk_tb,
        ALU_rst => rst_tb,
        ALU_input1 => input1_tb,
        ALU_input2 => input2_tb,
        ALU_switch => sw_tb,
        ALU_output => output_tb
        );
        
 TEST: process
    begin
    input1_tb <= x"9";
    input2_tb <= x"3";
    sw_tb <= b"11";
    
    wait for clock_period*10;
    end process;
end Behavioral;