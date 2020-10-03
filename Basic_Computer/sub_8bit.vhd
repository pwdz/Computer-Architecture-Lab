----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:05:43 09/03/2020 
-- Design Name: 
-- Module Name:    ripple_carry_adder - Behavioral 
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

entity sub_8bit is
    Port ( A : in  STD_LOGIC_VECTOR(7 downto 0);
           B : in  STD_LOGIC_VECTOR(7 downto 0);
           Sub : out  STD_LOGIC_VECTOR(7 downto 0);
           Borrow : out  STD_LOGIC);
end sub_8bit;

architecture Behavioral of sub_8bit is
	
	signal c: STD_LOGIC_VECTOR(6 downto 0);
	signal RES_int,A_int,B_int: integer;
	signal tempp: STD_LOGIC_VECTOR(7 downto 0);
	
begin
	A_int <= to_integer(unsigned(A));
   B_int <= to_integer(unsigned(B));
   RES_int <=  A_int - B_int;
   Sub <= std_logic_vector(to_unsigned(RES_int , tempp'length));
	
	process (RES_int)
		begin
		if (RES_int < 0) then
			 Borrow <= '1';
		else
			Borrow <= '0';
		end if;	
	end process;
	
end Behavioral;