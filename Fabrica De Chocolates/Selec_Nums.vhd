--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--        DiseÃƒÂ±o de Sistemas Digitales   					  --
--                                                      --
-- Nombres  Damian Martinez
--          Oscar Castelblanco
--          Meyer Acero
--******************************************************--                                            --
-- Fecha    20 de Agosto de 2016
--                                    --
--******************************************************--

--Definicion de las bibliotecas
--Definicion de las bibliotecas
library IEEE; 
use IEEE.std_logic_1164.all;

--******************************************************--
-- DEFINICIÃƒâ€œN DE ENTIDAD                                --
--******************************************************--
entity Selec_Nums is
port(

     In_BitsA: in std_logic_vector(0 to 11);
	  In_BitsB: in std_logic_vector(0 to 11);
	  In_BitsC: in std_logic_vector(0 to 11);
	  In_BitsD: in std_logic_vector(0 to 11);
	  In_BitsE: in std_logic_vector(0 to 11);
	  In_BitsF: in std_logic_vector(0 to 11);
	  
	  Sel_Bits:in std_logic_vector(0 to 2);
     Out_Bits: out std_logic_vector(0 to 11)

	  );
	  
end entity Selec_Nums;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÃƒâ€œN DE ARQUITECTURA                            --
--******************************************************--
architecture Selec_NumsArch of Selec_Nums is

component Mux6_1 is
port(
        In_Mux: in std_logic_vector(0 to 5);--Entrada Mux
        Sel : in std_logic_vector(0 to 2);--Seleccionador Mux
		  Out_Mux: out std_logic				  --SalidaMux
);
end component Mux6_1;   


begin


Mux1: Mux6_1 port map (In_BitsA(0) & In_BitsB(0)& In_BitsC(0)& In_BitsD(0)& In_BitsE(0)& In_BitsF(0),Sel_Bits,Out_Bits(0));
Mux2: Mux6_1 port map (In_BitsA(1) & In_BitsB(1)& In_BitsC(1)& In_BitsD(1)& In_BitsE(1)& In_BitsF(1),Sel_Bits,Out_Bits(1));
Mux3: Mux6_1 port map (In_BitsA(2) & In_BitsB(2)& In_BitsC(2)& In_BitsD(2)& In_BitsE(2)& In_BitsF(2),Sel_Bits,Out_Bits(2));
Mux4: Mux6_1 port map (In_BitsA(3) & In_BitsB(3)& In_BitsC(3)& In_BitsD(3)& In_BitsE(3)& In_BitsF(3),Sel_Bits,Out_Bits(3));
Mux5: Mux6_1 port map (In_BitsA(4) & In_BitsB(4)& In_BitsC(4)& In_BitsD(4)& In_BitsE(4)& In_BitsF(4),Sel_Bits,Out_Bits(4));
Mux6: Mux6_1 port map (In_BitsA(5) & In_BitsB(5)& In_BitsC(5)& In_BitsD(5)& In_BitsE(5)& In_BitsF(5),Sel_Bits,Out_Bits(5));
Mux7: Mux6_1 port map (In_BitsA(6) & In_BitsB(6)& In_BitsC(6)& In_BitsD(6)& In_BitsE(6)& In_BitsF(6),Sel_Bits,Out_Bits(6));
Mux8: Mux6_1 port map (In_BitsA(7) & In_BitsB(7)& In_BitsC(7)& In_BitsD(7)& In_BitsE(7)& In_BitsF(7),Sel_Bits,Out_Bits(7));
Mux9: Mux6_1 port map (In_BitsA(8) & In_BitsB(8)& In_BitsC(8)& In_BitsD(8)& In_BitsE(8)& In_BitsF(8),Sel_Bits,Out_Bits(8));
Mux10: Mux6_1 port map (In_BitsA(9) & In_BitsB(9)& In_BitsC(9)& In_BitsD(9)& In_BitsE(9)& In_BitsF(9),Sel_Bits,Out_Bits(9));
Mux11: Mux6_1 port map (In_BitsA(10) & In_BitsB(10)& In_BitsC(10)& In_BitsD(10)& In_BitsE(10)& In_BitsF(10),Sel_Bits,Out_Bits(10));
Mux12: Mux6_1 port map (In_BitsA(11) & In_BitsB(11)& In_BitsC(11)& In_BitsD(11)& In_BitsE(11)& In_BitsF(11),Sel_Bits,Out_Bits(11));

End Selec_NumsArch;
--Definicion de la arquitectura
--******************************************************--

