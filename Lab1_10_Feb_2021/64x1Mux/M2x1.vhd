----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/05/2021 05:22:11 PM
-- Design Name: 
-- Module Name: M16x8 - Behavioral
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

entity M2x1 is
        generic (
                    WIDTH6:integer:=2
                 );
      Port (
             input    : in std_logic_vector(WIDTH6-1 downto 0);
             sel      : in std_logic_vector(5 downto 0);
             outp    : out std_logic
            );
end M2x1;

architecture Behavioral of M2x1 is

component Mux2x1
    Port ( 
           inp_0  : in std_logic;
           inp_1  : in std_logic;
           sel    : in std_logic;
           outp   : out std_logic
          );
end component;

signal temp_out: std_logic;
begin

            Mux1: Mux2x1 port map (
                                  inp_0 => input(0),
                                  inp_1 => input(1),
                                  sel   => sel(5),
                                  outp  => temp_out
                                  );

outp <= temp_out;


end Behavioral;
