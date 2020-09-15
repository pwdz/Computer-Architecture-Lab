----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:22:09 09/12/2020 
-- Design Name: 
-- Module Name:    RAM_Single - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM_Single is
	Port ( clk : in  STD_LOGIC;
			 RW : in  STD_LOGIC;
          Reset : in  STD_LOGIC;
          Address : in STD_LOGIC_VECTOR(1 downto 0);
			 Data_in : in STD_LOGIC_VECTOR(7 downto 0);
			 Data_out : out STD_LOGIC_VECTOR(7 downto 0));
end RAM_Single;

architecture Behavioral of RAM_Single is
	component decoder24 is
		Port ( A : in  STD_LOGIC_VECTOR(1 downto 0);
             B : out  STD_LOGIC_VECTOR(3 downto 0));
	end component decoder24;
	
	type RAM_ARRAY is array (0 to 3) of STD_LOGIC_VECTOR(7 downto 0);
	signal RAM: RAM_ARRAY;
	signal decodedAddress: STD_LOGIC_VECTOR(3 downto 0);

begin
	decoder_instance: decoder24 port map (A => Address, B => decodedAddress);
	process(clk,Reset)
		begin
			if(Reset='0') then
				for address in 0 to 3 loop
					RAM(address) <= STD_LOGIC_VECTOR(to_unsigned(address, Data_in'length));
				end loop;
			elsif ( clk'event and clk='1') then
				if(RW = '1') then
					if(decodedAddress(0) = '1') then
						RAM(0) <= Data_in;
					elsif(decodedAddress(1) = '1') then
						RAM(1) <= Data_in;
					elsif(decodedAddress(2) = '1') then
						RAM(2) <= Data_in;
					elsif(decodedAddress(3) = '1') then
						RAM(3) <= Data_in;
					end if;
				elsif(RW ='0') then
					if(decodedAddress(0) = '1') then
						Data_out<=RAM(0);
					elsif(decodedAddress(1) = '1') then
						Data_out<=RAM(1);
					elsif(decodedAddress(2) = '1') then
						Data_out<=RAM(2);	
					elsif(decodedAddress(3) = '1') then
						Data_out<=RAM(3);
					end if;
				end if;	
			end if;	
	end process;
end Behavioral;