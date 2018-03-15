--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--              Circuitos Logicos                           --
--          Seccion de Tecnicas Digitales               --
-- Nombres  Damian Martinez
--          Oscar Castelblanco
--          Meyer Humberto
--******************************************************--                                            --
-- Fecha    2016
--                                    --
--******************************************************--

--Definicion de las bibliotecas 
library IEEE;
use IEEE.std_logic_1164.all;


--******************************************************--

--******************************************************--

entity Mux4_1 is
port(
        In_Mux: in std_logic_vector(0 to 3);--Entrada Mux
        Sel : in std_logic_vector(0 to 2);--Seleccionador Mux
		  Out_Mux: out std_logic				  --SalidaMux
        
);

end entity Mux4_1;   

architecture Mux4_1Arch of Mux4_1 is


begin

Out_Mux <= (In_Mux(0) and  not Sel(2) and not Sel(1) and Sel(0)) OR
					(In_Mux(1) and  not Sel(2) and  Sel(1) and not Sel(0)) OR
						(In_Mux(2) and Sel(2) and not Sel(1) and not Sel(0)) OR
							(In_Mux(3) and not Sel(2) and not Sel(1) and  not Sel(0));

End Mux4_1Arch;