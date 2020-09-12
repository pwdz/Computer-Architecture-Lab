----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:19:24 08/22/2020 
-- Design Name: 
-- Module Name:    Encoder2to1 - structure 
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

entity Encoder2to1 is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           O : out  STD_LOGIC);
end Encoder2to1;

architecture structure of Encoder2to1 is

begin

	O <= I1;
end structure;

