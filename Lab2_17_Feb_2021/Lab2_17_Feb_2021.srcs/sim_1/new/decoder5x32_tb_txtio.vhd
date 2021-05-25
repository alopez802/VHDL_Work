----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/15/2021 10:47:44 PM
-- Design Name: 
-- Module Name: decoder5x32_tb_txtio - Behavioral
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
use STD.textio.all;
use IEEE.std_logic_textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder5x32_tb_txtio is
    generic(    length_tb:integer:=5;
                width_tb:integer:=32
            );
--  Port ( );
end decoder5x32_tb_txtio;

architecture Behavioral of decoder5x32_tb_txtio is

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

file file_input: text;
file file_output: text;

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
                                    
TEXTIO: process
        variable v_ILINE: line;
        variable v_OLINE: line;
        variable v_INPUT: std_logic_vector(length_tb-1 downto 0);
        variable v_EN: std_logic;
        variable v_OUTPUT: std_logic_vector(width_tb-1 downto 0);
        variable v_space: character;
        
        begin
        file_open(file_input, "D:\Users\Sander\Documents\GitHub\ECE4304_SPRING_2021_GROUP_E\Lab2_17_Feb_2021\decoder5x32input.txt" ,read_mode);
        file_open(file_output, "D:\Users\Sander\Documents\GitHub\ECE4304_SPRING_2021_GROUP_E\Lab2_17_Feb_2021\decoder5x32output.txt" ,write_mode);
        
        while not endfile(file_input) loop
            readline(file_input, v_ILINE);
            read(v_ILINE, v_INPUT);
            read(v_ILINE, v_space);
            read(v_ILINE, v_EN);
            
            tb_top_input <= v_INPUT;
            tb_top_en <= v_EN;
            
            wait for 2*clock_period;
            
            write(v_OLINE, tb_top_output);
            writeline(file_output, v_OLINE);
        
        end loop;
        file_close(file_input);
        file_close(file_output);
        
        wait;
        end process;

end Behavioral;
