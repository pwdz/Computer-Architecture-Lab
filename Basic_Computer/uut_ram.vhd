--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:30:22 09/27/2020
-- Design Name:   
-- Module Name:   C:/Users/Saman/Xilinx/Projects/Basic_Computer/uut_ram.vhd
-- Project Name:  Basic_Computer
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAM
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
 
ENTITY uut_ram IS
END uut_ram;
 
ARCHITECTURE behavior OF uut_ram IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM
    PORT(
         clk : IN  std_logic;
         RW : IN  std_logic;
         Reset : IN  std_logic;
         Address : IN  std_logic_vector(2 downto 0);
         Data_in : IN  std_logic_vector(7 downto 0);
         Data_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal RW : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Address : std_logic_vector(2 downto 0) := (others => '0');
   signal Data_in : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Data_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM PORT MAP (
          clk => clk,
          RW => RW,
          Reset => Reset,
          Address => Address,
          Data_in => Data_in,
          Data_out => Data_out
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
		Reset <= '0';
      wait for 100 ns;	
		Reset <= '1';
		RW <= '0';
		Address <= "010";
      wait for clk_period*10;
		Address <= "110";

      -- insert stimulus here 

      wait;
   end process;

END;
