
--Definicion de las bibliotecas 
library IEEE; 
use IEEE.std_logic_1164.all;

--******************************************************--
-- DEFINICIÓN DE ENTIDAD                                --
--******************************************************--

entity MemArb is
port(
		Reset: IN std_logic;
		CalInicial: IN std_logic;
		Reloj: IN std_logic;
		Control: IN std_logic;
		ComparadorFinal: OUT std_logic_vector(3 downto 0)
	 );
end Entity MemArb;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÓN DE ARQUITECTURA                                        --
--******************************************************--

architecture MemArbArch of MemArb is

component dffe
port(
	  d,clk,clrn,prn,ena: IN std_logic;
	  Q:OUT std_logic
	  );
end component;

--******************************************************--
--DEFINICIÓN DE SEÑALES DE CONEXIÓN                                         --
--******************************************************--

signal Q1: std_logic;
signal Q2: std_logic;
signal Q3: std_logic;
signal Q4: std_logic;

--******************************************************--
--Instancias y Conectividad
--******************************************************
begin
BLOQUE_1: dffe port map (CalInicial, Reloj, not Reset,'1', Control, Q1);
BLOQUE_2: dffe port map (Q1, Reloj,  not Reset , '1', Control, Q2);
BLOQUE_3: dffe port map (Q2, Reloj, not Reset , '1', Control,Q3); 
BLOQUE_4: dffe port map (Q3, Reloj, not Reset, '1', Control, Q4);

ComparadorFinal(0)<= Q4;                        --BIT MAS SIGNIFICATIVO
ComparadorFinal(1)<= Q3;
ComparadorFinal(2)<= Q2;
ComparadorFinal(3)<= Q1;

-- El bit mas significativo sera el primer bit en llegar de la entrada, mientras que el menos significativo
--Sera el ultimo bit que llegue desde CalInicial

End  MemArbArch;
