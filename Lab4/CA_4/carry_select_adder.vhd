----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:25:17 09/05/2020 
-- Design Name: 
-- Module Name:    carry_select_adder - Behavioral 
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

entity carry_select_adder is
		Port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
		  B : in  STD_LOGIC_VECTOR(3 downto 0);
		  Cin: in STD_LOGIC;
		  Sum : out  STD_LOGIC_VECTOR(3 downto 0);
		  Cout: out  STD_LOGIC);
end carry_select_adder;

architecture Behavioral of carry_select_adder is
	component ripple_adder_2bit is
    Port ( A : in  STD_LOGIC_VECTOR(1 downto 0);
           B : in  STD_LOGIC_VECTOR(1 downto 0);
			  Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR(1 downto 0);
           Cout : out  STD_LOGIC);
	end component ripple_adder_2bit;
	
	component MUX is
    Port ( D1 : in  STD_LOGIC;
           D2 : in  STD_LOGIC;
			  S : in  STD_LOGIC;
           O : out  STD_LOGIC);
	end component MUX;
	
	
	component MUX_2ktok is
		 Port ( A : in  STD_LOGIC_VECTOR(1 downto 0);
				  B : in  STD_LOGIC_VECTOR(1 downto 0);
				  S : in STD_LOGIC;
				  O : out  STD_LOGIC_VECTOR(1 downto 0));
	end component MUX_2ktok;

	signal c,c_up,c_down: STD_LOGIC;
	signal sum_up,sum_down: STD_LOGIC_VECTOR(1 downto 0);
begin
	ripple_2bit_instance0: ripple_adder_2bit port map (A => A(1 downto 0), B=>B(1 downto 0), Cin => Cin, Sum=>Sum(1 downto 0),Cout=>c);
	ripple_2bit_instance1_up: ripple_adder_2bit port map (A => A(3 downto 2), B=>B(3 downto 2), Cin => '0', Sum=>sum_up,Cout=>c_up);
	ripple_2bit_instance1_down: ripple_adder_2bit port map (A => A(3 downto 2), B=>B(3 downto 2), Cin => '1', Sum=>sum_down,Cout=>c_down);
	

	mux_sum: MUX_2ktok port map (A => sum_up, B => sum_down, S => c, O => Sum(3 downto 2));
	mux_carry: MUX port map (D1 => c_up, D2 => c_down, S => c, O => Cout);
end Behavioral;

