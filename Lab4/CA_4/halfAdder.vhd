----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:59:08 08/21/2020 
-- Design Name: 
-- Module Name:    halfAdder - Behavioral 
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

entity halfAdder is
    Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           Co : out  STD_LOGIC;
           S : out  STD_LOGIC);
end halfAdder;

architecture structure of halfAdder is
	 component xor_gate is
		  Port ( A : in  STD_LOGIC;
					B : in  STD_LOGIC;
					C : out  STD_LOGIC);
	 end component xor_gate;
	 component and_gate is
		  Port ( A : in  STD_LOGIC;
					B : in  STD_LOGIC;
					C : out  STD_LOGIC);
	 end component and_gate;
begin
	 xor_gate_instance0: xor_gate port map ( A => in1, B => in2, C => S);
	 and_gate_instance0: and_gate port map ( A => in1, B => in2, C => Co);
end structure;

