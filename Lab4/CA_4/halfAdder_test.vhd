--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:54:47 08/21/2020
-- Design Name:   
-- Module Name:   C:/Users/Saman/Xilinx/Projects/CA_1/halfAdder_test.vhd
-- Project Name:  CA_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: halfAdder
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
 
ENTITY halfAdder_test IS
END halfAdder_test;
 
ARCHITECTURE behavior OF halfAdder_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT halfAdder
    PORT(
         in1 : IN  std_logic;
         in2 : IN  std_logic;
         Co : OUT  std_logic;
         S : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in1 : std_logic := '0';
   signal in2 : std_logic := '0';

 	--Outputs
   signal Co : std_logic;
   signal S : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: halfAdder PORT MAP (
          in1 => in1,
          in2 => in2,
          Co => Co,
          S => S
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- insert stimulus here 
		in1 <= '0';
		in2 <= '0';
      wait for 10 ns;
		in1 <= '0';
		in2 <= '1';
      wait for 10 ns;
		in1 <= '1';
		in2 <= '1';
      wait for 10 ns;
		in1 <= '1';
		in2 <= '0';
      wait for 10 ns;	
      wait;
   end process;

END;
