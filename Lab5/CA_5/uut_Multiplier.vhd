--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:04:57 09/11/2020
-- Design Name:   
-- Module Name:   C:/Users/Saman/Xilinx/Projects/CA_5/uut_Multiplier.vhd
-- Project Name:  CA_5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Multiplier
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
 
ENTITY uut_Multiplier IS
END uut_Multiplier;
 
ARCHITECTURE behavior OF uut_Multiplier IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Multiplier
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Product : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Product : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Multiplier PORT MAP (
          A => A,
          B => B,
          Product => Product
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		A <= "0001";
		B <= "1111";
      wait for 100 ns;	
		A <= "0010";
		B <= "1111";
      wait for 100 ns;	
		A <= "0101";
		B <= "0111";
      wait for 100 ns;	
		A <= "1101";
		B <= "1111";
      wait for 100 ns;	
		A <= "1111";
		B <= "1111";
      wait;
   end process;

END;
