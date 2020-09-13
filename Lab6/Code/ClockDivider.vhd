----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:13:51 09/13/2020 
-- Design Name: 
-- Module Name:    ClockDivider - Behavioral 
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
  
entity ClockDivider is
    port ( clk,reset: in std_logic;
           clock_out: out std_logic);
end ClockDivider;
  
architecture behavioural of ClockDivider is
    signal count: integer:=1;
    signal temp : std_logic := '0';  
begin

    process(clk,reset)
    begin
        if(reset = '1') then
            count <= 1;
            temp<='0';
        elsif(clk'event and clk='1') then
            count <= count+1;
            if (count = 40000000) then -- 40 mega hz
                temp <= NOT temp;
                count <= 1;
            end if;
        end if;
        clock_out <= temp;
    end process;
  
end behavioural;
