----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:05:43 09/03/2020 
-- Design Name: 
-- Module Name:    ripple_carry_adder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ripple_adder_2bit is
    Port ( A : in  STD_LOGIC_VECTOR(1 downto 0);
           B : in  STD_LOGIC_VECTOR(1 downto 0);
			  Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR(1 downto 0);
           Cout : out  STD_LOGIC);
end ripple_adder_2bit;

architecture Behavioral of ripple_adder_2bit is
	component fullAdder is
		Port ( i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
	end component fullAdder;
	
	signal c: STD_LOGIC;
	
begin
	fullAdder_instance0: fullAdder port map ( i1 => A(0), i2 => B(0), cin => Cin, sum => Sum(0), cout => c);
	fullAdder_instance3: fullAdder port map ( i1 => A(1), i2 => B(1), cin => c, sum => Sum(1), cout => Cout);
end Behavioral;

