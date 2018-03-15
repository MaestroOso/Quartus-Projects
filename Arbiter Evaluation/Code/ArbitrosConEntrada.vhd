--Definicion de las bibliotecas 
library IEEE; 
use IEEE.std_logic_1164.all;

--******************************************************--
-- DEFINICIÓN DE ENTIDAD                                --
--******************************************************--

entity ArbitrosConEntrada is

port(
		empiece1: out std_logic;--prueba pa saber que esta mierda
		guardar_sensor : out std_logic;--Salida para ver que se guardo en MemSenF
		guardar_calificacion : out std_logic_vector(3 downto 0);--Salida de lo que se guardo en MemArb
		guardar_validacion : out std_logic;--Salida de lo que se guarod en MemRespA
		SalidaEstados: out std_logic_vector(13 downto 0);
		salidaspatea: out std_logic_vector(3 downto 0);
		Sensor: IN std_logic;
		RespA: IN std_logic;
		Patea: IN std_logic;
		Reloj: IN std_logic;
		ValArbitro: IN std_logic;
		Fin: IN std_logic;
		Reset: IN std_logic;
		Resultado:OUT std_logic_vector(2 downto 0);
		reloj1:out std_logic
		
	  );
end Entity ArbitrosConEntrada;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÓN DE ARQUITECTURA                                        --
--******************************************************--

architecture ArbitrosConEntradaArch of ArbitrosConEntrada is

component EntradaSerial 
PORT ( Reloj, Restablecimiento: IN STD_LOGIC ;
Salida_Serial, Empiece : OUT STD_LOGIC );
END component EntradaSerial ;

component Arbitros 
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
end component Arbitros;      


--******************************************************--
--DEFINICIÓN DE SEÑALES DE CONEXIÓN                                         --
--******************************************************--

signal Salida_Serial: std_logic;
signal Empiece: std_logic;


--******************************************************--
--Instancias y Conectividad
--******************************************************
begin

BLOQUE_EntradaSerial: EntradaSerial port map (Reloj,not Reset,Salida_Serial, Empiece);
BLOQUE_Arbitros: Arbitros port map (guardar_sensor,guardar_calificacion,guardar_validacion,SalidaEstados,salidaspatea,
Sensor,RespA,Patea,Salida_Serial,Reloj,Empiece,ValArbitro,Fin,Reset,Resultado);

empiece1<=Empiece;
reloj1<=Reloj;

End  ArbitrosConEntradaArch;
