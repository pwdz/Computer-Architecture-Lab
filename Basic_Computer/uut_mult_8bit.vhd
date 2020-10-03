--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:17:07 09/13/2020
-- Design Name:   
-- Module Name:   D:/AUT/Term4/CA/Lab/Lab6/uut_ShiftRegister.vhd
-- Project Name:  Lab6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ShiftRegister
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
 
ENTITY uut_mult_8bit IS
END uut_mult_8bit;
 
ARCHITECTURE behavior OF uut_mult_8bit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
	component mult_8bit is
		Port ( A, B: in  STD_LOGIC_VECTOR(7 downto 0);
			 Product : out  STD_LOGIC_VECTOR(15 downto 0));
	end component mult_8bit;
    

   --Inputs
   signal A: std_logic_vector(7 downto 0) := "00000001";
	signal B: std_logic_vector(7 downto 0) := "00000000";
	signal Product: std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mult_8bit PORT MAP (
          A => A,
          B => B,
          Product => Product
        );

   
   stim_proc: process
   begin		
      wait for 100 ns ;	
      B <= "00000001";

      wait for 70 ns ;
      B <= "00000011";
		
      wait for 100 ns ;
		A <= "10000001";
      
      wait for 100 ns ;
      B <= "00000000";
		
      wait for 100 ns ;
      B <= "01010101";
      wait for 100 ns;
      A <= "01111110";
		
   end process;

END;
