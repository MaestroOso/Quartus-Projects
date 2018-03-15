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

entity ControladorOpcion is
port(
        dir: in std_logic_vector(0 to 9);
		  leer: in std_logic;
		  opcion: in std_logic_vector(0 to 3);
		  
		  Dato: out std_logic_vector(0 to 15)
);
end entity ControladorOpcion;   

architecture ControladorOpcionArch of ControladorOpcion is

signal Enable: std_logic;

begin

Enable <= dir(0) and dir(1) and dir(2) and dir(3) and dir(4) and not dir(5) and not dir(6) and not dir(7) and dir(8) and dir(9);

Dato(0 to 11) <= "000000000000";
Dato(12) <= Enable and opcion(0);
Dato(13) <= Enable and opcion(1);
Dato(14) <= Enable and opcion(2);
Dato(15) <= Enable and opcion(3);

End ControladorOpcionArch;
--Definicion de la arquitectura 
--******************************************************--
--Aqui funcionamiento del Disenho1                  --
