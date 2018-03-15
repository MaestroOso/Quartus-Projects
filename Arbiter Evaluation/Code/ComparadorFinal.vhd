--Definicion de las bibliotecas 
library IEEE; 
use IEEE.std_logic_1164.all;

--******************************************************--
-- DEFINICIÓN DE ENTIDAD                                --
--******************************************************--

entity ComparadorFinal is
port(
		Control: IN std_logic;
		ContRta: IN std_logic_vector(3 downto 0);
		MemArb: IN std_logic_vector(3 downto 0);
		Resultado: OUT std_logic_vector(2 downto 0)  --SALIDA
	  );
end Entity ComparadorFinal;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÓN DE ARQUITECTURA                                        --
--******************************************************--

architecture ComparadorFinalArch of ComparadorFinal is


--******************************************************--
--DEFINICIÓN DE SEÑALES DE CONEXIÓN                                         --
--******************************************************--

--signal NOMBRE1_NOMBRE2_CABLE: <TIPO DE DATO>;

signal Mejor: std_logic;
signal Igual: std_logic;
signal Peor: std_logic;

--******************************************************--
--Instancias y Conectividad
--******************************************************
begin

--Se comenzó comparando la primera posición de ContRta pues este es el bit más significativo, 
--al igual que la memoria del árbitro

-- Aciertos mayor a inicial (Mejor)
Mejor<=  (ContRta(0) and not MemArb(0)) or ((ContRta(0) xnor MemArb(0)) and (ContRta(1) and not MemArb(1)))
			or ((ContRta(0) xnor MemArb(0)) and (ContRta(1) xnor MemArb(1)) and (ContRta(2) and not MemArb(2)))
			or ((ContRta(0) xnor MemArb(0)) and (ContRta(1) xnor MemArb(1)) and (ContRta(2) xnor MemArb(2))
			and (ContRta(3) and not MemArb(3)));



--Igual
Igual<=(((ContRta(0) and MemArb(0)) or (not(ContRta(0)) and not(MemArb(0)))) and 
((ContRta(1) and MemArb(1)) or (not(ContRta(1)) and not(MemArb(1)))) and
((ContRta(2) and MemArb(2)) or (not(ContRta(2)) and not(MemArb(2)))) and
((ContRta(3) and MemArb(3)) or (not(ContRta(3)) and not(MemArb(3)))));

--Peor

Peor<= not(Mejor) and not(Igual);

Resultado(0)<=Control and Peor; 
Resultado(1)<=Control and Igual; 
Resultado(2)<=Control and Mejor; 



End  ComparadorFinalArch;
