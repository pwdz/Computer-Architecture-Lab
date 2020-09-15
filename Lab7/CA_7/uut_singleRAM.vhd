--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:01:23 09/14/2020
-- Design Name:   
-- Module Name:   C:/Users/Saman/Xilinx/Projects/CA_7/uut_singleRAM.vhd
-- Project Name:  CA_7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAM_Single
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
 
ENTITY uut_singleRAM IS
END uut_singleRAM;
 
ARCHITECTURE behavior OF uut_singleRAM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM_Single
    PORT(
         clk : IN  std_logic;
         RW : IN  std_logic;
         Reset : IN  std_logic;
         Address : IN  std_logic_vector(1 downto 0);
         Data_in : IN  std_logic_vector(7 downto 0);
         Data_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal RW : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Address : std_logic_vector(1 downto 0) := (others => '0');
   signal Data_in : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Data_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM_Single PORT MAP (
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
      wait for clk_period*10;
		Reset <= '1';
		Data_in <= "10101010";
		Address <= "01";
		RW <= '1';
      wait for clk_period;
		Address <= "01";
		RW <= '0';
      wait for clk_period;
		Address <= "11";
		RW <= '0';
      wait for clk_period;
		Address <= "11";
		Data_in <= "01010101";
		RW <= '1';
      wait for clk_period;
		Address <= "11";
		RW <= '0';
      wait;
   end process;

END;
