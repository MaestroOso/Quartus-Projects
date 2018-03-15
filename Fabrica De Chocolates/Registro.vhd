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

entity Registro is
port(
        Entrada: in std_logic;
        Reset: in std_logic;
        clk: in std_logic;
        Enable: in std_logic;
        
        Salida: out std_logic
);
end entity Registro;   

architecture RegistroArch of Registro is

Component dffe
port(d, clk, clrn, prn, ena:in std_logic; q: out std_logic);
end component;

signal RegistroSalida:std_logic;

begin
--port map ( Data ,  Reloj,    Reset,  Preset , Enable,  Salida

dato1: dffe port map(Entrada, clk, Reset, '1', Enable, RegistroSalida);


Salida <= RegistroSalida;
End RegistroArch;
--Definicion de la arquitectura 
--******************************************************--
--Aqui funcionamiento del Disenho1 