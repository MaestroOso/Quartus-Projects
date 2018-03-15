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

entity  BCD7seg1000 is
port( 
		
		BCD: in std_logic_vector(15 downto 12);
		Sie1000: out std_logic_vector(6 downto 0)
		
		);
end    BCD7seg1000         ;

--Definición de la arquitectura 
--******************************************************--
--Comentarios                                           --
--******************************************************--

architecture  BCD7seg1000Arch       of BCD7seg1000    is



--******************************************************--
--Comentarios                                           --
--******************************************************--


begin

--******************************************************--
--Instancias y Conectividad
--******************************************************
Sie1000(0)<= ((not BCD(15)) and (not BCD(14)) and (not BCD(13)) and (BCD(12))) or ((not BCD(15)) and (BCD(14)) and (not BCD(13)) and (not BCD(12)));
Sie1000(1)<= ((not BCD(15)) and (BCD(14)) and (not BCD(13)) and (BCD(12))) or ((not BCD(15)) and (BCD(14)) and (BCD(13)) and (not BCD(12))) ;
Sie1000(2)<= ((not BCD(15)) and (not BCD(14)) and (BCD(13)) and (not BCD(12)));
Sie1000(3)<= ((not BCD(15)) and (not BCD(14)) and (not BCD(13)) and (BCD(12))) or ((not BCD(15)) and (BCD(14)) and (not BCD(13)) and (not BCD(12))) or ((not BCD(15)) and (BCD(14)) and (BCD(13)) and (BCD(12))) or ((BCD(15)) and (not BCD(14)) and (not BCD(13)) and (BCD(12)));
Sie1000(4)<= ((not BCD(15)) and (not BCD(14)) and (not BCD(13)) and (BCD(12))) or ((not BCD(15)) and (not BCD(14)) and (BCD(13)) and (BCD(12))) or ((not BCD(15)) and (BCD(14)) and (not BCD(13)) and (not BCD(12))) or ((not BCD(15)) and (BCD(14)) and (not BCD(13)) and (BCD(12))) or ((not BCD(15)) and (BCD(14)) and (BCD(13)) and (BCD(12))) or ((BCD(15)) and (not BCD(14)) and (not BCD(13)) and (BCD(12)));
Sie1000(5)<= ((not BCD(15)) and (not BCD(14)) and (not BCD(13)) and (BCD(12))) or ((not BCD(15)) and (not BCD(14)) and (BCD(13)) and (not BCD(12))) or ((not BCD(15)) and (not BCD(14)) and (BCD(13)) and (BCD(12))) or ((not BCD(15)) and (BCD(14)) and (BCD(13)) and (BCD(12)));
Sie1000(6)<= ((not BCD(15)) and (not BCD(14)) and (not BCD(13)) and (not BCD(12)))or ((not BCD(15)) and (not BCD(14)) and (not BCD(13)) and (BCD(12)))or((not BCD(15)) and (BCD(14)) and (BCD(13)) and (BCD(12)));


End  BCD7seg1000Arch;