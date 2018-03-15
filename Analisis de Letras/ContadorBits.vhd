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

entity ContadorBits is
port(
        Enable:in std_logic;

		  Reloj: in std_logic;
        Reset: in std_logic;
		  
		  SalidaContadorBits: out std_logic_vector(0 to 1);
		  
		  Led0: out std_logic;
		  Led1: out std_logic;
		  Led2: out std_logic;
		  Led3: out std_logic
		  
);
end entity ContadorBits;

architecture ContadorBitsArch of ContadorBits is

Component dffe
port(d, clk, clrn, prn, ena:in std_logic; q: out std_logic);
end component;

signal Registros:std_logic_vector (0 to 1);

begin

dato1: dffe port map(not Registros(0), Reloj, Reset, '1',  Enable, Registros(0));
dato2: dffe port map(not Registros(1), Reloj, Reset, '1', Registros(0) and Enable, Registros(1));


Led0 <= not(not Registros(0) and not Registros(1));
Led1 <= not(Registros(0) and not Registros(1));
Led2 <= not(not Registros(0) and Registros(1));
Led3 <= not(Registros(0) and Registros(1));
SalidaContadorBits <= Registros;


End ContadorBitsArch;
--Definicion de la arquitectura
--******************************************************--
--Aqui funcionamiento del Disenho1                  --