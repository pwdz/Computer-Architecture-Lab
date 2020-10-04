----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:40:07 09/25/2020 
-- Design Name: 
-- Module Name:    Basic_Computer - Behavioral 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Basic_Computer is
	Port (  data: inout STD_LOGIC_VECTOR(7 downto 0);
			  address: in STD_LOGIC_VECTOR(2 downto 0);
			  rst: in STD_LOGIC;
           clk: in STD_LOGIC);
            
end Basic_Computer;

architecture Behavioral of Basic_Computer is
	component RAM is
		Port ( clk : in  STD_LOGIC;
				 RW : in  STD_LOGIC;
				 Reset : in  STD_LOGIC;
				 Address : in STD_LOGIC_VECTOR(2 downto 0);
				 Data_in : in STD_LOGIC_VECTOR(7 downto 0);
				 Data_out : out STD_LOGIC_VECTOR(7 downto 0));
	end component RAM;
	component ROM is
		Port ( Address : in STD_LOGIC_VECTOR(3 downto 0);
				 clk : in STD_LOGIC;
				 Data_out : out STD_LOGIC_VECTOR(7 downto 0));
	end component ROM;
	component ALU is
		Port (  temp1,temp2: in STD_LOGIC_VECTOR(7 downto 0);
				  C: in STD_LOGIC_VECTOR(1 downto 0);-- 00 -> add | 01 -> sub | 10 -> mult
              CF: out STD_LOGIC;
              temp3: out STD_LOGIC_VECTOR(7 downto 0));
	end component ALU;
	
	signal akku:std_logic_vector(8 downto 0);
	signal ir:std_logic_vector(7 downto 0);
	signal dr:std_logic_vector(7 downto 0);
	signal data_write:std_logic_vector(7 downto 0);
	signal alu_in1, alu_in2, alu_out:std_logic_vector(7 downto 0);
	signal adreg:std_logic_vector(3 downto 0);
	signal ar:std_logic_vector(2 downto 0);
	signal pc:std_logic_vector(3 downto 0);
	signal states:std_logic_vector(2 downto 0);
	signal alu_select:std_logic_vector(1 downto 0);
	signal rw:std_logic; 
	
begin
	ROM_instance: ROM port map(Address => adreg, clk => clk, Data_out => ir);
	RAM_instance: RAM port map(Address => ar, RW => rw, clk => clk, Reset => rst, Data_in => data_write, Data_out => dr);
	ALU_instance: ALU port map(temp1 => alu_in1, temp2 => alu_in2, C => alu_select, CF => akku(8), temp3 => alu_out);
	data <= alu_out;
	
	process(rst,clk)
	begin
		if (rst = '0') then
			adreg <= (others => '0');
			data_write <= (others => '0');
			alu_in1 <= (others => '0');
			alu_in2 <= (others => '0');
			ar <= (others => '0');
			states <= "000";
			alu_select <= "00";
			akku <= (others => '0');
			pc   <= (others => '0');
			rw <= '0';
		elsif rising_edge(clk) then
			if (states = "000") then 
				adreg <= pc; 
				states <= "001";
			elsif (states = "001") then
				pc <= pc + 1;
				states <= "010";
			else
				case ir(7 downto 5) is
					when "000" => 
						if (states = "010") then
							alu_in1 <= akku(7 downto 0);
							alu_in2 <= dr;
							alu_select <= "00";
							states <= "011";
						elsif (states = "011") then
							ar <= ir(2 downto 0);
							rw <= '1';
							data_write <= alu_out;
							akku(7 downto 0) <= alu_out;
							states <= "000";
						end if;
					when "001" => 
						if (states = "010") then
							alu_in1 <= akku(7 downto 0);
							alu_in2 <= dr;
							alu_select <= "01";
							states <= "011";
						elsif (states = "011") then
							ar <= ir(2 downto 0);
							rw <= '1';
							data_write <= alu_out;
							akku(7 downto 0) <= alu_out;
							states <= "000";
						end if;
					when "010" => 
						if (states = "010") then
							alu_in1 <= akku(7 downto 0);
							alu_in2 <= dr;
							alu_select <= "10";
							states <= "011";
						elsif (states = "011") then
							ar <= ir(2 downto 0);
							rw <= '1';
							data_write <= alu_out;
							akku(7 downto 0) <= alu_out;
							states <= "000";
						end if;
					when "011" => --load
						if (states = "010") then
							rw <= '0';
							ar <= ir(2 downto 0);
							states <= "000";
						end if;
					when "100" => --jump
						if (states = "010") then
							pc <= ir(3 downto 0);
							states <= "000";
						end if;
					when others => null;
				end case;
			end if;
		end if;
	end process;
end Behavioral;

