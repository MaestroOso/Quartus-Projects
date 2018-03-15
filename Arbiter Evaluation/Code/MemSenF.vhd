--Definicion de las bibliotecas 
library IEEE; 
use IEEE.std_logic_1164.all;

--******************************************************--
-- DEFINICIÓN DE ENTIDAD                                --
--******************************************************--

entity MemSenF is
port(
		Sensor: IN std_logic;
		Reset: IN std_logic;
		Reloj: IN std_logic;
		Control: IN std_logic;
		Comparador: OUT std_logic
		
		);
end Entity MemSenF;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÓN DE ARQUITECTURA                                        --
--******************************************************--

architecture MemSenFArch of MemSenF is

component dffe
port(
	  d,clk,clrn,prn,ena: IN std_logic;
	  Q:OUT std_logic
	  );
end component;

--******************************************************--
--DEFINICIÓN DE SEÑALES DE CONEXIÓN                                         --
--******************************************************--


--******************************************************--
--Instancias y Conectividad
--******************************************************
begin
BLOQUE_1: dffe port map (Sensor, Reloj, not Reset,'1', Control, Comparador);


End  MemSenFArch;
