library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_3by8 is
	port (ctrl : in std_logic_vector (2 downto 0);
		z: out std_logic_vector (7 downto 0));
end decoder_3by8;

architecture decoder_3by8_behavior of decoder_3by8 is
begin
	z<="00000001" when ctrl = "000" else
		"00000010" when ctrl = "001" else
		"00000100" when ctrl = "010" else
		"00001000" when ctrl = "011" else
		"00010000" when ctrl = "100" else
		"00100000" when ctrl = "101" else
		"01000000" when ctrl = "110" else
		"10000000";
end decoder_3by8_behavior;