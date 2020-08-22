----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:06:23 08/22/2020 
-- Design Name: 
-- Module Name:    Comprator - Behavioral 
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

entity Comprator is
    Port ( digit_a : in  STD_LOGIC;
           digit_b : in  STD_LOGIC;
           g_t : in  STD_LOGIC;
           e_q : in  STD_LOGIC;
           l_t : in  STD_LOGIC;
           a_gt_b : out  STD_LOGIC;
           a_eq_b : out  STD_LOGIC;
           a_lt_b : out  STD_LOGIC);
end Comprator;

architecture structure of Comprator is
	component xnor_gate is
	Port(
			A,B: in STD_LOGIC;
			C: out STD_LOGIC);
	end component xnor_gate;
	component and_gate is
	Port(
			A,B: in STD_LOGIC;
			C: out STD_LOGIC);
	end component and_gate;
	
	component not_gate is
	Port(
			A: in STD_LOGIC;
			B: out STD_LOGIC);
	end component not_gate;
	
	component or_gate is
	Port(
			A,B: in STD_LOGIC;
			C: out STD_LOGIC);
	end component or_gate;
	
	signal not_a, not_b, aGTb,aEQb,aLTb,g,l: std_logic;
begin
	
	not_instance0: not_gate port map ( A => digit_b, B => not_b );
	and_instance0: and_gate port map ( A => digit_a, B => not_b, C => aGTb);
	
	not_instance1: not_gate port map ( A => digit_a, B => not_a );
	and_instance1: and_gate port map ( A => digit_b, B => not_a, C => aLTb);
	
	xnor_instance0: xnor_gate port map ( A => digit_a, B => digit_b, C=>aEQb);
	and_instance2: and_gate port map ( A => aEQb, B => e_q, C => a_eq_b);--equal
	
	and_instance3: and_gate port map ( A => g_t, B => aEQb, C => g);
	or_instance0: or_gate port map (A=> aGTb , B=> g, C=> a_gt_b);--gt
	
	and_instance4: and_gate port map ( A => l_t, B => aEQb, C =>l);
	or_instance1: or_gate port map (A=> aLTb , B=> l, C=> a_lt_b);--lt
	
end structure;

