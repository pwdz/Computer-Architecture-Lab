--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:18:02 09/14/2020
-- Design Name:   
-- Module Name:   C:/Users/Saman/Xilinx/Projects/CA_7/uut_dualRAM.vhd
-- Project Name:  CA_7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAM_Dual
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
 
ENTITY uut_dualRAM IS
END uut_dualRAM;
 
ARCHITECTURE behavior OF uut_dualRAM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM_Dual
    PORT(
         clk : IN  std_logic;
         Reset : IN  std_logic;
         RW1 : IN  std_logic;
         Address1 : IN  std_logic_vector(1 downto 0);
         Data_in1 : IN  std_logic_vector(7 downto 0);
         Data_out1 : OUT  std_logic_vector(7 downto 0);
         RW2 : IN  std_logic;
         Address2 : IN  std_logic_vector(1 downto 0);
         Data_in2 : IN  std_logic_vector(7 downto 0);
         Data_out2 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal RW1 : std_logic := '0';
   signal Address1 : std_logic_vector(1 downto 0) := (others => '0');
   signal Data_in1 : std_logic_vector(7 downto 0) := (others => '0');
   signal RW2 : std_logic := '0';
   signal Address2 : std_logic_vector(1 downto 0) := (others => '0');
   signal Data_in2 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Data_out1 : std_logic_vector(7 downto 0);
   signal Data_out2 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM_Dual PORT MAP (
          clk => clk,
          Reset => Reset,
          RW1 => RW1,
          Address1 => Address1,
          Data_in1 => Data_in1,
          Data_out1 => Data_out1,
          RW2 => RW2,
          Address2 => Address2,
          Data_in2 => Data_in2,
          Data_out2 => Data_out2
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
		Data_in1 <= "10101010";
		Address1 <= "01";
		RW1 <= '1';
		Address2 <= "01";
		RW2 <= '0';
      wait for clk_period*2;
		Address2 <= "10";
		RW2 <= '0';
      wait for clk_period*2;
		Address1 <= "11";
		RW1 <= '0';
      wait for clk_period*2;
		Address2 <= "11";
		Data_in2 <= "01010101";
		RW2 <= '1';
      wait for clk_period*2;
		Address2 <= "10";
		RW2 <= '0';
      wait;
   end process;

END;
