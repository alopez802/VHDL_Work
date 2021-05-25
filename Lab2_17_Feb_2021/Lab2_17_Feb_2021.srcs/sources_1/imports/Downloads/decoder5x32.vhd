----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/12/2021 11:05:15 AM
-- Design Name: 
-- Module Name: decoder5x32 - Behavioral
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

entity decoder5x32 is
            generic( length: integer:=5;
                     width: integer:=32
                   );
              Port (
--                   top_switch    : in std_logic;
                   top_input     : in std_logic_vector(length-1 downto 0);
                   top_en        : in std_logic;
                   top_output    : out std_logic_vector(width-1 downto 0)
                  
                   );
end decoder5x32;

architecture Behavioral of decoder5x32 is

component decoder2x4
Port (
                    input_0   : in std_logic;
                    input_1   : in std_logic;
                    en        : in std_logic;
                    output    : out std_logic_vector(3 downto 0)                            
                   );
                   
end component;

type t_Integer_Array is array (0 to 3) of std_logic_vector(3 downto 0);
signal r_Number : t_Integer_Array;

type t_Integer_Array1 is array (0 to 3) of std_logic_vector(3 downto 0);
signal r_Number1 : t_Integer_Array1;

signal sw_out: std_logic_vector(width-1 downto 0);

signal en_0  : std_logic;
signal out_top : std_logic_vector(3 downto 0);

signal out_0 : std_logic_vector(3 downto 0);
signal out_1 : std_logic_vector(3 downto 0);
signal out_2 : std_logic_vector(3 downto 0);
signal out_3 : std_logic_vector(3 downto 0);


signal x: std_logic;
signal y: std_logic;
signal z: std_logic;

begin
y <= top_input(1);
z <= top_input(0);



GEN5x32: for i in 0 to 0 generate

     muxTwoOne: decoder2x4 port map (
                                        input_0 => '0',
                                        input_1 => top_input(4),
                                        en      => top_en,
                                        output  => out_top       
                                        );  
end generate;
    

    
GEN0: for i in 0 to 0 generate

     muxTwoOne: decoder2x4 port map (
                                        input_0 => top_input(3),
                                        input_1 => top_input(2),
                                        en      => out_top(0),
                                        output  => out_0        
                                        );
GEN1: for j in 0 to 3 generate

     muxTwoOne: decoder2x4 port map (
                                        input_0  => z,
                                        input_1  => y,
                                        en       => out_0(j),
                                        output   => r_Number(j)          
                                        );
end generate; 
end generate; 


GEN2: for k in 0 to 0 generate

     muxTwoOne: decoder2x4 port map (
                                        input_0 => top_input(3),
                                        input_1 => top_input(2),
                                        en      => out_top(2),
                                        output  => out_2        
                                        );
GEN3: for n in 0 to 3 generate

     muxTwoOne: decoder2x4 port map (
                                        input_0  => z,
                                        input_1  => y,
                                        en       => out_2(n),
                                        output   => r_Number1(n)            
                                        );                                
end generate; 
end generate; 

top_output <= r_Number1(3) & r_Number1(1) & r_Number1(2) & r_Number1(0) & r_Number(3) & r_Number(1) & r_Number(2) & r_Number(0);

--LED: process (top_switch)
--    begin
--    if(top_switch <= '0') then
--    top_output <= sw_out(width/2-1 downto 0);
--    else
--    top_output <= sw_out(width-1 downto width/2);
--end if;
--end process;



end Behavioral;





