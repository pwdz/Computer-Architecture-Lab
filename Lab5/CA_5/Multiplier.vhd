----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:57:39 09/11/2020 
-- Design Name: 
-- Module Name:    Multiplier - Behavioral 
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

entity Multiplier is
    Port ( A, B: in  STD_LOGIC_VECTOR(3 downto 0);
           Product : out  STD_LOGIC_VECTOR(7 downto 0));
end Multiplier;

architecture Behavioral of Multiplier is
	component fullAdder is
		Port ( i1 : in  STD_LOGIC;
             i2 : in  STD_LOGIC;
             cin : in  STD_LOGIC;
             sum : out  STD_LOGIC;
             cout : out  STD_LOGIC);
	end component fullAdder;
	component halfAdder is
		Port ( in1 : in  STD_LOGIC;
             in2 : in  STD_LOGIC;
				 Co : out  STD_LOGIC;
				 S : out  STD_LOGIC);
	end component halfAdder;
	component and_gate is
		Port ( A : in  STD_LOGIC;
				 B : in  STD_LOGIC;
				 C : out  STD_LOGIC);
	end component and_gate;
	
	signal addLevel0, addLevel1: STD_LOGIC_VECTOR(6 downto 0);
	signal pp: STD_LOGIC_VECTOR(15 downto 0);
	signal addLevel3: STD_LOGIC_VECTOR(2 downto 0);
	
begin
	and_instance0: and_gate port map (A => A(0), B => B(0), C => pp(0));
	and_instance1: and_gate port map (A => A(0), B => B(1), C => pp(1));
	and_instance2: and_gate port map (A => A(0), B => B(2), C => pp(2));
	and_instance3: and_gate port map (A => A(0), B => B(3), C => pp(3));
	and_instance4: and_gate port map (A => A(1), B => B(0), C => pp(4));
	and_instance5: and_gate port map (A => A(1), B => B(1), C => pp(5));
	and_instance6: and_gate port map (A => A(1), B => B(2), C => pp(6));
	and_instance7: and_gate port map (A => A(1), B => B(3), C => pp(7));
	and_instance8: and_gate port map (A => A(2), B => B(0), C => pp(8));
	and_instance9: and_gate port map (A => A(2), B => B(1), C => pp(9));
	and_instance10: and_gate port map (A => A(2), B => B(2), C => pp(10));
	and_instance11: and_gate port map (A => A(2), B => B(3), C => pp(11));
	and_instance12: and_gate port map (A => A(3), B => B(0), C => pp(12));
	and_instance13: and_gate port map (A => A(3), B => B(1), C => pp(13));
	and_instance14: and_gate port map (A => A(3), B => B(2), C => pp(14));
	and_instance15: and_gate port map (A => A(3), B => B(3), C => pp(15));

	half_adder_instance0: halfAdder port map(in1 => pp(1), in2 => pp(4), Co => addLevel0(0), S => Product(1));
	full_adder_instance0: fullAdder port map(i1 => pp(2), i2 => pp(5), cin => addLevel0(0), sum => addLevel0(1), cout => addLevel0(2));
	full_adder_instance1: fullAdder port map(i1 => pp(3), i2 => pp(6), cin => addLevel0(2), sum => addLevel0(3), cout => addLevel0(4));
	half_adder_instance1: halfAdder port map(in1 => pp(7), in2 => addLevel0(4), S => addLevel0(5), Co => addLevel0(6));

	half_adder_instance2: halfAdder port map(in1 => addLevel0(1), in2 => pp(8), Co => addLevel1(0), S => Product(2));
	full_adder_instance3: fullAdder port map(i1 => pp(9), i2 => addLevel0(3), cin => addLevel1(0), sum => addLevel1(1), cout => addLevel1(2));
	full_adder_instance4: fullAdder port map(i1 => pp(10), i2 => addLevel0(5), cin => addLevel1(2), sum => addLevel1(3), cout => addLevel1(4));
	full_adder_instance5: fullAdder port map(i1 => pp(11), i2 => addLevel0(6), cin => addLevel1(4), sum => addLevel1(5), cout => addLevel1(6));

	half_adder_instance3: halfAdder port map(in1 => pp(12), in2 => addLevel1(1), Co => addLevel3(0), S => Product(3));
	full_adder_instance6: fullAdder port map(i1 => pp(13), i2 => addLevel1(3), cin => addLevel3(0), sum => Product(4), cout => addLevel3(1));
	full_adder_instance7: fullAdder port map(i1 => pp(14), i2 => addLevel1(5), cin => addLevel3(1), sum => Product(5), cout => addLevel3(2));
	full_adder_instance8: fullAdder port map(i1 => pp(15), i2 => addLevel3(2), cin => addLevel1(6), sum => Product(6), cout => Product(7));

	Product(0) <= pp(0);
end Behavioral;
