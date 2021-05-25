----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/25/2021 04:57:27 PM
-- Design Name: 
-- Module Name: sim_vga - Behavioral
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

entity sim_vga is
 generic (tb_strip_hpixels :positive:= 800;   -- Value of pixels in a horizontal line = 800
          tb_strip_vlines  :positive:= 512;   -- Number of horizontal lines in the display = 521
          tb_strip_hbp     :positive:= 144;   -- Horizontal back porch = 144 (128 + 16)
          tb_strip_hfp     :positive:= 784;   -- Horizontal front porch = 784 (128+16 + 640)
          tb_strip_vbp     :positive:= 31;    -- Vertical back porch = 31 (2 + 29)
          tb_strip_vfp     :positive:= 511;    -- Vertical front porch = 511 (2+29+ 480)
          tb_top_width     :integer:= 8;   
          tb_top_depth     :integer:= 4    
         );
--  Port ( );
end sim_vga;

architecture Behavioral of sim_vga is

component vga_initials_top is
 generic (strip_hpixels :positive:= 800;   -- Value of pixels in a horizontal line = 800
          strip_vlines  :positive:= 512;   -- Number of horizontal lines in the display = 521
          strip_hbp     :positive:= 144;   -- Horizontal back porch = 144 (128 + 16)
          strip_hfp     :positive:= 784;   -- Horizontal front porch = 784 (128+16 + 640)
          strip_vbp     :positive:= 31;    -- Vertical back porch = 31 (2 + 29)
          strip_vfp     :positive:= 511;    -- Vertical front porch = 511 (2+29+ 480)
          top_width     :integer:= 8;   
          top_depth     :integer:= 4    
         );
    Port ( clk  : in STD_LOGIC;
           rst  : in STD_LOGIC;
           fifo_rst: in std_logic;
           top_serial : in std_logic;
           BP_R : in  std_logic_vector(1 downto 0);
           BP_G : in  std_logic_vector(1 downto 0);
           BP_B : in  std_logic_vector(1 downto 0);
           top_fifo_rd : in std_logic;
           top_fifo_empty : out std_logic;
           top_fifo_full : out std_logic;
           hsync: out STD_LOGIC;
           vsync: out STD_LOGIC; 
           red  : out STD_LOGIC_VECTOR (3 downto 0); 
           green: out STD_LOGIC_VECTOR (3 downto 0);
           blue : out STD_LOGIC_VECTOR (3 downto 0)   
         );
end component;

signal tb_clk  : std_logic;
signal tb_rst  : std_logic;
signal tb_fifo_rst  : std_logic;
signal tb_serial  : std_logic;
signal tb_BP_R  : std_logic_vector(1 downto 0);
signal tb_BP_G  : std_logic_vector(1 downto 0);
signal tb_BP_B  : std_logic_vector(1 downto 0);
signal tb_fifo_rd  : std_logic;
signal tb_fifo_empty  : std_logic;
signal tb_fifo_full  : std_logic;
signal tb_hsync  : std_logic;
signal tb_vsync  : std_logic;
signal tb_red  : std_logic_vector(3 downto 0);
signal tb_green  : std_logic_vector(3 downto 0);
signal tb_blue : std_logic_vector(3 downto 0);

constant period:time:=10ns;

begin

GEN_CLK: process
         begin
         tb_clk <= '1';
         wait for period/2;
         tb_clk <= '0';
         wait for period/2;         
         end process;

GEN_VGA: vga_initials_top
 generic map 
         (strip_hpixels => tb_strip_hpixels,
          strip_vlines  => tb_strip_vlines,
          strip_hbp     => tb_strip_hbp,
          strip_hfp     => tb_strip_hfp,
          strip_vbp     => tb_strip_vbp,
          strip_vfp     => tb_strip_vfp,
          top_width     => tb_top_width,
          top_depth     => tb_top_depth
         )
         port map(
           clk              => tb_clk,
           rst              => tb_rst,
           fifo_rst         => tb_fifo_rst,
           top_serial       => tb_serial,
           BP_R             => tb_BP_R,
           BP_G             => tb_BP_G,
           BP_B             => tb_BP_B,
           top_fifo_rd      => tb_fifo_rd,
           top_fifo_empty   => tb_fifo_empty,
           top_fifo_full    => tb_fifo_full,
           hsync            => tb_hsync,
           vsync            => tb_vsync,
           red              => tb_red,
           green            => tb_green,
           blue             => tb_blue
         
                  );


TEST: process
      begin
      tb_rst <= '0';
      tb_fifo_rst <= '0';
      tb_serial <= '0';
      tb_BP_R <= "00";
      tb_BP_G <= "00";
      tb_BP_B <= "00";
      tb_fifo_rd <= '1';
      wait for period;
      
      
      end process;
      

end Behavioral;
