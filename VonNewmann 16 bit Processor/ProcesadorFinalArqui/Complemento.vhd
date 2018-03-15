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

entity Complemento is
port(
        Dato: in std_logic_vector(0 to 15);
        
		  DatoN: out std_logic_vector(0 to 15)
);
end entity Complemento;   

architecture ComplementoArch of Complemento is

begin
--port map ( Data ,  Reloj,    Reset,  Preset , Enable,  Salida

DatoN(0) <= not Dato(0);
DatoN(1) <= not Dato(1);
DatoN(2) <= not Dato(2);
DatoN(3) <= not Dato(3);
DatoN(4) <= not Dato(4);
DatoN(5) <= not Dato(5);
DatoN(6) <= not Dato(6);
DatoN(7) <= not Dato(7);
DatoN(8) <= not Dato(8);
DatoN(9) <= not Dato(9);
DatoN(10) <= not Dato(10);
DatoN(11) <= not Dato(11);
DatoN(12) <= not Dato(12);
DatoN(13) <= not Dato(13);
DatoN(14) <= not Dato(14);
DatoN(15) <= not Dato(15);

End ComplementoArch;
--Definicion de la arquitectura 
--******************************************************--
--Aqui funcionamiento del Disenho1                  --
