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
-- DEFINICIÓN DE ENTIDAD                                --
--******************************************************--

entity ProcesadorTotal is
port(
		   --Entradas
		  Clk: in std_logic;
		  Reset: in std_logic;
		  Interrupcion: in std_logic;
		  Inicio: in std_logic;
		  Switch: in std_logic_vector(0 to 9);
		  Opcion: in std_logic_vector(0 to 3);
		  --SalidasPrueba
		  Estados: out std_logic_vector(1 to 30);
		  IActual: out std_logic_vector(0 to 15);
		  --Salida
		  Escribir: out std_logic;
		  Leer: out std_logic;
		  Direccion: out std_logic_vector(0 to 9);
		  DatoIn: out std_logic_vector(0 to 15);
		  DatoOut: out std_logic_vector(0 to 15);
		  --Salidas Conversor
		  Sie1: out std_logic_vector(6 downto 0);
		  Sie10: out std_logic_vector(6 downto 0);
		  Sie100: out std_logic_vector(6 downto 0);
		  Sie1000: out std_logic_vector(6 downto 0);
		  Sie10000: out std_logic_vector(6 downto 0)
	  );
end Entity ProcesadorTotal;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÓN DE ARQUITECTURA                            --
--******************************************************--

architecture ProcesadorTotalArch of ProcesadorTotal is

component Procesador is
port(
		  --Entradas
		  DatoIn: in std_logic_vector(0 to 15);
		  Clk: in std_logic;
		  Reset: in std_logic;
		  Interrupcion: in std_logic;
		  Inicio: in std_logic;
		  --SalidaPrueba:
		  EstadosQ: out std_logic_vector(1 to 88);
		  IActualQ: out std_logic_vector(0 to 15);
		  --Salida
		  Escribir: out std_logic;
		  Leer: out std_logic;
		  Direccion: out std_logic_vector(0 to 11);
		  DatoOut: out std_logic_vector(0 to 15)
);
end component Procesador;   

component Memoria IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		rden		: IN STD_LOGIC  := '1';
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
end component Memoria;

component  Sistema is
port( 
		Sconv: in  STD_LOGIC_VECTOR(15   downto 0);
		Sie1: out std_logic_vector(6 downto 0);
		Sie10: out std_logic_vector(6 downto 0);
		Sie100: out std_logic_vector(6 downto 0);
		Sie1000: out std_logic_vector(6 downto 0);
		Sie10000: out std_logic_vector(6 downto 0);
		BCDVER: out std_logic_vector(19 downto 0)
		);
end component Sistema;

component ControladorSwitch is
port(
        dir: in std_logic_vector(0 to 9);
		  leer: in std_logic;
		  switch: in std_logic_vector(0 to 9);
		  
		  Dato: out std_logic_vector(0 to 15)
);
end component ControladorSwitch;  

component ControladorOpcion is
port(
        dir: in std_logic_vector(0 to 9);
		  leer: in std_logic;
		  opcion: in std_logic_vector(0 to 3);
		  
		  Dato: out std_logic_vector(0 to 15)
);
end component ControladorOpcion; 

component IngresoDatos is
port(
        Memoria: in std_logic_vector(0 to 15);
		  Switch: in std_logic_vector(0 to 15);
		  Opcion: in std_logic_vector(0 to 15);
		  
		  Dato: out std_logic_vector(0 to 15)
);
end component IngresoDatos;   

component ControladorDisplay is
port(
        dir: in std_logic_vector(0 to 9);
		  escribir: in std_logic;
		  dataMemoria: in std_logic_vector(0 to 15);
		  
		  Dato: out std_logic_vector(0 to 15)
);
end component ControladorDisplay;  

--******************************************************--
--DEFINICIÓN DE 

--SEÑALES DE CONEXIÓN                     --
--******************************************************--

signal estadoQueso: std_logic_vector(1 to 88);
signal direccionQueso: std_logic_vector(0 to 11);
signal DatoInQueso: std_logic_vector(0 to 15);
signal leerQueso: std_logic;
signal escribirQueso: std_logic;
signal DatoOutQueso: std_logic_vector(0 to 15);


signal BCDVER: std_logic_vector(19 downto 0);
signal Invertido: std_logic_vector(15 downto 0);
signal SalidaOr: std_logic_vector(0 to 15);
signal SalidaC: std_logic_vector(0 to 15);

signal salidaSwitch: std_logic_vector(0 to 15);
signal salidaOpcion: std_logic_vector(0 to 15);
signal salidaContDisp: std_logic_vector(0 to 15);


--******************************************************--
--Instancias y Conectividad                             --
--******************************************************--

begin

ProcesadorQ: Procesador port map(SalidaOr, Clk, Reset, Interrupcion, Inicio, estadoQueso, IActual, escribirQueso, leerQueso, direccionQueso, DatoOutQueso);
MemoriaQ: Memoria port map(direccionQueso(2 to 11), Clk, DatoOutQueso, leerQueso, escribirQueso, DatoInQueso);
Display: Sistema port map(Invertido, Sie1, Sie10, Sie100, Sie1000, Sie10000, BCDVER);
OrDatos: IngresoDatos port map(DatoInQueso, SalidaSwitch, SalidaOpcion, SalidaOr);
ContSwitch: ControladorSwitch port map(direccionQueso(2 to 11), leerQueso, Switch, salidaSwitch);
ContOpcion: ControladorOpcion port map(direccionQueso(2 to 11), leerQueso, Opcion, salidaOpcion);
ContDisplay: ControladorDisplay port map(direccionQueso(2 to 11), escribirQueso, DatoOutQueso, salidaContDisp);

Escribir <= escribirQueso;
Leer<= leerQueso;
Direccion <= direccionQueso(2 to 11);
DatoIn <= SalidaOr;
DatoOut <= DatoOutQueso;
Invertido(15 downto 0) <= salidaContDisp(0 to 15);
Estados(1 to 30) <= estadoQueso(1 to 30);

End  ProcesadorTotalArch;
