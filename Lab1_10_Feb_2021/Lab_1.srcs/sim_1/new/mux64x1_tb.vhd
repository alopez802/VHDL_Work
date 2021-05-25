----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/09/2021 03:32:25 PM
-- Design Name: 
-- Module Name: mux64x1_tb - Behavioral
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

entity mux64x1_tb is
--  Port ( );
end mux64x1_tb;

architecture Behavioral of mux64x1_tb is

component Mux16x1
   
      Port (
             TOP_input: in std_logic_vector(16-1 downto 0);
             TOP_sel    : in std_logic_vector(3 downto 0);
             TOP_outp   : out std_logic
            );
end component;


signal TOP_input_tb: std_logic_vector(15 downto 0);
signal TOP_sel_tb: std_logic_vector(3 downto 0);
signal TOP_outp_tb: std_logic;

constant clk: time:=10ns;

begin

           
DECOD_COMP: Mux16x1 port map(

                             TOP_input => TOP_input_tb,
                             TOP_sel   => TOP_sel_tb,
                             TOP_outp  => TOP_outp_tb

                             );
                             
                             
TEST: process
        begin
        TOP_input_tb <= "0001000100010001";    
        TOP_sel_tb <= "0000";
       wait for 10ns;
        TOP_input_tb <= "0001000100010001";    
        TOP_sel_tb <= "0100";
       wait for 10ns;
        TOP_input_tb <= "0001000100010001";    
        TOP_sel_tb <= "1000";
       wait for 10ns;
       TOP_input_tb <= "0001000100010001";    
        TOP_sel_tb <= "1001";
       wait for 10ns;
       TOP_input_tb <= "0001000100010001";    
        TOP_sel_tb <= "1100";
       wait for 10ns;
        
        end process;             

end Behavioral;
