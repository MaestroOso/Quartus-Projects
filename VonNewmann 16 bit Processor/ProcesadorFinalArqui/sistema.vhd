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
--este bloque es --
--******************************************************--

entity  Sistema is
port( 
		Sconv: in  STD_LOGIC_VECTOR(15   downto 0);
		Sie1: out std_logic_vector(6 downto 0);
		Sie10: out std_logic_vector(6 downto 0);
		Sie100: out std_logic_vector(6 downto 0);
		Sie1000: out std_logic_vector(6 downto 0);
		Sie10000: out std_logic_vector(6 downto 0);
		BCDVER: out std_logic_vector(19 downto 0)
		);
end    Sistema         ;

--Definici�n de la arquitectura 
--******************************************************--
--Comentarios                                           --
--******************************************************--

architecture  SistemaArch       of  Sistema     is

component binbcd is
PORT(
        Sconv: in  STD_LOGIC_VECTOR(15  downto 0);
        BCD: out STD_LOGIC_VECTOR(19 downto 0)
    );
end component;

component  BCD7seg1 is
port( 
		
		BCD: in std_logic_vector(3 downto 0);
		Sie1: out std_logic_vector(6 downto 0)
		
		);
end    component          ;

component  BCD7seg10 is
port( 
		
		BCD: in std_logic_vector(7 downto 4);
		Sie10: out std_logic_vector(6 downto 0)
		
		);
end    component          ;

component  BCD7seg100 is
port( 
		
		BCD: in std_logic_vector(11 downto 8);
		Sie100: out std_logic_vector(6 downto 0)
		
		);
end    component          ;

component  BCD7seg1000 is
port( 
		
		BCD: in std_logic_vector(15 downto 12);
		Sie1000: out std_logic_vector(6 downto 0)
		
		);
end    component          ;

component  BCD7seg10000 is
port( 
		
		BCD: in std_logic_vector(19 downto 16);
		Sie10000: out std_logic_vector(6 downto 0)
		
		);
end    component          ;

--******************************************************--
--Comentarios                                           --
--******************************************************--
signal BCD: STD_LOGIC_VECTOR(19 downto 0);
		
begin

--******************************************************--
--Instancias y Conectividad
--******************************************************--


binbcdS: binbcd port map (Sconv,BCD);
BCD7seg1S: BCD7seg1 port map (BCD(3 downto 0), Sie1);
BCD7seg10S: BCD7seg10 port map (BCD(7 downto 4), Sie10);
BCD7seg100S: BCD7seg100 port map (BCD(11 downto 8), Sie100);
BCD7seg1000S: BCD7seg1000 port map (BCD(15 downto 12), Sie1000);
BCD7seg10000S: BCD7seg10000 port map (BCD(19 downto 16), Sie10000);

BCDVER<= BCD;
	
End  SistemaArch;