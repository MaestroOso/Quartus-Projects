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

entity SistemaChocoIN is
port(
		INICIO: in std_logic;
		CLK: in std_logic;
		RESET: in std_logic;
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
		DisplayOut: out std_logic_vector(0 to 6); -- Display
	   CatodoDisplayOut: out std_logic_vector(0 to 2);
		SalidaPrecioChocolate: out std_logic_vector(0 to 11);
		
		LedFC1: out std_logic;
		LedFC2: out std_logic;
		
		AntiRebote1: in std_logic;
		AntiRebote2: in std_logic;
		
		Clkout: out std_logic;
		
		EstadosSC: out std_logic_vector( 0 to 10);
		EstadosBrazo1: out std_logic_vector(0 to 14);
		EstadosBrazo2: out std_logic_vector(0 to 14);
		Entradachoco: out std_logic
	  );
end Entity SistemaChocoIN;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÃ“N DE ARQUITECTURA                            --
--******************************************************--

architecture SistemaChocoINArch of SistemaChocoIN is

component SistemaChocolate is
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
end component SistemaChocolate;

component EntradaSerial IS
PORT ( Reloj, Restablecimiento: IN STD_LOGIC ;
Empiece : OUT STD_LOGIC  );
end component EntradaSerial ;

component Registro
port(
        Entrada: in std_logic;
        Reset: in std_logic;
        clk: in std_logic;
        Enable: in std_logic;
        Salida: out std_logic
);
end component Registro ;



--******************************************************--
--DEFINICIÃ“N DE 

--SEÃ‘ALES DE CONEXIÃ“N                     --
--******************************************************--
signal Empiece_SistemaChocolate: std_logic;
signal EstadosSC_D: std_logic_vector(0 to 10) ; 

signal Choco: std_logic;

Signal sc1: std_logic;
Signal sc2: std_logic;

--Instancias y Conectividad                             --
--******************************************************--

begin

Senso1: Registro port map ( SensorChoco1 or sc1, not AntiRebote1,CLK,'1',sc1);
Senso2: Registro port map ( SensorChoco2 or sc2, not AntiRebote2,CLK,'1',sc2);


SistemChocolate: SistemaChocolate port map (INICIO,CLK,RESET,Empiece_SistemaChocolate,

	
		sc1,sc2,ConfirmarCaja1,ConfirmarCaja2,TamCajas1,TamCajas2,
		Seleccionador,FinDia,
		LedTGB1,
		LedTMB1,
		LedTPB1,
		LedTGB2,
		LedTMB2,
		LedTPB2,
		
		LedFC1,
		LedFC2,
		
		DisplayOut,
	   CatodoDisplayOut,
		
		
		SalidaPrecioChocolate,
		
		EstadosSC_D,
		EstadosBrazo1,
		EstadosBrazo2);


		
EntradaPrecio: EntradaSerial port map(CLK,Choco,Empiece_SistemaChocolate);
EstadosSC<=EstadosSC_D;
Choco<=EstadosSC_D(2);
Clkout <= CLK;

Entradachoco<=Empiece_SistemaChocolate;
End  SistemaChocoINArch;
