library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity decoder_bcda7segmentos is
   port( BCD: in std_logic_vector(3 downto 0);
			MOSTRAR: in std_logic;
			SEG7: out std_logic_vector(1 to 7));
end decoder_bcda7segmentos;
 
architecture solve of decoder_bcda7segmentos is
 begin
		
	SEG7 <=	"1111110"	when (BCD = "0000" AND MOSTRAR='1') ELSE
				"0110000"  	when (BCD = "0001" AND MOSTRAR='1') ELSE 
				"1101101" 	when (BCD = "0010" AND MOSTRAR='1') ELSE 
				"1111001"	when (BCD = "0011" AND MOSTRAR='1') ELSE 
				"0110011" 	when (BCD = "0100" AND MOSTRAR='1') ELSE 
				"1011011"	when (BCD = "0101" AND MOSTRAR='1') ELSE 
				"1011111"	when (BCD = "0110" AND MOSTRAR='1') ELSE 
				"1110000"	when (BCD = "0111" AND MOSTRAR='1') ELSE 
				"1111111"	when (BCD = "1000" AND MOSTRAR='1') ELSE 
				"1111011"	when (BCD = "1001" AND MOSTRAR='1') ELSE 
				"1111110"; 
				
end solve;