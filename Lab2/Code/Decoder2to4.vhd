----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:04:05 08/22/2020 
-- Design Name: 
-- Module Name:    Decoder2to4 - Behavioral 
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

entity Decoder2to4 is
	Port ( I : in  STD_LOGIC_VECTOR (1 downto 0);
			  O : out std_logic_vector (3 downto 0));
end Decoder2to4;
	
architecture structure of Decoder2to4 is
	component Decoder1to2 is
		Port(
			I: in std_logic;
			O: out std_logic_vector (1 downto 0)
		);
	end component Decoder1to2;
	
	component and_gate is
		port(A,B: in std_logic;
			  C: out std_logic);
	end component and_gate;
	
	signal temp_I0_0,temp_I0_1,temp_I1_0,temp_I1_1: std_logic;
begin
	decoder1to2_0: Decoder1to2 port map(I => I(0), O(0)=> temp_I0_0, O(1)=>temp_I0_1);
	decoder1to2_1: Decoder1to2 port map (I => I(1), O(0)=> temp_I1_0, O(1)=>temp_I1_1);
	
	and_0: and_gate port map(A=>temp_I0_0, B=>temp_I1_0, C=> O(0));
	and_1: and_gate port map(A=>temp_I0_1, B=>temp_I1_0, C=> O(1));
	and_2: and_gate port map(A=>temp_I0_0, B=>temp_I1_1, C=> O(2));
	and_3: and_gate port map(A=>temp_I0_1, B=>temp_I1_1, C=> O(3));

end structure;