----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/09/2021 10:20:41 PM
-- Design Name: 
-- Module Name: Mux64x1_tb - Behavioral
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

entity Mux64x1_tb is
        generic(TOP_WIDTH_TB:integer:=64);
--  Port ( );
end Mux64x1_tb;

architecture Behavioral of Mux64x1_tb is

component Mux64x1
        generic (
                    TOP_WIDTH:integer:=64
                 );
      Port (
             TOP_input: in std_logic_vector(TOP_WIDTH-1 downto 0);
             TOP_sel    : in std_logic_vector(5 downto 0);
             TOP_outp   : out std_logic
            );
end component;

signal tb_top_input: std_logic_vector(TOP_WIDTH_TB-1 downto 0);
signal tb_top_sel: std_logic_vector(5 downto 0);
signal tb_outp: std_logic;

constant clock_period:time:=10 ns;

begin

MUX_1: Mux64x1
                generic map (TOP_WIDTH => TOP_WIDTH_TB)
                port map (
                        TOP_input => tb_top_input,
                        TOP_sel   => tb_top_sel,
                        TOP_outp  => tb_outp
                        );


GEN_TB_SIGNALS: process
                begin
                    tb_top_input <= x"AAAAAAAAAAAAAAAA";
                    wait for clock_period;
                    tb_top_sel   <=  (others =>'0');
                    
                    wait for clock_period;
                    tb_top_sel   <= b"000001";
                    
                    wait for clock_period;
                    tb_top_sel   <= b"000010";
                    
                    wait for clock_period;
                    tb_top_sel   <= b"000011";
                    
                    wait for clock_period;
                    tb_top_sel   <= b"000100";
                    
                    wait for clock_period;
                    tb_top_sel   <= b"000101";
                    
                    wait for clock_period;
                    tb_top_sel   <= b"000110";  
                    
                    wait for clock_period;
                    tb_top_sel   <= b"000111";
                    
                    wait for clock_period;
                    tb_top_sel   <= b"001000";

                  wait;
                end process;

end Behavioral;
