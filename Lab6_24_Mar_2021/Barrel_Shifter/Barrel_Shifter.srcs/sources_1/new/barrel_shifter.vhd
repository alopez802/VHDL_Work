----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/20/2021 12:12:34 PM
-- Design Name: 
-- Module Name: barrel_shifter - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity barrel_shifter is
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
end barrel_shifter;

architecture Behavioral of barrel_shifter is

signal I_temp: std_logic_vector(width-1 downto 0);
signal C_temp: std_logic_vector(integer(LOG2(real(width)))-1 downto 0);

type state_type is ( 
                     s0,
                     s1, 
                     s2,
                     s3,
                     s4
                   ); 
signal ps_state: state_type; -- present state 

begin
process(bs_clk, bs_rst)
begin
    if(bs_rst = '1') then
        ps_state <= s0;
    elsif(rising_edge(bs_clk)) then
        case ps_state is
        when s0 => --initialize values
            I_temp <= bs_input;
            C_temp <= bs_control;
            if(bs_rotation = '1')then --if '1' rotate right --if '0' rotate left
                ps_state <= s2;
            else
                ps_state <= s3;
            end if;
        when s1 => -- will determine which state to go to next depending on direction of rotation
            C_temp <= bs_control;
            if(bs_rotation = '1')then --if '1' rotate right --if '0' rotate left
                ps_state <= s2;
            else
                ps_state <= s3;
            end if;
        when s2 => -- will rotate right each time C_temp reaches 0
            if(C_temp = x"0")then
                ps_state <= s4;
            else
                C_temp <= C_temp -1;
                I_temp <= I_Temp(0) & I_temp(width-1 downto 1);
                ps_state <= s2;
            end if;
       when s3 => --will rotate left each time C_temp reaches 0
            if(C_temp = x"0")then
                ps_state <= s4;
            else
                C_temp <= C_temp -1;
                I_temp <= I_temp(width-2 downto 0) & I_Temp(width-1);
                ps_state <= s3;
            end if;
       when s4 => -- I_temp is set to output while it goes back to state 1
            bs_output <= I_temp;
            ps_state <= s1;
       when others => bs_output <= (others => '0');
       end case;
    end if;
end process;
end Behavioral;
