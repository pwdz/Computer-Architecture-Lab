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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity carry_lookahead_adder is
    Port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
           B : in  STD_LOGIC_VECTOR(3 downto 0);
			  Cin: in STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR(3 downto 0);
           Cout: out  STD_LOGIC);
end carry_lookahead_adder;

architecture Behavioral of carry_lookahead_adder is
	component or_5input is
		Port ( I : in std_logic_vector(4 downto 0);
			  O : out std_logic);
   end component or_5input;
	
	component and_5input is
		Port ( I : in std_logic_vector(4 downto 0);
			  O : out std_logic);
   end component and_5input;
	
	component xor_3input is
		Port ( I : in std_logic_vector(2 downto 0);
			  O : out std_logic);
   end component xor_3input;
	
	signal G0,G1,G2,G3,P0,P1,P2,P3: STD_LOGIC;
	signal c0,c1,c2,c3: STD_LOGIC;
	signal temp0,temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8,temp9: STD_LOGIC;
begin
	
	and_0: and_5input port map ( I => A(0)&B(0)&"111" , O => G0);
	and_1: and_5input port map ( I => A(1)&B(1)&"111" , O => G1);
	and_2: and_5input port map ( I => A(2)&B(2)&"111" , O => G2);
	and_3: and_5input port map ( I => A(3)&B(3)&"111" , O => G3);
	
	or_0: or_5input port map ( I => A(0)&B(0)&"000" , O => P0);
	or_1: or_5input port map ( I => A(1)&B(1)&"000" , O => P1);
	or_2: or_5input port map ( I => A(2)&B(2)&"000" , O => P2);
	or_3: or_5input port map ( I => A(3)&B(3)&"000" , O => P3);
	
	--calculate c0=G0+CinP0 , temp0=P0Cin
	and_c0: and_5input port map ( I => Cin&P0&"111" , O => temp0);
	or_c0: or_5input port map ( I => G0&temp0&"000" , O => c0);
	
	--calculate c1=G1 + P1G0 + P1P0Cin , temp0=P1P0Cin
	and_c1_1: and_5input port map ( I => P1&G0&"111" , O => temp1);
	and_c1_2: and_5input port map ( I => P1&P0&Cin&"11" , O => temp2);
	or_c1: or_5input port map ( I => G1&temp1&temp2&"00" , O => c1);
	
	--calculate c2=G2 + G1P2 + P2P1G0 + P2P1P0Cin
	and_c2_1: and_5input port map ( I => P2&G1&"111" , O => temp3);
	and_c2_2: and_5input port map ( I => P2&P1&G0&"11" , O => temp4);
	and_c2_3: and_5input port map ( I => P2&P1&P0&Cin&"1" , O => temp5);
	or_c2: or_5input port map ( I => G2&temp3&temp4&temp5&"0" , O => c2);
	
	--calculate c3=G3 + P3G2 + P3P2G1 + P3P2P1G0 + P3P2P1P0Cin
	and_c3_1: and_5input port map ( I => P3&G2&"111" , O => temp6);
	and_c3_2: and_5input port map ( I => P3&P2&G1&"11" , O => temp7);
	and_c3_3: and_5input port map ( I => P3&P2&P1&G0&"1" , O => temp8);
	and_c3_4: and_5input port map ( I => P3&P2&P1&P0&Cin , O => temp9);
	or_c3: or_5input port map ( I => G3&temp6&temp7&temp8&temp9 , O => c3);--Cout
	Cout <= c3;
	
	--Calculate Sum
	xor_s0: xor_3input port map ( I => A(0)&B(0)&Cin , O => Sum(0));
	xor_s1: xor_3input port map ( I => A(1)&B(1)&c0 , O => Sum(1));
	xor_s2: xor_3input port map ( I => A(2)&B(2)&c1 , O => Sum(2));
	xor_s3: xor_3input port map ( I => A(3)&B(3)&c2 , O => Sum(3));
	
end Behavioral;

