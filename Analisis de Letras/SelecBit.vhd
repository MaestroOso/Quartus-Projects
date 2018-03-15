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
-- DEFINICIÃƒâ€œN DE ENTIDAD                                --
--******************************************************--
entity SelecBit is
port(

     Bits: in std_logic_vector(0 to 9); 
	  Sel_Bits:in std_logic_vector(0 to 3);
     Out_Bits: out std_logic

	  );
	  
end entity SelecBit;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÃƒâ€œN DE ARQUITECTURA                            --
--******************************************************--
architecture SelecBitArch of SelecBit is

component Mux10_1 is
port(
        In_Mux: in std_logic_vector(0 to 9);--Entrada Mux
        Sel : in std_logic_vector(0 to 3);--Seleccionador Mux
		  Out_Mux: out std_logic				  --SalidaMux
);
end component Mux10_1;   


begin


Mux1: Mux10_1 port map (Bits,Sel_Bits,Out_Bits);



End SelecBitArch;
--Definicion de la arquitectura
--******************************************************--

