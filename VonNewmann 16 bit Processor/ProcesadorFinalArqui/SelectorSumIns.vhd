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

entity SelectorSumIns is
port(
        RegInstruccion: in std_logic_vector(0 to 11);
		  Control: in std_logic_vector(0 to 1); 
		  
		  Salida: out std_logic_vector(0 to 11)
);
end entity SelectorSumIns;   

architecture SelectorSumInsArch of SelectorSumIns is


begin

-- Bit 0 es el LSB

Salida(0) <= (Control(0) and RegInstruccion(0));
Salida(1) <= (Control(0) and RegInstruccion(1));
Salida(2) <= (Control(0) and RegInstruccion(2));
Salida(3) <= (Control(0) and RegInstruccion(3));
Salida(4) <= (Control(0) and RegInstruccion(4));
Salida(5) <= (Control(0) and RegInstruccion(5));
Salida(6) <= (Control(0) and RegInstruccion(6));
Salida(7) <= (Control(0) and RegInstruccion(7));
Salida(8) <= (Control(0) and RegInstruccion(8));
Salida(9) <= (Control(0) and RegInstruccion(9));
Salida(10) <= (Control(0) and RegInstruccion(10));
Salida(11) <= (Control(0) and RegInstruccion(11))  or (Control(1));

End SelectorSumInsArch;
--Definicion de la arquitectura 
--******************************************************--
--Aqui funcionamiento del Disenho1                  --
