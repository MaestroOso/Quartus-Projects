--Definicion de las bibliotecas 
library IEEE; 
use IEEE.std_logic_1164.all;

--******************************************************--
-- DEFINICIÓN DE ENTIDAD                                --
--******************************************************--

	entity Comparador is
port(
		Control: IN std_logic;
		MemRespA: IN std_logic;
		MemSenF: IN std_logic;
		Control1: OUT std_logic  --SALIDA
	  );
end Entity Comparador;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÓN DE ARQUITECTURA                                        --
--******************************************************--

architecture ComparadorArch of Comparador is


--******************************************************--
--DEFINICIÓN DE SEÑALES DE CONEXIÓN                                         --
--******************************************************--


--******************************************************--
--Instancias y Conectividad
--******************************************************
begin

Control1<= Control and ((MemRespA and MemSenF) or (not(MemRespA) and not(MemSenF))); 
                                                                                      

End  ComparadorArch;
