----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:05:36 08/22/2020 
-- Design Name: 
-- Module Name:    decoder24 - Behavioral 
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

entity decoder24 is
    Port ( A : in  STD_LOGIC_VECTOR(1 downto 0);
			  Enable : in STD_LOGIC;
           B : out  STD_LOGIC_VECTOR(3 downto 0));
end decoder24;

architecture structure of decoder24 is
	component decoder is
		Port ( inA : in  STD_LOGIC;
				 Enable : in  STD_LOGIC;
				 outB : out  STD_LOGIC_VECTOR(1 downto 0));
	end component decoder;
	component and_gate is
		Port ( A : in STD_LOGIC;
				 B : in STD_LOGIC;
				 C : out STD_LOGIC);
	end component and_gate;

	signal decoder_out0, decoder_out1: STD_LOGIC_VECTOR(1 downto 0);
	
begin
	decoder_instance0: decoder port map ( inA => A(0), Enable => Enable, outB => decoder_out0);
	decoder_instance1: decoder port map ( inA => A(1), Enable => Enable, outB => decoder_out1);
	and_instance0: and_gate port map ( A => decoder_out0(0), B => decoder_out1(0), C => B(0));
	and_instance1: and_gate port map ( A => decoder_out0(1), B => decoder_out1(0), C => B(1));
	and_instance2: and_gate port map ( A => decoder_out0(0), B => decoder_out1(1), C => B(2));
	and_instance3: and_gate port map ( A => decoder_out0(1), B => decoder_out1(1), C => B(3));
end structure;

