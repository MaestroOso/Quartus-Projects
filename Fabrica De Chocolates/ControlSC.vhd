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

entity ControlSC is
port(
		Inicio: in std_logic;
		CLK: in std_logic;
		RESET: in std_logic;

-- Entradas
     PrecioChocolate: in std_logic; -- Precio del chocolate
	  Brazo1: in std_logic; -- Estado del brazo1
	  Brazo2: in std_logic; -- Estado del brazo2
	  FinDia: in std_logic; -- Estado del dia
-- Salidas
     
	  In_HabilitaB1: out std_logic; -- Señal de entrada  para el brazo1
	  In_HabilitaB2: out std_logic; -- Señal de entrada para el brazo1
	  Enable_HabilitaB1: out std_logic; -- Señal de habilitacion para el brazo1
	  Enable_HabilitaB2: out std_logic; -- Señal de habilitacion para el brazo2
     Enable_Chocolate: out std_logic;
	  Estados: out std_logic_vector( 0 to 10)
		
	  );
end Entity ControlSC;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÃ“N DE ARQUITECTURA                            --
--******************************************************--

architecture ControlSCArch of ControlSC is
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

signal estado: std_logic_vector(0 to 10);

--******************************************************--
--Instancias y Conectividad                             --
--******************************************************--

begin

--port map ( Data ,  Reloj,    Reset,  Preset , Enable,  Salida
F1:  dffe port map( (not Inicio and estado(1)) or (estado(10) and not Inicio), CLK,'1',RESET,'1', estado(1));
F2:  dffe port map( Inicio and estado(1), CLK, RESET,'1','1', estado(2));
F3:  dffe port map(estado(2), CLK, RESET,'1','1', estado(3));
F4:  dffe port map(estado(3), CLK, RESET,'1','1', estado(4));
F5:  dffe port map(estado(4), CLK,RESET,'1','1', estado(5));
F6:  dffe port map(estado(5) or estado(7) or estado (8) or (estado(6) and(not Brazo1 and not Brazo2 and not FinDia)) , CLK, RESET,'1','1', estado(6));
F7:  dffe port map(estado(6) and (not Brazo1 and Brazo2 and not FinDia) , CLK, RESET,'1','1', estado(7));
F8:  dffe port map(estado(6) and ( Brazo1 and not Brazo2 and not FinDia) , CLK, RESET,'1','1', estado(8));
F9:  dffe port map((estado(6) and ( Brazo1 and Brazo2 and not FinDia) )or (estado(6) and FinDia), CLK, RESET,'1','1', estado(9));
F10: dffe port map(estado(9)  or (estado(10) and Inicio), CLK, RESET,'1','1', estado(10));
estado(0) <= '0';
Estados <= estado;

In_HabilitaB1<=estado(5) and not estado(8) and not estado(9);
In_HabilitaB2<=estado(5) and not estado(7) and not estado(9);
Enable_HabilitaB1<=estado(5) or estado(8) or estado(9);
Enable_HabilitaB2<=estado(5) or estado(7) or estado(9);
Enable_Chocolate <= estado (2) or estado (3) or estado(4);

End  ControlSCArch;



