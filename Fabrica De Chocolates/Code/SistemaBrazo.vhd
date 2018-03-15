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

entity SistemaBrazo is
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
end Entity SistemaBrazo;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÃ“N DE ARQUITECTURA                            --
--******************************************************--

architecture SistemaBrazoArch of SistemaBrazo is

component Sumador12 is
port(
        A: in std_logic_vector(0 to 11);--
        B: in std_logic_vector(0 to 11);--
		  SumadorOut: out std_logic_vector(0 to 11)
		  	  		  
);

end component Sumador12;  

component Comparador5Bits is
port(
		  A: in std_logic_vector(0 to 5);
		  B: in std_logic_vector(0 to 5);
		  
        Salida: out std_logic
);
end component Comparador5Bits;

component Registro12P is
port(
        Nivel: in std_logic_vector(0 to 11);
        Reset: in std_logic;
        clk: in std_logic;
        Enable: in std_logic;
        
        RegistroSalida: out std_logic_vector(0 to 11)
);
end component Registro12P; 

component ControlBrazo is
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
end component ControlBrazo; 

component Cont5 is
port(
        Enable:in std_logic;

		  Reloj: in std_logic;
        Reset: in std_logic;
        ContadorSalida: out std_logic_vector(0 to 11)
);
end component Cont5;

component ContadorTG is
port(
        Enable:in std_logic;

		  Reloj: in std_logic;
        Reset: in std_logic;
		  
		  FinCajaTG: out std_logic;
		  FinalizadorTG: out std_logic

);
end component ContadorTG;

component ContadorTM is
port(
        Enable:in std_logic;

		  Reloj: in std_logic;
        Reset: in std_logic;
		  
		  FinCajaTM: out std_logic;
		  FinalizadorTM: out std_logic

);
end component ContadorTM;

component ContadorTP is
port(
        Enable:in std_logic;

		  Reloj: in std_logic;
        Reset: in std_logic;
		  
		  FinCajaTP: out std_logic;
		  FinalizadorTP: out std_logic

);
end component ContadorTP;

--******************************************************--
--DEFINICIÃ“N DE 

--SEÃ‘ALES DE CONEXIÃ“N                     --
--******************************************************--

--signal estado: std_logic_vector(0 to 10);
--******************************************************--

signal ContadorTG_Control: std_logic;
signal ContadorTM_Control: std_logic;
signal ContadorTP_Control: std_logic;


signal FinCajaTG_Control: std_logic;
signal FinCajaTM_Control: std_logic;
signal FinCajaTP_Control: std_logic;

signal FinalizadorTG_Control: std_logic;
signal FinalizadorTM_Control: std_logic;
signal FinalizadorTP_Control: std_logic;

signal Control_TerminoBrazo: std_logic;
signal Control_ContadorTG: std_logic;
signal Control_ContadorTM: std_logic;
signal Control_ContadorTP: std_logic;
signal Control_ContadorCantidad: std_logic;
signal Control_RegistroSuma: std_logic;


signal ContadorCantidad_CantidadTotal: std_logic_vector(0 to 11);


signal Sumador_RegistroGanancias: std_logic_vector(0 to 11);
signal RegistroGanancias_GananciaTotal: std_logic_vector(0 to 11);
signal EstadosSalida: std_logic_vector(0 to 14);

--Instancias y Conectividad                             --
--******************************************************--

begin

ControlTotal: ControlBrazo port map(CLK, RESET, Habilita, TamCajas, SensorChoco, ConfirmarCaja, FinCajaTG_Control, FinCajaTM_Control, FinCajaTP_Control, FinalizadorTG_Control, FinalizadorTM_Control, FinalizadorTP_Control, Control_TerminoBrazo, Control_ContadorTG, Control_ContadorTM, Control_ContadorTP, Control_ContadorCantidad, Control_RegistroSuma, EstadosSalida);
ContadorCantidad: Cont5 port map(Control_ContadorCantidad, CLK, RESET, ContadorCantidad_CantidadTotal);

ContadorGrande: ContadorTG port map(Control_ContadorTG, CLK, RESET, FinCajaTG_Control, FinalizadorTG_Control);
ContadorMediano: ContadorTM port map(Control_ContadorTM, CLK, RESET, FinCajaTM_Control, FinalizadorTM_Control);
ContadorPequeno: ContadorTP port map(Control_ContadorTP, CLK, RESET, FinCajaTP_Control, FinalizadorTP_Control);


Sumador: Sumador12 port map(PrecioChocolate, RegistroGanancias_GananciaTotal, Sumador_RegistroGanancias);
RegistroGanancias: Registro12P port map(Sumador_RegistroGanancias, RESET, CLK, Control_RegistroSuma, RegistroGanancias_GananciaTotal); 


TerminoBrazo <= Control_TerminoBrazo;
LedTG <= FinalizadorTG_Control;
LedTM <=  FinalizadorTM_Control;
LedTP <= FinalizadorTP_Control;
GananciaTotal <= RegistroGanancias_GananciaTotal;
CantidadTotal<= ContadorCantidad_CantidadTotal;
EstadosBrazo<=EstadosSalida;
LedFinCaja <= not ConfirmarCaja and EstadosSalida(2);


End  SistemaBrazoArch;
