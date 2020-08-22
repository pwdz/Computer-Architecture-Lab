-- TestBench Template 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Comparator4bit_Test IS
END Comparator4bit_Test;

ARCHITECTURE behavior OF Comparator4bit_Test IS 

-- Component Declaration
	COMPONENT Comparator4bit
	Port(
	a, b: in std_logic_vector(3 downto 0);
	aGTb : out  STD_LOGIC;
	aEQb : out  STD_LOGIC;
	aLTb : out  STD_LOGIC);
	END COMPONENT;

 -- Inputs
	signal a : std_logic_vector(3 downto 0) := "0000";
	signal b : std_logic_vector(3 downto 0) := "0000";
	
 -- Outputs
	signal aGTb, aEQb, aLTb: std_logic;

BEGIN

-- Component Instantiation
	comparator: Comparator4bit PORT MAP(a => a, b => b, aGTb => aGTb, aEQb => aEQb, aLTb => aLTb);

	stim_proc: process
	begin
		-- hold reset state for 100 ns.
		wait for 100 ns;
		
		a <= "1000";
		b <= "0000";
		wait for 100 ns;

		a <= "0001";
		b <= "1000";
		wait for 100 ns;

		a <= "0100";
		b <= "0101";
		wait for 100 ns;

		a <= "1111";
		b <= "1110";
		wait for 100 ns;
		
		a <= "1010";
		b <= "1010";
	end process;	
END;


 
