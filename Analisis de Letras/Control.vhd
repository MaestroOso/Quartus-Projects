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
-- DEFINICION DE ENTIDAD                                --
--******************************************************--

Entity Control is
port(
-- Entradas Estandar
		Inicio: in std_logic;
		CLK: in std_logic;
		RESET: in std_logic;

-- Entradas
     HayLetra: in std_logic;  --Hay una letra
	  FinPalabra: in std_logic; -- FinPalabra
	  FinOchoLetras: in std_logic; -- Las ochoo letras han sido ingresadas
	  SalidaContadorbits: in std_logic_vector (0 to 1); -- Salida del contador de bits
	  EnviarDatos: in std_logic; -- Enviar por el protocolo la info al computador
	  FinEnvioPalabra: in std_logic; --Saber si ya mandé toda la palabra
	  FinEnvioCaracter: in std_logic; --Saber si ya mandé el caracter
	  FinTiempo: in std_logic; --Tiempo de duracion del bit

-- Salidas
	  HabilitarReg1: out std_logic;
	  HabilitarReg2: out std_logic;
	  HabilitarReg3: out std_logic;
	  InicioContadorTiempo: out std_logic;
	  IncrementarBitcaracter: out std_logic;
	  IncrementarCaracter: out std_logic;
	  IncrementarRegistro: out std_logic;
	  IncrementarContador: out std_logic;
	  Protocolo: out std_logic;
	  
	  Estados: out std_logic_vector( 0 to 14)
		
	  );
end Entity Control;              

--Definicion de la arquitectura 
--******************************************************--

architecture ControlArch of Control is
component dffe is
port(
d, clk, clrn, prn, ena: IN std_logic;
q:OUT std_logic
);
end component dffe;

--******************************************************--
--DEFINICION DE 
--SENALES DE CONEXION                     --
--******************************************************--

signal estado: std_logic_vector(0 to 14);

--******************************************************--
--Instancias y Conectividad                             --
--******************************************************--

begin

--port map ( Data ,  Reloj,    Reset,  Preset , Enable,  Salida
-- Estado anti rebote letra
F0:  dffe port map( (estado(2) and not FinPalabra and HayLetra) or (HayLetra and estado(0)), CLK,'1',RESET,'1', estado(0));
--
F1:  dffe port map( (not Inicio and estado(1)) or (estado(9) and not Inicio), CLK,'1',RESET,'1', estado(1));
F2:  dffe port map( (Inicio and estado(1)) or (estado(7)) or (estado(8)) or (estado(5) and not FinOchoLetras) or (estado(6) and not FinOchoLetras) or (estado(4) and not FinOchoLetras) or (estado(2) and not HayLetra and not FinPalabra), CLK, RESET,'1','1', estado(2));
F3:  dffe port map( (estado(0) and not HayLetra), CLK, RESET,'1','1', estado(3));
F4:  dffe port map( (not SalidaContadorbits(0) and not SalidaContadorbits(1) and estado(3)), CLK, RESET,'1','1', estado(4));
F5:  dffe port map( (not SalidaContadorbits(0) and SalidaContadorbits(1) and estado(3)), CLK,RESET,'1','1', estado(5));
F6:  dffe port map( (SalidaContadorbits(0) and not SalidaContadorbits(1) and estado(3)) , CLK, RESET,'1','1', estado(6));
F7:  dffe port map( (estado(2) and FinPalabra) , CLK, RESET,'1','1', estado(7));
F8:  dffe port map( (estado(6) and FinOchoLetras) or (estado(4) and FinOchoLetras) or (estado(5) and FinOchoLetras) , CLK, RESET,'1','1', estado(8));
F9:  dffe port map( (SalidaContadorbits(0) and SalidaContadorbits(1) and estado(3)) or (estado(9) and Inicio and not EnviarDatos) or (estado(10) and FinEnvioPalabra), CLK, RESET,'1','1', estado(9));
--Rebote
F10: dffe port map( (estado(14) and not EnviarDatos) or (estado(11) and FinEnvioCaracter), CLK, RESET,'1','1', estado(10));
F11: dffe port map( (estado(10) and not FinEnvioPalabra) or (estado(13) and FinTiempo), CLK, RESET,'1','1', estado(11));
F12: dffe port map( (estado(11) and not FinEnvioCaracter), CLK, RESET,'1','1', estado(12));
F13: dffe port map( (estado(13) and not FinTiempo) or (estado(12)), CLK, RESET,'1','1', estado(13));
--Estado anti rebote enviar
F14: dffe port map( (estado(9) and EnviarDatos and Inicio) or (estado(14) and EnviarDatos), CLK,'1',RESET,'1', estado(14));


Estados <= estado;
HabilitarReg1 <= estado(4);
HabilitarReg2 <= estado(5);
HabilitarReg3 <= estado(6);

InicioContadorTiempo <= estado(12) or estado(13);
IncrementarBitcaracter <= estado(13) and FinTiempo;
IncrementarCaracter <= estado(11) and FinEnvioCaracter;
IncrementarRegistro <= estado(8) or estado(7);
IncrementarContador <= estado(4) or estado(5) or estado(6); 

Protocolo <= estado(11) or estado(12) or estado(13); 

End  ControlArch;