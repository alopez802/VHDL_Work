----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/14/2021 05:47:22 PM
-- Design Name: 
-- Module Name: FA - Behavioral
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

entity FA is
             Port (
                  Cin   : in std_logic;
                  A     : in std_logic;
                  B     : in std_logic;
                  sum   : out std_logic;
                  cout  : out std_logic
                  
                  
                   );
end FA;

architecture Behavioral of FA is

begin

sum <= (A xor B xor cin);
cout <= ((A or B) and cin) or (A and B);

end Behavioral;