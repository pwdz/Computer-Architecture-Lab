----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:53:46 09/25/2020 
-- Design Name: 
-- Module Name:    decoder4_16 - Behavioral 
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

entity decoder4_16 is
	 Port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
			  Enable : in STD_LOGIC;
           B : out  STD_LOGIC_VECTOR(15 downto 0));

end decoder4_16;

architecture Behavioral of decoder4_16 is
	component not_gate is
		port ( A : in STD_LOGIC;
				 B : out STD_LOGIC);
	end component not_gate;
	component decoder38 is
		Port ( A : in  STD_LOGIC_VECTOR(2 downto 0);
				 Enable : in STD_LOGIC;
             B : out  STD_LOGIC_VECTOR(7 downto 0));
	end component decoder38;
	component and_gate is
		Port ( A : in STD_LOGIC;
				 B : in STD_LOGIC;
				 C : out STD_LOGIC);
	end component and_gate;
	
	signal notA3 : STD_LOGIC;
	signal first_result: STD_LOGIC_VECTOR(15 downto 0);
	
begin
	not_instance: not_gate port map (A => A(2), B => notA3);
	decoder_instance0: decoder38 port map (A => A(2 downto 0), Enable => A(2), B => first_result(15 downto 8));
	decoder_instance1: decoder38 port map (A => A(2 downto 0), Enable => notA3, B => first_result(7 downto 0));
	and_instance0: and_gate port map (A => first_result(0), B => Enable, C => B(0));
	and_instance1: and_gate port map (A => first_result(1), B => Enable, C => B(1));
	and_instance2: and_gate port map (A => first_result(2), B => Enable, C => B(2));
	and_instance3: and_gate port map (A => first_result(3), B => Enable, C => B(3));
	and_instance4: and_gate port map (A => first_result(4), B => Enable, C => B(4));
	and_instance5: and_gate port map (A => first_result(5), B => Enable, C => B(5));
	and_instance6: and_gate port map (A => first_result(6), B => Enable, C => B(6));
	and_instance7: and_gate port map (A => first_result(7), B => Enable, C => B(7));
	and_instance8: and_gate port map (A => first_result(8), B => Enable, C => B(8));
	and_instance9: and_gate port map (A => first_result(9), B => Enable, C => B(9));
	and_instance10: and_gate port map (A => first_result(10), B => Enable, C => B(10));
	and_instance11: and_gate port map (A => first_result(11), B => Enable, C => B(11));
	and_instance12: and_gate port map (A => first_result(12), B => Enable, C => B(12));
	and_instance13: and_gate port map (A => first_result(13), B => Enable, C => B(13));
	and_instance14: and_gate port map (A => first_result(14), B => Enable, C => B(14));
	and_instance15: and_gate port map (A => first_result(15), B => Enable, C => B(15));
end Behavioral;

