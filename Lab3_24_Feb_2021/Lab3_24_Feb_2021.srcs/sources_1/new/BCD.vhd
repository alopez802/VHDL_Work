----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/17/2021 04:38:55 PM
-- Design Name: 
-- Module Name: BCD - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BCD is
             generic ( length  : integer:= 4);
                Port ( 
                       BCD_in_0   : in  STD_LOGIC_VECTOR(length-1 downto 0);
                       BCD_in_1   : in  STD_LOGIC_VECTOR(length-1 downto 0);
                       BCD_out_0    : out STD_LOGIC_VECTOR(length-1 downto 0);
                       BCD_out_1    : out STD_LOGIC_VECTOR(length-1 downto 0)
                     );
end BCD;

architecture Behavioral of BCD is


begin

BCD_out_0 <= BCD_in_0 when (BCD_in_0 <= x"9") else
           BCD_in_0 + x"6";
           
BCD_out_1 <= BCD_in_1 when (BCD_in_1 <= x"9") else
           BCD_in_1 + x"6";           
           
           
end Behavioral;
