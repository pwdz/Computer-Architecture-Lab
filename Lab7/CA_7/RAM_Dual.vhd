----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:22:09 09/12/2020 
-- Design Name: 
-- Module Name:    RAM_Dual - Behavioral 
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

entity RAM_Dual is
	Port ( clk : in  STD_LOGIC;
          Reset : in  STD_LOGIC;
			 RW1 : in  STD_LOGIC;
          Address1 : in STD_LOGIC_VECTOR(1 downto 0);
			 Data_in1 : in STD_LOGIC_VECTOR(7 downto 0);
			 Data_out1 : out STD_LOGIC_VECTOR(7 downto 0);
			 RW2 : in  STD_LOGIC;
			 Address2 : in STD_LOGIC_VECTOR(1 downto 0);
			 Data_in2 : in STD_LOGIC_VECTOR(7 downto 0);
			 Data_out2 : out STD_LOGIC_VECTOR(7 downto 0));
end RAM_Dual;

-- RW: 0 => Read, 1 => Write

architecture Behavioral of RAM_Dual is
	component decoder24 is
		Port ( A : in  STD_LOGIC_VECTOR(1 downto 0);
             B : out  STD_LOGIC_VECTOR(3 downto 0));
	end component decoder24;
	
	type RAM_ARRAY is array (0 to 3) of STD_LOGIC_VECTOR(7 downto 0);
	signal RAM: RAM_ARRAY;
	signal decodedAddress1, decodedAddress2: STD_LOGIC_VECTOR(3 downto 0);

begin
	decoder_instance0: decoder24 port map (A => Address1, B => decodedAddress1);
	decoder_instance1: decoder24 port map (A => Address2, B => decodedAddress2);
	
	process(clk,Reset)
		begin
			if(Reset='0') then
				for address in 0 to 3 loop
					RAM(address) <= STD_LOGIC_VECTOR(to_unsigned(address, Data_in1'length));
				end loop;
			elsif ( clk'event and clk='1') then
				if(RW1 = '1') then
					if(decodedAddress1(0) = '1') then
						RAM(0) <= Data_in1;
					elsif(decodedAddress1(1) = '1') then
						RAM(1) <= Data_in1;
					elsif(decodedAddress1(2) = '1') then
						RAM(2) <= Data_in1;
					elsif(decodedAddress1(3) = '1') then
						RAM(3) <= Data_in1;
					end if;
				elsif(RW1 ='0') then
					if(decodedAddress1(0) = '1') then
						Data_out1<=RAM(0);
					elsif(decodedAddress1(1) = '1') then
						Data_out1<=RAM(1);
					elsif(decodedAddress1(2) = '1') then
						Data_out1<=RAM(2);	
					elsif(decodedAddress1(3) = '1') then
						Data_out1<=RAM(3);
					end if;
				end if;	
				if(RW2 = '1') then
					if(decodedAddress2(0) = '1') then
						RAM(0) <= Data_in2;
					elsif(decodedAddress2(1) = '1') then
						RAM(1) <= Data_in2;
					elsif(decodedAddress2(2) = '1') then
						RAM(2) <= Data_in2;
					elsif(decodedAddress2(3) = '1') then
						RAM(3) <= Data_in2;
					end if;
				elsif(RW2 ='0') then
					if(decodedAddress2(0) = '1') then
						Data_out2<=RAM(0);
					elsif(decodedAddress2(1) = '1') then
						Data_out2<=RAM(1);
					elsif(decodedAddress2(2) = '1') then
						Data_out2<=RAM(2);	
					elsif(decodedAddress2(3) = '1') then
						Data_out2<=RAM(3);
					end if;
				end if;	
			end if;	
	end process;
end Behavioral;