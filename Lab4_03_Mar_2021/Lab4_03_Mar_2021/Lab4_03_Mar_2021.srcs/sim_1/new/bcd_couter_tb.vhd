----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2021 03:40:11 PM
-- Design Name: 
-- Module Name: bcd_couter_tb - Behavioral
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

entity bcd_tb is
--  Port ( );
end bcd_tb;

architecture Behavioral of bcd_tb is

component BCD_counter 
              Port ( 
                    bcd_clk: in std_logic; -- bcd clock
                    bcd_roi: in std_logic; -- Roll over in
                    bcd_rst: in std_logic; -- bcd reset
                    bcd_ud : in std_logic; -- up-down switch
                    bcd_out: out std_logic_vector(3 downto 0); -- BCD output
                    bcd_ro : out std_logic -- bcd rollover out
                    );
end component;

constant time_step: time:=10ns;

--testbench list of signals
signal bcd_clk_tb: std_logic;
signal bcd_rst_tb: std_logic;
signal bcd_ud_tb: std_logic;

signal bcd_op0_tb: std_logic_vector(3 downto 0);
signal bcd_op1_tb: std_logic_vector(3 downto 0);
signal bcd_op2_tb: std_logic_vector(3 downto 0);
signal bcd_op3_tb: std_logic_vector(3 downto 0);
signal bcd_op4_tb: std_logic_vector(3 downto 0);
signal bcd_op5_tb: std_logic_vector(3 downto 0);
signal bcd_op6_tb: std_logic_vector(3 downto 0);
signal bcd_op7_tb: std_logic_vector(3 downto 0);


signal bcd_ro0_tb: std_logic;
signal bcd_ro1_tb: std_logic;
signal bcd_ro2_tb: std_logic;
signal bcd_ro3_tb: std_logic;
signal bcd_ro4_tb: std_logic;
signal bcd_ro5_tb: std_logic;
signal bcd_ro6_tb: std_logic;

signal bcd_EO_tb: std_logic;


begin

BCD0: BCD_counter 
    port map(
        bcd_clk => bcd_clk_tb,
        bcd_roi => bcd_clk_tb, 
        bcd_rst => bcd_rst_tb,
        bcd_ud  => bcd_ud_tb,
        bcd_out => bcd_op0_tb,
        bcd_ro => bcd_ro0_tb
        );

BCD1: BCD_counter 
    port map(
        bcd_clk => bcd_clk_tb,
        bcd_roi => bcd_ro0_tb,
        bcd_rst => bcd_rst_tb,
        bcd_ud  => bcd_ud_tb,
        bcd_out => bcd_op1_tb,
        bcd_ro => bcd_ro1_tb
        );
        
BCD2: BCD_counter 
    port map(
        bcd_clk => bcd_clk_tb,
        bcd_roi => bcd_ro1_tb,
        bcd_rst => bcd_rst_tb,
        bcd_ud  => bcd_ud_tb,
        bcd_out => bcd_op2_tb,
        bcd_ro => bcd_ro2_tb
        );
        
BCD3: BCD_counter 
    port map(
        bcd_clk => bcd_clk_tb,
        bcd_roi => bcd_ro2_tb,
        bcd_rst => bcd_rst_tb,
        bcd_ud  => bcd_ud_tb,
        bcd_out => bcd_op3_tb,
        bcd_ro => bcd_ro3_tb
        );
        
BCD4: BCD_counter 
    port map(
        bcd_clk => bcd_clk_tb,
        bcd_roi => bcd_ro3_tb,
        bcd_rst => bcd_rst_tb,
        bcd_ud  => bcd_ud_tb,
        bcd_out => bcd_op4_tb,
        bcd_ro => bcd_ro4_tb
        );
        
BCD5: BCD_counter 
    port map(
        bcd_clk => bcd_clk_tb,
        bcd_roi => bcd_ro4_tb,
        bcd_rst => bcd_rst_tb,
        bcd_ud  => bcd_ud_tb,
        bcd_out => bcd_op5_tb,
        bcd_ro => bcd_ro5_tb
        );
        
BCD6: BCD_counter 
    port map(
        bcd_clk => bcd_clk_tb,
        bcd_roi => bcd_ro5_tb,
        bcd_rst => bcd_rst_tb,
        bcd_ud  => bcd_ud_tb,
        bcd_out => bcd_op6_tb,
        bcd_ro => bcd_ro6_tb
        );
        
BCD7: BCD_counter 
    port map(
        bcd_clk => bcd_clk_tb,
        bcd_roi => bcd_ro6_tb,
        bcd_rst => bcd_rst_tb,
        bcd_ud  => bcd_ud_tb,
        bcd_out => bcd_op7_tb
        );
        

clk_gen: process
        begin
        bcd_clk_tb <= '1';
        wait for 1ns;
        bcd_clk_tb <= '0';
        wait for 1ns;
        
        
        end process;


        
TST_CASE_1: process
            begin
            --test case 1: testing the upcounter moving from the right starting point
             bcd_rst_tb <= '1';
             bcd_ud_tb <= '0';
             wait for time_step;
             bcd_rst_tb <= '0';
             bcd_ud_tb <= '1';
             wait for 1000ns;
             bcd_rst_tb <= '0';
             bcd_ud_tb <= '0';
             wait for 500ns;
             
           
           
             wait;
             
            end process;



end Behavioral;
