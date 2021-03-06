library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity controlador is
   port( 
			CLOCK: in std_logic;
			RESET: in std_logic;
			START: in std_logic;
			SELHELADO: in std_logic;
			SELJALEA: in std_logic;
			VALIDAR: in std_logic;
			CINCOSEG: in std_logic;
			ENFRUTA: OUT std_logic;
			ENHELADO: OUT std_logic;
			ENJAELA: OUT std_logic;
			ENDULCES: OUT std_logic;
			MOSTRAR: OUT std_logic;
			ENTIME: OUT std_logic;
			RESETTIME: OUT std_logic);
end controlador;



architecture COMPORTAMIENTO of controlador is

--Señales
	TYPE estado IS (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P);
	SIGNAL y : estado;
	
begin
	
	 --Decodificador 
 PROCESS (Reset,CLOCK)
 
 begin
 
	if Reset='1' then y<=A;
	elsif (CLOCK'event and Clock='1') then 
		case y is
			when A=> if START='1' THEN y<=B; else y<=A; end if;
			when B=> if START='0' THEN y<=C; else y<=B; end if;
			when C=> if SELHELADO='1' THEN y<=D; else y<=C; end if;
			when D=> y<=E;
			when E=> if SELHELADO='0' THEN y<=F; else y<=E; end if;
			when F=> if SELJALEA='1' THEN y<=G; else y<=F; end if;
			when G=> y<=H;
			when H=> if SELJALEA='0' THEN y<=I; else y<=H; end if;
			when I=> if VALIDAR='1' THEN y<=J; else y<=I; end if;
			when J=> y<=K;
			when K=> if VALIDAR='0' THEN y<=L; else y<=K; end if;
			when L=> if VALIDAR='1' THEN y<=M; else y<=L; end if;
			when M=> y<=N;
			when N=> if VALIDAR='0' THEN y<=O; else y<=N; end if;
			when O=> if CINCOSEG='1' THEN y<=P; else y<=O; end if;
			when P=> y<=A;	
		end case;
	end if;
 
 
 END PROCESS;
 
 
 --Decodificador de salida

PROCESS (y)
begin
			ENFRUTA<='0';
			ENHELADO<='0';
			ENJAELA<='0';
			ENDULCES<='0';
			MOSTRAR<='0';
			ENTIME<='0';
			RESETTIME<='0';
	case y is
			when A=> RESETTIME<='1';
			when B=> 
			when C=> 
			when D=> ENHELADO<='1';
			when E=> 
			when F=> 
			when G=> ENJAELA<='1';
			when H=> 
			when I=>
			when J=> ENFRUTA<='1';
			when K=> 
			when L=> 
			when M=> ENDULCES<='1';
			when N=> 
			when O=> MOSTRAR<='1'; ENTIME<='1';
			when P=> 	
	end case;
 END PROCESS;
------------------------ 


END COMPORTAMIENTO;


	
	
	
	
	
