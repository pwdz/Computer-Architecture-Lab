----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:34:21 09/03/2020 
-- Design Name: 
-- Module Name:    moore_sequence_detector - Behavioral 
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

entity moore_sequence_detector is
	Port ( A : in STD_LOGIC;
			 Clk : in STD_LOGIC;
			 B : out STD_LOGIC);
end moore_sequence_detector;

architecture Behavioral of moore_sequence_detector is
	type state_t is (s0 , s1 , s2, s3, s4);
	signal state : state_t := s0;
	signal next_state : state_t := s0;
	
begin
	CMB: process(state , A)
	begin
		case state is
			when s0=>
				if(A = '1') then
					next_state <= s1;
				else
					next_state <= s0;
				end if;
			when s1=>
				if(A = '1') then
					next_state <= s2;
				else
					next_state <= s0;
				end if;
			when s2=>
				if(A = '1') then
					next_state <= s2;
				else
					next_state <= s3;
				end if;
			when s3=>
				if(A = '1') then
					next_state <= s4;
				else
					next_state <= s0;
				end if;
			when s4=>
				if(A = '1') then
					next_state <= s2;
				else
					next_state <= s0;
				end if;
			when others=>
				next_state <= s0;
		end case;
	end process;
	REG : process(clk)
	begin
		if(Clk'event and Clk = '1') then
			state <= next_state;
		end if;
	end process;
	B <= '1' when state = s4 else	'0';
end Behavioral;

