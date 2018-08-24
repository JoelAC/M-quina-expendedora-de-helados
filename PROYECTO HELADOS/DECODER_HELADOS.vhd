library ieee;
use ieee.std_logic_1164.all;

Entity DECODER_HELADOS is

PORT(	FRUTILLA: IN std_logic;
		CHOCOLATE: IN std_logic;
		VAINILLA: IN std_logic;
		Q: OUT std_logic_vector(8 downto 0));
end DECODER_HELADOS;

Architecture sol of DECODER_HELADOS is
	signal temp: std_logic_vector(2 downto 0);
Begin
		temp<=FRUTILLA&CHOCOLATE&VAINILLA;
		Q <=	"001100100"	when temp = "100" ELSE
				"001100100"	when temp = "010" ELSE
				"001001011"	when temp = "001" ELSE
				"000000000" ; 
end sol;