----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:05:43 09/03/2020 
-- Design Name: 
-- Module Name:    ripple_carry_adder - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ripple_carry_adder is
    Port ( A : in  STD_LOGIC_VECTOR(7 downto 0);
           B : in  STD_LOGIC_VECTOR(7 downto 0);
           Sum : out  STD_LOGIC_VECTOR(7 downto 0);
           Cout : out  STD_LOGIC);
end ripple_carry_adder;

architecture Behavioral of ripple_carry_adder is
	component fullAdder is
		Port ( i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
	end component fullAdder;
	
	signal c: STD_LOGIC_VECTOR(6 downto 0);
	signal RES_int,A_int,B_int: integer;
	signal temp: STD_LOGIC_VECTOR(7 downto 0);
begin
	--fullAdder_instance0: fullAdder port map ( i1 => A(0), i2 => B(0), cin => '0', sum => Sum(0), cout => c(0));
	--fullAdder_instance1: fullAdder port map ( i1 => A(1), i2 => B(1), cin => c(0), sum => Sum(1), cout => c(1));
	--fullAdder_instance2: fullAdder port map ( i1 => A(2), i2 => B(2), cin => c(1), sum => Sum(2), cout => c(2));
	--fullAdder_instance3: fullAdder port map ( i1 => A(3), i2 => B(3), cin => c(2), sum => Sum(3), cout => c(3));
	--fullAdder_instance3: fullAdder port map ( i1 => A(4), i2 => B(4), cin => c(3), sum => Sum(4), cout => c(4));
	--fullAdder_instance3: fullAdder port map ( i1 => A(5), i2 => B(5), cin => c(4), sum => Sum(5), cout => c(5));
	--fullAdder_instance3: fullAdder port map ( i1 => A(6), i2 => B(6), cin => c(5), sum => Sum(6), cout => c(6));
	--fullAdder_instance3: fullAdder port map ( i1 => A(7), i2 => B(7), cin => c(6), sum => Sum(7), cout => Cout);
	
	A_int <= to_integer(unsigned(A));
   B_int <= to_integer(unsigned(B));
   RES_int <=  A_int + B_int;
	
   temp <= std_logic_vector(to_unsigned(RES_int , temp'length));
   
   Sum <= temp;
	
process (RES_int)
	begin
	if (RES_int > 256) then
	    Cout <= '1';
	else
		Cout <= '0';
	end if;	
end process;
	
end Behavioral;

