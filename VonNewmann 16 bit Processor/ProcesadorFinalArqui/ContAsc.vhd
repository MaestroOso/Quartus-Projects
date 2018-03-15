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

entity ContAsc is
port(
        Enable:in std_logic; --Contar
		  Reloj: in std_logic;
        Reset: in std_logic;
        ContadorSalida: out std_logic_vector(0 to 2)
);
end entity ContAsc;

architecture ContAscArch of ContAsc is

Component dffe
port(d, clk, clrn, prn, ena:in std_logic; q: out std_logic);
end component;

signal Registros:std_logic_vector (0 to 2);

begin

dato1: dffe port map(not Registros(0), Reloj, Reset, '1',  Enable, Registros(0));
dato2: dffe port map(not Registros(1), Reloj, Reset, '1', Registros(0) and Enable, Registros(1));
dato3: dffe port map(not Registros(2), Reloj, Reset, '1', Registros(1) and Registros(0) and Enable, Registros(2));

ContadorSalida <= Registros;

End ContAscArch;
--Definicion de la arquitectura
--******************************************************--
--Aqui funcionamiento del Disenho1                  --
