----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/12/2021 10:56:15 AM
-- Design Name: 
-- Module Name: decoder2x4 - Behavioral
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

entity decoder2x4 is
              Port (
                    input_0   : in std_logic;
                    input_1   : in std_logic;
                    en        : in std_logic;
                    output    : out std_logic_vector(3 downto 0)                                         
                   );
                   
end decoder2x4;


architecture Behavioral of decoder2x4 is

signal temp_inp: std_logic_vector(1 downto 0);

begin
temp_inp <= input_1 & input_0;
process (temp_inp,en)
    begin

    if (en <= '0') then
        output <= "0000";
     else
         case temp_inp is
            when "00" => output <= "0001";
            when "01" => output <= "0010";
            when "10" => output <= "0100";
            when "11" => output <= "1000";
            when others => output <= "0000";
        end case;
     end if;       

end process;


end Behavioral;




