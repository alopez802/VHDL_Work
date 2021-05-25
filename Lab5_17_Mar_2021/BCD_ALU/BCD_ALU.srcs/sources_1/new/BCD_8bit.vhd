----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/16/2021 10:28:54 PM
-- Design Name: 
-- Module Name: BCD_8bit - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BCD_8bit is
    Port ( BCD_in  : in  STD_LOGIC_VECTOR(7 downto 0);
           BCD_out : out STD_LOGIC_VECTOR(9 downto 0));
end BCD_8bit;

architecture Behavioral of BCD_8bit is
begin
    BCD: process(BCD_in)
    variable reg: STD_LOGIC_VECTOR(17 downto 0);
        begin
        for i in 0 to 17 loop
            reg(i) := '0';
        end loop;
        reg(10 downto 3) := BCD_in;
        
        for i in 0 to 4 loop
            if reg(11 downto 8) > 4 then
                reg(11 downto 8) := reg(11 downto 8) + 3;
            end if;
            if reg(15 downto 12) > 4 then
                reg(15 downto 12) := reg(15 downto 12) + 3;
            end if;
            reg(17 downto 1) := reg(16 downto 0);
        end loop;
        BCD_out <= reg(17 downto 8);
        end process;
end Behavioral;