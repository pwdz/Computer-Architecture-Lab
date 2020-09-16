----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:21:17 09/15/2020 
-- Design Name: 
-- Module Name:    CAM - Behavioral 
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

entity CAM is
    Port ( Data_in : in  STD_ULOGIC_VECTOR(7 downto 0);
           RW : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Address_out : out  STD_LOGIC_VECTOR(1 downto 0);
           Match : out  STD_LOGIC);
end CAM;

architecture Behavioral of CAM is
	type cam_array is array (0 to 3) of STD_ULOGIC_VECTOR(7 downto 0);
	signal count: integer range 0 to 3 := 0;
	signal counter: integer range 0 to 8;
	signal CAM : cam_array;
	signal match_found:STD_LOGIC;

begin
	process(clk, Reset, Data_in)
	begin
		match_found <= '0';
		for addr in 0 to 3 loop
			counter <= 0;
			if (Data_in = CAM(addr)) then
				Address_out <= STD_LOGIC_VECTOR(to_unsigned(addr, Address_out'length));
				match_found <= '1';
			else	
				for i in 0 to 7 loop
					if (Data_in(i) = CAM(addr)(i)) or (Data_in(i) = 'U') then
						counter <= counter + 1;
					end if;
				end loop;
			end if;
			if(counter = 8) then
				Address_out <= STD_LOGIC_VECTOR(to_unsigned(addr, Address_out'length));
				match_found <= '1';
			end if;
		end loop;
		
		if (Reset = '0') then
			for addr in 0 to 3 loop
				CAM(addr) <= STD_ULOGIC_VECTOR(to_unsigned(addr,Data_in'length));
			end loop;
			count <= 0;
		elsif (clk'event and clk='1') then
			 if (RW = '1') then
				if(match_found = '0') then	
					Match <= '0';
					if (count = 3) then
						CAM(0)<= Data_in;
					else
						CAM(count)<= Data_in;
						count <= count + 1;
					end if;	
				else
					Match <= '1';
				end if; 
			elsif (RW = '0') then
				if(match_found = '1') then
					Match <= '1';
				else
					Match <= '0';
				end if;
			end if;
		end if;
	end process;
end Behavioral;

