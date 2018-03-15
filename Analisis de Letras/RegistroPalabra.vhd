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

entity RegistroPalabra is
port(
        Palabra: in std_logic_vector(0 to 4);
        Reset: in std_logic;
        clk: in std_logic;
        Enable: in std_logic;
        
        RegistroSalida: out std_logic_vector(0 to 39)
);
end entity RegistroPalabra;   

architecture RegistroPalabraArch of RegistroPalabra is

component Registro5P is
port(
        Nivel: in std_logic_vector(0 to 4);
        Reset: in std_logic;
        clk: in std_logic;
        Enable: in std_logic;
        
        RegistroSalida: out std_logic_vector(0 to 4)
);
end component Registro5P; 

signal Registros1:std_logic_vector (0 to 4);
signal Registros2:std_logic_vector (0 to 4);
signal Registros3:std_logic_vector (0 to 4);
signal Registros4:std_logic_vector (0 to 4);
signal Registros5:std_logic_vector (0 to 4);
signal Registros6:std_logic_vector (0 to 4);
signal Registros7:std_logic_vector (0 to 4);
signal Registros8:std_logic_vector (0 to 4);


begin

Reg1: Registro5P port map(Palabra, Reset, Clk, Enable, Registros1);
Reg2: Registro5P port map(Registros1, Reset, Clk, Enable, Registros2);
Reg3: Registro5P port map(Registros2, Reset, Clk, Enable, Registros3);
Reg4: Registro5P port map(Registros3, Reset, Clk, Enable, Registros4);
Reg5: Registro5P port map(Registros4, Reset, Clk, Enable, Registros5);
Reg6: Registro5P port map(Registros5, Reset, Clk, Enable, Registros6);
Reg7: Registro5P port map(Registros6, Reset, Clk, Enable, Registros7);
Reg8: Registro5P port map(Registros7, Reset, Clk, Enable, Registros8);

RegistroSalida(0 to 4) <= Registros1(0 to 4);
RegistroSalida(5 to 9) <= Registros2(0 to 4);
RegistroSalida(10 to 14) <= Registros3(0 to 4);
RegistroSalida(15 to 19) <= Registros4(0 to 4);
RegistroSalida(20 to 24) <= Registros5(0 to 4);
RegistroSalida(25 to 29) <= Registros6(0 to 4);
RegistroSalida(30 to 34) <= Registros7(0 to 4);
RegistroSalida(35 to 39) <= Registros8(0 to 4);


End RegistroPalabraArch;
--Definicion de la arquitectura 
--******************************************************--
--Aqui funcionamiento del Disenho1                  --
