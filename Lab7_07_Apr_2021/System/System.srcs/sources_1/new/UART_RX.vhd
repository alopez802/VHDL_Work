----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/11/2021 05:45:02 PM
-- Design Name: 
-- Module Name: uart - Behavioral
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


-- Set Generic g_CLKS_PER_BIT as follows:
-- g_CLKS_PER_BIT = (Frequency of i_Clk)/(Frequency of UART)
-- Example: 10 MHz Clock, 115200 baud UART
-- (10000000)/(115200) = 869
--
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
entity UART_RX is
  generic (
    g_CLKS_PER_BIT : integer := 869;
    width :integer := 8;
    depth :integer := 4
    );
  port (
                i_Clk       : in  std_logic;
                fifo_rst     : in  std_logic;
                i_RX_Serial   : in  std_logic;
                FIFO_A_read     : in  std_logic;
                FIFO_B_read     : in  std_logic;
                FIFO_A_FULL     : out std_logic;
                FIFO_A_EMPTY     : out std_logic;
                FIFO_B_FULL     : out std_logic;
                FIFO_B_EMPTY     : out std_logic;
                DATAOUT_FIFO_A: out std_logic_vector(7 downto 0);
                DATAOUT_FIFO_B: out std_logic_vector(7 downto 0)
    );
end UART_RX;
 
 
architecture rtl of UART_RX is
 
  type t_SM_Main is (s_Idle, s_RX_Start_Bit, s_RX_Data_Bits,
                     s_RX_Stop_Bit, s_Cleanup);
  signal r_SM_Main : t_SM_Main := s_Idle;
 
  signal r_RX_Data_R : std_logic := '0';
  signal r_RX_Data   : std_logic := '0';
   
  signal r_Clk_Count : integer range 0 to g_CLKS_PER_BIT-1 := 0;
  signal r_Bit_Index : integer range 0 to 7 := 0;  -- 8 Bits Total
  signal r_RX_Byte   : std_logic_vector(7 downto 0) := (others => '0');
  signal o_RX_Byte   : std_logic_vector(7 downto 0);
  signal r_RX_DV     : std_logic := '0';
  signal o_RX_DV     : std_logic := '0';
  signal FAB     : std_logic;
  signal FBB     : std_logic;
  signal o_RX_DVB: std_logic;
  signal o_RX_DVA: std_logic;
  
component module_fifo_regs_no_flags is
  generic (
    g_WIDTH : natural := 8;
    g_DEPTH : integer := 32
    );
  port (
    i_rst_sync : in std_logic;
    i_clk      : in std_logic;
 
    -- FIFO Write Interface
    i_wr_en   : in  std_logic;
    i_wr_data : in  std_logic_vector(g_WIDTH-1 downto 0);
    o_full    : out std_logic;
 
    -- FIFO Read Interface
    i_rd_en   : in  std_logic;
    o_rd_data : out std_logic_vector(g_WIDTH-1 downto 0);
    o_empty   : out std_logic
    );
end component;
  

begin
 FIFO_A_FULL <= FAB;
 FIFO_B_FULL <= FBB;
 

 GEN_FIFO_A: module_fifo_regs_no_flags
           generic map (g_WIDTH => width, g_DEPTH => depth )
           port map(
		          i_clk		 => i_Clk,  
		          i_rst_sync => fifo_rst,
		          i_wr_en	 => o_RX_DVA,
		          i_wr_data	 => o_RX_Byte,
		          i_rd_en	 => FIFO_A_read,
		          o_rd_data	 => DATAOUT_FIFO_A,
		          o_empty	 => FIFO_A_EMPTY,
		          o_full	 => FAB
                    
                   );
  
   COND: process(FAB, FBB)
    begin
    if(FAB = '1') then
        o_RX_DVB   <= o_RX_DV;
    else
        o_RX_DVA <= o_RX_DV;
    end if;
    
    end process;  
                   
 GEN_FIFO_B: module_fifo_regs_no_flags
           generic map (g_WIDTH => width, g_DEPTH => depth )
           port map(
		          i_clk		 => i_Clk,  
		          i_rst_sync => FIFO_RST,
		          i_wr_en	 => o_RX_DVB,
		          i_wr_data  => o_RX_Byte,
		          i_rd_en	 => FIFO_B_read,
		          o_rd_data	 => DATAOUT_FIFO_B,
		          o_empty	 => FIFO_B_EMPTY,
		          o_full	 => FBB
                    
                   );                   
                    
  -- Purpose: Double-register the incoming data.
  -- This allows it to be used in the UART RX Clock Domain.
  -- (It removes problems caused by metastabiliy)
  p_SAMPLE : process (i_Clk)
  begin
    if rising_edge(i_Clk) then
      r_RX_Data_R <= i_RX_Serial;
      r_RX_Data   <= r_RX_Data_R;
    end if;
  end process p_SAMPLE;
   
 
  -- Purpose: Control RX state machine
  p_UART_RX : process (i_Clk)
  begin
    if rising_edge(i_Clk) then
         
      case r_SM_Main is
 
        when s_Idle =>
          r_RX_DV     <= '0';
          r_Clk_Count <= 0;
          r_Bit_Index <= 0;
 
          if r_RX_Data = '0' then       -- Start bit detected
            r_SM_Main <= s_RX_Start_Bit;
          else
            r_SM_Main <= s_Idle;
          end if;
 
           
        -- Check middle of start bit to make sure it's still low
        when s_RX_Start_Bit =>
          if r_Clk_Count = (g_CLKS_PER_BIT-1)/2 then
            if r_RX_Data = '0' then
              r_Clk_Count <= 0;  -- reset counter since we found the middle
              r_SM_Main   <= s_RX_Data_Bits;
            else
              r_SM_Main   <= s_Idle;
            end if;
          else
            r_Clk_Count <= r_Clk_Count + 1;
            r_SM_Main   <= s_RX_Start_Bit;
          end if;
 
           
        -- Wait g_CLKS_PER_BIT-1 clock cycles to sample serial data
        when s_RX_Data_Bits =>
          if r_Clk_Count < g_CLKS_PER_BIT-1 then
            r_Clk_Count <= r_Clk_Count + 1;
            r_SM_Main   <= s_RX_Data_Bits;
          else
            r_Clk_Count            <= 0;
            r_RX_Byte(r_Bit_Index) <= r_RX_Data;
             
            -- Check if we have sent out all bits
            if r_Bit_Index < 7 then
              r_Bit_Index <= r_Bit_Index + 1;
              r_SM_Main   <= s_RX_Data_Bits;
            else
              r_Bit_Index <= 0;
              r_SM_Main   <= s_RX_Stop_Bit;
            end if;
          end if;
 
 
        -- Receive Stop bit.  Stop bit = 1
        when s_RX_Stop_Bit =>
          -- Wait g_CLKS_PER_BIT-1 clock cycles for Stop bit to finish
          if r_Clk_Count < g_CLKS_PER_BIT-1 then
            r_Clk_Count <= r_Clk_Count + 1;
            r_SM_Main   <= s_RX_Stop_Bit;
          else
            r_RX_DV     <= '1';
            r_Clk_Count <= 0;
            r_SM_Main   <= s_Cleanup;
          end if;
 
                   
        -- Stay here 1 clock
        when s_Cleanup =>
          r_SM_Main <= s_Idle;
          r_RX_DV   <= '0';
 
             
        when others =>
          r_SM_Main <= s_Idle;
 
      end case;
    end if;
  end process p_UART_RX;
 
  o_RX_DV   <= r_RX_DV;
  o_RX_Byte <= r_RX_Byte;
   
end rtl;