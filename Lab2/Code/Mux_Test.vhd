-- TestBench Template 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Mux_Test IS
END Mux_Test ;

ARCHITECTURE behavior OF Mux_Test IS 

-- Component Declaration
	COMPONENT Mux
	Port ( D1 : in  STD_LOGIC;
           D2 : in  STD_LOGIC;
			  S : in  STD_LOGIC;
           R : out  STD_LOGIC);
	END COMPONENT;

 -- Inputs
	signal D1 : std_logic:='1';
	signal D2 : std_logic:= '0';
	signal S : std_logic := '0';
 -- Outputs
	signal R: std_logic;

BEGIN

-- Component Instantiation
	mux1: Mux PORT MAP(D1 => D1,D2 => D2, S => S, R => R);

	stim_proc: process
	begin
		-- hold reset state for 100 ns.
		wait for 100 ns;
		
		S <= '1';
		wait for 100 ns;
		D2 <= '1';
		S <= '0';
		wait for 100 ns;
		S <= '1';
		wait for 200 ns;
		D1 <= '0';
		S <= '0';
	end process;	
END;


 
