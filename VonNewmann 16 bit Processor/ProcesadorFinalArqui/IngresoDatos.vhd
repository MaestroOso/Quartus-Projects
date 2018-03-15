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

entity IngresoDatos is
port(
        Memoria: in std_logic_vector(0 to 15);
		  Switch: in std_logic_vector(0 to 15);
		  Opcion: in std_logic_vector(0 to 15);
		  
		  Dato: out std_logic_vector(0 to 15)
);
end entity IngresoDatos;   

architecture IngresoDatosArch of IngresoDatos is

begin

Dato(0) <= Memoria(0) or Switch(0) or Opcion(0);
Dato(1) <= Memoria(1) or Switch(1) or Opcion(1);
Dato(2) <= Memoria(2) or Switch(2) or Opcion(2);
Dato(3) <= Memoria(3) or Switch(3) or Opcion(3);
Dato(4) <= Memoria(4) or Switch(4) or Opcion(4);
Dato(5) <= Memoria(5) or Switch(5) or Opcion(5);
Dato(6) <= Memoria(6) or Switch(6) or Opcion(6);
Dato(7) <= Memoria(7) or Switch(7) or Opcion(7);
Dato(8) <= Memoria(8) or Switch(8) or Opcion(8);
Dato(9) <= Memoria(9) or Switch(9) or Opcion(9);
Dato(10) <= Memoria(10) or Switch(10) or Opcion(10);
Dato(11) <= Memoria(11) or Switch(11) or Opcion(11);
Dato(12) <= Memoria(12) or Switch(12) or Opcion(12);
Dato(13) <= Memoria(13) or Switch(13) or Opcion(13);
Dato(14) <= Memoria(14) or Switch(14) or Opcion(14);
Dato(15) <= Memoria(15) or Switch(15) or Opcion(15);

End IngresoDatosArch;
--Definicion de la arquitectura 
--******************************************************--
--Aqui funcionamiento del Disenho1                  --
