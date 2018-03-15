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

entity  BCD7seg10000 is
port( 
		
		BCD: in std_logic_vector(19 downto 16);
		Sie10000: out std_logic_vector(6 downto 0)
		
		);
end    BCD7seg10000          ;

--Definición de la arquitectura 
--******************************************************--
--Comentarios                                           --
--******************************************************--

architecture  BCD7seg10000Arch       of BCD7seg10000    is



--******************************************************--
--Comentarios                                           --
--******************************************************--


begin

--******************************************************--
--Instancias y Conectividad
--******************************************************

Sie10000(0)<= ((not BCD(19)) and (not BCD(18)) and (not BCD(17)) and (BCD(16))) or ((not BCD(19)) and (BCD(18)) and (not BCD(17)) and (not BCD(16)));
Sie10000(1)<= ((not BCD(19)) and (BCD(18)) and (not BCD(17)) and (BCD(16))) or ((not BCD(19)) and (BCD(18)) and (BCD(17)) and (not BCD(16))) ;
Sie10000(2)<= ((not BCD(19)) and (not BCD(18)) and (BCD(17)) and (not BCD(16)));
Sie10000(3)<= ((not BCD(19)) and (not BCD(18)) and (not BCD(17)) and (BCD(16))) or ((not BCD(19)) and (BCD(18)) and (not BCD(17)) and (not BCD(16))) or ((not BCD(19)) and (BCD(18)) and (BCD(17)) and (BCD(16))) or ((BCD(19)) and (not BCD(18)) and (not BCD(17)) and (BCD(16)));
Sie10000(4)<= ((not BCD(19)) and (not BCD(18)) and (not BCD(17)) and (BCD(16))) or ((not BCD(19)) and (not BCD(18)) and (BCD(17)) and (BCD(16))) or ((not BCD(19)) and (BCD(18)) and (not BCD(17)) and (not BCD(16))) or ((not BCD(19)) and (BCD(18)) and (not BCD(17)) and (BCD(16))) or ((not BCD(19)) and (BCD(18)) and (BCD(17)) and (BCD(16))) or ((BCD(19)) and (not BCD(18)) and (not BCD(17)) and (BCD(16)));
Sie10000(5)<= ((not BCD(19)) and (not BCD(18)) and (not BCD(17)) and (BCD(16))) or ((not BCD(19)) and (not BCD(18)) and (BCD(17)) and (not BCD(16))) or ((not BCD(19)) and (not BCD(18)) and (BCD(17)) and (BCD(16))) or ((not BCD(19)) and (BCD(18)) and (BCD(17)) and (BCD(16)));
Sie10000(6)<= ((not BCD(19)) and (not BCD(18)) and (not BCD(17)) and (not BCD(16)))or ((not BCD(19)) and (not BCD(18)) and (not BCD(17)) and (BCD(16)))or((not BCD(19)) and (BCD(18)) and (BCD(17)) and (BCD(16)));


End  BCD7seg10000Arch;