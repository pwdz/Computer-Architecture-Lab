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
entity MUX4bit is
	Port(
	D: in std_logic_vector(3 downto 0);
	S : in std_logic_vector(1 downto 0);
   R : out STD_LOGIC);
end MUX4bit;

architecture structure of MUX4bit is
	component MUX is
		Port ( D1 : in  STD_LOGIC;
           D2 : in  STD_LOGIC;
           Sl : in  STD_LOGIC;
			  R : out  STD_LOGIC);
	end component MUX;
	signal temp0,temp1: std_logic;
begin
	mux_layer0_0: MUX port map ( D1 => D(0), D2 => D(1),Sl=> S(0),R=>temp0);
	mux_layer0_1: MUX port map ( D1 => D(2), D2 => D(3),Sl=> S(0),R=>temp1);
	
	mux_layer1_0: MUX port map ( D1 => temp0, D2 => temp1,Sl=> S(1),R=>R);
end structure;

