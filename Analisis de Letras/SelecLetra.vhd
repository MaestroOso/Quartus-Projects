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
-- DEFINICIÃƒâ€œN DE ENTIDAD                                --
--******************************************************--
entity SelecLetra is
port(

     Letra: in std_logic_vector(0 to 39); 
	  Sel_Letra:in std_logic_vector(0 to 2);
     Out_Letra: out std_logic_vector(0 to 4)

	  );
	  
end entity SelecLetra;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÃƒâ€œN DE ARQUITECTURA                            --
--******************************************************--
architecture SelecLetraArch of SelecLetra is

component Mux8_1 is
port(
        In_Mux: in std_logic_vector(0 to 7);--Entrada Mux
        Sel : in std_logic_vector(0 to 2);--Seleccionador Mux
		  Out_Mux: out std_logic				  --SalidaMux
);
end component Mux8_1;   

signal Sel_Letra_N: std_logic_vector(0 to 2);



begin


Mux1: Mux8_1 port map (Letra(0) & Letra(5)& Letra(10)& Letra(15)& Letra(20)& Letra(25)& Letra(30)& Letra(35),Sel_Letra_N,Out_Letra(0));
Mux2: Mux8_1 port map (Letra(1) & Letra(6)& Letra(11)& Letra(16)& Letra(21)& Letra(26)& Letra(31)& Letra(36),Sel_Letra_N,Out_Letra(1));
Mux3: Mux8_1 port map (Letra(2) & Letra(7)& Letra(12)& Letra(17)& Letra(22)& Letra(27)& Letra(32)& Letra(37),Sel_Letra_N,Out_Letra(2));
Mux4: Mux8_1 port map (Letra(3) & Letra(8)& Letra(13)& Letra(18)& Letra(23)& Letra(28)& Letra(33)& Letra(38),Sel_Letra_N,Out_Letra(3));
Mux5: Mux8_1 port map (Letra(4) & Letra(9)& Letra(14)& Letra(19)& Letra(24)& Letra(29)& Letra(34)& Letra(39),Sel_Letra_N,Out_Letra(4));


Sel_Letra_N(0) <= not Sel_Letra(0);
Sel_Letra_N(1) <= not Sel_Letra(1);
Sel_Letra_N(2) <= not Sel_Letra(2);

End SelecLetraArch;
--Definicion de la arquitectura
--******************************************************--