--**************************************************************--
--		  PONTIFICIA UNIVERSIDAD JAVERIANA                        --
--				ARQUITECTURA 	                                     --
--				                                                    --
-- Nombre Oscar Javier Castelblanco                             --
--        María Alejandra Gómez                                 --         										
-- Fecha  4/03/2017									                   --
--                                                              --
--**************************************************************--

--Definición de las bibliotecas 
library IEEE; 
use IEEE.std_logic_1164.all;

--******************************************************--
--este bloque es --
--******************************************************--

entity  BCD7seg10 is
port( 
		
		BCD: in std_logic_vector(7 downto 4);
		Sie10: out std_logic_vector(6 downto 0)
		
		);
end    BCD7seg10          ;

--Definición de la arquitectura 
--******************************************************--
--Comentarios                                           --
--******************************************************--

architecture  BCD7seg10Arch       of BCD7seg10    is



--******************************************************--
--Comentarios                                           --
--******************************************************--


begin

--******************************************************--
--Instancias y Conectividad
--******************************************************
Sie10(0)<= ((not BCD(7)) and (not BCD(6)) and (not BCD(5)) and (BCD(4))) or ((not BCD(7)) and (BCD(6)) and (not BCD(5)) and (not BCD(4)));
Sie10(1)<= ((not BCD(7)) and (BCD(6)) and (not BCD(5)) and (BCD(4))) or ((not BCD(7)) and (BCD(6)) and (BCD(5)) and (not BCD(4))) ;
Sie10(2)<= ((not BCD(7)) and (not BCD(6)) and (BCD(5)) and (not BCD(4)));
Sie10(3)<= ((not BCD(7)) and (not BCD(6)) and (not BCD(5)) and (BCD(4))) or ((not BCD(7)) and (BCD(6)) and (not BCD(5)) and (not BCD(4))) or ((not BCD(7)) and (BCD(6)) and (BCD(5)) and (BCD(4))) or ((BCD(7)) and (not BCD(6)) and (not BCD(5)) and (BCD(4)));
Sie10(4)<= ((not BCD(7)) and (not BCD(6)) and (not BCD(5)) and (BCD(4))) or ((not BCD(7)) and (not BCD(6)) and (BCD(5)) and (BCD(4))) or ((not BCD(7)) and (BCD(6)) and (not BCD(5)) and (not BCD(4))) or ((not BCD(7)) and (BCD(6)) and (not BCD(5)) and (BCD(4))) or ((not BCD(7)) and (BCD(6)) and (BCD(5)) and (BCD(4))) or ((BCD(7)) and (not BCD(6)) and (not BCD(5)) and (BCD(4)));
Sie10(5)<= ((not BCD(7)) and (not BCD(6)) and (not BCD(5)) and (BCD(4))) or ((not BCD(7)) and (not BCD(6)) and (BCD(5)) and (not BCD(4))) or ((not BCD(7)) and (not BCD(6)) and (BCD(5)) and (BCD(4))) or ((not BCD(7)) and (BCD(6)) and (BCD(5)) and (BCD(4)));
Sie10(6)<= ((not BCD(7)) and (not BCD(6)) and (not BCD(5)) and (not BCD(4)))or ((not BCD(7)) and (not BCD(6)) and (not BCD(5)) and (BCD(4)))or((not BCD(7)) and (BCD(6)) and (BCD(5)) and (BCD(4)));


End  BCD7seg10Arch;