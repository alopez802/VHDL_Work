----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/17/2021 04:25:36 PM
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
   
          Port (
                top_clk : in std_logic;
                top_rst      : in std_logic;
                top_input_0: in std_logic_vector(3 downto 0);
                top_input_1: in std_logic_vector(3 downto 0);
                top_En  : out std_logic_vector(7 downto 0);
                top_SS : out std_logic_vector(6 downto 0);
                top_DP : out std_logic

                
                );
end top;

architecture Behavioral of top is
signal BCD0: std_logic_vector(3 downto 0);
signal BCD1: std_logic_vector(3 downto 0);

component SevenSegDecoder

Port (     clk      : in std_logic;
           rst      : in std_logic;
           SSD_in_0 : in STD_LOGIC_VECTOR(3 downto 0);
           SSD_in_1 : in STD_LOGIC_VECTOR(3 downto 0);
           EN_out   : out std_logic_vector(7 downto 0);
           DP       : out std_logic;
           SSD_out_0  : out STD_LOGIC_VECTOR(6 downto 0)
         );
end component;




component BCD
                Port ( 
                       BCD_in_0   : in  STD_LOGIC_VECTOR(3 downto 0);
                       BCD_in_1   : in  STD_LOGIC_VECTOR(3 downto 0);
                       BCD_out_0    : out STD_LOGIC_VECTOR(3 downto 0);
                       BCD_out_1    : out STD_LOGIC_VECTOR(3 downto 0)
                     );
end component;




begin


BOTTOM: SevenSegDecoder 
    port map(
            clk      => top_clk,
            rst      => top_rst,
            SSD_in_0 => BCD0,
            SSD_in_1 => BCD1,
            EN_out   => top_En,
            DP       => top_DP,
            SSD_out_0 => top_SS
            );
            

MIDDLe: BCD 
    port map(
             BCD_in_0 => top_input_0,
             BCD_in_1 => top_input_1,
             BCD_out_0 => BCD0,
             BCD_out_1 => BCD1
    
            );




end Behavioral;
