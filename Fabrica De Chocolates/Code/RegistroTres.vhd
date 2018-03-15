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

entity RegistroTres is
port(
        Entrada: in std_logic;
        Reset: in std_logic;
        clk: in std_logic;
        Enable: in std_logic;
        
        RegistroSalida: out std_logic_vector(0 to 11)
);
end entity RegistroTres;   

architecture RegistroTresArch of RegistroTres is

Component dffe
port(d, clk, clrn, prn, ena:in std_logic; q: out std_logic);
end component;

signal Registros:std_logic_vector (0 to 11);

begin
--port map ( Data ,  Reloj,    Reset,  Preset , Enable,  Salida

dato1: dffe port map(Entrada, clk, Reset, '1', Enable, Registros(0));
dato2: dffe port map(Registros(0), clk, Reset, '1', Enable, Registros(1));
dato3: dffe port map(Registros(1), clk, Reset, '1', Enable, Registros(2));

Registros(3)<='0';
Registros(4)<='0';
Registros(5)<='0';
Registros(6)<='0';
Registros(7)<='0';
Registros(8)<='0';
Registros(9)<='0';
Registros(10)<='0';
Registros(11)<='0';

RegistroSalida <= Registros;
End RegistroTresArch;
--Definicion de la arquitectura 
--******************************************************--
--Aqui funcionamiento del Disenho1                  --
