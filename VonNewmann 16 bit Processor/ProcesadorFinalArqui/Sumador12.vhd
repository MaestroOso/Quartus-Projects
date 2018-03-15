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

entity Sumador12 is
port(
        A: in std_logic_vector(11 downto 0);
		  B: in std_logic_vector(11 downto 0);
		  Cin: in std_logic;
		  Suma: out std_logic_vector(11 downto 0);
		  Cout: out std_logic
);
end entity Sumador12;   

architecture Sumador12Arch of Sumador12 is

component FullAdder is
port(
        A: in std_logic;
		  B: in std_logic;
		  Cin: in std_logic;
		  Cout: out std_logic;
		  Suma: out std_logic
);
end component FullAdder; 

signal Carry: std_logic_vector(11 downto 0);


begin

FA0: FullAdder port map(A(0),B(0),Cin, Carry(0),Suma(0));
FA1: FullAdder port map(A(1),B(1),Carry(0), Carry(1),Suma(1));
FA2: FullAdder port map(A(2),B(2),Carry(1), Carry(2),Suma(2));
FA3: FullAdder port map(A(3),B(3),Carry(2), Carry(3),Suma(3));
FA4: FullAdder port map(A(4),B(4),Carry(3), Carry(4),Suma(4));
FA5: FullAdder port map(A(5),B(5),Carry(4), Carry(5),Suma(5));
FA6: FullAdder port map(A(6),B(6),Carry(5), Carry(6),Suma(6));
FA7: FullAdder port map(A(7),B(7),Carry(6), Carry(7),Suma(7));
FA8: FullAdder port map(A(8),B(8),Carry(7), Carry(8),Suma(8));
FA9: FullAdder port map(A(9),B(9),Carry(8), Carry(9),Suma(9));
FA10: FullAdder port map(A(10),B(10),Carry(9), Carry(10),Suma(10));
FA11: FullAdder port map(A(11),B(11),Carry(10), Carry(11),Suma(11));

Cout <= Carry(11);

End Sumador12Arch;
--Definicion de la arquitectura 
--******************************************************--
--Aqui funcionamiento del Disenho1                  --
