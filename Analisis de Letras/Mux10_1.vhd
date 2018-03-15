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

entity Mux10_1 is
port(
        In_Mux: in std_logic_vector(0 to 9);--Entrada Mux
        Sel : in std_logic_vector(0 to 3);--Seleccionador Mux
		  Out_Mux: out std_logic				  --SalidaMux
        
);

end entity Mux10_1;   

architecture Mux10_1Arch of Mux10_1 is


begin

Out_Mux <= (In_Mux(0) and not Sel(3) and not Sel(2) and not Sel(1) and not Sel(0)) OR
					(In_Mux(1) and not Sel(3) and not Sel(2) and not Sel(1) and Sel(0)) OR
						(In_Mux(2) and not Sel(3) and not Sel(2) and  Sel(1) and not Sel(0)) OR
							(In_Mux(3) and not Sel(3) and not Sel(2) and  Sel(1) and  Sel(0)) OR
								(In_Mux(4) and not Sel(3) and  Sel(2) and not Sel(1) and not Sel(0)) OR
									(In_Mux(5) and not Sel(3) and  Sel(2) and not Sel(1) and  Sel(0))  OR
										(In_Mux(6) and not Sel(3)  and  Sel(2) and  Sel(1) and not Sel(0))  OR
											(In_Mux(7) and not Sel(3) and  Sel(2) and  Sel(1) and Sel(0)) OR
												(In_Mux(8) and Sel(3) and not Sel(2) and not Sel(1) and not Sel(0)) OR
													(In_Mux(9) and Sel(3) and not Sel(2) and not Sel(1) and Sel(0));
									
End Mux10_1Arch;