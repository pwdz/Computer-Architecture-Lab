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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM is
    Port ( Address : in STD_LOGIC_VECTOR(1 downto 0);
           clk : in STD_LOGIC;
           Data_out : out STD_LOGIC_VECTOR(7 downto 0));
end ROM;

architecture Behavioral of ROM is
	component decoder24 is
		Port ( A : in  STD_LOGIC_VECTOR(1 downto 0);
             B : out  STD_LOGIC_VECTOR(3 downto 0));
	end component decoder24;
	
	type rom_array is array (0 to 3) of STD_LOGIC_VECTOR(7 downto 0);
	constant rom : rom_array := ( "00000011",
											"00001100",
											"00110000",
											"11000000");
	signal decodedAddress: STD_LOGIC_VECTOR(3 downto 0);
										
begin
	decoder_instance: decoder24 port map (A => Address, B => decodedAddress);
	
	process(clk)
		begin
			if(clk'event and clk='1') then
				if(decodedAddress(0) = '1') then
					Data_out<=rom(0);
				elsif(decodedAddress(1) = '1') then
					Data_out<=rom(1);
				elsif(decodedAddress(2) = '1') then
					Data_out<=rom(2);	
				elsif(decodedAddress(3) = '1') then
					Data_out<=rom(3);
				end if;
			end if;	
		end process;		
end Behavioral;

