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
-- DEFINITION DE ENTIDAD                                --
--******************************************************--

entity SistemaChocolate is
port(
		INICIO: in std_logic;
		CLK: in std_logic;
		RESET: in std_logic;
		EntradaChocolate: in std_logic;
		SensorChoco1: in std_logic;
		SensorChoco2: in std_logic;
		ConfirmarCaja1: in std_logic;
		ConfirmarCaja2: in std_logic;
		TamCajas1: in std_logic_vector(0 to 1);
		TamCajas2: in std_logic_vector(0 to 1);
		
		Seleccionador: in std_logic_vector(0 to 2);
		FinDia: in std_logic;
		
		LedTGB1: out std_logic; 
		LedTMB1: out std_logic; 
		LedTPB1: out std_logic;
		LedTGB2: out std_logic; 
		LedTMB2: out std_logic; 
		LedTPB2: out std_logic;
		
		LedFinCaja1: out std_logic;
		LedFinCaja2: out std_logic;
		
		DisplayOut: out std_logic_vector(0 to 6); -- Display
	   CatodoDisplayOut: out std_logic_vector(0 to 2);
		
		SalidaPrecioChocolate: out std_logic_vector(0 to 11);
		
		EstadosSistemaCentral: out std_logic_vector( 0 to 10);
		EstadosBrazo1: out std_logic_vector(0 to 14);
		EstadosBrazo2: out std_logic_vector(0 to 14)
	  );
end Entity SistemaChocolate;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÃ“N DE ARQUITECTURA                            --
--******************************************************--

architecture SistemaChocolateArch of SistemaChocolate is

component SistemaBrazo is
port(
		CLK: in std_logic;
		RESET: in std_logic;

-- Entradas
     PrecioChocolate: in std_logic_vector(0 to 11); -- Precio del chocolate
	  Habilita: in std_logic; -- Habilita del Sistema Central
	  TamCajas: in std_logic_vector(0 to 1); -- TamCaja
	  SensorChoco: in std_logic; -- SensorChocolate
	  ConfirmarCaja: in std_logic; -- Confirmar Caja
	  	 
-- Salidas
	  TerminoBrazo: out std_logic; --Fin del Brazo
	  GananciaTotal: out std_logic_vector(0 to 11); -- GananciaBrazo
	  CantidadTotal: out std_logic_vector(0 to 11); -- CantidadBrazo
	  
	  LedTG: out std_logic; --Fin grande
	  LedTM: out std_logic; --Fin mediana
	  LedTP: out std_logic; --Fin pequeña
	  
	  LedFinCaja: out std_logic;
	  
	  EstadosBrazo: out std_logic_vector(0 to 14)
	  );
end component SistemaBrazo;

component SistemaCentral is
port(
		Inicio: in std_logic;
		CLK: in std_logic;
		RESET: in std_logic;

-- Entradas
     PrecioChocolate: in std_logic; -- Precio del chocolate
	  Brazo1: in std_logic; -- Estado del brazo1
	  Brazo2: in std_logic; -- Estado del brazo2
	  GananciaBrazo1: in std_logic_vector(0 to 11); -- GananciaBrazo1
	  GananciaBrazo2: in std_logic_vector(0 to 11); -- GananciaBrazo2
	  CantidadBrazo1: in std_logic_vector(0 to 11); -- CantidadBrazo1
	  CantidadBrazo2: in std_logic_vector(0 to 11); -- CantidadBrazo2
	  Seleccionador: in std_logic_vector(0 to 2); -- SeleccionadorDisplay
	  FinDia: in std_logic; -- Estado del dia
-- Salidas
     HabilitaB1: out std_logic; -- SeÃ±al de habilitacion para el brazo1
	  HabilitaB2: out std_logic; -- SeÃ±al de habilitacion para el brazo2
	  PrecioSalidaChocolate: out std_logic_vector(0 to 11); -- Salida Precio del chocolate
	  Display: out std_logic_vector(0 to 6); -- Display
	  CatodoDisplay: out std_logic_vector(0 to 2); -- Catodo
	  EstadosFin: out std_logic_vector( 0 to 10)	
		
	  );
end component SistemaCentral; 

--******************************************************--
--DEFINICIÃ“N DE 

--SEÃ‘ALES DE CONEXIÃ“N                     --
--******************************************************--

--signal estado: std_logic_vector(0 to 10);
--******************************************************--
signal TerminoBrazo1_Control: std_logic;
signal TerminoBrazo2_Control: std_logic;

signal GananciaBrazo1_Control: std_logic_vector(0 to 11);
signal GananciaBrazo2_Control: std_logic_vector(0 to 11);

signal CantidadBrazo1_Control: std_logic_vector(0 to 11);
signal CantidadBrazo2_Control: std_logic_vector(0 to 11);

signal Habilita_Brazo1: std_logic;
signal Habilita_Brazo2: std_logic;

signal PrecioSalidaChocolate: std_logic_vector(0 to 11);
signal Display: std_logic_vector(0 to 6);
signal CatodoDisplay: std_logic_vector(0 to 2);

signal LedTG1: std_logic;
signal LedTM1: std_logic;
signal LedTP1: std_logic;
signal LedTG2: std_logic;
signal LedTM2: std_logic;
signal LedTP2: std_logic;

signal FinCaja1: std_logic;
signal FinCaja2: std_logic;

signal EstSC: std_logic_vector( 0 to 10);
signal EstB1: std_logic_vector(0 to 14);
signal EstB2: std_logic_vector(0 to 14);
--


--Instancias y Conectividad                             --
--******************************************************--

begin

Central: SistemaCentral port map(INICIO, CLK, RESET, EntradaChocolate, TerminoBrazo1_Control, TerminoBrazo2_Control, GananciaBrazo1_Control, GananciaBrazo2_Control, CantidadBrazo1_Control, CantidadBrazo2_Control, Seleccionador, FinDia, Habilita_Brazo1, Habilita_Brazo2, PrecioSalidaChocolate, Display, CatodoDisplay, EstSC);
Brazo1: SistemaBrazo port map(CLK, RESET, PrecioSalidaChocolate, Habilita_Brazo1, TamCajas1, SensorChoco1, ConfirmarCaja1, TerminoBrazo1_Control, GananciaBrazo1_Control, CantidadBrazo1_Control, LedTG1, LedTM1, LedTP1, FinCaja1, EstB1);
Brazo2: SistemaBrazo port map(CLK, RESET, PrecioSalidaChocolate, Habilita_Brazo2, TamCajas2, SensorChoco2, ConfirmarCaja2, TerminoBrazo2_Control, GananciaBrazo2_Control, CantidadBrazo2_Control, LedTG2, LedTM2, LedTP2, FinCaja2, EstB2);

LedTGB1 <= not LedTG1;
LedTMB1 <= not LedTM1;
LedTPB1 <= not LedTP1;
LedTGB2 <= not LedTG2;
LedTMB2 <= not LedTM2;
LedTPB2 <= LedTP2;
DisplayOut <= Display;
CatodoDisplayOut <= CatodoDisplay;
SalidaPrecioChocolate <= PrecioSalidaChocolate;
LedFinCaja1 <= FinCaja1;
LedFinCaja2 <= FinCaja2;



EstadosSistemaCentral <= EstSC;
EstadosBrazo1 <= EstB1; 
EstadosBrazo2 <= EstB2;


End  SistemaChocolateArch;
