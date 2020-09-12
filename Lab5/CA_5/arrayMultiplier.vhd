----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:52:51 09/11/2020 
-- Design Name: 
-- Module Name:    arrayMultiplier - Behavioral 
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

entity arrayMultiplier is
	Port ( A, B: in  STD_LOGIC_VECTOR(3 downto 0);
			 Product : out  STD_LOGIC_VECTOR(7 downto 0));
end arrayMultiplier;

architecture Behavioral of arrayMultiplier is
	component ripple_carry_adder is
		Port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
             B : in  STD_LOGIC_VECTOR(3 downto 0);
             Sum : out  STD_LOGIC_VECTOR(3 downto 0);
             Cout : out  STD_LOGIC);
	end component ripple_carry_adder;
	component and_gate is
		Port ( A : in  STD_LOGIC;
				 B : in  STD_LOGIC;
				 C : out  STD_LOGIC);
	end component and_gate;
	
	signal addLevel0, addLevel1, addLevel2: STD_LOGIC_VECTOR(3 downto 0);
	signal p0, p1, p2, p3, p4 ,p5: STD_LOGIC_VECTOR(3 downto 0);
	signal cout1, cout0: STD_LOGIC;
	
begin
	and_instance0: and_gate port map (A => A(0), B => B(0), C => Product(0));
	and_instance1: and_gate port map (A => A(0), B => B(1), C => p0(0));
	and_instance2: and_gate port map (A => A(0), B => B(2), C => p0(1));
	and_instance3: and_gate port map (A => A(0), B => B(3), C => p0(2));
	and_instance4: and_gate port map (A => A(1), B => B(0), C => p1(0));
	and_instance5: and_gate port map (A => A(1), B => B(1), C => p1(1));
	and_instance6: and_gate port map (A => A(1), B => B(2), C => p1(2));
	and_instance7: and_gate port map (A => A(1), B => B(3), C => p1(3));
	and_instance8: and_gate port map (A => A(2), B => B(0), C => p2(0));
	and_instance9: and_gate port map (A => A(2), B => B(1), C => p2(1));
	and_instance10: and_gate port map (A => A(2), B => B(2), C => p2(2));
	and_instance11: and_gate port map (A => A(2), B => B(3), C => p2(3));
	and_instance12: and_gate port map (A => A(3), B => B(0), C => p3(0));
	and_instance13: and_gate port map (A => A(3), B => B(1), C => p3(1));
	and_instance14: and_gate port map (A => A(3), B => B(2), C => p3(2));
	and_instance15: and_gate port map (A => A(3), B => B(3), C => p3(3));
	p0(3) <= '0';
	p4(2 downto 0) <= addLevel0(3 downto 1);
	p5(2 downto 0) <= addLevel1(3 downto 1);
	p4(3) <= cout0;
	p5(3) <= cout1;
	ripple_adder_instance0: ripple_carry_adder port map(A => p0, B => p1, Sum => addLevel0, Cout => cout0);
	ripple_adder_instance1: ripple_carry_adder port map(A => p2, B => p4, Sum => addLevel1, Cout => cout1);
	ripple_adder_instance2: ripple_carry_adder port map(A => p3, B => p5, Sum => addLevel2, Cout => Product(7));

	Product(1) <= addLevel0(0);
	Product(2) <= addLevel1(0);
	Product(3) <= addLevel2(0);
	Product(4) <= addLevel2(1);
	Product(5) <= addLevel2(2);
	Product(6) <= addLevel2(3);
end Behavioral;
