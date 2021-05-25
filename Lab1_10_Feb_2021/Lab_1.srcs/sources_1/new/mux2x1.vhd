----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/05/2021 05:22:11 PM
-- Design Name: 
-- Module Name: Mux2x1 - Behavioral
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

entity Mux2x1 is
    Port ( 
           inp_0: in std_logic;
           inp_1: in std_logic;
           sel  : in std_logic;
           outp   : out std_logic
          );
end Mux2x1;


architecture Behavioral of Mux2x1 is

signal temp_outp: std_logic;

begin

temp_outp <= inp_1 when (sel = '1') else inp_0;

outp <= temp_outp;
end Behavioral;
