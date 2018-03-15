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

entity Selector12II is
port(
        A: in std_logic_vector(0 to 11);
		  B: in std_logic_vector(0 to 11);
		  Control: in std_logic_vector(0 to 1); -- Control en 1 deja pasar A y en 0 deja pasar B	  
		  Salida: out std_logic_vector(0 to 11)
);
end entity Selector12II;   

architecture Selector12IIArch of Selector12II is


begin


Salida(0) <= (Control(0) and A(0)) or (Control(1) and B(0));
Salida(1) <= (Control(0) and A(1)) or (Control(1) and B(1));
Salida(2) <= (Control(0) and A(2)) or (Control(1) and B(2));
Salida(3) <= (Control(0) and A(3)) or (Control(1) and B(3));
Salida(4) <= (Control(0) and A(4)) or (Control(1) and B(4));
Salida(5) <= (Control(0) and A(5)) or (Control(1) and B(5));
Salida(6) <= (Control(0) and A(6)) or (Control(1) and B(6));
Salida(7) <= (Control(0) and A(7)) or (Control(1) and B(7));
Salida(8) <= (Control(0) and A(8)) or (Control(1) and B(8));
Salida(9) <= (Control(0) and A(9)) or (Control(1) and B(9));
Salida(10) <= (Control(0) and A(10)) or (Control(1) and B(10));
Salida(11) <= (Control(0) and A(11)) or (Control(1) and B(11));


End Selector12IIArch;
--Definicion de la arquitectura 
--******************************************************--
--Aqui funcionamiento del Disenho1                  --
