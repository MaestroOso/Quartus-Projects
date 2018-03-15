
--Definicion de las bibliotecas 
library IEEE; 
use IEEE.std_logic_1164.all;

--******************************************************--
-- DEFINICIÓN DE ENTIDAD                                --
--******************************************************--

	entity Control is
port(
		SalidaEstados: out std_logic_vector(13 downto 0);
		Reloj: IN std_logic;
		Patea: IN std_logic;
		Fin: IN std_logic;
		ValArbitro:IN std_logic;
		ValInicial: IN std_logic;
		Reset: IN std_logic;
		ContPatea: IN std_logic;
		Comparador: IN std_logic;
		MemArb: OUT std_logic;
		ContPatea1: OUT std_logic;
		ComparadorFinal: OUT std_logic;
		ContRta: OUT std_logic;
		MemSenF: OUT std_logic;
		MemRespA: OUT std_logic;
		Comparador1: OUT std_logic	  
	  
	  );
end Entity Control;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÓN DE ARQUITECTURA                                        --
--******************************************************--

architecture ControlArch of Control is

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
signal Cable5: std_logic;
signal Cable6: std_logic;
signal Cable7: std_logic;
signal Cable8: std_logic;
signal Cable9: std_logic;
signal Cable10: std_logic;
signal Cable11: std_logic;
signal Cable12: std_logic;
signal Cable13: std_logic;
signal Cable14: std_logic;

--******************************************************--
--Instancias y Conectividad
--******************************************************
begin


BLOQUE_1: dffe port map ((Cable1 and not ValInicial) or (Fin and Cable14), Reloj,'1',not Reset,'1', Cable1);

BLOQUE_2: dffe port map (Cable1 and ValInicial,Reloj,not Reset,'1', '1', Cable2);

BLOQUE_3: dffe port map (Cable2,Reloj,not Reset,'1','1', Cable3);

BLOQUE_4: dffe port map (Cable3,Reloj,not Reset,'1','1',Cable4);

BLOQUE_5: dffe port map (Cable4,Reloj,not Reset,'1','1',Cable5);

BLOQUE_6: dffe port map ((Cable11 and not ContPatea) or (Cable12 and not ContPatea) or Cable5 or (Cable6 and not Patea),Reloj,not Reset,'1','1',Cable6);

BLOQUE_7: dffe port map (Cable6 and Patea,Reloj,not Reset,'1','1',Cable7);

BLOQUE_8: dffe port map (Cable7 or (Cable8 and not ValArbitro), Reloj,not Reset,'1', '1',Cable8);

BLOQUE_9: dffe port map (Cable8 and ValArbitro, Reloj,not Reset,'1','1',Cable9);

BLOQUE_10: dffe port map (Cable9 ,Reloj,not Reset,'1','1',Cable10);

BLOQUE_11: dffe port map (Cable10 and not Comparador,Reloj,not Reset,'1','1',Cable11);

BLOQUE_12: dffe port map (Cable10 and Comparador,Reloj,not Reset,'1','1',Cable12);

BLOQUE_13: dffe port map ((Cable12 and ContPatea) or (Cable11 and ContPatea),Reloj,not Reset,'1','1',Cable13);

BLOQUE_14: dffe port map (Cable13 or (Cable14 and not Fin),Reloj,not Reset,'1','1',Cable14);


MemArb<=Cable2 or Cable3 or Cable4 or Cable5;
MemSenF<=Cable7;
MemRespA<=Cable9;
ContPatea1<=Cable10;
ContRta<=Cable12;
ComparadorFinal<=Cable14;
Comparador1<=Cable10;

SalidaEstados(0)<=Cable1;
SalidaEstados(1)<=Cable2;
SalidaEstados(2)<=Cable3;
SalidaEstados(3)<=Cable4;
SalidaEstados(4)<=Cable5;
SalidaEstados(5)<=Cable6;
SalidaEstados(6)<=Cable7;
SalidaEstados(7)<=Cable8;
SalidaEstados(8)<=Cable9;
SalidaEstados(9)<=Cable10;
SalidaEstados(10)<=Cable11;
SalidaEstados(11)<=Cable12;
SalidaEstados(12)<=Cable13;
SalidaEstados(13)<=Cable14;



End  ControlArch;



