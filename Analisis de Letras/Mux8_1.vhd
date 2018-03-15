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

entity Mux8_1 is
port(
        In_Mux: in std_logic_vector(0 to 7);--Entrada Mux
        Sel : in std_logic_vector(0 to 2);--Seleccionador Mux
		  Out_Mux: out std_logic				  --SalidaMux
        
);

end entity Mux8_1;   

architecture Mux8_1Arch of Mux8_1 is


begin

Out_Mux <= (In_Mux(0) and not Sel(2) and not Sel(1) and not Sel(0)) OR
					(In_Mux(1) and not Sel(2) and not Sel(1) and Sel(0)) OR
						(In_Mux(2) and not Sel(2) and  Sel(1) and not Sel(0)) OR
							(In_Mux(3) and not Sel(2) and  Sel(1) and  Sel(0)) OR
								(In_Mux(4) and  Sel(2) and not Sel(1) and not Sel(0)) OR
									(In_Mux(5) and  Sel(2) and not Sel(1) and  Sel(0))  OR
										(In_Mux(6) and  Sel(2) and  Sel(1) and not Sel(0))  OR
											(In_Mux(7) and  Sel(2) and  Sel(1) and Sel(0));
									
End Mux8_1Arch;