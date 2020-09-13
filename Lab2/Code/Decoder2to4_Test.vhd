-- TestBench Template 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Decoder2to4_Test IS
END Decoder2to4_Test ;

ARCHITECTURE behavior OF Decoder2to4_Test IS 

-- Component Declaration
	COMPONENT Decoder2to4
	Port ( I : in  STD_LOGIC_VECTOR (1 downto 0);
			  O : out std_logic_vector (3 downto 0));
	END COMPONENT;

 -- Inputs
	signal I : std_logic_vector(1 downto 0):="11";
 -- Outputs
	signal O: std_logic_vector(3 downto 0);

BEGIN

-- Component Instantiation
	dec: Decoder2to4 PORT MAP(I => I,O => O);

	stim_proc: process
	begin
		-- hold reset state for 100 ns.
		wait for 100 ns;
		I <= "10";
		wait for 100 ns;
		I <= "01";
		wait for 100 ns;
		I <= "00";
	end process;	
END;


 
