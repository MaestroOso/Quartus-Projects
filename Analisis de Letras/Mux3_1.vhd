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

entity Mux3_1 is
port(
        In_Mux: in std_logic_vector(0 to 2);--Entrada Mux
        Sel : in std_logic_vector(0 to 1);--Seleccionador Mux
		  Out_Mux: out std_logic				  --SalidaMux
        
);

end entity Mux3_1;   

architecture Mux3_1Arch of Mux3_1 is


begin

Out_Mux <= (In_Mux(0) and  not Sel(1) and not Sel(0) ) OR
					(In_Mux(1) and  not Sel(1) and  Sel(0) ) OR
						(In_Mux(2) and Sel(1) and not Sel(0)) OR
							('0' and Sel(1) and  Sel(0) );

End Mux3_1Arch;
