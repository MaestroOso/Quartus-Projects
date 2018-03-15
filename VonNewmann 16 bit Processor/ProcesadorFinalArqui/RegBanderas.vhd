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


library IEEE;
use IEEE.std_logic_1164.all;


--******************************************************--

--******************************************************--

entity RegBanderas is
port(
        Dato: in std_logic_vector(0 to 3);
        Reset: in std_logic;
        clk: in std_logic;
        Enable: in std_logic;    
        RegistroSalida: out std_logic_vector(0 to 3)
);
end entity RegBanderas;   

architecture RegBanderasArch of RegBanderas is

Component dffe
port(d, clk, clrn, prn, ena:in std_logic; q: out std_logic);
end component;

signal Registros:std_logic_vector (0 to 3);

begin
--port map ( Data ,  Reloj,    Reset,  Preset , Enable,  Salida

--SumComp 0 es de Suma y SumComp 1 es de Comparador

--0 es Z
--1 es N
--2 es OV
--3 es CO

dato0: dffe port map(Dato(0) , clk, Reset, '1', Enable, Registros(3));
dato1: dffe port map(Dato(1), clk, Reset, '1', Enable, Registros(2));
dato2: dffe port map(Dato(2), clk, Reset, '1', Enable, Registros(0));
dato3: dffe port map(Dato(3), clk, Reset, '1', Enable, Registros(1));


RegistroSalida <= Registros;
End RegBanderasArch;
--Definicion de la arquitectura 
--******************************************************--
--Aqui funcionamiento del Disenho1                  --
