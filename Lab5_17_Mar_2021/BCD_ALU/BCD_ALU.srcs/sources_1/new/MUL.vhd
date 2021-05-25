----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/15/2021 07:27:47 PM
-- Design Name: 
-- Module Name: MUL - Behavioral
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

entity MUL is
    generic(mul_width: integer:= 4);
    Port (
           mul_clk: in std_logic;
           mul_rst: in std_logic;
           go:      in std_logic;
           M:       in std_logic_vector(mul_width-1 downto 0);
           Q:       in std_logic_vector(mul_width-1 downto 0);
           Product: out std_logic_vector((mul_width*2)-1 downto 0)
          );
end MUL;

architecture Behavioral of MUL is

type state_type is ( 
                     s0,
                     s1, 
                     s2,
                     s3,
                     s4
                   ); 
signal ps_state: state_type; -- present state 
signal M_temp: std_logic_vector(7 downto 0):= x"00";
signal Q_temp: std_logic_vector(7 downto 0):= x"00";
signal P_temp: std_logic_vector(7 downto 0);

begin

process(mul_clk, mul_rst)
variable count: std_logic_vector(2 downto 0);
begin
 if(mul_rst = '1') then
    ps_state <= s0;
 end if;
 if(rising_edge(mul_clk)) then
    case ps_state is
    when s0 =>  --Initialize Values
        P_temp <= x"00";
        M_temp <= x"0" & M(3 downto 0);
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
        Q_temp <= Q_temp - '1';
        P_temp <= M_temp+P_temp;
        ps_state <= s1;
        end if;
    when s2 =>  -- Add A to M
        Product  <= P_temp;
        ps_state <= s0;
    when others =>  Product <= x"00";
    end case;
 end if;
end process;

end Behavioral;
