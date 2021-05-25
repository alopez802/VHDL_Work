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

entity M64x32 is
        generic (
                    WIDTH1:integer:=64
                 );
      Port (
             input    : in std_logic_vector(WIDTH1-1 downto 0);
             sel      : in std_logic_vector(5 downto 0);
             outp32   : out std_logic_vector(WIDTH1/2-1 downto 0)
            );
end M64x32;

architecture Behavioral of M64x32 is

component Mux2x1
    Port ( 
           inp_0  : in std_logic;
           inp_1  : in std_logic;
           sel    : in std_logic;
           outp   : out std_logic
          );
end component;

signal temp_out: std_logic_vector(WIDTH1/2-1 downto 0);
begin


Gen2x1: for i in 0 to WIDTH1/2-1 generate   
        
            Mux32: Mux2x1 port map (
                                  inp_0 => input(2*i),
                                  inp_1 => input(2*i+1),
                                  sel   => sel(0),
                                  outp  => temp_out(i)
                                   );
       end generate;

outp32 <= temp_out;


end Behavioral;
