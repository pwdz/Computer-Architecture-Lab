--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:13:14 09/29/2020
-- Design Name:   
-- Module Name:   D:/AUT/Term4/CA/Lab/Lab8/uut_divider.vhd
-- Project Name:  Lab8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Divider
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
 
ENTITY uut_divider IS
END uut_divider;
 
ARCHITECTURE behavior OF uut_divider IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
	COMPONENT Divider
	PORT(
		clk : IN  std_logic;
		reset : IN  std_logic;
		start : IN  std_logic;
		m : IN  std_logic_vector(15 downto 0);
		n : IN  std_logic_vector(7 downto 0);
		quotient : OUT  std_logic_vector(7 downto 0);
		remainder : OUT  std_logic_vector(7 downto 0);
		ready : OUT  std_logic;
		ovfl : OUT  std_logic
	  );
	END COMPONENT;
 
   signal quotient : std_logic_vector(7 downto 0);
   signal remainder : std_logic_vector(7 downto 0);
   signal ready : std_logic;
   signal ovfl : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   div : Divider PORT MAP (
          clk => cl,
          reset => res,
          start => st,
          m => mdividand,
          n => ndivisor,
          quotient => qu,
          remainder => remain,
          ready =>rea,
          ovfl => ovf
        );
	signal cl, res, st, rea, ovf :std_logic;
	signal  mdividand : std_Logic_vector(15 downto 0);
	signal  ndivisor, qu, remain : std_Logic_vector(7 downto 0);
	

	res <= '0', '1' after 10 ns, '0' after 20 ns;
	st <= '0', '1' after 20 ns, '0' after 30 ns;
	cl <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, '1' after 25 ns, '1' after 30 ns, '0' after 35 ns, '1' after 40 ns, '0' after 45 ns, '1' after 50 ns, '0' after 55 ns, '1' after 60 ns, '0' after 65 ns, '1' after 70 ns, '0' after 75 ns, '1' after 80 ns, '0' after 85 ns, '1' after 90 ns, '0' after 95 ns, '1' after 100 ns, '0' after 105 ns, '1' after 110 ns, '0' after 115 ns, '1' after 120 ns, '0' after 125 ns, '1' after 130 ns, '0' after 135 ns, '1' after 140 ns, '0' after 145 ns, '1' after 150 ns, '0' after 155 ns, '1' after 160 ns, '0' after 165 ns, '1' after 170 ns, '0' after 175 ns, '1' after 180 ns, '0' after 185 ns, '1' after 190 ns, '0' after 195 ns, '1' after 200 ns, '0' after 205 ns, '1' after 210 ns;
	mdividand <= "0000101001110101";
	ndivisor <= "00011010";

END;