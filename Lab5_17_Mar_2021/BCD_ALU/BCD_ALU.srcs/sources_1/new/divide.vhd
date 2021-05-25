----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/17/2021 04:19:50 PM
-- Design Name: 
-- Module Name: divide - Behavioral
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

entity divide is
    Port (
           div_clk: in std_logic;
           div_rst: in std_logic;
           go:      in std_logic;
           Q:       in std_logic_vector(3 downto 0);
           D:       in std_logic_vector(3 downto 0);
           Division: out std_logic_vector(7 downto 0)
          );
end divide;

architecture Behavioral of divide is

type state_type is ( 
                     s0,
                     s1, 
                     s2     
                   ); 
signal ps_state: state_type; -- present state 
signal Q_temp: std_logic_vector(7 downto 0):= x"00";
signal D_temp: std_logic_vector(7 downto 0):= x"00";
signal division_temp: std_logic_vector(7 downto 0);

begin

process(div_clk, div_rst)

begin
 if(div_rst = '1') then
    ps_state <= s0;
 end if;
 if(rising_edge(div_clk)) then
    case ps_state is
    when s0 =>  --Initialize Values
        division_temp <= x"00";
        D_temp <= x"0" & D(3 downto 0);
        Q_temp <= x"0" &  Q(3 downto 0);
        if(go = '1') then
            ps_state <= s1;
        else
            ps_state <= s0;
        end if;
    when s1 =>
        if(Q_temp = x"0")then
        ps_state <= s2;
        else
        Q_temp <= Q_temp - D_temp;
        division_temp <= division_temp+'1';
        ps_state <= s1;
        end if;
    when s2 =>  -- Add A to M
        Division  <= division_temp;
        ps_state <= s0;
    when others =>  Division <= x"00";
    end case;
 end if;
end process;

end Behavioral;