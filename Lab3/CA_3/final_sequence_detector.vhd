----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:45:24 09/03/2020 
-- Design Name: 
-- Module Name:    final_sequence_detector - Behavioral 
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

entity final_sequence_detector is
    Port ( A : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           B : out  STD_LOGIC);
end final_sequence_detector;

architecture Behavioral of final_sequence_detector is
	type state is (s0, s1, s2, s3, s4);
	signal present_state, next_state : state := s0;
	
begin
	syncronous_process : process (clk)
	begin
		if rising_edge(clk) then
			if (Reset = '0') then
				present_state <= s0;
			else
				present_state <= next_state;
			end if;
		end if;
	end process;
 
	next_state_and_output_decoder : process(present_state, A)
	begin
		B <= '0'; 
		case (present_state) is 
			when s0 =>
				if (A = '1') then
					next_state <= s0;
					B <= '0';
				else
					next_state <= s1;
					B <= '0'; 
				end if; 
			when s1 =>
				if (A = '1') then
					next_state <= s2;
					B <= '0';
				else
					next_state <= s1;
					B <= '0'; 
				end if; 
			when s2 =>
				if (A = '1') then
					next_state <= s3;
					B <= '0';
				else
					next_state <= s4;
					B <= '0'; 
				end if; 
			when s3 =>
				if (A = '1') then
					next_state <= s0;
					B <= '0';
				else
					next_state <= s1;
					B <= '1'; 
				end if; 
			when s4 =>
				if (A = '1') then
					next_state <= s2;
					B <= '1';
				else
					next_state <= s1;
					B <= '0'; 
				end if; 
			when others =>
				next_state <= s0;
				B <= '0';
		end case;
	end process;
end Behavioral;

