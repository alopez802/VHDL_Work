----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/12/2021 03:41:19 PM
-- Design Name: 
-- Module Name: ALU - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    
          Port (
                ALU_clk     : in std_logic;
                ALU_rst     : in std_logic; 
                ALU_input1  : in std_logic_vector(3 downto 0);
                ALU_input2  : in std_logic_vector(3 downto 0);
                ALU_switch  : in std_logic_vector(1 downto 0);
                ALU_output  : out std_logic_vector(7 downto 0)
                );
end ALU;

architecture Behavioral of ALU is

component MUL 
    Port (
           mul_clk: in std_logic;
           mul_rst: in std_logic;
           go:      in std_logic;
           M:       in std_logic_vector(3 downto 0);
           Q:       in std_logic_vector(3 downto 0);
           Product: out std_logic_vector(7 downto 0)
          );
end component;

component FA 
             Port (
                  Cin   : in std_logic;
                  A     : in std_logic;
                  B     : in std_logic;
                  sum   : out std_logic;
                  cout  : out std_logic
                  
                  
                   );
end component;

component divide 
    
    Port (
           div_clk: in std_logic;
           div_rst: in std_logic;
           go:      in std_logic;
           Q:       in std_logic_vector(3 downto 0);
           D:       in std_logic_vector(3 downto 0);
           Division: out std_logic_vector(7 downto 0)
          );
end component;

signal Internal_carry: std_logic_vector(8 downto 0); 
signal sum_out :std_logic_vector(7 downto 0):=x"00";
signal input_1 : std_logic_vector(7 downto 0);
signal input_2 : std_logic_vector(7 downto 0);


signal mul_output: std_logic_vector(7 downto 0);
signal ALU_go: std_logic;
signal ALU_go1: std_logic;

signal div_out : std_logic_vector(7 downto 0);

begin
input_1 <= x"0" & ALU_input1;
input_2 <= x"f" & not ALU_input2 when ALU_switch = "01" else x"0" & ALU_input2;

Internal_carry(0) <= ALU_switch(0);

GEN_WRAPPER: for i in 0 to 7 generate 

        SUBorADD: FA port map (
                              A   => input_1(i),
                              Cin => Internal_carry(i),
                              B   => input_2(i),
                             Sum  => sum_out(i),
                             Cout => Internal_carry(i+1)
                            );
      end generate;   




ALU_go <= 'U' when ALU_switch = "00" else 
          'U' when ALU_switch = "01" else
          '1' when ALU_switch = "10" else
          'U' when ALU_switch = "11"; 
MULITPLY: MUL 
    port map(
             mul_clk => ALU_clk,
             mul_rst => ALU_rst,
             go      => ALU_go,
             M       => ALU_input1,
             Q       => ALU_input2,
             Product => mul_output      
            
             );

ALU_go1 <= 'U' when ALU_switch = "00" else 
           'U' when ALU_switch = "01" else
           'U' when ALU_switch = "10" else
           '1' when ALU_switch = "11"; 

DIV: divide            
    port map(
            div_clk => ALU_clk,
            div_rst => ALU_rst,
            go      => ALU_go1,
            Q       => ALU_input1,
            D       => ALU_input2,
            Division => div_out
       
            );
            

OUTPUT: process(ALU_switch, ALU_clk)
        begin
        case ALU_switch is
            when "00" => ALU_output <= sum_out;
            when "01" => ALU_output <= sum_out;
            when "10" => ALU_output <= mul_output;
            when "11" => ALU_output <= div_out;       
            when others => ALU_output <= "00000000";     
        end case; 
        end process;             

end Behavioral;