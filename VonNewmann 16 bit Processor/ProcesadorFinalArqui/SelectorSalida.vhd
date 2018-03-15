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

entity SelectorSalida is
port(
        A: in std_logic_vector(0 to 15); --Entrada
        B: in std_logic_vector(0 to 15); --Salida
		  C: in std_logic_vector(0 to 11); -- instrucActual
		  D: in std_logic_vector(0 to 3); -- RegBanderas
		  Elegir: in std_logic_vector(0 to 3); -- 0 deja pasar A, 1 deja pasar B, 2 deja pasar C, 3 deja pasar D
		  
		  Salida: out std_logic_vector(0 to 15)
);
end entity SelectorSalida;   

architecture SelectorSalidaArch of SelectorSalida is

begin
--00 sale A y 01 sale B y 10 sale C
-- 0 lsb 
Salida(0) <= (A(0) and Elegir(0)) or (B(0) and Elegir(1)) or (C(0) and Elegir(2)) or (D(0) and Elegir(3)); 
Salida(1) <= (A(1) and Elegir(0)) or (B(1) and Elegir(1)) or (C(1) and Elegir(2)) or (D(1) and Elegir(3)); 
Salida(2) <= (A(2) and Elegir(0)) or (B(2) and Elegir(1)) or (C(2) and Elegir(2)) or (D(2) and Elegir(3)); 
Salida(3) <= (A(3) and Elegir(0)) or (B(3) and Elegir(1)) or (C(3) and Elegir(2)) or (D(3) and Elegir(3)); 
Salida(4) <= (A(4) and Elegir(0)) or (B(4) and Elegir(1)) or (C(4) and Elegir(2));
Salida(5) <= (A(5) and Elegir(0)) or (B(5) and Elegir(1)) or (C(5) and Elegir(2));
Salida(6) <= (A(6) and Elegir(0)) or (B(6) and Elegir(1)) or (C(6) and Elegir(2));
Salida(7) <= (A(7) and Elegir(0)) or (B(7) and Elegir(1)) or (C(7) and Elegir(2));
Salida(8) <= (A(8) and Elegir(0)) or (B(8) and Elegir(1)) or (C(8) and Elegir(2));
Salida(9) <= (A(9) and Elegir(0)) or (B(9) and Elegir(1)) or (C(9) and Elegir(2));
Salida(10) <= (A(10) and Elegir(0)) or (B(10) and Elegir(1)) or (C(10) and Elegir(2));
Salida(11) <= (A(11) and Elegir(0)) or (B(11) and Elegir(1)) or (C(11) and Elegir(2));
Salida(12) <= (A(12) and Elegir(0)) or (B(12) and Elegir(1));
Salida(13) <= (A(13) and Elegir(0)) or (B(13) and Elegir(1));
Salida(14) <= (A(14) and Elegir(0)) or (B(14) and Elegir(1));
Salida(15) <= (A(15) and Elegir(0)) or (B(15) and Elegir(1));
 



End SelectorSalidaArch;
--Definicion de la arquitectura 
--******************************************************--
--Aqui funcionamiento del Disenho1                  --
