----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:   12:28:02 09/14/2020
-- Design Name: 
-- Module Name:    ROM - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM is
    Port ( Address : in STD_LOGIC_VECTOR(3 downto 0);
           clk : in STD_LOGIC;
           Data_out : out STD_LOGIC_VECTOR(7 downto 0));
end ROM;

architecture Behavioral of ROM is
	component decoder4_16 is
		Port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
				 Enable : in STD_LOGIC;
             B : out  STD_LOGIC_VECTOR(15 downto 0));
	end component decoder4_16;
	
	type rom_array is array (0 to 15) of STD_LOGIC_VECTOR(7 downto 0);
	constant rom : rom_array := ( "01100001",
											"00000010",
											"01100010",
											"00000010",
											"01100001",
											"00000001",
											"10000010",
											"00001000",
											"00010000",
											"00100000",
											"01000000",
											"10000000",
											"00000011",
											"00000110",
											"00001100",
											"00011000");
	signal decodedAddress: STD_LOGIC_VECTOR(15 downto 0);
										
begin
	decoder_instance: decoder4_16 port map (A => Address, Enable => '1',  B => decodedAddress);
	
	process(clk)
		begin
			if(clk'event and clk='1') then
						Data_out<=ROM(to_integer(unsigned(Address)));	
			end if;	
		end process;		
end Behavioral;

