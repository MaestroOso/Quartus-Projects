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

entity ControladorDisplay is
port(
        dir: in std_logic_vector(0 to 9);
		  escribir: in std_logic;
		  dataMemoria: in std_logic_vector(0 to 15);
		  
		  Dato: out std_logic_vector(0 to 15)
);
end entity ControladorDisplay;   

architecture ControladorDisplayArch of ControladorDisplay is

signal Enable: std_logic;

begin

Enable <= dir(0) and dir(1) and dir(2) and not dir(3) and not dir(4) and not dir(5) and not dir(6) and dir(7) and not dir(8) and not dir(9);

Dato(0) <= Enable and dataMemoria(0);
Dato(1) <= Enable and dataMemoria(1);
Dato(2) <= Enable and dataMemoria(2);
Dato(3) <= Enable and dataMemoria(3);
Dato(4) <= Enable and dataMemoria(4);
Dato(5) <= Enable and dataMemoria(5);
Dato(6) <= Enable and dataMemoria(6);
Dato(7) <= Enable and dataMemoria(7);
Dato(8) <= Enable and dataMemoria(8);
Dato(9) <= Enable and dataMemoria(9);
Dato(10) <= Enable and dataMemoria(10);
Dato(11) <= Enable and dataMemoria(11);
Dato(12) <= Enable and dataMemoria(12);
Dato(13) <= Enable and dataMemoria(13);
Dato(14) <= Enable and dataMemoria(14);
Dato(15) <= Enable and dataMemoria(15);

End ControladorDisplayArch;
--Definicion de la arquitectura 
--******************************************************--
--Aqui funcionamiento del Disenho1                  --
