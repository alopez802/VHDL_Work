----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2021 05:36:21 PM
-- Design Name: 
-- Module Name: bcd_counter - Behavioral
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
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bcd_counter is
              Port ( 
                    bcd_clk: in std_logic; -- bcd clock
                    bcd_roi: in std_logic; -- bcd rollover in
                    bcd_rst: in std_logic; -- bcd reset
                    bcd_ud : in std_logic; -- up-down switch
                    bcd_out: out std_logic_vector(3 downto 0); -- BCD output
                    bcd_ro : out std_logic -- bcd rollover out
                    );
end bcd_counter;

architecture Behavioral of bcd_counter is

signal bcd_tmp1: std_logic_vector(3 downto 0);
signal bcd_rotmp: std_logic;

begin

GEN_BCD1: process(bcd_clk, bcd_rst, bcd_roi)
          begin         
          if(rising_edge(bcd_clk)) then
            bcd_rotmp <= '0';   -- reset rollover to 0
          end if;
          if(bcd_rst = '1')then -- reset output to 0 if 1
            bcd_tmp1 <= (others => '0');    
            bcd_rotmp <= '0';              
          elsif(rising_edge(bcd_roi))then  
                if(bcd_ud = '1')then -- count up if 1
                         bcd_tmp1 <= bcd_tmp1 + 1;
                         bcd_rotmp <= '0'; -- reset rollover to 0
                         if(bcd_tmp1 = "1001")then -- reset to 0 if 9   
                            bcd_tmp1 <= "0000";
                            bcd_rotmp <= '1'; -- send rollover pulse
                            end if;
                    else if(bcd_ud = '0')then --count down if 0
                         bcd_tmp1 <= bcd_tmp1 - 1;
                         bcd_rotmp <= '0';
                            if(bcd_tmp1 = "0000")then -- if equal to 0 set to 9
                                bcd_tmp1 <= "1001";
                                bcd_rotmp <= '1'; -- send rollover pulse
                                end if;
                    end if;
                end if;
            end if;
      

end process;    
bcd_out <= bcd_tmp1;
bcd_ro <= bcd_rotmp;
end Behavioral;