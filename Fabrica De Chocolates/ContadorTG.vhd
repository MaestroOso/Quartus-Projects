--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--        Diseño de Sistemas Digitales   					  --
--                                                      --
-- Nombres  Damian Martinez
--          Oscar Castelblanco
--          Meyer Acero
--******************************************************--                                            --
-- Fecha    20 de Agosto de 2016
--                                    --
--******************************************************--

--Definicion de las bibliotecas
library IEEE;
use IEEE.std_logic_1164.all;


--******************************************************--

--******************************************************--

entity ContadorTG is
port(
        Enable:in std_logic;

		  Reloj: in std_logic;
        Reset: in std_logic;
		  
		  FinCajaTG: out std_logic;
		  FinalizadorTG: out std_logic

);
end entity ContadorTG;

architecture ContadorTGArch of ContadorTG is

Component dffe
port(d, clk, clrn, prn, ena:in std_logic; q: out std_logic);
end component;

signal Registros:std_logic_vector (0 to 5);

begin

dato1: dffe port map(not Registros(0), Reloj, Reset, '1',  Enable, Registros(0));
dato2: dffe port map(not Registros(1), Reloj, Reset, '1', Registros(0) and Enable, Registros(1));
dato3: dffe port map(not Registros(2), Reloj, Reset, '1', Registros(1) and Registros(0) and Enable, Registros(2));
dato4: dffe port map(not Registros(3), Reloj, Reset, '1', Registros(2) and Registros(1) and Registros(0) and Enable, Registros(3));
dato5: dffe port map(not Registros(4), Reloj, Reset, '1', Registros(3) and Registros(2) and Registros(1) and Registros(0) and Enable, Registros(4));

FinCajaTG <= (not Registros(4) and Registros(3) and not Registros(2) and not Registros(1) and Registros(0)) or (Registros(4) and not Registros(3) and not Registros(2) and Registros(1) and not Registros(0)) or (Registros(4) and  Registros(3) and not Registros(2) and Registros(1) and Registros(0));
FinalizadorTG <= (Registros(4) and  Registros(3) and not Registros(2) and Registros(1) and Registros(0));

End ContadorTGArch;
--Definicion de la arquitectura
--******************************************************--
--Aqui funcionamiento del Disenho1                  --

























