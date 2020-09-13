-- TestBench Template 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Mux4bit_Test IS
END Mux4bit_Test ;

ARCHITECTURE behavior OF Mux4bit_Test IS 

-- Component Declaration
	COMPONENT Mux4bit 
	Port(
	D: in std_logic_vector(3 downto 0);
	S : in std_logic_vector(1 downto 0);
   R : out STD_LOGIC);
	END COMPONENT;

 -- Inputs
	signal D : std_logic_vector(3 downto 0) := "1010";
	signal S : std_logic_vector(1 downto 0) := "10";
	
 -- Outputs
	signal R: std_logic;

BEGIN

-- Component Instantiation
	mux: Mux4bit PORT MAP(D => D, S => S, R => R);

	stim_proc: process
	begin
		-- hold reset state for 100 ns.
		wait for 100 ns;
		
		S <= "11";
		wait for 100 ns;
		S <= "00";
		wait for 100 ns;
		S <= "01";
		
		wait for 100 ns;
		D <= "0001";
		S <= "00";
		wait for 100 ns;
		S <= "11";
		wait for 100 ns;
		S <= "10";
		wait for 100 ns;
		S <= "01";
	end process;	
END;


 
