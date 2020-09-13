----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:41:07 09/12/2020 
-- Design Name: 
-- Module Name:    RAM_Block - Behavioral 
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

entity RAM_Block is
    Port ( clk : in  STD_LOGIC;
           Enable : in  STD_LOGIC;
           RW : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
			  Data : inout  STD_LOGIC);
end RAM_Block;

architecture Behavioral of RAM_Block is

	signal dt: STD_LOGIC := '0';

begin
	syncronous_process : process (clk)
	begin
		if rising_edge(clk) or Reset = '0' then
			if Reset = '0' then 
					dt <= '0';
					Data <= '0';
			elsif Enable = '1' then
				if RW = '1' then
					dt <= Data;
				else
					Data <= dt;
				end if;
			else
				Data <= '0';
			end if;
		end if;
	end process;
end Behavioral;

