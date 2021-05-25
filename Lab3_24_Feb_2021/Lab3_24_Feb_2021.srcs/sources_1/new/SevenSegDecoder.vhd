----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/17/2021 05:13:29 PM
-- Design Name: 
-- Module Name: SevenSegDecoder - Behavioral
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
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SevenSegDecoder is
    Port ( clk      : in std_logic;
           rst      : in std_logic;
           SSD_in_0 : in STD_LOGIC_VECTOR(3 downto 0);
           SSD_in_1 : in STD_LOGIC_VECTOR(3 downto 0);
           EN_out   : out std_logic_vector(7 downto 0);
           DP       : out std_logic;
           SSD_out_0  : out STD_LOGIC_VECTOR(6 downto 0)
         );
end SevenSegDecoder;




architecture Behavioral of SevenSegDecoder is


signal counter_out: std_logic_vector(2 downto 0);
signal dout_out: std_logic_vector(5 downto 0);
signal E: std_logic_vector(7 downto 0);


begin

process(clk, rst)
    variable v_count: std_logic_vector(18 downto 0);
begin
    if(rising_edge(clk))then
        if(rst ='1')then
            v_count := (others => '0');
          else 
          v_count := v_count + 1;
          end if;    
    end if;
    counter_out <= v_count(18 downto 16);
    end process;


process(counter_out, SSD_in_0, SSD_in_1)
begin
    case counter_out is  
        when "000" => E <= "00000001";
                      dout_out <= '1' & SSD_in_0(3 downto 0) & '1';  
        when "001" => E <= "00000000";
                      dout_out <= '0' & "0000" & '1' ;    
        when "010" => E <= "00000000";
                      dout_out <= '0' & "0000" & '1' ;    
        when "011" => E <= "00000000";
                      dout_out <= '0' & "0000" & '1' ;    
        when "100" => E <= "00010000";
                      dout_out <= '1' & SSD_in_1(3 downto 0) & '1' ;    
        when "101" => E <= "00000000";
                      dout_out <= '0' & "0000" & '1' ;    
        when "110" => E <= "00000000";
                      dout_out <= '0' & "0000" & '1' ;  
        when "111" => E <= "00000000";
                      dout_out <= '0' & "0000" & '1' ;  
        when others => E <= "11111111";    
    end case;
 end process;

En_out <= not E;

process(dout_out) is
begin
if(dout_out(5) = '1')then
    case dout_out(4 downto 1) is
        when "0000" => SSD_out_0(6 downto 0) <= "0000001";
        when "0001" => SSD_out_0(6 downto 0) <= "1001111";
        when "0010" => SSD_out_0(6 downto 0) <= "0010010";
        when "0011" => SSD_out_0(6 downto 0) <= "0000110";
        when "0100" => SSD_out_0(6 downto 0) <= "1001100";
        when "0101" => SSD_out_0(6 downto 0) <= "0100100";
        when "0110" => SSD_out_0(6 downto 0) <= "0100000";
        when "0111" => SSD_out_0(6 downto 0) <= "0001111";
        when "1000" => SSD_out_0(6 downto 0) <= "0000000";
        when "1001" => SSD_out_0(6 downto 0) <= "0000100";
        when others => SSD_out_0(6 downto 0) <= "1111111";     
    end case;
    end if;
end process;

DP <= dout_out(0);
end Behavioral;
