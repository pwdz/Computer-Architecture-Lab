-- TestBench Template 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY uut_xor_3input IS
END uut_xor_3input ;

ARCHITECTURE behavior OF uut_xor_3input IS 

-- Component Declaration
	COMPONENT xor_3input
		 Port ( I : in std_logic_vector(2 downto 0);
			  O : out std_logic);
	END COMPONENT;

 -- Inputssignal I : std_logic_vector(4 downto 0) := "11000";
	
	signal A: std_logic := '1';
	signal B: std_logic := '0';
	signal C: std_logic := '1';
 -- Outputs
	signal O: std_logic;

BEGIN

-- Component Instantiation
	instance: xor_3input  PORT MAP(I => A&B&C, O => O);

	stim_proc: process
	  begin
    -- hold reset state for 100 ns.
    wait for 100 ns;
    
    A <= '1';
    B <= '1';
    wait for 100 ns;

    A <= '0';
    B <= '0';
    wait for 100 ns;

    A <= '1';
    B <= '0';
    wait for 100 ns;

    A <= '0';
    B <= '1';
    
  end process;  
END;


 
