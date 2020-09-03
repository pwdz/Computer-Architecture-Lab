--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:11:20 09/03/2020
-- Design Name:   
-- Module Name:   C:/Users/Saman/Xilinx/Projects/CA_4/ripple_carry_test.vhd
-- Project Name:  CA_4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ripple_carry_adder
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
 
ENTITY ripple_carry_test IS
END ripple_carry_test;
 
ARCHITECTURE behavior OF ripple_carry_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ripple_carry_adder
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Sum : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ripple_carry_adder PORT MAP (
          A => A,
          B => B,
          Sum => Sum,
          Cout => Cout
        );

   stim_proc: process
   begin		
      A <= "0000";
		B <= "1111";
      wait for 20 ns;
		A <= "0001";
		B <= "1111";
      wait for 20 ns;
		A <= "1010";
		B <= "0111";
      wait for 20 ns;
		A <= "0011";
		B <= "0110";
      wait for 20 ns;	
		A <= "0001";
		B <= "0011";
      wait;
   end process;

END;
