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

entity SelectorComplemento is
port(
        A: in std_logic_vector(0 to 15);
		  Elegir: in std_logic_vector(0 to 1); --0 es A y 1 es ~A
		  
		  Salida: out std_logic_vector(0 to 15)
);
end entity SelectorComplemento;   

architecture SelectorComplementoArch of SelectorComplemento is

begin
--0 sale A y 1 sale ~A
Salida(0) <= (A(0) and Elegir(0)) or (not A(0) and Elegir(1));
Salida(1) <= (A(1) and Elegir(0)) or (not A(1) and Elegir(1));
Salida(2) <= (A(2) and Elegir(0)) or (not A(2) and Elegir(1));
Salida(3) <= (A(3) and Elegir(0)) or (not A(3) and Elegir(1));
Salida(4) <= (A(4) and Elegir(0)) or (not A(4) and Elegir(1));
Salida(5) <= (A(5) and Elegir(0)) or (not A(5) and Elegir(1));
Salida(6) <= (A(6) and Elegir(0)) or (not A(6) and Elegir(1));
Salida(7) <= (A(7) and Elegir(0)) or (not A(7) and Elegir(1));
Salida(8) <= (A(8) and Elegir(0)) or (not A(8) and Elegir(1));
Salida(9) <= (A(9) and Elegir(0)) or (not A(9) and Elegir(1));
Salida(10) <= (A(10) and Elegir(0)) or (not A(10) and Elegir(1));
Salida(11) <= (A(11) and Elegir(0)) or (not A(11) and Elegir(1));
Salida(12) <= (A(12) and Elegir(0)) or (not A(12) and Elegir(1));
Salida(13) <= (A(13) and Elegir(0)) or (not A(13) and Elegir(1));
Salida(14) <= (A(14) and Elegir(0)) or (not A(14) and Elegir(1));
Salida(15) <= (A(15) and Elegir(0)) or (not A(15) and Elegir(1));



End SelectorComplementoArch;
--Definicion de la arquitectura 
--******************************************************--
--Aqui funcionamiento del Disenho1                  --
