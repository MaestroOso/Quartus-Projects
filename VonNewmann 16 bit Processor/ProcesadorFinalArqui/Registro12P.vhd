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

entity Registro12P is
port(
        Dato: in std_logic_vector(0 to 11);
        Reset: in std_logic;
        clk: in std_logic;
        Enable: in std_logic;
        
        RegistroSalida: out std_logic_vector(0 to 11)
);
end entity Registro12P;   

architecture Registro12PArch of Registro12P is

Component dffe
port(d, clk, clrn, prn, ena:in std_logic; q: out std_logic);
end component;

signal Registros:std_logic_vector (0 to 11);

begin
--port map ( Data ,  Reloj,    Reset,  Preset , Enable,  Salida

dato0: dffe port map(Dato(0), clk, Reset, '1', Enable, Registros(0));
dato1: dffe port map(Dato(1), clk, Reset, '1', Enable, Registros(1));
dato2: dffe port map(Dato(2), clk, Reset, '1', Enable, Registros(2));
dato3: dffe port map(Dato(3), clk, Reset, '1', Enable, Registros(3));
dato4: dffe port map(Dato(4), clk, Reset, '1', Enable, Registros(4));
dato5: dffe port map(Dato(5), clk, Reset, '1', Enable, Registros(5));
dato6: dffe port map(Dato(6), clk, Reset, '1', Enable, Registros(6));
dato7: dffe port map(Dato(7), clk, Reset, '1', Enable, Registros(7));
dato8: dffe port map(Dato(8), clk, Reset, '1', Enable, Registros(8));
dato9: dffe port map(Dato(9), clk, Reset, '1', Enable, Registros(9));
dato10: dffe port map(Dato(10), clk, Reset, '1', Enable, Registros(10));
dato11: dffe port map(Dato(11), clk, Reset, '1', Enable, Registros(11));

RegistroSalida <= Registros;
End Registro12PArch;
--Definicion de la arquitectura 
--******************************************************--
--Aqui funcionamiento del Disenho1                  --
