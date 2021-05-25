----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/05/2021 05:22:11 PM
-- Design Name: 
-- Module Name: Mux64x1 - Behavioral
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

entity Mux64x1 is
        generic  (
                    TOP_WIDTH:integer:=64
                 );
      Port (
             TOP_input: in std_logic_vector(TOP_WIDTH-1 downto 0);
             TOP_sel    : in std_logic_vector(5 downto 0);
             TOP_outp   : out std_logic
            );
end Mux64x1;

architecture Behavioral of Mux64x1 is

component M64x32 
        generic (
                    WIDTH1:integer:=64
                 );
      Port (
             input    : in std_logic_vector(WIDTH1-1 downto 0);
             sel      : in std_logic_vector(5 downto 0);
             outp32   : out std_logic_vector(WIDTH1/2-1 downto 0)
            );
end component;

component M32x16 
        generic (
                    WIDTH2:integer:=32
                 );
      Port (
             input    : in std_logic_vector(WIDTH2-1 downto 0);
             sel      : in std_logic_vector(5 downto 0);
             outp16   : out std_logic_vector(WIDTH2/2-1 downto 0)
            );
end component;

component M16x8 
        generic (
                    WIDTH3:integer:=16
                 );
      Port (
             input    : in std_logic_vector(WIDTH3-1 downto 0);
             sel      : in std_logic_vector(5 downto 0);
             outp8   : out std_logic_vector(WIDTH3/2-1 downto 0)
            );
end component;

component M8x4 
        generic (
                    WIDTH4:integer:=8
                 );
      Port (
             input    : in std_logic_vector(WIDTH4-1 downto 0);
             sel      : in std_logic_vector(5 downto 0);
             outp4   : out std_logic_vector(WIDTH4/2-1 downto 0)
            );
end component;

component M4x2 
        generic (
                    WIDTH5:integer:=4
                 );
      Port (
             input    : in std_logic_vector(WIDTH5-1 downto 0);
             sel      : in std_logic_vector(5 downto 0);
             outp2   : out std_logic_vector(WIDTH5/2-1 downto 0)
            );
end component;

component M2x1 
        generic (
                    WIDTH6:integer:=2
                 );
      Port (
             input    : in std_logic_vector(WIDTH6-1 downto 0);
             sel      : in std_logic_vector(5 downto 0);
             outp    : out std_logic
            );
end component;

signal temp_outp1: std_logic_vector(TOP_WIDTH/2-1 downto 0);
signal temp_outp2: std_logic_vector(TOP_WIDTH/4-1 downto 0);
signal temp_outp3: std_logic_vector(TOP_WIDTH/8-1 downto 0);
signal temp_outp4: std_logic_vector(TOP_WIDTH/16-1 downto 0);
signal temp_outp5: std_logic_vector(TOP_WIDTH/32-1 downto 0);


begin

M32: M64x32     generic map (WIDTH1 => TOP_WIDTH) 
            port map(
                input   => TOP_input,    
                sel     => TOP_sel,   
                outp32  => temp_outp1   
                    );
       
M16: M32x16 generic map (WIDTH2 => TOP_WIDTH/2) 
        port map(
                input   => temp_outp1,    
                sel     => TOP_sel,   
                outp16  => temp_outp2   
                    );
                    
M8: M16x8 generic map (WIDTH3 => TOP_WIDTH/4) 
        port map(
                input   => temp_outp2,    
                sel     => TOP_sel,   
                outp8  => temp_outp3   
                    );
                    
M4: M8x4 generic map (WIDTH4 => TOP_WIDTH/8) 
        port map(
                input   => temp_outp3,    
                sel     => TOP_sel,   
                outp4  => temp_outp4   
                    );

M2: M4x2 generic map (WIDTH5 => TOP_WIDTH/16) 
        port map(
                input   => temp_outp4,    
                sel     => TOP_sel,   
                outp2   => temp_outp5   
                    );
                    
M1: M2x1 generic map (WIDTH6 => TOP_WIDTH/32) 
         port map(
                input   => temp_outp5,    
                sel     => TOP_sel,   
                outp  => TOP_outp   
                    );               
end Behavioral;
