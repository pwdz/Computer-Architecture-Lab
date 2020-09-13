----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:31:08 08/22/2020 
-- Design Name: 
-- Module Name:    decoder - Behavioral 
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

entity decoder is
    Port ( inA : in  STD_LOGIC;
           outB : out  STD_LOGIC_VECTOR(1 downto 0));
end decoder;

architecture structure of decoder is
	component not_gate is
		port ( A : in STD_LOGIC;
				 B : out STD_LOGIC);
	end component not_gate;

begin
	not_instance: not_gate port map ( A => inA, B => outB(0));
	outB(1) <= inA;
end structure;

