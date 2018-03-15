--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--              Circuitos Logicos                           --
--          Seccion de Tecnicas Digitales               --
-- Nombres  Damian Martinez
--          Oscar Castelblanco
--          Meyer Acero
--******************************************************--                                            --
-- Fecha    2016
--                                    --
--******************************************************--

--Definicion de las bibliotecas
library IEEE;
use IEEE.std_logic_1164.all;


--******************************************************--

--******************************************************--
entity Sumador12 is
port(
        A: in std_logic_vector(0 to 11);--
        B: in std_logic_vector(0 to 11);--
		  SumadorOut: out std_logic_vector(0 to 11)
		  	  		  
);

end entity Sumador12;   

architecture Sumador12Arch of Sumador12 is

signal Carry:std_logic_vector (0 to 11);

begin
SumadorOut(0)<= A(0) XOR B(0);
Carry(0)<=A(0) AND B(0);

SumadorOut(1)<= A(1) XOR B(1) XOR Carry(0);
Carry(1)<= (A(1) AND B(1) ) OR (Carry(0) AND ( A(1)OR B(1)));

SumadorOut(2)<= A(2) XOR B(2) XOR Carry(1);
Carry(2)<= (A(2) AND B(2) ) OR (Carry(1) AND ( A(2)OR B(2)));

SumadorOut(3)<= A(3) XOR B(3) XOR Carry(2);
Carry(3)<= (A(3) AND B(3) ) OR (Carry(2) AND ( A(3)OR B(3)));

SumadorOut(4)<= A(4) XOR B(4) XOR Carry(3);
Carry(4)<= (A(4) AND B(4) ) OR (Carry(3) AND ( A(4)OR B(4)));

SumadorOut(5)<= A(5) XOR B(5) XOR Carry(4);
Carry(5)<= (A(5) AND B(5) ) OR (Carry(4) AND ( A(5)OR B(5)));

SumadorOut(6)<= A(6) XOR B(6) XOR Carry(5);
Carry(6)<= (A(6) AND B(6) ) OR (Carry(5) AND ( A(6)OR B(6)));

SumadorOut(7)<= A(7) XOR B(7) XOR Carry(6);
Carry(7)<= (A(7) AND B(7) ) OR (Carry(6) AND ( A(7)OR B(7)));

SumadorOut(8)<= A(8) XOR B(8) XOR Carry(7);
Carry(8)<= (A(8) AND B(8) ) OR (Carry(7) AND ( A(8)OR B(8)));

SumadorOut(9)<= A(9) XOR B(9) XOR Carry(8);
Carry(9)<= (A(9) AND B(9) ) OR (Carry(8) AND ( A(9)OR B(9)));

SumadorOut(10)<= A(10) XOR B(10) XOR Carry(9);
Carry(10)<= (A(10) AND B(10) ) OR (Carry(9) AND ( A(10)OR B(10)));

SumadorOut(11)<= A(11) XOR B(11) XOR Carry(10);
Carry(11)<= (A(11) AND B(11) ) OR (Carry(10) AND ( A(11)OR B(11)));


End Sumador12Arch;