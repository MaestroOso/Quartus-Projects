--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--        DiseÃ±o de Sistemas Digitales   					  --
--                                                      --
-- Nombres  Damian Martinez
--          Oscar Castelblanco
--          Meyer Acero
--******************************************************--                                            --
-- Fecha    20 de Agosto de 2016
--                                    --
--******************************************************--

--Definicion de las bibliotecas
--Definicion de las bibliotecas
library IEEE; 
use IEEE.std_logic_1164.all;

--******************************************************--
-- DEFINICIÃ“N DE ENTIDAD                                --
--******************************************************--

entity ContAnillo3 is
port(
Contar: in std_logic;
CLK: in std_logic;
RESET: in std_logic;
salida: out std_logic_vector(0 to 2)

 );
end Entity ContAnillo3;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÃ“N DE ARQUITECTURA                            --
--******************************************************--

architecture ContAnillo3Arch of ContAnillo3 is
component dffe is
port(
d, clk, clrn, prn, ena: IN std_logic;
q:OUT std_logic
);
end component dffe;

--******************************************************--
--DEFINICIÃ“N DE 

--SEÃ‘ALES DE CONEXIÃ“N                     --
--******************************************************--

signal estado: std_logic_vector(0 to 2);

--******************************************************--
--Instancias y Conectividad                             --
--******************************************************--

begin

--port map ( Data ,  Reloj,    Reset,  Preset , Enable,  Salida
F0:  dffe port map( (not Contar and estado(0)) or (Contar and estado(2)), CLK,'1',RESET,'1', estado(0));
F1:  dffe port map((not Contar and estado(1)) or ( Contar and estado(0) ), CLK, RESET,'1','1', estado(1));
F2:  dffe port map((not Contar and estado(2)) or (Contar and estado(1)), CLK, RESET,'1','1', estado(2));

salida<= estado;
End  ContAnillo3Arch;
