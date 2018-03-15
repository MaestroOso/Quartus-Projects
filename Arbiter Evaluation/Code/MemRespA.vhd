--Definicion de las bibliotecas 
library IEEE; 
use IEEE.std_logic_1164.all;

--******************************************************--
-- DEFINICIÓN DE ENTIDAD                                --
--******************************************************--

entity MemRespA is
port(
		Reset: IN std_logic;
		RespA: IN std_logic;
		Reloj: IN std_logic;
		Control: IN std_logic;
		Comparador: OUT std_logic

		);
end Entity MemRespA;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÓN DE ARQUITECTURA                                        --
--******************************************************--

architecture MemRespAArch of MemRespA is

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
BLOQUE_1: dffe port map (RespA, Reloj,not Reset,'1', Control, Comparador);


End  MemRespAArch;
