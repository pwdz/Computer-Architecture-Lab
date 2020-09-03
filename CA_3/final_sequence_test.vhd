--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:49:41 09/03/2020
-- Design Name:   
-- Module Name:   C:/Users/Saman/Xilinx/Projects/ComputerArc3/final_sequence_test.vhd
-- Project Name:  ComputerArc3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: final_sequence_detector
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY final_sequence_test IS
END final_sequence_test;
 
ARCHITECTURE behavior OF final_sequence_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT final_sequence_detector
    PORT(
         A : IN  std_logic;
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         B : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal B : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: final_sequence_detector PORT MAP (
          A => A,
          Clk => Clk,
          Reset => Reset,
          B => B
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      A <= '0';
		Reset <= '0';
      wait for 100 ns;	
		Reset <= '1';
		A <= '1';
      wait for Clk_period*10;
		A <= '0';
      wait for Clk_period;
		A <= '1';
      wait for Clk_period*2;
		A <= '0';
      wait for Clk_period;
		A <= '1';
      wait for Clk_period;
		A <= '0';
      wait for Clk_period;
		A <= '1';
      wait for Clk_period*4;


      wait;
   end process;

END;
