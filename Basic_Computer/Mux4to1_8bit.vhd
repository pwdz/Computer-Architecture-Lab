----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:50:37 08/22/2020 
-- Design Name: 
-- Module Name:    MUX4bit - structure 
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
entity MUX4to1_8bit is
	Port(
	D1: in std_logic_vector(7 downto 0);
	D2: in std_logic_vector(7 downto 0);
	D3: in std_logic_vector(7 downto 0);
	D4: in std_logic_vector(7 downto 0);
	S : in std_logic_vector(1 downto 0);
   R : out STD_LOGIC_VECTOR(7 downto 0));
end MUX4to1_8bit;

architecture structure of MUX4to1_8bit is
	component MUX4to1_1bit is
		Port(
			D: in std_logic_vector(3 downto 0);
			S : in std_logic_vector(1 downto 0);
			R : out STD_LOGIC);
	end component MUX4to1_1bit;
	
	signal temp0,temp1,temp2,temp3,temp4,temp5,temp6,temp7: std_logic_vector(3 downto 0);
begin
	temp0 <= D1(0)&D2(0)&D3(0)&D4(0);
	temp1 <= D1(1)&D2(1)&D3(1)&D4(1);
	temp2 <= D1(2)&D2(2)&D3(2)&D4(2);
	temp3 <= D1(3)&D2(3)&D3(3)&D4(3);
	temp4 <= D1(4)&D2(4)&D3(4)&D4(4);
	temp5 <= D1(5)&D2(5)&D3(5)&D4(5);
	temp6 <= D1(6)&D2(6)&D3(6)&D4(6);
	temp7 <= D1(7)&D2(7)&D3(7)&D4(7);
	
	mux0: MUX4to1_1bit port map ( D => temp0, S => S,R =>R(0));
	mux1: MUX4to1_1bit port map ( D => temp1, S => S,R =>R(1));
	mux2: MUX4to1_1bit port map ( D => temp2, S => S,R =>R(2));
	mux3: MUX4to1_1bit port map ( D => temp3, S => S,R =>R(3));
	mux4: MUX4to1_1bit port map ( D => temp4, S => S,R =>R(4));
	mux5: MUX4to1_1bit port map ( D => temp5, S => S,R =>R(5));
	mux6: MUX4to1_1bit port map ( D => temp6, S => S,R =>R(6));
	mux7: MUX4to1_1bit port map ( D => temp7, S => S,R =>R(7));
	
	
end structure;

