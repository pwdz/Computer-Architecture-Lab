----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:22:26 09/03/2020 
-- Design Name: 
-- Module Name:    ripple_counter - Behavioral 
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

entity ripple_counter is
    Port ( T : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(3 downto 0));
end ripple_counter;
	
architecture Behavioral of ripple_counter is
	component tff is
		Port ( T : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qnot : out  STD_LOGIC);
	end component tff;
	
	signal Qnot : STD_LOGIC_VECTOR(3 downto 0);
begin
	tff_instance3: tff port map ( T => T, Clk => Clk, Reset => Reset, Q => Q(0), Qnot => Qnot(0));
	tff_instance2: tff port map ( T => T, Clk => Qnot(0), Reset => Reset, Q => Q(1), Qnot => Qnot(1));
	tff_instance1: tff port map ( T => T, Clk => Qnot(1), Reset => Reset, Q => Q(2), Qnot => Qnot(2));
	tff_instance0: tff port map ( T => T, Clk => Qnot(2), Reset => Reset, Q => Q(3), Qnot => Qnot(3));
end Behavioral;

