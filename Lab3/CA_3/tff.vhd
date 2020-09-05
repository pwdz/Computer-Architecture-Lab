----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:19:42 09/03/2020 
-- Design Name: 
-- Module Name:    tff - Behavioral 
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

entity tff is
    Port ( T : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qnot : out  STD_LOGIC);
end tff;

architecture Behavioral of tff is

	signal temp: STD_LOGIC;
begin
	process(Clk,Reset)
	begin 
		if(Reset='0') then 
			temp <= '0';
		elsif(rising_edge(Clk)) then
			temp <= T xor temp; 
		end if;      
	end process;
	Q <= temp;
	Qnot <= not temp;
end Behavioral;

