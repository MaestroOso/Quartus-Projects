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

entity Selector4II is
port(
        A: in std_logic_vector(0 to 3);
		  B: in std_logic_vector(0 to 1);
		  Control: in std_logic; -- Control en 1 deja pasar A y en 0 deja pasar B	  
		  Salida: out std_logic_vector(0 to 3)
);
end entity Selector4II;   

architecture Selector4IIArch of Selector4II is


begin


Salida(0) <= (Control and A(0)) or (not Control and B(0));
Salida(1) <= (Control and A(1)) or (not Control and B(1));
Salida(2) <= (Control and A(2));
Salida(3) <= (Control and A(3));

End Selector4IIArch;
--Definicion de la arquitectura 
--******************************************************--
--Aqui funcionamiento del Disenho1                  --
