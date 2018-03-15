--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--        Diseno de Sistemas Digitales   					  --
--                                                      --
-- Nombres  Oscar Castelblanco
--          Maria Alejandra Gomez
--******************************************************--                                            --
-- Fecha    31 de Mayo de 2017
--                                    --
--******************************************************--

--Definicion de las bibliotecas

library IEEE;
use IEEE.std_logic_1164.all;


--******************************************************--

--******************************************************--

entity SumarRestar is
port(
        A: in std_logic_vector(0 to 15);
		  B: in std_logic_vector(0 to 15);
		  Cin: in std_logic; -- 0 para sumar y 1 para restar
		  Banderas: out std_logic_vector(0 to 3); -- Z N OV CO
		  Salida: out std_logic_vector(0 to 15)
		  
);
end entity SumarRestar;   

architecture SumarRestarArch of SumarRestar is

component Sumador16 is
port(
        A: in std_logic_vector(0 to 15);
		  B: in std_logic_vector(0 to 15);
		  Cin: in std_logic;
		  Suma: out std_logic_vector(0 to 15);
		  Cout: out std_logic
);
end component Sumador16; 

signal Resultado: std_logic_vector(0 to 15);
signal CoutSuma: std_logic;

begin

S: Sumador16 port map(A, B, Cin, Resultado, CoutSuma);

-- Z N OV CO
Banderas(0) <= (not Resultado(0)) and (not Resultado(1)) and (not Resultado(2)) and (not Resultado(3)) and (not Resultado(4)) and (not Resultado(5)) and (not Resultado(6)) and (not Resultado(7)) and (not Resultado(8)) and (not Resultado(9)) and (not Resultado(10)) and (not Resultado(11)) and (not Resultado(12)) and (not Resultado(13)) and (not Resultado(14)) and (not Resultado(15));
Banderas(1) <= Resultado(15);
Banderas(2) <= Resultado(15) xor Resultado(14);
Banderas(3) <= CoutSuma;

Salida(0 to 15) <= Resultado(0 to 15);

End SumarRestarArch;
--Definicion de la arquitectura 
--******************************************************--
--Aqui funcionamiento del Disenho1                  --
