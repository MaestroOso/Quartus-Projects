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

entity ContadorTiempo is
port(
        Enable:in std_logic;

		  Reloj: in std_logic;
        Reset: in std_logic;
		  
		  FinTiempo: out std_logic
		  
);
end entity ContadorTiempo;

architecture ContadorTiempoArch of ContadorTiempo is

Component dffe
port(d, clk, clrn, prn, ena:in std_logic; q: out std_logic);
end component;

signal Registros:std_logic_vector (0 to 12);

begin

dato1: dffe port map(not Registros(0), Reloj, Reset, '1',  Enable, Registros(0));
dato2: dffe port map(not Registros(1), Reloj, Reset, '1', Registros(0) and Enable, Registros(1));
dato3: dffe port map(not Registros(2), Reloj, Reset, '1', Registros(1) and Registros(0) and Enable, Registros(2));
dato4: dffe port map(not Registros(3), Reloj, Reset, '1', Registros(2) and Registros(1) and Registros(0) and Enable, Registros(3));
dato5: dffe port map(not Registros(4), Reloj, Reset, '1', Registros(3) and Registros(2) and Registros(1) and Registros(0) and Enable, Registros(4));
dato6: dffe port map(not Registros(5), Reloj, Reset, '1', Registros(4) and Registros(3) and Registros(2) and Registros(1) and Registros(0) and Enable, Registros(5));
dato7: dffe port map(not Registros(6), Reloj, Reset, '1', Registros(5) and Registros(4) and Registros(3) and Registros(2) and Registros(1) and Registros(0) and Enable, Registros(6));
dato8: dffe port map(not Registros(7), Reloj, Reset, '1', Registros(6) and Registros(5) and Registros(4) and Registros(3) and Registros(2) and Registros(1) and Registros(0) and Enable, Registros(7));
dato9: dffe port map(not Registros(8), Reloj, Reset, '1', Registros(7) and Registros(6) and Registros(5) and Registros(4) and Registros(3) and Registros(2) and Registros(1) and Registros(0) and Enable, Registros(8));
dato10: dffe port map(not Registros(9), Reloj, Reset, '1', Registros(8) and Registros(7) and Registros(6) and Registros(5) and Registros(4) and Registros(3) and Registros(2) and Registros(1) and Registros(0) and Enable, Registros(9));
dato11: dffe port map(not Registros(10), Reloj, Reset, '1', Registros(9) and Registros(8) and Registros(7) and Registros(6) and Registros(5) and Registros(4) and Registros(3) and Registros(2) and Registros(1) and Registros(0) and Enable, Registros(10));
dato12: dffe port map(not Registros(11), Reloj, Reset, '1', Registros(10) and Registros(9) and Registros(8) and Registros(7) and Registros(6) and Registros(5) and Registros(4) and Registros(3) and Registros(2) and Registros(1) and Registros(0) and Enable, Registros(11));
dato13: dffe port map(not Registros(12), Reloj, Reset, '1', Registros(11) and Registros(10) and Registros(9) and Registros(8) and Registros(7) and Registros(6) and Registros(5) and Registros(4) and Registros(3) and Registros(2) and Registros(1) and Registros(0) and Enable, Registros(12));

--Tiempo real
FinTiempo <= (Registros(12) and not Registros(11) and Registros(10) and not Registros(9) and not Registros(8) and not Registros(7) and Registros(6) and not Registros(5) and Registros(4) and not Registros(3) and not Registros(2) and not Registros(1) and not Registros(0));
-- Tiempo Simulacion
--FinTiempo <= Registros(4);

End ContadorTiempoArch;
--Definicion de la arquitectura
--******************************************************--
--Aqui funcionamiento del Disenho1                  --