----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/16/2021 07:03:14 PM
-- Design Name: 
-- Module Name: decoder5x32_tb - Behavioral
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

entity decoder5x32_tb is
    generic(    length_tb:integer:=5;
                width_tb:integer:=32
            );
--  Port ( );
end decoder5x32_tb;

architecture Behavioral of decoder5x32_tb is

component decoder5x32 is
            generic( length: integer:=5;
                     width: integer:=32
                   );
              Port (
                   top_input     : in std_logic_vector(length-1 downto 0);
                   top_en        : in std_logic;
                   top_output    : out std_logic_vector(width-1 downto 0)
                  
                   );
end component;

signal tb_top_input: std_logic_vector(length_tb-1 downto 0);
signal tb_top_en: std_logic;
signal tb_top_output: std_logic_vector(width_tb-1 downto 0);

constant clock_period:time:=10 ns;

begin

DECODER: decoder5x32
                        generic map (
                                    length => length_tb,
                                    width => width_tb
                                    )
                        port map (
                                    top_input => tb_top_input,
                                    top_en => tb_top_en,
                                    top_output => tb_top_output
                                    );

TESTBENCH:  process
            begin
            tb_top_en <= '1';
            tb_top_input <= "00000";
            wait for clock_period;
            
            tb_top_input <= "00001";
            wait for clock_period;
            
            tb_top_input <= "00010";
            wait for clock_period;
            
            tb_top_input <= "00011";
            wait for clock_period;
            
            tb_top_input <= "00100";
            wait for clock_period;
            
            tb_top_input <= "11101";
            wait for clock_period;
            
            tb_top_input <= "11110";
            wait for clock_period;
            
            tb_top_input <= "11111";
            wait for clock_period;
            
            wait;
            end process;

end Behavioral;
