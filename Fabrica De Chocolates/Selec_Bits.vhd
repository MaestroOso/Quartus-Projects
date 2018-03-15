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
entity Selec_Bits is
port(

     In_Bits: in std_logic_vector(0 to 11);
	  Sel_Bits:in std_logic_vector(0 to 2);
     Out_Bits: out std_logic_vector(0 to 3)

	  );
	  
end entity Selec_Bits;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÃ“N DE ARQUITECTURA                            --
--******************************************************--
architecture Selec_BitsArch of Selec_Bits is

component Mux4_1 is
port(
        In_Mux: in std_logic_vector(0 to 3);--Entrada Mux
        Sel : in std_logic_vector(0 to 2);--Seleccionador Mux
		  Out_Mux: out std_logic				  --SalidaMux
);
end component Mux4_1;   


begin


Mux1: Mux4_1 port map (In_Bits(0) & In_Bits(4)& In_Bits(8)& '0',Sel_Bits,Out_Bits(0));
Mux2: Mux4_1 port map (In_Bits(1) & In_Bits(5)& In_Bits(9)& '0',Sel_Bits,Out_Bits(1));
Mux3: Mux4_1 port map (In_Bits(2) & In_Bits(6)& In_Bits(10)& '0',Sel_Bits,Out_Bits(2));
Mux4: Mux4_1 port map (In_Bits(3) & In_Bits(7)& In_Bits(11)& '0',Sel_Bits,Out_Bits(3));

End Selec_BitsArch;
--Definicion de la arquitectura
--******************************************************--

