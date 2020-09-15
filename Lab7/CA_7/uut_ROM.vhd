--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:55:01 09/14/2020
-- Design Name:   
-- Module Name:   C:/Users/Saman/Xilinx/Projects/CA_7/uut_ROM.vhd
-- Project Name:  CA_7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ROM
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
 
ENTITY uut_ROM IS
END uut_ROM;
 
ARCHITECTURE behavior OF uut_ROM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ROM
    PORT(
         Address : IN  std_logic_vector(1 downto 0);
         clk : IN  std_logic;
         Data_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Address : std_logic_vector(1 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal Data_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ROM PORT MAP (
          Address => Address,
          clk => clk,
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
		Address <= "00";
      wait for clk_period*10;
		Address <= "01";
      wait for clk_period*10;
		Address <= "10";
      wait for clk_period*10;
		Address <= "11";
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
