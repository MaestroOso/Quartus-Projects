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

entity Comparador is
port(
        A: in std_logic_vector(0 to 15);
		  B: in std_logic_vector(0 to 15);
		  
		  Banderas: out std_logic_vector(0 to 1) -- Z N
);
end entity Comparador;   

architecture ComparadorArch of Comparador is

component Restador is
port(
        A: in std_logic_vector(0 to 15);
		  B: in std_logic_vector(0 to 15);
		  Cout: out std_logic;
		  
		  Salida: out std_logic_vector(0 to 15)
		  
);
end component Restador; 

signal Resultado: std_logic_vector(0 to 15);

signal CoutResta: std_logic;

begin

R: Restador port map(A,B,CoutResta, Resultado);

-- Z N
Banderas(0) <= (not Resultado(0)) and (not Resultado(1)) and (not Resultado(2)) and (not Resultado(3)) and (not Resultado(4)) and (not Resultado(5)) and (not Resultado(6)) and (not Resultado(7)) and (not Resultado(8)) and (not Resultado(9)) and (not Resultado(10)) and (not Resultado(11)) and (not Resultado(12)) and (not Resultado(13)) and (not Resultado(14)) and (not Resultado(15));
Banderas(1) <= Resultado(15);

End ComparadorArch;
--Definicion de la arquitectura 
--******************************************************--
--Aqui funcionamiento del Disenho1                  --
