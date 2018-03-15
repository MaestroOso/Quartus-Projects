--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--        DiseÃ±o de Sistemas Digitales   					  --
--                                                      --
-- Nombres  Damian Martinez
--          Oscar Castelblanco
--          Meyer Acero
--******************************************************--                                            --
-- Fecha    20 de Agosto de 2016
--                                    --
--******************************************************--

--Definicion de las bibliotecas
--Definicion de las bibliotecas
library IEEE; 
use IEEE.std_logic_1164.all;

--******************************************************--
-- DEFINICIÃ“N DE ENTIDAD                                --
--******************************************************--

entity ControlBrazo is
port(
		CLK: in std_logic;
		RESET: in std_logic;

-- Entradas
	  Habilita: in std_logic; -- Habilitza del Sistema Central
	  TamCajas: in std_logic_vector(0 to 1); -- TamCaja
	  SensorChoco: in std_logic; -- Sensor de Chocolate
	  ConfirmarCaja: in std_logic; -- Confirmar Caja
	  
	  FinCajaTG: in std_logic; --Fin grande
	  FinCajaTM: in std_logic; --Fin mediana
	  FinCajaTP: in std_logic; --Fin pequeña
	  
	  ComparadorTG: in std_logic; --Fin todas grandes
	  ComparadorTM: in std_logic; --Fin todas medianas
	  ComparadorTP: in std_logic; --Fin todas pequeñas
-- Salidas
	  TerminoBrazo: out std_logic; --Fin del Brazo
	  
	  ContTG: out std_logic; --Cont grande
	  ContTM: out std_logic; --Cont mediana
	  ContTP: out std_logic; --Cont pequeña
	  ContCant: out std_logic; --Cont Total
	  EnableRegistro: out std_logic; --Enable Registro
		
	  Estados: out std_logic_vector(0 to 14)
		
	  );
end Entity ControlBrazo;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÃ“N DE ARQUITECTURA                            --
--******************************************************--

architecture ControlBrazoArch of ControlBrazo is
component dffe is
port(
d, clk, clrn, prn, ena: IN std_logic;
q:OUT std_logic
);
end component dffe;

--******************************************************--
--DEFINICIÃ“N DE 

--SEÃ‘ALES DE CONEXIÃ“N                     --
--******************************************************--

signal estado: std_logic_vector(0 to 14);

--******************************************************--
--Instancias y Conectividad                             --
--******************************************************--

begin

--port map ( Data ,  Reloj,    Reset,  Preset , Enable,  Salida
F1:  dffe port map( (not Habilita and estado(1)) or (estado(12) and FinCajaTG) or (estado(13) and FinCajaTM) or (estado(14) and FinCajaTP) or (estado(6) and not Habilita) or (estado(7) and not Habilita) or (estado(8) and not Habilita), CLK,'1',RESET,'1', estado(1));
F2:  dffe port map( (estado(2) and ConfirmarCaja and not TamCajas(0) and not TamCajas(1)) or(estado(1) and Habilita) or (estado(2) and not ConfirmarCaja) or (estado(3) and ComparadorTG) or (estado(4) and ComparadorTM) or (estado(5) and ComparadorTP), CLK, RESET,'1','1', estado(2));
F3:  dffe port map( estado(2) and ConfirmarCaja and TamCajas(0) and not TamCajas(1), CLK, RESET,'1','1', estado(3));
F4:  dffe port map( estado(2) and ConfirmarCaja and not TamCajas(0) and TamCajas(1), CLK, RESET,'1','1', estado(4));
F5:  dffe port map( estado(2) and ConfirmarCaja and TamCajas(0) and TamCajas(1), CLK,RESET,'1','1', estado(5));
F6:  dffe port map( (estado(3) and not ComparadorTG) or (estado(6) and Habilita and not SensorChoco) or (estado(12) and not FinCajaTG), CLK, RESET,'1','1', estado(6));
F7:  dffe port map( (estado(4) and not ComparadorTM) or (estado(7) and Habilita and not SensorChoco) or (estado(13) and not FinCajaTM) , CLK, RESET,'1','1', estado(7));
F8:  dffe port map( (estado(5) and not ComparadorTP) or (estado(8) and Habilita and not SensorChoco) or (estado(14) and not FinCajaTP) , CLK, RESET,'1','1', estado(8));
F9:  dffe port map( (estado(9) and SensorChoco) or (estado(6) and SensorChoco and Habilita), CLK, RESET,'1','1', estado(9));
F10: dffe port map( (estado(10) and SensorChoco) or (estado(7) and SensorChoco and Habilita), CLK, RESET,'1','1', estado(10));
F11: dffe port map( (estado(11) and SensorChoco) or (estado(8) and SensorChoco and Habilita), CLK, RESET,'1','1', estado(11));
F12: dffe port map( estado(9) and not SensorChoco, CLK, RESET,'1','1', estado(12));
F13: dffe port map( estado(10) and not SensorChoco, CLK, RESET,'1','1', estado(13));
F14: dffe port map( estado(11) and not SensorChoco, CLK, RESET,'1','1', estado(14));

TerminoBrazo <= ComparadorTG and ComparadorTM and ComparadorTP;
ContTG <= estado(9) and not SensorChoco;
ContTM <= estado(10) and not SensorChoco;
ContTP <= estado(11) and not SensorChoco;
ContCant <= (estado(9) and not SensorChoco) or (estado(10) and not SensorChoco) or (estado(11) and not SensorChoco);
EnableRegistro <= (estado(9) and not SensorChoco) or (estado(10) and not SensorChoco) or (estado(11) and not SensorChoco);
estado(0) <= '0';
Estados <= estado;

End  ControlBrazoArch;



