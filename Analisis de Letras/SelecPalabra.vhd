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
entity SelecPalabra is
port(

     RegA: in std_logic_vector(0 to 39);
	  RegB: in std_logic_vector(0 to 39);
	  RegC: in std_logic_vector(0 to 39);
	  	  
	  Sel_Palabra:in std_logic_vector(0 to 1);
     Out_Palabra: out std_logic_vector(0 to 39)

	  );
	  
end entity SelecPalabra;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÃƒâ€œN DE ARQUITECTURA                            --
--******************************************************--
architecture SelecPalabraArch of SelecPalabra is

component Mux3_1 is
port(
        In_Mux: in std_logic_vector(0 to 2);--Entrada Mux
        Sel : in std_logic_vector(0 to 1);--Seleccionador Mux
		  Out_Mux: out std_logic				  --SalidaMux
);
end component Mux3_1;   


begin


Mux0: Mux3_1 port map (RegA(0) & RegB(0)& RegC(0),Sel_Palabra,Out_Palabra(0));
Mux1: Mux3_1 port map (RegA(1) & RegB(1)& RegC(1),Sel_Palabra,Out_Palabra(1));
Mux2: Mux3_1 port map (RegA(2) & RegB(2)& RegC(2),Sel_Palabra,Out_Palabra(2));
Mux3: Mux3_1 port map (RegA(3) & RegB(3)& RegC(3),Sel_Palabra,Out_Palabra(3));
Mux4: Mux3_1 port map (RegA(4) & RegB(4)& RegC(4),Sel_Palabra,Out_Palabra(4));
Mux5: Mux3_1 port map (RegA(5) & RegB(5)& RegC(5),Sel_Palabra,Out_Palabra(5));
Mux6: Mux3_1 port map (RegA(6) & RegB(6)& RegC(6),Sel_Palabra,Out_Palabra(6));
Mux7: Mux3_1 port map (RegA(7) & RegB(7)& RegC(7),Sel_Palabra,Out_Palabra(7));
Mux8: Mux3_1 port map (RegA(8) & RegB(8)& RegC(8),Sel_Palabra,Out_Palabra(8));
Mux9: Mux3_1 port map (RegA(9) & RegB(9)& RegC(9),Sel_Palabra,Out_Palabra(9));

Mux10: Mux3_1 port map (RegA(10) & RegB(10)& RegC(10),Sel_Palabra,Out_Palabra(10));
Mux11: Mux3_1 port map (RegA(11) & RegB(11)& RegC(11),Sel_Palabra,Out_Palabra(11));
Mux12: Mux3_1 port map (RegA(12) & RegB(12)& RegC(12),Sel_Palabra,Out_Palabra(12));
Mux13: Mux3_1 port map (RegA(13) & RegB(13)& RegC(13),Sel_Palabra,Out_Palabra(13));
Mux14: Mux3_1 port map (RegA(14) & RegB(14)& RegC(14),Sel_Palabra,Out_Palabra(14));
Mux15: Mux3_1 port map (RegA(15) & RegB(15)& RegC(15),Sel_Palabra,Out_Palabra(15));
Mux16: Mux3_1 port map (RegA(16) & RegB(16)& RegC(16),Sel_Palabra,Out_Palabra(16));
Mux17: Mux3_1 port map (RegA(17) & RegB(17)& RegC(17),Sel_Palabra,Out_Palabra(17));
Mux18: Mux3_1 port map (RegA(18) & RegB(18)& RegC(18),Sel_Palabra,Out_Palabra(18));
Mux19: Mux3_1 port map (RegA(19) & RegB(19)& RegC(19),Sel_Palabra,Out_Palabra(19));

Mux20: Mux3_1 port map (RegA(20) & RegB(20)& RegC(20),Sel_Palabra,Out_Palabra(20));
Mux21: Mux3_1 port map (RegA(21) & RegB(21)& RegC(21),Sel_Palabra,Out_Palabra(21));
Mux22: Mux3_1 port map (RegA(22) & RegB(22)& RegC(22),Sel_Palabra,Out_Palabra(22));
Mux23: Mux3_1 port map (RegA(23) & RegB(23)& RegC(23),Sel_Palabra,Out_Palabra(23));
Mux24: Mux3_1 port map (RegA(24) & RegB(24)& RegC(24),Sel_Palabra,Out_Palabra(24));
Mux25: Mux3_1 port map (RegA(25) & RegB(25)& RegC(25),Sel_Palabra,Out_Palabra(25));
Mux26: Mux3_1 port map (RegA(26) & RegB(26)& RegC(26),Sel_Palabra,Out_Palabra(26));
Mux27: Mux3_1 port map (RegA(27) & RegB(27)& RegC(27),Sel_Palabra,Out_Palabra(27));
Mux28: Mux3_1 port map (RegA(28) & RegB(28)& RegC(28),Sel_Palabra,Out_Palabra(28));
Mux29: Mux3_1 port map (RegA(29) & RegB(29)& RegC(29),Sel_Palabra,Out_Palabra(29));

Mux30: Mux3_1 port map (RegA(30) & RegB(30)& RegC(30),Sel_Palabra,Out_Palabra(30));
Mux31: Mux3_1 port map (RegA(31) & RegB(31)& RegC(31),Sel_Palabra,Out_Palabra(31));
Mux32: Mux3_1 port map (RegA(32) & RegB(32)& RegC(32),Sel_Palabra,Out_Palabra(32));
Mux33: Mux3_1 port map (RegA(33) & RegB(33)& RegC(33),Sel_Palabra,Out_Palabra(33));
Mux34: Mux3_1 port map (RegA(34) & RegB(34)& RegC(34),Sel_Palabra,Out_Palabra(34));
Mux35: Mux3_1 port map (RegA(35) & RegB(35)& RegC(35),Sel_Palabra,Out_Palabra(35));
Mux36: Mux3_1 port map (RegA(36) & RegB(36)& RegC(36),Sel_Palabra,Out_Palabra(36));
Mux37: Mux3_1 port map (RegA(37) & RegB(37)& RegC(37),Sel_Palabra,Out_Palabra(37));
Mux38: Mux3_1 port map (RegA(38) & RegB(38)& RegC(38),Sel_Palabra,Out_Palabra(38));
Mux39: Mux3_1 port map (RegA(39) & RegB(39)& RegC(39),Sel_Palabra,Out_Palabra(39));
End SelecPalabraArch;
--Definicion de la arquitectura
--******************************************************--

