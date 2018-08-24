library ieee;
use ieee.std_logic_1164.all;

Entity DECODER_FRUTAS is

PORT(	FRUTILLA: IN std_logic;
		CEREZA: IN std_logic;
		HIGO: IN std_logic;
		DURAZNO: IN std_logic;
		UVA: IN std_logic;
		Q: OUT std_logic_vector(8 downto 0));
end DECODER_FRUTAS;

Architecture sol of DECODER_FRUTAS is
	signal temp: std_logic_vector(4 downto 0);
Begin
		temp<=FRUTILLA&CEREZA&HIGO&DURAZNO&UVA;
		Q <=	"000001111"	when temp = "00001" ELSE
				"000100011"	when temp = "00010" ELSE
				"000110010"	when temp = "00011" ELSE
				"000011001"	when temp = "00100" ELSE
				"000101000"	when temp = "00101" ELSE
				"000111100"	when temp = "00110" ELSE
				"001001011"	when temp = "00111" ELSE
				"000011001"	when temp = "01000" ELSE
				"000101000"	when temp = "01001" ELSE
				"000111100"	when temp = "01010" ELSE
				"001001011"	when temp = "01011" ELSE
				"000110010"	when temp = "01100" ELSE
				"001000001"	when temp = "01101" ELSE
				"001010101"	when temp = "01110" ELSE
				"001100100"	when temp = "01111" ELSE
				"000101101"	when temp = "10001" ELSE
				"001000001"	when temp = "10010" ELSE
				"001010000"	when temp = "10011" ELSE
				"000110111"	when temp = "10100" ELSE
				"001000110"	when temp = "10101" ELSE
				"001011010"	when temp = "10110" ELSE
				"001101001"	when temp = "10111" ELSE
				"000110111"	when temp = "11000" ELSE
				"001000110"	when temp = "11001" ELSE
				"001011010"	when temp = "11010" ELSE
				"001101001"	when temp = "11011" ELSE
				"001010000"	when temp = "11100" ELSE
				"001011111"	when temp = "11101" ELSE
				"001110011"	when temp = "11110" ELSE
				"010000010"	when temp = "11111" ELSE
				"000000000" ; 
end sol;