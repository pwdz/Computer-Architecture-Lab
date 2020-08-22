----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:41:53 08/22/2020 
-- Design Name: 
-- Module Name:    MUX - Behavioral 
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

entity MUX is
    Port ( D1 : in  STD_LOGIC;
           D2 : in  STD_LOGIC;
           R : out  STD_LOGIC;
           S : in  STD_LOGIC);
end MUX;

architecture structure of MUX is
component and_gate is
	Port(
			A,B: in STD_LOGIC;
			C: out STD_LOGIC);
	end component and_gate;
	component or_gate is
	Port(
			A,B: in STD_LOGIC;
			C: out STD_LOGIC);
	end component or_gate;
	component not_gate is
	Port(
			A: in STD_LOGIC;
			C: out STD_LOGIC);
	end component not_gate;
	signal not_S,and_D1,and_D2 : STD_LOGIC;
begin
	not_instance0: not_gate port map ( A => D1, C => not_S);
	and_instance0: and_gate port map ( A => D1, B => not_s , C => and_D1);
	and_instance1: and_gate port map ( A => D2, B => S , C =>and_D2 );
	or_instance0: or_gate port map ( A => and_1, B => and_2 , C =>R);
end structure;

