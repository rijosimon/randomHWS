library ieee;
use ieee.std_logic_1164.all;

ENTITY reg_8 is
generic(left	: natural := 31;
		prop	: time	:= 100 ps);
port	(clk	: in std_logic;
		 input  : in std_logic_vector (7 downto 0);
		 output	: out std_logic_vector (7 downto 0) );
END ENTITY reg_8;

ARCHITECTURE BEHAVIOR OF reg_8 IS
BEGIN
	reg: process(clk)
		 begin
			if clk='1' then
				output <= input after prop;
			end if;
		end process reg;
end architecture behavior;
