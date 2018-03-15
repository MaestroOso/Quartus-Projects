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

entity Cont5 is
port(
        Enable:in std_logic;

		  Reloj: in std_logic;
        Reset: in std_logic;
        ContadorSalida: out std_logic_vector(0 to 11)
);
end entity Cont5;

architecture Cont5Arch of Cont5 is

Component dffe
port(d, clk, clrn, prn, ena:in std_logic; q: out std_logic);
end component;

signal Registros:std_logic_vector (0 to 11);

begin

dato1: dffe port map(not Registros(0), Reloj, Reset, '1',  Enable, Registros(0));
dato2: dffe port map(not Registros(1), Reloj, Reset, '1', Registros(0) and Enable, Registros(1));
dato3: dffe port map(not Registros(2), Reloj, Reset, '1', Registros(1) and Registros(0) and Enable, Registros(2));
dato4: dffe port map(not Registros(3), Reloj, Reset, '1', Registros(2) and Registros(1) and Registros(0) and Enable, Registros(3));
dato5: dffe port map(not Registros(4), Reloj, Reset, '1', Registros(3) and Registros(2) and Registros(1) and Registros(0) and Enable, Registros(4));
dato6: dffe port map(not Registros(5), Reloj, Reset, '1', Registros(4) and Registros(3) and Registros(2) and Registros(1) and Registros(0) and Enable, Registros(5));
Registros(6) <= '0';
Registros(7) <= '0';
Registros(8) <= '0';
Registros(9) <= '0';
Registros(10) <= '0';
Registros(11) <= '0';
ContadorSalida <= Registros;

End Cont5Arch;
--Definicion de la arquitectura
--******************************************************--
--Aqui funcionamiento del Disenho1                  --

























