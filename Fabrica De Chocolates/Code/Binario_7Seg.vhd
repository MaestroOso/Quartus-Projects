--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
---        Diseño de sistemas Digitales
--          Seccion de Tecnicas Digitales               --
-- 
--  Nombres  Damian Martinez
--           Oscar Castelblanco
--           Meyer Humberto
--******************************************************--                                            --
-- Fecha    2016
-- 
--                                    --
--******************************************************--

--Definicion de las bibliotecas 
library IEEE;
use IEEE.std_logic_1164.all;

--******************************************************--

--******************************************************--

entity Binario_7Seg is
port(

        A: in std_logic;
		  B: in std_logic;
		  C: in std_logic;
		  D: in std_logic; -- Menos significativo
		  
		  Out_7segmentos: out std_logic_vector(0 to 6) --Salidas a 7 segmentos
        
);

end entity Binario_7Seg;  
 

architecture Binario_7SegArch of Binario_7Seg is

begin
--Segmento a
Out_7segmentos(0)<= not((not A and C and D)OR(not A and B and D)OR(A and B and C)OR( A and not B and not C)OR(not B and not D) OR (A and not D));
--Segmento b
Out_7segmentos(1)<= not((not A and not C and not D)OR(not A and C and D)OR(A and not C and D)OR(not B and not C)OR(not B and not D));
--Segmento c
Out_7segmentos(2)<= not((not B and not C )OR(not B and D)OR(not C and D)OR(not A and B)OR(A and not B));
--Segmento d
Out_7segmentos(3)<= not((not B and not C and not D)OR(not B and C and D)OR(not A and C  and not D)OR(B and not C and D)OR(A and B and not D));
--Segmento e
Out_7segmentos(4)<= not((not B and not D)OR(C and not D)OR(A and B)OR(A and C));
--Segmento f
Out_7segmentos(5)<= not((not A and B and not C)OR (not C and not D) OR (B and not D) OR (A and C) OR(A and not B));
--Segmento g
Out_7segmentos(6)<= not((not A and B and not D)OR(B and not C and D)OR(not B and C)OR(A and C)OR(A and not B));




End Binario_7SegArch;