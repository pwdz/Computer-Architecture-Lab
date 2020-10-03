----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:11:20 10/03/2020 
-- Design Name: 
-- Module Name:    mult_8bit - Behavioral 
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

entity mult_8bit is
	Port ( A, B: in  STD_LOGIC_VECTOR(7 downto 0);
          Product : out  STD_LOGIC_VECTOR(15 downto 0));
end mult_8bit;

architecture behave of mult_8bit is
	component carrysaveMultiplier is
		Port ( A, B: in  STD_LOGIC_VECTOR(3 downto 0);
				 Product : out  STD_LOGIC_VECTOR(7 downto 0));
	end component carrysaveMultiplier;	
	
	signal temp0_0,temp0_1,temp1_0,temp1_1: STD_LOGIC_VECTOR(7 downto 0);
	signal RES_int,A_int,B_int: integer;
begin
	mult4bit_instance: carrysaveMultiplier port map (A=> A(3 downto 0), B => B(3 downto 0), Product => temp0_0);
	mult4bit_instance1: carrysaveMultiplier port map (A=> A(7 downto 4), B => B(3 downto 0), Product => temp0_1);
	mult4bit_instance2: carrysaveMultiplier port map (A=> A(3 downto 0), B => B(7 downto 4), Product => temp1_0);
	mult4bit_instance3: carrysaveMultiplier port map (A=> A(7 downto 4), B => B(7 downto 4), Product => temp1_1);
	
	--Product <= "00000000"&temp0_0 + "0000"&temp0_1&"0000" + "0000"&temp1_0&"0000" + temp1_1&"00000000";
	A_int <= to_integer(unsigned(A));
        B_int <= to_integer(unsigned(B));
	RES_int <=  A_int * B_int;
	Product <= std_logic_vector(to_unsigned(RES_int , Product'length));
	--Product <= std_logic_vector(unsigned(temp0_0) + unsigned(temp0_1&"0000") + unsigned(temp1_0)&"0000" + unsigned(temp1_1)&"00000000");
	
end behave;
