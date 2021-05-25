----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/17/2021 04:55:03 PM
-- Design Name: 
-- Module Name: bcd_tb_textio - Behavioral
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

entity bcd_tb_textio is
    generic (length_tb:integer:=4);
--  Port ( );
end bcd_tb_textio;

architecture Behavioral of bcd_tb_textio is

component BCD is
             generic ( length  : integer:= 4);
                Port ( BCD_in  : in  STD_LOGIC_VECTOR(length-1 downto 0);
                       BCD_out : out STD_LOGIC_VECTOR(length-1 downto 0)
                     );
end component;

signal tb_bcd_in: std_logic_vector(length_tb-1 downto 0);
signal tb_bcd_out: std_logic_vector(length_tb-1 downto 0);

constant clock_period:time:=10 ns;

file file_input: text;
file file_output: text;

begin

BCDGEN: BCD
            generic map(
                        length => length_tb
                        )
            port map    (
                        BCD_in => tb_bcd_in,
                        BCD_out => tb_bcd_out
                        );

TEXTIO: process
        variable v_ILINE: line;
        variable v_OLINE: line;
        variable v_INPUT: std_logic_vector(length_tb-1 downto 0);
        variable v_OUTPUT: std_logic_vector(length_tb-1 downto 0);
        variable v_space: character;
        
        begin
        file_open(file_input, "D:\Users\Sander\Documents\GitHub\ECE4304_SPRING_2021_GROUP_E\Lab3_24_Feb_2021\bcdinput.txt" ,read_mode);
        file_open(file_output, "D:\Users\Sander\Documents\GitHub\ECE4304_SPRING_2021_GROUP_E\Lab3_24_Feb_2021\bcdoutput.txt" ,write_mode);
        
        while not endfile(file_input) loop
            readline(file_input, v_ILINE);
            read(v_ILINE, v_INPUT);
            
            tb_bcd_in <= v_INPUT;
            
            wait for 2*clock_period;
            
            write(v_OLINE, tb_bcd_out);
            writeline(file_output, v_OLINE);
        
        end loop;
        file_close(file_input);
        file_close(file_output);

        wait;
        end process;

end Behavioral;
