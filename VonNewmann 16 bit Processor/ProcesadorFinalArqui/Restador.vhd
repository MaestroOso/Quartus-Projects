--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--        Diseno de Sistemas Digitales   					  --
--                                                      --
-- Nombres  Oscar Castelblanco
--          Maria Alejandra Gomez
--******************************************************--                                            --
-- Fecha    31 de Mayo de 2017
--                                    --
--******************************************************--

--Definicion de las bibliotecas

library IEEE;
use IEEE.std_logic_1164.all;


--******************************************************--

--******************************************************--

entity Restador is
port(
        A: in std_logic_vector(0 to 15);
		  B: in std_logic_vector(0 to 15);
		  Cout: out std_logic;
		  
		  Salida: out std_logic_vector(0 to 15)
		  
);
end entity Restador;   

architecture RestadorArch of Restador is

component Sumador16 is
port(
        A: in std_logic_vector(0 to 15);
		  B: in std_logic_vector(0 to 15);
		  Cin: in std_logic;
		  Suma: out std_logic_vector(0 to 15);
		  Cout: out std_logic
);
end component Sumador16; 

component Complemento is
port(
        Dato: in std_logic_vector(0 to 15);
        
		  DatoN: out std_logic_vector(0 to 15)
);
end component Complemento; 

signal BNegado: std_logic_vector(0 to 15);
signal carryOut: std_logic;

begin

Neg: Complemento port map(B,BNegado);
Sum: Sumador16 port map(A, BNegado, '1', Salida, carryOut);


End RestadorArch;
--Definicion de la arquitectura 
--******************************************************--
--Aqui funcionamiento del Disenho1                  --
