----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/26/2021 02:37:05 PM
-- Design Name: 
-- Module Name: top - Behavioral
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
   
          Port (
                top_clk      : in std_logic;
                top_rst1     : in std_logic;
                top_rst2     : in std_logic;
                top_switch   : in std_logic;
                top_En       : out std_logic_vector(7 downto 0);
                top_SS       : out std_logic_vector(6 downto 0);
                top_DP       : out std_logic
        
                );
end top;

architecture Behavioral of top is
signal BCD1: std_logic_vector(3 downto 0);
signal BCD2: std_logic_vector(3 downto 0);
signal BCD3: std_logic_vector(3 downto 0);
signal BCD4: std_logic_vector(3 downto 0);
signal BCD5: std_logic_vector(3 downto 0);
signal BCD6: std_logic_vector(3 downto 0);
signal BCD7: std_logic_vector(3 downto 0);
signal BCD8: std_logic_vector(3 downto 0);


signal EN1: std_logic;
signal EN2: std_logic;
signal EN3: std_logic;
signal EN4: std_logic;
signal EN5: std_logic;
signal EN6: std_logic;
signal EN7: std_logic;
signal EN8: std_logic;

signal delay_sig: std_logic;

component SevenSegDecoder

Port (     clk      : in std_logic;
           rst      : in std_logic;
           SSD_in_0 : in STD_LOGIC_VECTOR(3 downto 0);
           SSD_in_1 : in STD_LOGIC_VECTOR(3 downto 0);
           SSD_in_2 : in STD_LOGIC_VECTOR(3 downto 0);
           SSD_in_3 : in STD_LOGIC_VECTOR(3 downto 0);
           SSD_in_4 : in STD_LOGIC_VECTOR(3 downto 0);
           SSD_in_5 : in STD_LOGIC_VECTOR(3 downto 0);
           SSD_in_6 : in STD_LOGIC_VECTOR(3 downto 0);
           SSD_in_7 : in STD_LOGIC_VECTOR(3 downto 0);
           EN_out   : out std_logic_vector(7 downto 0);
           DP       : out std_logic;
           SSD_out_0  : out STD_LOGIC_VECTOR(6 downto 0)
         );
end component;




component bcd_counter
                Port ( 
                    bcd_clk: in std_logic; -- bcd clock
                    bcd_roi: in std_logic; -- bcd rollover in
                    bcd_rst: in std_logic; -- bcd reset
                    bcd_ud : in std_logic; -- up-down switch
                    bcd_out: out std_logic_vector(3 downto 0); -- BCD output
                    bcd_ro : out std_logic -- bcd rollover out
                    );
end component;


begin

DELAY: process(top_clk, top_rst1)
       variable v_count: std_logic_vector(24 downto 0);
       begin
        if(rising_edge(top_clk))then
            if(top_rst1 ='1')then
            v_count := (others => '0');
            else 
            v_count := v_count + 1;
            end if;    
        end if;
        delay_sig <= v_count(24);
        end process;


BOTTOM: SevenSegDecoder 
    port map(
            clk      => top_clk,
            rst      => top_rst1,
            SSD_in_0 => BCD1,
            SSD_in_1 => BCD2,
            SSD_in_2 => BCD3,
            SSD_in_3 => BCD4,
            SSD_in_4 => BCD5,
            SSD_in_5 => BCD6,
            SSD_in_6 => BCD7,
            SSD_in_7 => BCD8,
            EN_out   => top_En,
            DP       => top_DP,
            SSD_out_0 => top_SS
            );
            

GEN_BCD1: bcd_counter 
    port map(
            
            bcd_clk  => top_clk,
            bcd_roi  => delay_sig,
            bcd_rst  => top_rst2,
            bcd_ud   => top_switch,
            bcd_out  => BCD1,
            bcd_ro   => EN1
    
            );
            
GEN_BCD2: bcd_counter 
    port map(
            
            bcd_clk  => top_clk,
            bcd_roi  => EN1,
            bcd_rst  => top_rst2,
            bcd_ud   => top_switch,
            bcd_out  => BCD2,
            bcd_ro   => EN2
    
            );

GEN_BCD3: bcd_counter 
    port map(
            
            bcd_clk  => top_clk,
            bcd_roi  => EN2,
            bcd_rst  => top_rst2,
            bcd_ud   => top_switch,
            bcd_out  => BCD3,
            bcd_ro   => EN3
    
            );                        
GEN_BCD4: bcd_counter 
    port map(
            
            bcd_clk  => top_clk,
            bcd_roi  => EN3,
            bcd_rst  => top_rst2,
            bcd_ud   => top_switch,
            bcd_out  => BCD4,
            bcd_ro   => EN4
    
            );
            
GEN_BCD5: bcd_counter 
    port map(
            
            bcd_clk  => top_clk,
            bcd_roi  => EN4,
            bcd_rst  => top_rst2,
            bcd_ud   => top_switch,
            bcd_out  => BCD5,
            bcd_ro   => EN5
    
            );
GEN_BCD6: bcd_counter 
    port map(
            
            bcd_clk  => top_clk,
            bcd_roi  => EN5,
            bcd_rst  => top_rst2,
            bcd_ud   => top_switch,
            bcd_out  => BCD6,
            bcd_ro   => EN6
    
            );
GEN_BCD7: bcd_counter 
    port map(
            
            bcd_clk  => top_clk,
            bcd_roi  => EN6,
            bcd_rst  => top_rst2,
            bcd_ud   => top_switch,
            bcd_out  => BCD7,
            bcd_ro   => EN7
    
            );
GEN_BCD8: bcd_counter 
    port map(
            
            bcd_clk  => top_clk,
            bcd_roi  => EN7,
            bcd_rst  => top_rst2,
            bcd_ud   => top_switch,
            bcd_out  => BCD8,
            bcd_ro   => EN8
    
            );                                                


end Behavioral;
