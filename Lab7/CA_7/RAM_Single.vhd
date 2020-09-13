----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:22:09 09/12/2020 
-- Design Name: 
-- Module Name:    RAM_Single - Behavioral 
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

entity RAM_Single is
	Port ( clk : in  STD_LOGIC;
			 RW : in  STD_LOGIC;
          Reset : in  STD_LOGIC;
          Address : in STD_LOGIC_VECTOR(1 downto 0);
			 Datain : in STD_LOGIC_VECTOR(7 downto 0);
			 Dataout : out STD_LOGIC_VECTOR(7 downto 0));
end RAM_Single;

architecture Behavioral of RAM_Single is
	component RAM_Block is
		Port ( clk : in  STD_LOGIC;
             Enable : in  STD_LOGIC;
             RW : in  STD_LOGIC;
             Reset : in  STD_LOGIC;
			    Data	 : inout  STD_LOGIC);
	end component RAM_Block;
	component decoder24 is
		Port ( A : in  STD_LOGIC_VECTOR(1 downto 0);
             B : out  STD_LOGIC_VECTOR(3 downto 0));
	end component decoder24;
	
	signal decodedAddress, dataEnable: STD_LOGIC_VECTOR(3 downto 0);
	signal Data1, Data2, Data3, Data4: STD_LOGIC_VECTOR(7 downto 0);
	signal or_gate1, or_gate2, or_gate3, or_gate4: STD_LOGIC_VECTOR(2 downto 0);
begin
	decoder_instance: decoder24 port map (A => Address, B => decodedAddress);
	
	bc_instance0: RAM_Block port map (clk => clk, Enable => dataEnable(0), RW => RW, Reset => Reset, Data => Data1(0));
	bc_instance1: RAM_Block port map (clk => clk, Enable => dataEnable(0), RW => RW, Reset => Reset, Data => Data1(1));
	bc_instance2: RAM_Block port map (clk => clk, Enable => dataEnable(0), RW => RW, Reset => Reset, Data => Data1(2));
	bc_instance3: RAM_Block port map (clk => clk, Enable => dataEnable(0), RW => RW, Reset => Reset, Data => Data1(3));
	bc_instance4: RAM_Block port map (clk => clk, Enable => dataEnable(0), RW => RW, Reset => Reset, Data => Data1(4));
	bc_instance5: RAM_Block port map (clk => clk, Enable => dataEnable(0), RW => RW, Reset => Reset, Data => Data1(5));
	bc_instance6: RAM_Block port map (clk => clk, Enable => dataEnable(0), RW => RW, Reset => Reset, Data => Data1(6));
	bc_instance7: RAM_Block port map (clk => clk, Enable => dataEnable(0), RW => RW, Reset => Reset, Data => Data1(7));

	bc_instance8: RAM_Block port map (clk => clk, Enable => dataEnable(1), RW => RW, Reset => Reset, Data => Data2(0));
	bc_instance9: RAM_Block port map (clk => clk, Enable => dataEnable(1), RW => RW, Reset => Reset, Data => Data2(1));
	bc_instance10: RAM_Block port map (clk => clk, Enable => dataEnable(1), RW => RW, Reset => Reset, Data => Data2(2));
	bc_instance11: RAM_Block port map (clk => clk, Enable => dataEnable(1), RW => RW, Reset => Reset, Data => Data2(3));
	bc_instance12: RAM_Block port map (clk => clk, Enable => dataEnable(1), RW => RW, Reset => Reset, Data => Data2(4));
	bc_instance13: RAM_Block port map (clk => clk, Enable => dataEnable(1), RW => RW, Reset => Reset, Data => Data2(5));
	bc_instance14: RAM_Block port map (clk => clk, Enable => dataEnable(1), RW => RW, Reset => Reset, Data => Data2(6));
	bc_instance15: RAM_Block port map (clk => clk, Enable => dataEnable(1), RW => RW, Reset => Reset, Data => Data2(7));
	
	bc_instance16: RAM_Block port map (clk => clk, Enable => dataEnable(2), RW => RW, Reset => Reset, Data => Data3(0));
	bc_instance17: RAM_Block port map (clk => clk, Enable => dataEnable(2), RW => RW, Reset => Reset, Data => Data3(1));
	bc_instance18: RAM_Block port map (clk => clk, Enable => dataEnable(2), RW => RW, Reset => Reset, Data => Data3(2));
	bc_instance19: RAM_Block port map (clk => clk, Enable => dataEnable(2), RW => RW, Reset => Reset, Data => Data3(3));
	bc_instance20: RAM_Block port map (clk => clk, Enable => dataEnable(2), RW => RW, Reset => Reset, Data => Data3(4));
	bc_instance21: RAM_Block port map (clk => clk, Enable => dataEnable(2), RW => RW, Reset => Reset, Data => Data3(5));
	bc_instance22: RAM_Block port map (clk => clk, Enable => dataEnable(2), RW => RW, Reset => Reset, Data => Data3(6));
	bc_instance23: RAM_Block port map (clk => clk, Enable => dataEnable(2), RW => RW, Reset => Reset, Data => Data3(7));
	
	bc_instance24: RAM_Block port map (clk => clk, Enable => dataEnable(3), RW => RW, Reset => Reset, Data => Data4(0));
	bc_instance25: RAM_Block port map (clk => clk, Enable => dataEnable(3), RW => RW, Reset => Reset, Data => Data4(1));
	bc_instance26: RAM_Block port map (clk => clk, Enable => dataEnable(3), RW => RW, Reset => Reset, Data => Data4(2));
	bc_instance27: RAM_Block port map (clk => clk, Enable => dataEnable(3), RW => RW, Reset => Reset, Data => Data4(3));
	bc_instance28: RAM_Block port map (clk => clk, Enable => dataEnable(3), RW => RW, Reset => Reset, Data => Data4(4));
	bc_instance29: RAM_Block port map (clk => clk, Enable => dataEnable(3), RW => RW, Reset => Reset, Data => Data4(5));
	bc_instance30: RAM_Block port map (clk => clk, Enable => dataEnable(3), RW => RW, Reset => Reset, Data => Data4(6));
	bc_instance31: RAM_Block port map (clk => clk, Enable => dataEnable(3), RW => RW, Reset => Reset, Data => Data4(7));
		
	syncronous_process : process (clk)
	begin
		if rising_edge(clk) then
			Data1 <= Datain;
			Data2 <= Datain;
			Data3 <= Datain;
			Data4 <= Datain;
			if decodedAddress(0) = '1' then
				dataEnable(0) <= '1';
				dataEnable(1) <= '0';
				dataEnable(2) <= '0';
				dataEnable(3) <= '0';
			elsif decodedAddress(1) = '1' then
				dataEnable(0) <= '0';
				dataEnable(1) <= '1';
				dataEnable(2) <= '0';
				dataEnable(3) <= '0';
			elsif decodedAddress(2) = '1' then
				dataEnable(0) <= '0';
				dataEnable(1) <= '0';
				dataEnable(2) <= '1';
				dataEnable(3) <= '0';
			elsif decodedAddress(3) = '1' then
				dataEnable(0) <= '0';
				dataEnable(1) <= '0';
				dataEnable(2) <= '0';
				dataEnable(3) <= '1';
			end if;
		end if;
	end process;
	
	Dataout(0) <= Data1(0) or Data2(0) or Data3(0) or Data4(0);
	Dataout(1) <= Data1(1) or Data2(1) or Data3(1) or Data4(1);
	Dataout(2) <= Data1(2) or Data2(2) or Data3(2) or Data4(2);
	Dataout(3) <= Data1(3) or Data2(3) or Data3(3) or Data4(3);
	Dataout(4) <= Data1(4) or Data2(4) or Data3(4) or Data4(4);
	Dataout(5) <= Data1(5) or Data2(5) or Data3(5) or Data4(5);
	Dataout(6) <= Data1(6) or Data2(6) or Data3(6) or Data4(6);
	Dataout(7) <= Data1(7) or Data2(7) or Data3(7) or Data4(7);
end Behavioral;

