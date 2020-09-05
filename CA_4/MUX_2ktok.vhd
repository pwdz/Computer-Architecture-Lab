----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:49:32 09/06/2020 
-- Design Name: 
-- Module Name:    MUX_2ktok - Behavioral 
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

entity MUX_2ktok is
    Port ( A : in  STD_LOGIC_VECTOR(1 downto 0);
			  B : in  STD_LOGIC_VECTOR(1 downto 0);
			  S : in STD_LOGIC;
           O : out  STD_LOGIC_VECTOR(1 downto 0));
end MUX_2ktok;

architecture Behavioral of MUX_2ktok is
	component MUX is
    Port ( D1 : in  STD_LOGIC;
           D2 : in  STD_LOGIC;
			  S : in  STD_LOGIC;
           O : out  STD_LOGIC);
	end component MUX;
	
begin
	mux0:  MUX  port  map  (  D1  =>  A(0),  D2  =>  B(0),  S  =>  S,  O  => O(0));
	mux1:  MUX  port  map  (  D1  =>  A(1),  D2  =>  B(1),  S  =>  S,  O  => O(1));
end Behavioral;

