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
 
ENTITY uut_ALU IS
END uut_ALU;
 
ARCHITECTURE behavior OF uut_ALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
	component ALU is
	Port (  temp1,temp2: in STD_LOGIC_VECTOR(7 downto 0);
			  C: in STD_LOGIC_VECTOR(1 downto 0);-- 00 -> add | 01 -> sub | 10 -> mult
              CF: out STD_LOGIC;
              temp3: out STD_LOGIC_VECTOR(7 downto 0));
	end component ALU;
    

   --Inputs
   signal temp1: std_logic_vector(7 downto 0) := "00000011";
	signal temp2: std_logic_vector(7 downto 0) := "00000001";
	signal temp3: std_logic_vector(7 downto 0);
	signal C: std_logic_vector(1 downto 0) := "00";
	signal CF: std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          temp1 => temp1,
          temp2 => temp2,
          C => C,
			 CF => CF,
			 temp3 => temp3
        );

   -- "00" => add
	-- "01" => sub
	-- "10" => mult
	
   stim_proc: process
   begin		
      wait for 100 ns ;	
      --C <= "01";

      wait for 70 ns ;
      --C <= "10";
		
      wait for 100 ns ;
		--temp1 <= "10000001";
      
      wait for 100 ns ;
      --C <= "01";
		
      wait for 100 ns ;
      --C <= "00";
      wait for 100 ns;
      --temp1 <= "01111110";
		--temp2 <= "11111111";
		
   end process;

END;
