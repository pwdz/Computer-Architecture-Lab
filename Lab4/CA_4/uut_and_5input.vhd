-- TestBench Template 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY uut_and_5input IS
END uut_and_5input;

ARCHITECTURE behavior OF uut_and_5input IS 

-- Component Declaration
	COMPONENT and_5input
		 Port ( I : in std_logic_vector(4 downto 0);
			  O : out std_logic);
	END COMPONENT;

 -- Inputssignal I : std_logic_vector(4 downto 0) := "11000";
	
	signal A: std_logic := '1';
	signal B: std_logic := '0';
	
 -- Outputs
	signal O: std_logic;

BEGIN

-- Component Instantiation
	instance: and_5input PORT MAP(I => A&B&"111", O => O);

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


 
