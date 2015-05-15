-------------------------------------------------------------------------------
--! @file
--! @brief Test module
--!
--! Implements test module for doxygen
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
-------------------------------------------------------------------------------
--! Test entity declaration
-------------------------------------------------------------------------------
entity test is
  generic
  (
    g_ClkFreqMHz     : real := 50.0
  );
  port
  (
    p_Clk      : in std_logic;
    p_Rst      : in std_logic
  ); 
end test;
      
-------------------------------------------------------------------------------
--! Test architecture declaration
-------------------------------------------------------------------------------
architecture behavioral_test of test is
  signal sig1 : std_logic := '0';
begin

  -----------------------------------------------------------------------------
  --! @brief Process to manage reception of packets
  --! 
  --! Gets 32 bit words from PROC_RX_WORD32 transfers them to the receive
  --! buffer. Manages frame delimiters and other command codes.
  --! 
  --! @param[in]   p_Rst  Active high asynchronous reset
  --! @param[in]   p_Clk  Clock, used on rising edge
  --!
  --! @vhdlflow [PROC_RX_PKT flow]
  -----------------------------------------------------------------------------
  PROC_RX_PKT : process(p_Rst, p_Clk)
  begin
    sig1 <= not sig1;
  end process PROC_RX_PKT;
 
  -----------------------------------------------------------------------------
  --! @brief Process to manage reception of 32 bit words
  --! 
  --! Gets 8 bit words from decoder and assembles them into 32 bit words
  --! 
  --! @param[in]   p_Clk  Clock, used on rising edge
  --!
  --! @vhdlflow [PROC_RX_WORD32 flow]
  -----------------------------------------------------------------------------
  PROC_RX_WORD32 : process(p_Clk)
  begin
 
  
  end process PROC_RX_WORD32;
 
  -----------------------------------------------------------------------------
  --! @brief Process to manage reception of bits
  --! 
  --! Gets 10 bit words from the data recovery component. No reset is used,
  --! as this process will typically be much faster than the system clock,
  --! 
  --! @param[in]   p_DataClk  Clock, used on rising edge
  ----------------------------------------------------------------------------- 
  PROC_RX_BIT : process(p_DataClk)
  begin
 
 
  end process PROC_RX_BIT;
    -----------------------------------------------------------------------------
  --! @brief Process to manage reception of nrzi bits
  --! 
  --! Gets bits from the data recovery component and performs nrzi decoding.
  --! 
  --! @param[in]   p_DataClk  Clock, used on rising edge
  -----------------------------------------------------------------------------
  PROC_RX_NRZI_BIT : process(p_DataClk)
  begin
 
  
  end process PROC_RX_NRZI_BIT;
 
end behavioral_test;
