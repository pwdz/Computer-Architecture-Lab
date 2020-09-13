-- TestBench Template 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Encoder4to2_Test IS
END Encoder4to2_Test ;

ARCHITECTURE behavior OF Encoder4to2_Test IS 

-- Component Declaration
	COMPONENT Encoder4to2
	Port(
	I: in std_logic_vector(3 downto 0);
   O : out STD_LOGIC_VECTOR(1 downto 0));
	END COMPONENT;

 -- Inputs
	signal I : std_logic_vector(3 downto 0):="1000";
 -- Outputs
	signal O: std_logic_vector(1 downto 0);

BEGIN

-- Component Instantiation
	enc: Encoder4to2 PORT MAP(I => I,O => O);

	stim_proc: process
	begin
		-- hold reset state for 100 ns.
		wait for 100 ns;
		I <= "0100";
		wait for 100 ns;
		I <= "0010";
		wait for 100 ns;
		I <= "0001";
		wait for 200 ns;
		I <= "0000";
	end process;	
END;


 
