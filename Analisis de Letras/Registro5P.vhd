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

entity Registro5P is
port(
        Nivel: in std_logic_vector(0 to 4);
        Reset: in std_logic;
        clk: in std_logic;
        Enable: in std_logic;
        
        RegistroSalida: out std_logic_vector(0 to 4)
);
end entity Registro5P;   

architecture Registro5PArch of Registro5P is

Component dffe
port(d, clk, clrn, prn, ena:in std_logic; q: out std_logic);
end component;

signal Registros:std_logic_vector (0 to 4);

begin
--port map ( Data ,  Reloj,    Reset,  Preset , Enable,  Salida

dato0: dffe port map(Nivel(0), clk, Reset, '1', Enable, Registros(0));
dato1: dffe port map(Nivel(1), clk, Reset, '1', Enable, Registros(1));
dato2: dffe port map(Nivel(2), clk, Reset, '1', Enable, Registros(2));

dato3: dffe port map(Nivel(3), clk, Reset, '1', Enable, Registros(3));
dato4: dffe port map(Nivel(4), clk, Reset, '1', Enable, Registros(4));


RegistroSalida <= Registros;
End Registro5PArch;
--Definicion de la arquitectura 
--******************************************************--
--Aqui funcionamiento del Disenho1                  --
