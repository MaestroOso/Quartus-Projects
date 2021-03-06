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

entity ControladorSwitch is
port(
        dir: in std_logic_vector(0 to 9);
		  leer: in std_logic;
		  switch: in std_logic_vector(0 to 9);
		  
		  Dato: out std_logic_vector(0 to 15)
);
end entity ControladorSwitch;   

architecture ControladorSwitchArch of ControladorSwitch is

signal Enable: std_logic;

begin

Enable <= dir(0) and dir(1) and dir(2) and dir(3) and dir(4) and not dir(5) and dir(6) and not dir(7) and not dir(8) and not dir(9);

Dato(0 to 5) <= "000000";
Dato(6) <= Enable and switch(0);
Dato(7) <= Enable and switch(1);
Dato(8) <= Enable and switch(2);
Dato(9) <= Enable and switch(3);
Dato(10) <= Enable and switch(4);
Dato(11) <= Enable and switch(5);
Dato(12) <= Enable and switch(6);
Dato(13) <= Enable and switch(7);
Dato(14) <= Enable and switch(8);
Dato(15) <= Enable and switch(9);

End ControladorSwitchArch;
--Definicion de la arquitectura 
--******************************************************--
--Aqui funcionamiento del Disenho1                  --
