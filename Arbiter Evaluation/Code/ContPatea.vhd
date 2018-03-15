
--Definicion de las bibliotecas 
library IEEE; 
use IEEE.std_logic_1164.all;

--******************************************************--
-- DEFINICIÓN DE ENTIDAD                                --
--******************************************************--

	entity ContPatea is
port(
		salidaspatea: out std_logic_vector(3 downto 0);
		Reset: IN std_logic;
		Control: IN std_logic;
		Reloj: IN std_logic;
		Control1: OUT std_logic

	 
	  );
end Entity ContPatea;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÓN DE ARQUITECTURA                                        --
--******************************************************--

architecture ContPateaArch of ContPatea is

component dffe
port(
	  d,clk,clrn,prn,ena: IN std_logic;
	  Q:OUT std_logic
	  );
end component;


--******************************************************--
--DEFINICIÓN DE SEÑALES DE CONEXIÓN                                         --
--******************************************************--

signal Cable1: std_logic;
signal Cable2: std_logic;
signal Cable3: std_logic;
signal Cable4: std_logic;

--******************************************************--
--Instancias y Conectividad
--******************************************************
begin

BLOQUE_1: dffe port map (not(Cable1), Reloj,not Reset,'1', Control, Cable1);
BLOQUE_2: dffe port map (not(Cable2), Reloj,not Reset, '1', Control and Cable1, Cable2);
BLOQUE_3: dffe port map (not(Cable3), Reloj,not Reset,'1', Control and Cable1 and Cable2, Cable3);
BLOQUE_4: dffe port map (not(Cable4), Reloj,not Reset, '1', Control and Cable1 and Cable2 and Cable3 ,Cable4);


--Control1<=Cable4 and not(Cable3) and Cable2 and not(Cable1);
Control1<=not Cable4 and not(Cable3) and Cable2 and (Cable1);

salidaspatea(0)<=cable1;
salidaspatea(1)<=cable2;
salidaspatea(2)<=cable3;
salidaspatea(3)<=cable4;


--BIT MAS SIGNIFICATIVO EL CABLE4


End  ContPateaArch;	 