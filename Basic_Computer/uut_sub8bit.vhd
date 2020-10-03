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
 
ENTITY uut_sub8bit IS
END uut_sub8bit ;
 
ARCHITECTURE behavior OF uut_sub8bit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
	component sub_8bit is
    Port ( A : in  STD_LOGIC_VECTOR(7 downto 0);
           B : in  STD_LOGIC_VECTOR(7 downto 0);
           Sub : out  STD_LOGIC_VECTOR(7 downto 0);
           Borrow : out  STD_LOGIC);
	end component sub_8bit;
    

   
   signal A: std_logic_vector(7 downto 0) := "00000001";
	signal B: std_logic_vector(7 downto 0) := "00000000";
	signal Sub: std_logic_vector(7 downto 0);
	signal Borrow: std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sub_8bit PORT MAP (
          A => A,
          B => B,
          Sub => Sub,
			 Borrow => Borrow
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
      B <= "00001110";
		
      wait for 100 ns ;
      B <= "10000000";
      wait for 100 ns;
      A <= "01111110";
		B <= "00000010";
   end process;

END;
