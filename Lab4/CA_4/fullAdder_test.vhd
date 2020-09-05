--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:12:55 08/21/2020
-- Design Name:   
-- Module Name:   C:/Users/Saman/Xilinx/Projects/CA_1/fullAdder_test.vhd
-- Project Name:  CA_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fullAdder
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
 
ENTITY fullAdder_test IS
END fullAdder_test;
 
ARCHITECTURE behavior OF fullAdder_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fullAdder
    PORT(
         i1 : IN  std_logic;
         i2 : IN  std_logic;
         cin : IN  std_logic;
         sum : OUT  std_logic;
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i1 : std_logic := '0';
   signal i2 : std_logic := '0';
   signal cin : std_logic := '0';

 	--Outputs
   signal sum : std_logic;
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fullAdder PORT MAP (
          i1 => i1,
          i2 => i2,
          cin => cin,
          sum => sum,
          cout => cout
        );

   -- Stimulus process
   stim_proc: process
   begin		
      i1 <= '0';
		i2 <= '0';
		cin <= '0';
      wait for 20 ns;
		i1 <= '0';
		i2 <= '1';
		cin <= '0';
      wait for 20 ns;
		i1 <= '1';
		i2 <= '1';
		cin <= '0';
      wait for 20 ns;
		i1 <= '1';
		i2 <= '1';
		cin <= '1';
      wait for 20 ns;	
		i1 <= '1';
		i2 <= '0';
		cin <= '1';
      wait for 20 ns;	
      wait;
   end process;

END;
