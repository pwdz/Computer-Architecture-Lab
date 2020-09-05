-- TestBench Template 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY uut_carry_select_adder IS
END uut_carry_select_adder ;

ARCHITECTURE behavior OF uut_carry_select_adder IS 

-- Component Declaration
	COMPONENT carry_select_adder
		Port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
           B : in  STD_LOGIC_VECTOR(3 downto 0);
			  Cin: in STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR(3 downto 0);
           Cout: out  STD_LOGIC);
	END COMPONENT;

 -- Inputs
	signal A : std_logic_vector(3 downto 0) := "1001";
	signal B : std_logic_vector(3 downto 0) := "0110";
	signal Cin: std_logic := '0';
 -- Outputs
	signal Sum: std_logic_vector(3 downto 0);
	signal Cout: std_logic;

BEGIN

-- Component Instantiation
	instance: carry_select_adder PORT MAP(A => A, B => B, Cin => Cin, Sum => Sum, Cout => Cout);

	stim_proc: process
	  begin
    -- hold reset state for 100 ns.
    wait for 100 ns;
    
    A <= "1010";
    B <= "0100";
    wait for 100 ns;

    A <= "0001";
    B <= "1111";
    wait for 100 ns;

    A <= "0110";
    B <= "0101";
    wait for 100 ns;

    A <= "0000";
    B <= "1110";
    wait for 100 ns;
    
    A <= "1010";
    B <= "1010";
  end process;  
END;


 
