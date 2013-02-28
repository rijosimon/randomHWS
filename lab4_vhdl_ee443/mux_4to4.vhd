library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4to4 is
	PORT(SEL : in STD_LOGIC_VECTOR (1 downto 0);
		 A0	: in STD_LOGIC_VECTOR (3 downto 0);
		 A1	: in STD_LOGIC_VECTOR (3 downto 0);
		 A2	: in STD_LOGIC_VECTOR (3 downto 0);
		 A3	: in STD_LOGIC_VECTOR (3 downto 0);
		 X: out STD_LOGIC_VECTOR (3 downto 0));
end mux_4to4;

architecture mux_4to4_behavior of mux_4to4 is
begin
with SEL select
	X <= A0 when "00",
		 A1 when "01",
		 A2 when "10",
		 A3 when "11",
		"0000" when others;
		
end mux_4to4_behavior;