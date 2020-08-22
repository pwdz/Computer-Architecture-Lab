----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:59:58 08/22/2020 
-- Design Name: 
-- Module Name:    Decoder1to2 - Behavioral 
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

entity Decoder1to2 is
    Port ( I : in  STD_LOGIC;
			  O : out std_logic_vector (1 downto 0));
end Decoder1to2;

architecture structure of Decoder1to2 is
	component not_gate is
		 Port( A: in  STD_LOGIC;
           B: out  STD_LOGIC);
	end component or_gate ;

begin
	O(1) <= I;
	not0: not_gate port map(A=>I,B=>O(0));
end structure;

