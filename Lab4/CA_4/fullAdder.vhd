----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:00:14 08/21/2020 
-- Design Name: 
-- Module Name:    fullAdder - structure 
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

entity fullAdder is
    Port ( i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end fullAdder;

architecture structure of fullAdder is
	component or_gate is
		  Port ( A : in  STD_LOGIC;
					B : in  STD_LOGIC;
					C : out  STD_LOGIC);
	 end component or_gate;
	 component halfAdder is
		  Port ( in1 : in  STD_LOGIC;
					in2 : in  STD_LOGIC;
					Co : out  STD_LOGIC;
					S : out  STD_LOGIC);
	 end component halfAdder;
	 
	 signal internal_signal0, internal_signal1, internal_signal2: std_logic;
	 
begin
	half_adder_instance0:  halfAdder  port  map  (  in1  =>  i1,  in2  =>  i2,  S  =>  internal_signal0,  Co  => internal_signal1);
	half_adder_instance1:  halfAdder  port  map  (  in1  =>  internal_signal0,  in2  =>  cin,  S  =>  sum,  Co  => internal_signal2);
	or_gate_instance0: or_gate port map ( A => internal_signal1, B => internal_signal2, C => cout );
end structure;

