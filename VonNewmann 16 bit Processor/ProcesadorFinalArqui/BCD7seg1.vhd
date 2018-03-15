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

entity  BCD7seg1 is
port( 
		
		BCD: in std_logic_vector(3 downto 0);
		Sie1: out std_logic_vector(6 downto 0)
		
		);
end    BCD7seg1          ;

--Definición de la arquitectura 
--******************************************************--
--Comentarios                                           --
--******************************************************--

architecture  BCD7seg1Arch       of BCD7seg1    is



--******************************************************--
--Comentarios                                           --
--******************************************************--


begin

--******************************************************--
--Instancias y Conectividad
--******************************************************

Sie1(0)<= ((not BCD(3)) and (not BCD(2)) and (not BCD(1)) and (BCD(0))) or ((not BCD(3)) and (BCD(2)) and (not BCD(1)) and (not BCD(0)));
Sie1(1)<= ((not BCD(3)) and (BCD(2)) and (not BCD(1)) and (BCD(0))) or ((not BCD(3)) and (BCD(2)) and (BCD(1)) and (not BCD(0))) ;
Sie1(2)<= ((not BCD(3)) and (not BCD(2)) and (BCD(1)) and (not BCD(0)));
Sie1(3)<= ((not BCD(3)) and (not BCD(2)) and (not BCD(1)) and (BCD(0))) or ((not BCD(3)) and (BCD(2)) and (not BCD(1)) and (not BCD(0))) or ((not BCD(3)) and (BCD(2)) and (BCD(1)) and (BCD(0))) or ((BCD(3)) and (not BCD(2)) and (not BCD(1)) and (BCD(0)));
Sie1(4)<= ((not BCD(3)) and (not BCD(2)) and (not BCD(1)) and (BCD(0))) or ((not BCD(3)) and (not BCD(2)) and (BCD(1)) and (BCD(0))) or ((not BCD(3)) and (BCD(2)) and (not BCD(1)) and (not BCD(0))) or ((not BCD(3)) and (BCD(2)) and (not BCD(1)) and (BCD(0))) or ((not BCD(3)) and (BCD(2)) and (BCD(1)) and (BCD(0))) or ((BCD(3)) and (not BCD(2)) and (not BCD(1)) and (BCD(0)));
Sie1(5)<= ((not BCD(3)) and (not BCD(2)) and (not BCD(1)) and (BCD(0))) or ((not BCD(3)) and (not BCD(2)) and (BCD(1)) and (not BCD(0))) or ((not BCD(3)) and (not BCD(2)) and (BCD(1)) and (BCD(0))) or ((not BCD(3)) and (BCD(2)) and (BCD(1)) and (BCD(0)));
Sie1(6)<= ((not BCD(3)) and (not BCD(2)) and (not BCD(1)) and (not BCD(0)))or ((not BCD(3)) and (not BCD(2)) and (not BCD(1)) and (BCD(0)))or((not BCD(3)) and (BCD(2)) and (BCD(1)) and (BCD(0)));


End  BCD7seg1Arch;