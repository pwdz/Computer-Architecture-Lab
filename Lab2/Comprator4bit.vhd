----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:58:04 08/22/2020 
-- Design Name: 
-- Module Name:    Comparator4bit - structure 
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

entity Comparator4bit is
	Port(
	a, b: in std_logic_vector(3 downto 0);
	aGTb : out  STD_LOGIC;
   aEQb : out  STD_LOGIC;
   aLTb : out  STD_LOGIC);
end Comparator4bit;

architecture structure of Comparator4bit is
	component Comprator is
		Port ( digit_a : in  STD_LOGIC;
           digit_b : in  STD_LOGIC;
           g_t : in  STD_LOGIC;
           e_q : in  STD_LOGIC;
           l_t : in  STD_LOGIC;
           a_gt_b : out  STD_LOGIC;
           a_eq_b : out  STD_LOGIC;
           a_lt_b : out  STD_LOGIC);
	end component half_adder;
	signal a_gt_b0, a_eq_b0, a_lt_b0: std_logic;
	signal a_gt_b1, a_eq_b1, a_lt_b1: std_logic;
	signal a_gt_b2, a_eq_b2, a_lt_b2: std_logic;
begin

	comparator0 : Comprator port map ( digit_a=>a(0), digit_b=>b(0), g_t=>'0', e_q=>'1', l_t=>'0', a_gt_b=>a_gt_b0, a_eq_b=>a_eq_b0,
	a_lt_b=>a_lt_b0);
	
	comparator1 : Comprator port map ( digit_a=>a(1), digit_b=>b(1), g_t=>a_gt_b0, e_q=>a_eq_b0, l_t=>a_lt_b0, a_gt_b=>a_gt_b1, a_eq_b=>a_eq_b1,
	a_lt_b=>a_lt_b1);
	
	comparator2 : Comprator port map ( digit_a=>a(2), digit_b=>b(2), g_t=>a_gt_b1, e_q=>a_eq_b1, l_t=>a_lt_b1, a_gt_b=>a_gt_b2, a_eq_b=>a_eq_b2,
	a_lt_b => a_lt_b2);
	
	comparator3 : Comprator port map ( digit_a=>a(3), digit_b=>b(3), g_t=>a_gt_b2, e_q=>a_eq_b2, l_t=>a_lt_b2, a_gt_b=>aGTb, a_eq_b=>aEQb,
	a_lt_b=>aLTb);
	
	
end structure;

