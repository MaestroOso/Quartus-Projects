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

entity QuesoConexion is
port(
-- Entradas Estandar
		Inicio: in std_logic;
		CLK: in std_logic;
		RESET: in std_logic;

-- Entradas
	  Letra: in std_logic_vector( 0 to 4);
     HayLetra: in std_logic;  --Hay una letra
	  AntiReboteLetra: in std_logic; -- Anti Rebote de la Letra
	  FinPalabra: in std_logic; -- FinPalabra
	  Selector: in std_logic_vector(0 to 1);  --selector de cual palabra se mostrará
	  EnviarDatos: in std_logic; -- Enviar por el protocolo la info al computador
	  AntiReboteEnviar: in std_logic; -- Anti Rebote de Enviar Datos
-- Salidas
	  Led0: out std_logic; --Se ha llenado el primer registro de palabra
	  Led1: out std_logic; --Se ha llenado el segundo registro de palabra
	  Led2: out std_logic; --Se ha llenado el tercer registro de palabra
	  Led3: out std_logic; --Se está en modo de envio de palabras por protocolo al pc
	  EstadosControl: out std_logic_vector( 0 to 14); --Estado en el cual se encuentra control
	  ComunicacionPC: out std_logic; --Cable que conecta con el computador
	  Reloj: out std_logic

);
end entity QuesoConexion;

architecture QuesoConexionArch of QuesoConexion is

component Contador is
port(
        Enable:in std_logic;

		  Reloj: in std_logic;
        Reset: in std_logic;
		  
		  FinCont: out std_logic

);
end component Contador;

component Control is
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
	  
	  Estados: out std_logic_vector(0 to 14)
		
	  );
end component Control;   

component SelecPalabra is
port(

     RegA: in std_logic_vector(0 to 39);
	  RegB: in std_logic_vector(0 to 39);
	  RegC: in std_logic_vector(0 to 39);
	  	  
	  Sel_Palabra:in std_logic_vector(0 to 1);
     Out_Palabra: out std_logic_vector(0 to 39)

	  );	  
end component SelecPalabra;              



component SelecLetra is
port(

     Letra: in std_logic_vector(0 to 39); 
	  Sel_Letra:in std_logic_vector(0 to 2);
     Out_Letra: out std_logic_vector(0 to 4)

	  );
	  
end component SelecLetra; 

component RegistroPalabra is
port(
        Palabra: in std_logic_vector(0 to 4);
        Reset: in std_logic;
        clk: in std_logic;
        Enable: in std_logic;
        
        RegistroSalida: out std_logic_vector(0 to 39)
);
end component RegistroPalabra;

component ContadorTiempo is
port(
        Enable:in std_logic;

		  Reloj: in std_logic;
        Reset: in std_logic;
		  
		  FinTiempo: out std_logic
		  
);
end component ContadorTiempo;

component SelecBit is
port(

     Bits: in std_logic_vector(0 to 9); 
	  Sel_Bits:in std_logic_vector(0 to 3);
     Out_Bits: out std_logic

	  );
end component SelecBit;

component ContadorBits is
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
end component ContadorBits;

component ContadorLetra is
port(
        Enable:in std_logic;

		  Reloj: in std_logic;
        Reset: in std_logic;
		  
		  ElegirLetras: out std_logic_vector(0 to 2);
		  FinCont: out std_logic

);
end component ContadorLetra;

component ContadorSelec is
port(
        Enable:in std_logic;

		  Reloj: in std_logic;
        Reset: in std_logic;
		  
		  ElegirBit: out std_logic_vector(0 to 3);
		  FinCont: out std_logic

);
end Component ContadorSelec;

component Registro is
port(
        Entrada: in std_logic;
        Reset: in std_logic;
        clk: in std_logic;
        Enable: in std_logic;
        
        Salida: out std_logic
);
end component Registro;  

signal Control_Registro1: std_logic; 
signal Registro1_SelectorPalabra: std_logic_vector( 0 to 39); 
signal Control_Registro2: std_logic; 
signal Registro2_SelectorPalabra: std_logic_vector( 0 to 39); 
signal Control_Registro3: std_logic; 
signal Registro3_SelectorPalabra: std_logic_vector( 0 to 39); 
signal SelecPalabra_SelecLetra: std_logic_vector( 0 to 39);
signal Contador_Control: std_logic;
signal SelecLetra_SelecBit: std_logic_vector(0 to 4);
signal Control_ContadorTiempo: std_logic;
signal ContadorTiempo_Control: std_logic;
signal Control_ContadorBits: std_logic;
signal ContadorBits_Control: std_logic_vector(0 to 1);
signal Control_SelecLetra: std_logic;
signal Control_ContadorRegistro: std_logic;
signal ContadorLetra_SelecLetra: std_logic_vector(0 to 2);
signal Control_ContadorLetra: std_logic;
signal ContadorLetra_Control: std_logic;
signal Control_ContadorSelec: std_logic;
signal ContadorSelec_Control: std_logic;
signal ContadorSelec_SelecBits: std_logic_vector(0 to 3);
signal InSelecBit: std_logic_vector(0 to 9);
signal Protocolo: std_logic;
signal SelecBits_Salida: std_logic;
signal ControlEstados: std_logic_vector(0 to 14);
signal noRebote: std_logic;
signal noReboteE: std_logic;

begin
--AntiRebote
RegistroAntiReboteLetra: Registro port map ( HayLetra or noRebote, not AntiReboteLetra,CLK,'1',noRebote);
RegistroAntiReboteEnviarDatos: Registro port map ( EnviarDatos or noReboteE, not AntiReboteEnviar,CLK,'1',noReboteE);

--Registros
Registro1: RegistroPalabra port map(Letra, RESET, CLK, Control_Registro1, Registro1_SelectorPalabra);
Registro2: RegistroPalabra port map(Letra, RESET, CLK, Control_Registro2, Registro2_SelectorPalabra);
Registro3: RegistroPalabra port map(Letra, RESET, CLK, Control_Registro3, Registro3_SelectorPalabra);
--Elegir la palabra
SelectorPalabra: SelecPalabra port map( Registro1_SelectorPalabra, Registro2_SelectorPalabra, Registro3_SelectorPalabra, Selector, SelecPalabra_SelecLetra);
--Contador de las ocho Letras para guardar una palabra
ContadorRegistro: Contador port map(Control_ContadorRegistro, CLK, RESET and not Control_ContadorBits, Contador_Control);
-- Elegir la letra de la palabra
SelectorLetra: SelecLetra port map(SelecPalabra_SelecLetra, ContadorLetra_SelecLetra, SelecLetra_SelecBit);
-- Longitud del bit
ContadorTiempos: ContadorTiempo port map(Control_ContadorTiempo, CLK, RESET and not ControlEstados(11), ContadorTiempo_Control);
-- Elegir registro al cual se está moviendo la información o el protocolo
ContadorBit: ContadorBits port map(Control_ContadorBits, CLK, RESET, ContadorBits_Control, Led0, Led1, Led2, Led3);
-- Contador de 8 de las letras a enviar
ContadorLetras: ContadorLetra port map(Control_ContadorLetra, CLK, RESET and not ControlEstados(9), ContadorLetra_SelecLetra, ContadorLetra_Control);
-- Contador del bit que se está mandando de dicha letra
ContadorSelector: ContadorSelec port map(Control_ContadorSelec, CLK, RESET and not ControlEstados(10), ContadorSelec_SelecBits, ContadorSelec_Control);
SelectorBits: SelecBit port map(InSelecBit, ContadorSelec_SelecBits, SelecBits_Salida);
--Control del sistema
Controll: Control port map(Inicio, CLK, RESET, noRebote, FinPalabra, Contador_Control, ContadorBits_Control,
noReboteE, ContadorLetra_Control, ContadorSelec_Control, ContadorTiempo_Control, 
Control_Registro1, Control_Registro2, Control_Registro3, Control_ContadorTiempo, 
Control_ContadorSelec, Control_ContadorLetra, Control_ContadorBits, Control_ContadorRegistro, Protocolo, ControlEstados);
--Opcion Normal
InSelecBit(0) <= '0';
InSelecBit(8) <= '0';
InSelecBit(7) <= '1';
InSelecBit(6) <= '0';
InSelecBit(5) <= SelecLetra_SelecBit(0);
InSelecBit(4) <= SelecLetra_SelecBit(1);
InSelecBit(3) <= SelecLetra_SelecBit(2);
InSelecBit(2) <= SelecLetra_SelecBit(3);
InSelecBit(1) <= SelecLetra_SelecBit(4);
--InSelecBit(4 to 8) <= SelecLetra_SelecBit(0 to 4);
InSelecBit(9) <= '1';


Reloj <= CLK;
ComunicacionPC <= (not Protocolo) or (Protocolo and SelecBits_Salida);
EstadosControl <= ControlEstados;

End QuesoConexionArch;