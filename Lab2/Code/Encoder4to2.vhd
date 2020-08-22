----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:42:22 08/22/2020 
-- Design Name: 
-- Module Name:    Encoder4to2 - Behavioral 
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

entity Encoder4to2 is
	Port(
	I: in std_logic_vector(3 downto 0);
   O : out STD_LOGIC_VECTOR(1 downto 0));
end Encoder4to2 ;

architecture structure of Encoder4to2 is

	component Encoder2to1 is
		 Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           O : out  STD_LOGIC);
	end component Encoder2to1 ;

	component or_gate is
		 Port ( A,B : in  STD_LOGIC;
           C : out  STD_LOGIC);
	end component or_gate ;

	signal temp_O0_0,temp_O0_1,temp_O1_0,temp_O1_1: std_logic;

begin
	encoder2to1_O1_0: Encoder2to1 port map ( I0 => I(0), I1 => I(2) ,O => temp_O1_0);
	encoder2to1_O1_1: Encoder2to1 port map ( I0 => I(1), I1 => I(3) ,O => temp_O1_1);
	
	encoder2to1_O0_0: Encoder2to1 port map ( I0 => I(0), I1 => I(1) ,O => temp_O0_0);
	encoder2to1_O0_1: Encoder2to1 port map ( I0 => I(2), I1 => I(3) ,O => temp_O0_1);
	
	or0: or_gate port map (A=>temp_O0_0, B=> temp_O0_1, C=>O(0));
	or1: or_gate port map (A=>temp_O1_0, B=> temp_O1_1, C=>O(1));
end structure;

