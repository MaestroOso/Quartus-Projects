--Definicion de las bibliotecas 
library IEEE; 
use IEEE.std_logic_1164.all;

--******************************************************--
-- DEFINICIÓN DE ENTIDAD                                --
--******************************************************--

entity Arbitros is
port(
		guardar_sensor : out std_logic;--Salida para ver que se guardo en MemSenF
		guardar_calificacion : out std_logic_vector(3 downto 0);--Salida de lo que se guardo en MemArb
		guardar_validacion : out std_logic;--Salida de lo que se guarod en MemRespA
		SalidaEstados: out std_logic_vector(13 downto 0);
		salidaspatea: out std_logic_vector(3 downto 0);
		Sensor: IN std_logic;
		RespA: IN std_logic;
		Patea: IN std_logic;
		CalInicial: IN std_logic;  -- ENTRA SERIAL
		Reloj: IN std_logic;
		ValInicial: IN std_logic;
		ValArbitro: IN std_logic;
		Fin: IN std_logic;
		Reset: IN std_logic;
		Resultado:OUT std_logic_vector(2 downto 0)
		
	  );
end Entity Arbitros;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÓN DE ARQUITECTURA                                        --
--******************************************************--

architecture ArbitrosArch of Arbitros is

component MemArb
port(
		Reset: IN std_logic;
		CalInicial: IN std_logic;
		Reloj: IN std_logic;
		Control: IN std_logic;
		ComparadorFinal: OUT std_logic_vector(3 downto 0)
		
	  );
end component MemArb;


component MemRespA
port(
		Reset: IN std_logic;
		RespA: IN std_logic;
		Reloj: IN std_logic;
		Control: IN std_logic;
		Comparador: OUT std_logic
	
	  );
end component MemRespA;

component MemSenF
port(
		Sensor: IN std_logic;
		Reset: IN std_logic;
		Reloj: IN std_logic;
		Control: IN std_logic;
		Comparador: OUT std_logic
	
	  );
end component MemSenF;

component Comparador
port(
		Control: IN std_logic;
		MemRespA: IN std_logic;
		MemSenF: IN std_logic;
		Control1: OUT std_logic  --SALIDA
	
	  );
end component Comparador;

component ContRta
port(
		Reset: IN std_logic;
		Control: IN std_logic;
		Reloj: IN std_logic;
		ComparadorFinal: OUT std_logic_vector(3 downto 0)
	
	  );
end component ContRta;

component ComparadorFinal
port(
		Control: IN std_logic;
		ContRta: IN std_logic_vector(3 downto 0);
		MemArb: IN std_logic_vector(3 downto 0);
		Resultado: OUT std_logic_vector(2 downto 0)  --SALIDA
	
	  );
end component ComparadorFinal;

component ContPatea
port(
		salidaspatea: out std_logic_vector(3 downto 0);
		Reset: IN std_logic;
		Control: IN std_logic;
		Reloj: IN std_logic;
		Control1: OUT std_logic
		);

end component ContPatea;


component Control
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
end component Control;



--******************************************************--
--DEFINICIÓN DE SEÑALES DE CONEXIÓN                                         --
--******************************************************--

signal Control_MemArb: std_logic;
signal MemArb_ComparadorFinal: std_logic_vector(3 downto 0);
signal Control_ContPatea: std_logic;
signal ContPatea_Control: std_logic;
signal Control_ComparadorFinal: std_logic;
signal Control_ContRta: std_logic;
signal Control_MemSenF: std_logic;
signal Control_Comparador: std_logic;
signal Comparador_Control: std_logic;
signal Control_MemRespA: std_logic;
signal MemRespA_Comparador: std_logic;
signal MemSenF_Comparador: std_logic;
signal ContRta_ComparadorFinal: std_logic_vector(3 downto 0);


--******************************************************--
--Instancias y Conectividad
--******************************************************
begin


BLOQUE_MemArb: MemArb port map (Reset,CalInicial,Reloj,Control_MemArb,MemArb_ComparadorFinal);
BLOQUE_MemRespA: MemRespA port map (Reset, RespA, Reloj,Control_MemRespA,MemRespA_Comparador);
BLOQUE_MemSenF: MemSenF port map (Sensor, Reset,Reloj,Control_MemSenF,MemSenF_Comparador);
BLOQUE_Comparador: Comparador port map (Control_Comparador,MemRespA_Comparador,MemSenF_Comparador,Comparador_Control);
BLOQUE_ContRta: ContRta port map (Reset,Control_ContRta,Reloj,ContRta_ComparadorFinal);

guardar_sensor<= MemSenF_Comparador;
guardar_calificacion<=MemArb_ComparadorFinal;
guardar_validacion<=MemRespA_Comparador;

BLOQUE_ComparadorFinal: ComparadorFinal port map (Control_ComparadorFinal, ContRta_ComparadorFinal, MemArb_ComparadorFinal, Resultado);
BLOQUE_ContPatea: ContPatea port map (salidaspatea,Reset,Control_ContPatea, Reloj, ContPatea_Control);
BLOQUE_Control: Control port map (SalidaEstados,Reloj,Patea,Fin,ValArbitro,ValInicial,Reset,ContPatea_Control, Comparador_Control,
Control_MemArb, Control_ContPatea, Control_ComparadorFinal,Control_ContRta, Control_MemSenF, Control_MemRespA, Control_Comparador);



End  ArbitrosArch;
