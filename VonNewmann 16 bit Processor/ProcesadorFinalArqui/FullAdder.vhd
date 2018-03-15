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

entity FullAdder is
port(
        A: in std_logic;
		  B: in std_logic;
		  Cin: in std_logic;
		  Cout: out std_logic;
		  Suma: out std_logic
);
end entity FullAdder;   

architecture FullAdderArch of FullAdder is


begin

Cout <= (A AND B) OR (Cin AND ( A OR B ));
Suma <= A XOR B XOR Cin;

End FullAdderArch;
--Definicion de la arquitectura 
--******************************************************--
--Aqui funcionamiento del Disenho1                  --
