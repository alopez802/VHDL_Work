----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/05/2021 05:22:11 PM
-- Design Name: 
-- Module Name: M64x32 - Behavioral
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

entity M32x16 is
        generic (
                    WIDTH2:integer:=32
                 );
      Port (
             input    : in std_logic_vector(WIDTH2-1 downto 0);
             sel      : in std_logic_vector(5 downto 0);
             outp16   : out std_logic_vector(WIDTH2/2-1 downto 0)
            );
end M32x16;

architecture Behavioral of M32x16 is

component Mux2x1
    Port ( 
           inp_0  : in std_logic;
           inp_1  : in std_logic;
           sel    : in std_logic;
           outp   : out std_logic
          );
end component;

signal temp_out: std_logic_vector(WIDTH2/2-1 downto 0);
begin


Gen2x1: for i in 0 to WIDTH2/2-1 generate   
        
            Mux16: Mux2x1 port map (
                                  inp_0 => input(2*i),
                                  inp_1 => input(2*i+1),
                                  sel   => sel(1),
                                  outp  => outp16(i)
                                   );
       end generate;



end Behavioral;
