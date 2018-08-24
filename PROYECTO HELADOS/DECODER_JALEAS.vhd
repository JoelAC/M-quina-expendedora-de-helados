library ieee;
use ieee.std_logic_1164.all;

Entity DECODER_JALEAS is

PORT(	FRUTILLA: IN std_logic;
		MANJAR: IN std_logic;
		CHOCOLATE: IN std_logic;
		Q: OUT std_logic_vector(8 downto 0));
end DECODER_JALEAS;

Architecture sol of DECODER_JALEAS is
	signal temp: std_logic_vector(2 downto 0);
Begin
		temp<=FRUTILLA&MANJAR&CHOCOLATE;
		Q <=	"000110010"	when temp = "100" ELSE
				"000110010"	when temp = "010" ELSE
				"000110010"	when temp = "001" ELSE
				"000000000" ; 
end sol;