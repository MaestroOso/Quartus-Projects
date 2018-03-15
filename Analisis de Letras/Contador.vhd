--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--        Diseno de Sistemas Digitales   					  --
--                                                      --
-- Nombres  Oscar Castelblanco
--          Meyer Acero
--          Damian Martinez
--******************************************************--                                            --
-- Fecha    21 de Noviembre de 2016
--                                    --
--******************************************************--

--Definicion de las bibliotecas

library IEEE;
use IEEE.std_logic_1164.all;


--******************************************************--

--******************************************************--

entity Contador is
port(
        Enable:in std_logic;

		  Reloj: in std_logic;
        Reset: in std_logic;
		  
		  FinCont: out std_logic

);
end entity Contador;

architecture ContadorArch of Contador is

Component dffe
port(d, clk, clrn, prn, ena:in std_logic; q: out std_logic);
end component;

signal Registros:std_logic_vector (0 to 3);

begin

dato1: dffe port map(not Registros(0), Reloj, Reset, '1',  Enable, Registros(0));
dato2: dffe port map(not Registros(1), Reloj, Reset, '1', Registros(0) and Enable, Registros(1));
dato3: dffe port map(not Registros(2), Reloj, Reset, '1', Registros(1) and Registros(0) and Enable, Registros(2));
dato4: dffe port map(not Registros(3), Reloj, Reset, '1', Registros(2) and Registros(1) and Registros(0) and Enable, Registros(3));


FinCont <= Registros(2) and Registros(1) and Registros(0);

End ContadorArch;
--Definicion de la arquitectura
--******************************************************--
--Aqui funcionamiento del Disenho1                  --