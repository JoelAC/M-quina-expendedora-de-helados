LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY cinco IS
	PORT(	o: OUT STD_LOGIC_vector(4 downto 0));
END cinco;

ARCHITECTURE sol OF cinco IS
BEGIN

	o<="00101";


END sol;