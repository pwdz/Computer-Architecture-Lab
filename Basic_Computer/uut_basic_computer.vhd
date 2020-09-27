--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:31:44 09/26/2020
-- Design Name:   
-- Module Name:   C:/Users/Saman/Xilinx/Projects/Basic_Computer/uut_basic_computer.vhd
-- Project Name:  Basic_Computer
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Basic_Computer
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
 
ENTITY uut_basic_computer IS
END uut_basic_computer;
 
ARCHITECTURE behavior OF uut_basic_computer IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Basic_Computer
    PORT(
         data : INOUT  std_logic_vector(7 downto 0);
         address : IN  std_logic_vector(2 downto 0);
         rst : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal address : std_logic_vector(2 downto 0) := (others => '0');
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

	--BiDirs
   signal data : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Basic_Computer PORT MAP (
          data => data,
          address => address,
          rst => rst,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		rst <= '0';
      wait for 50 ns;	
		rst <= '1';
      wait;
   end process;

END;
