----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2021 08:40:47 PM
-- Design Name: 
-- Module Name: textio_barrel_shifter - Behavioral
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
use IEEE.math_real.all;
use IEEE.std_logic_unsigned.all;
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

entity textio_tb is
   generic(width_tb:integer:=8);
--  Port ( );
end textio_tb;

architecture Behavioral of textio_tb is

component barrel_shifter
        generic(width: integer:=8
                );
          Port (
                bs_clk      :  in std_logic;
                bs_rst      :  in std_logic;
                bs_input    :  in std_logic_vector(width-1 downto 0); -- barrel shifter input 
                bs_control  :  in std_logic_vector(integer(LOG2(real(width)))-1 downto 0); -- controls number of bits being rotated
                bs_rotation :  in std_logic; -- will rotate the input left or right
                bs_output   :  out std_logic_vector(width-1 downto 0) -- barrel shifter output
 
               );
end component;

signal clk_tb : std_logic;
signal rst_tb : std_logic;
signal input_tb: std_logic_vector(width_tb-1 downto 0);
signal control_tb: std_logic_vector(integer(LOG2(real(width_tb)))-1 downto 0);
signal rotation_tb : std_logic;
signal output_tb: std_logic_vector(width_tb-1 downto 0);


constant clock_period:time:=10 ns;
file file_input: text;
file file_output: text;

begin

CLOCK_GEN: process
           begin
           clk_tb <= '0';
           wait for clock_period/2;
           clk_tb <= '1';
           wait for clock_period/2;
           end process;

BS_GEN: barrel_shifter generic map(width => width_tb)
        port map(
                 bs_clk => clk_tb,
                 bs_rst => rst_tb,
                 bs_input => input_tb,
                 bs_control => control_tb,
                 bs_rotation => rotation_tb,
                 bs_output => output_tb
        
                );

TEXTIO_GEN: process
            variable v_ILINE: line;
                  variable v_OLINE: line;
                  
                  variable bs_reset: std_logic; 
                  variable bs_input: std_logic_vector(7 downto 0); --setting the bits knows how many characters to read 
                  variable bs_control: std_logic_vector (2 downto 0); 
                  variable bs_rotation: std_logic; 
                  variable bs_space: character;
                  
                  begin
                  file_open(file_input,"C:\Users\Ahiezer\Documents\GitHub\ECE4304_SPRING_2021_GROUP_E\Lab6_24_Mar_2021\Barrel_Shifter\input.txt", read_mode);
                  file_open(file_output,"C:\Users\Ahiezer\Documents\GitHub\ECE4304_SPRING_2021_GROUP_E\Lab6_24_Mar_2021\Barrel_Shifter\output.txt", write_mode);
                  
                  while not endfile(file_input) loop
                    readline(file_input, v_ILINE);
                    read(v_ILINE, bs_reset);
                    read(v_ILINE, bs_space);
                    hread(v_ILINE, bs_input); 
                    read(v_ILINE, bs_space);
                    read(v_ILINE, bs_control); 
                    read(v_ILINE, bs_space);
                    read(v_ILINE, bs_rotation); 
                    
                    rst_tb <= bs_reset;
                    input_tb <= bs_input;
                    control_tb <= bs_control; 
                    rotation_tb <= bs_rotation;
                    
                    wait for 4*clock_period;
                  
                   for i in 0 to 3 loop
                    if(rst_tb = '1')then
                          
                    else
                        wait for 5*clock_period;
                        write (v_OLINE, output_tb);
                        writeline(file_output, v_OLINE);
                    end if;
                    end loop;
                  end loop;
                        file_close(file_input);
                        file_close(file_output);
                  wait;
                  end process;

end Behavioral;
