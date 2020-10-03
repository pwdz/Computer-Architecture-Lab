----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:10:52 10/03/2020 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
	Port (  temp1,temp2: in STD_LOGIC_VECTOR(7 downto 0);
			  C: in STD_LOGIC_VECTOR(1 downto 0);-- 00 -> mult | 01 -> Add | 10 -> sub
              CF: out STD_LOGIC;
              temp3: out STD_LOGIC_VECTOR(7 downto 0));
end ALU;

architecture Behavioral of ALU is
	component ripple_carry_adder is
		Port ( A : in  STD_LOGIC_VECTOR(7 downto 0);
			   B : in  STD_LOGIC_VECTOR(7 downto 0);
			   Sum : out  STD_LOGIC_VECTOR(7 downto 0);
			   Cout : out  STD_LOGIC);
	end component ripple_carry_adder;
	
	component mult_8bit is
		Port ( A, B: in  STD_LOGIC_VECTOR(7 downto 0);
				 Product : out  STD_LOGIC_VECTOR(15 downto 0));
	end component mult_8bit;
	
	component sub_8bit is
    Port ( A : in  STD_LOGIC_VECTOR(7 downto 0);
           B : in  STD_LOGIC_VECTOR(7 downto 0);
           Sub : out  STD_LOGIC_VECTOR(7 downto 0);
           Borrow : out  STD_LOGIC);
	end component sub_8bit;

	component MUX4to1_8bit is
		Port(
			D1: in std_logic_vector(7 downto 0);
			D2: in std_logic_vector(7 downto 0);
			D3: in std_logic_vector(7 downto 0);
			D4: in std_logic_vector(7 downto 0);
			S : in std_logic_vector(1 downto 0);
			R : out STD_LOGIC_VECTOR(7 downto 0));
	end component MUX4to1_8bit;
	
	component MUX4to1_1bit is
	Port(
	D: in std_logic_vector(3 downto 0);
	S : in std_logic_vector(1 downto 0);
   R : out STD_LOGIC);
	end component MUX4to1_1bit;

	signal tempProduct: std_logic_vector(15 downto 0);
	signal RES_int,A_int,B_int: integer;
	signal tempSum,tempSub,tempProd: std_logic_vector(7 downto 0);
	signal tempCarry, tempBorrow: std_logic;
	signal temp: std_logic_vector(3 downto 0);
begin	
	add: ripple_carry_adder port map (A => temp1, B=>temp2, Sum => tempSum, Cout => tempCarry);
	sub: sub_8bit port map (A => temp1, B=>temp2, Sub => tempSub, Borrow => tempBorrow);
	mult: mult_8bit port map (A=> temp1, B=>temp2, Product => tempProduct);
	tempProd <= tempProduct(15 downto 8);
	
	mux: MUX4to1_8bit port map (D1 => "10101010", D2 => tempProd, D3 => tempSub, D4 => tempSum, S => C, R => temp3);
	
	temp <= "00"&tempBorrow&tempCarry;
	mux_carry : MUX4to1_1bit port map (D => temp, S => C, R=> CF);
	
end Behavioral;

