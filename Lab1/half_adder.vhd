----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:37:01 08/22/2020 
-- Design Name: 
-- Module Name:    half_adder - Behavioral 
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

entity half_adder is
    Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           out1 : out  STD_LOGIC;
           out2 : out  STD_LOGIC);
end half_adder;

architecture structure of half_adder is
	component xor_gate is
		Port( A,B: in STD_LOGIC;
				C: out STD_LOGIC);
	end component xor_gate;
	component and_gate is
		Port( A,B: in STD_LOGIC;
				C: out STD_LOGIC);
	end component and_gate;
begin
	xor_instance : xor_gate port map(A => in1, B => in2, C=>out1);
	and_instance : and_gate port map(A => in1, B => in2, C=>out2);
end structure;

