

--Definicion de las bibliotecas 
library IEEE; 
use IEEE.std_logic_1164.all;

--******************************************************--
-- DEFINICIÓN DE ENTIDAD                                --
--******************************************************--

	entity ContRta is
port(
		Reset: IN std_logic;
		Control: IN std_logic;
		Reloj: IN std_logic;
		ComparadorFinal: OUT std_logic_vector(3 downto 0)
	 
	  );
end Entity ContRta;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÓN DE ARQUITECTURA                                        --
--******************************************************--

architecture ContRtaArch of ContRta is

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


ComparadorFinal(3)<=Cable1;  --BIT MENOS SIGNIFICATIVO 
ComparadorFinal(2)<=Cable2; 
ComparadorFinal(1)<=Cable3;  
ComparadorFinal(0)<=Cable4; 


-- Se guardo el bit menos significativo en la última posición, esto para que al comparador final llegue 
--ContRta y MemArb  con las mismas posiciones y así no generar ningún error.


End  ContRtaArch;
