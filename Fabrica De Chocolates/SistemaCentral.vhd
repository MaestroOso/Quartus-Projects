--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--        DiseÃƒÂ±o de Sistemas Digitales   					  --
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

entity SistemaCentral is
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
end Entity SistemaCentral;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÃƒâ€œN DE ARQUITECTURA                            --
--******************************************************--

architecture SistemaCentralArch of SistemaCentral is

component Sumador12 is
port(
        A: in std_logic_vector(0 to 11);--
        B: in std_logic_vector(0 to 11);--
		  SumadorOut: out std_logic_vector(0 to 11)
		  	  		  
);

end component Sumador12; 

component Selec_Nums is
port(

     In_BitsA: in std_logic_vector(0 to 11);
	  In_BitsB: in std_logic_vector(0 to 11);
	  In_BitsC: in std_logic_vector(0 to 11);
	  In_BitsD: in std_logic_vector(0 to 11);
	  In_BitsE: in std_logic_vector(0 to 11);
	  In_BitsF: in std_logic_vector(0 to 11);
	  
	  Sel_Bits:in std_logic_vector(0 to 2);
     Out_Bits: out std_logic_vector(0 to 11)

	  );
	  
end component Selec_Nums;

component Selec_Bits is
port(

     In_Bits: in std_logic_vector(0 to 11);
	  Sel_Bits:in std_logic_vector(0 to 2);
     Out_Bits: out std_logic_vector(0 to 3)

	  );
	  
end component Selec_Bits;

component ControlSC is
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
end component ControlSC;      

component Registro is
port(
        Entrada: in std_logic;
        Reset: in std_logic;
        clk: in std_logic;
        Enable: in std_logic;
        
        Salida: out std_logic
);
end component Registro; 

component RegistroTres is
port(
        Entrada: in std_logic;
        Reset: in std_logic;
        clk: in std_logic;
        Enable: in std_logic;
        
        RegistroSalida: out std_logic_vector(0 to 11)
);
end component RegistroTres; 

component ContAnillo3 is
	port(
	Contar: in std_logic;
	CLK: in std_logic;
	RESET: in std_logic;
	salida: out std_logic_vector(0 to 2)

 );
end component ContAnillo3;      

component Binario_7Seg is
port(

        A: in std_logic;
		  B: in std_logic;
		  C: in std_logic;
		  D: in std_logic; -- Menos significativo
		  
		  Out_7segmentos: out std_logic_vector(0 to 6) --Salidas a 7 segmentos
        
);

end component Binario_7Seg;    


--******************************************************--
--DEFINICIÃƒâ€œN DE 

--SEÃƒâ€˜ALES DE CONEXIÃƒâ€œN                     --
--******************************************************--

--signal estado: std_logic_vector(0 to 10);
--******************************************************--
signal Control_HabRegistroHabilita1: std_logic;
signal Control_HabRegistroHabilita2: std_logic;

signal Control_InRegistroHabilita1: std_logic;
signal Control_InRegistroHabilita2: std_logic;

signal estado: std_logic_vector(0 to 10);

signal SumadorGanancias_SeleccionNumeros: std_logic_vector(0 to 11);
signal SumadorCantidad_SeleccionNumeros: std_logic_vector(0 to 11);

signal SeleccionNumeros_SeleccionadorBits: std_logic_vector(0 to 11);

signal ContadorCambio_SeleccionadorBits: std_logic_vector(0 to 2);

signal SeleccionadorBits_BinariosSieteSegmentos: std_logic_vector(0 to 3);

signal BinarioSieteSegmentos_Display: std_logic_vector(0 to 6);

signal RegistroChocolate_SalidaPrecioChocolate: std_logic_vector(0 to 11);

signal RegistroHabilita1_HabilitaB1: std_logic;
signal RegistroHabilita2_HabilitaB2: std_logic;
signal Control_EnableRegistroChocolate: std_logic;

--Instancias y Conectividad                             --
--******************************************************--

begin

Control: ControlSC port map(Inicio, CLK, RESET, PrecioChocolate, Brazo1, Brazo2, FinDia, Control_InRegistroHabilita1, Control_InRegistroHabilita2,Control_HabRegistroHabilita1 ,Control_HabRegistroHabilita2,Control_EnableRegistroChocolate,estado);
SumadorGanancias: Sumador12 port map(GananciaBrazo1, GananciaBrazo2, SumadorGanancias_SeleccionNumeros);
SumadorCantidades: Sumador12 port map(CantidadBrazo1, CantidadBrazo2, SumadorCantidad_SeleccionNumeros);
SeleccionNumeros: Selec_Nums port map(CantidadBrazo1, CantidadBrazo2, SumadorCantidad_SeleccionNumeros, GananciaBrazo1, GananciaBrazo2, SumadorGanancias_SeleccionNumeros, Seleccionador, SeleccionNumeros_SeleccionadorBits);
SeleccionadorBits: Selec_Bits port map(SeleccionNumeros_SeleccionadorBits, ContadorCambio_SeleccionadorBits, SeleccionadorBits_BinariosSieteSegmentos);
ContadorCambio: ContAnillo3 port map(estado(10), CLK, RESET, ContadorCambio_SeleccionadorBits);
BinarioSieteSegmentos: Binario_7Seg port map(SeleccionadorBits_BinariosSieteSegmentos(3), SeleccionadorBits_BinariosSieteSegmentos(2), SeleccionadorBits_BinariosSieteSegmentos(1), SeleccionadorBits_BinariosSieteSegmentos(0), BinarioSieteSegmentos_Display);
RegistroChocolate: RegistroTres port map(PrecioChocolate, RESET, CLK, Control_EnableRegistroChocolate, RegistroChocolate_SalidaPrecioChocolate);
RegistroHabilita1: Registro port map(Control_InRegistroHabilita1,RESET, CLK, Control_HabRegistroHabilita1, RegistroHabilita1_HabilitaB1);
RegistroHabilita2: Registro port map(Control_InRegistroHabilita2,RESET, CLK, Control_HabRegistroHabilita2, RegistroHabilita2_HabilitaB2);

CatodoDisplay <= ContadorCambio_SeleccionadorBits;
Display<= BinarioSieteSegmentos_Display;
PrecioSalidaChocolate <= RegistroChocolate_SalidaPrecioChocolate;
HabilitaB1<= RegistroHabilita1_HabilitaB1;
HabilitaB2 <= RegistroHabilita2_HabilitaB2;
EstadosFin <= estado;
End  SistemaCentralArch;
