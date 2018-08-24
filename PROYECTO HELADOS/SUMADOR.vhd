library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

ENTITY SUMADOR IS
       PORT (	a : IN std_logic_vector(8 DOWNTO 0); 
				b : IN std_logic_vector(8 DOWNTO 0); 
				c : IN std_logic_vector(8 DOWNTO 0); 
				d : IN std_logic_vector(8 DOWNTO 0); 
				salida : OUT std_logic_vector(8 DOWNTO 0));
     END SUMADOR;

     ARCHITECTURE SOLUTION OF SUMADOR IS
     BEGIN

       PROCESS (a,b,c,d) IS
       BEGIN
         salida <= std_logic_vector(UNSIGNED(a) + UNSIGNED(b) + UNSIGNED(c) + UNSIGNED(d));
       END PROCESS;
     END SOLUTION;