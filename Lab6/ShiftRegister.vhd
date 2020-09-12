----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:13:51 09/13/2020 
-- Design Name: 
-- Module Name:    ShiftRegister - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;

entity ShiftRegister is
	port(
	clk, reset, load : in std_logic;
	parallel_in : in std_logic_vector(3 downto 0);
	lr: in std_logic_vector(1 downto 0);
	reg_out : out std_logic_vector(3 downto 0) );
end ShiftRegister;

architecture behavioural of ShiftRegister is
	signal internal_reg : std_logic_vector(3 downto 0);
begin
	process (clk)
	begin
		if reset = '1' then
			internal_reg <= "0000";
		elsif (clk'event and clk='1') then
			if load = '1' then
				case lr is
					when "00" =>
						internal_reg <= parallel_in;
					when "11" => -- arithmetical&logical left shift
						internal_reg(3 downto 1) <= internal_reg(2 downto 0);
						internal_reg(0) <= '0';
					when "10" => -- arithmetical right shift
						internal_reg(2 downto 0) <= internal_reg(3 downto 1);
						internal_reg(3) <= '1';
					when "01" => -- logical right shift
						internal_reg(2 downto 0) <= internal_reg(3 downto 1);
						internal_reg(3) <= '0';
				end case;
			end if;
		end if;
		reg_out <= internal_reg;
	end process;
end behavioural;