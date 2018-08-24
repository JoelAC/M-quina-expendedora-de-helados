library ieee;
use ieee.std_logic_1164.all;

Entity DECODER_DULCES is

PORT(	GRAJEAS: IN std_logic;
		OREO: IN std_logic;
		GOMITAS: IN std_logic;
		GRANOLA: IN std_logic;
		Q: OUT std_logic_vector(8 downto 0));
end DECODER_DULCES;

Architecture sol of DECODER_DULCES is
	signal temp: std_logic_vector(3 downto 0);
Begin
		temp<=GRAJEAS&OREO&GOMITAS&GRANOLA;
		Q <=	"000011110"	when temp = "0001" ELSE
				"000010100"	when temp = "0010" ELSE
				"000110010"	when temp = "0011" ELSE
				"000010100"	when temp = "0100" ELSE
				"000110010"	when temp = "0101" ELSE
				"000101000"	when temp = "0110" ELSE
				"001000110"	when temp = "0111" ELSE
				"000001010"	when temp = "1000" ELSE
				"000101000"	when temp = "1001" ELSE
				"000011110"	when temp = "1010" ELSE
				"000111100"	when temp = "1011" ELSE
				"000011110"	when temp = "1100" ELSE
				"000111100"	when temp = "1101" ELSE
				"000110010"	when temp = "1110" ELSE
				"001010000"	when temp = "1111" ELSE
				"000000000" ; 
end sol;