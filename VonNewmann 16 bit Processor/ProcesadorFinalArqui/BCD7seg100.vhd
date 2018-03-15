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

entity  BCD7seg100 is
port( 
		
		BCD: in std_logic_vector(11 downto 8);
		Sie100: out std_logic_vector(6 downto 0)
		
		);
end    BCD7seg100          ;

--Definición de la arquitectura 
--******************************************************--
--Comentarios                                           --
--******************************************************--

architecture  BCD7seg100Arch       of BCD7seg100    is



--******************************************************--
--Comentarios                                           --
--******************************************************--


begin

--******************************************************--
--Instancias y Conectividad
--******************************************************
Sie100(0)<= ((not BCD(11)) and (not BCD(10)) and (not BCD(9)) and (BCD(8))) or ((not BCD(11)) and (BCD(10)) and (not BCD(9)) and (not BCD(8)));
Sie100(1)<= ((not BCD(11)) and (BCD(10)) and (not BCD(9)) and (BCD(8))) or ((not BCD(11)) and (BCD(10)) and (BCD(9)) and (not BCD(8))) ;
Sie100(2)<= ((not BCD(11)) and (not BCD(10)) and (BCD(9)) and (not BCD(8)));
Sie100(3)<= ((not BCD(11)) and (not BCD(10)) and (not BCD(9)) and (BCD(8))) or ((not BCD(11)) and (BCD(10)) and (not BCD(9)) and (not BCD(8))) or ((not BCD(11)) and (BCD(10)) and (BCD(9)) and (BCD(8))) or ((BCD(11)) and (not BCD(10)) and (not BCD(9)) and (BCD(8)));
Sie100(4)<= ((not BCD(11)) and (not BCD(10)) and (not BCD(9)) and (BCD(8))) or ((not BCD(11)) and (not BCD(10)) and (BCD(9)) and (BCD(8))) or ((not BCD(11)) and (BCD(10)) and (not BCD(9)) and (not BCD(8))) or ((not BCD(11)) and (BCD(10)) and (not BCD(9)) and (BCD(8))) or ((not BCD(11)) and (BCD(10)) and (BCD(9)) and (BCD(8))) or ((BCD(11)) and (not BCD(10)) and (not BCD(9)) and (BCD(8)));
Sie100(5)<= ((not BCD(11)) and (not BCD(10)) and (not BCD(9)) and (BCD(8))) or ((not BCD(11)) and (not BCD(10)) and (BCD(9)) and (not BCD(8))) or ((not BCD(11)) and (not BCD(10)) and (BCD(9)) and (BCD(8))) or ((not BCD(11)) and (BCD(10)) and (BCD(9)) and (BCD(8)));
Sie100(6)<= ((not BCD(11)) and (not BCD(10)) and (not BCD(9)) and (not BCD(8)))or ((not BCD(11)) and (not BCD(10)) and (not BCD(9)) and (BCD(8)))or((not BCD(11)) and (BCD(10)) and (BCD(9)) and (BCD(8)));


End  BCD7seg100Arch;