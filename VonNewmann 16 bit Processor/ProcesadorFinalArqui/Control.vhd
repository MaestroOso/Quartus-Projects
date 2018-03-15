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
-- DEFINICIÓN DE ENTIDAD                                --
--******************************************************--

entity Control is
port(
		--Entradas
		Inicio: in std_logic;
		Interrupcion: in std_logic;
		MI_Control: in std_logic_vector(0 to 1);
		DI_Control: in std_logic_vector(0 to 3);
		Reg_Banderas: in std_logic_vector(0 to 3);
		Contador: in std_logic_vector(0 to 2);
		--Sincronismo y reinicio
		CLK: in std_logic;
		RESET: in std_logic;
		-- Salidas de señales de control del sistema
		Cnt_RegE: out std_logic;
		Cnt_Iactual: out std_logic_vector(0 to 1); -- Reinicio y guardado de Iactual
		Cnt_RegDir: out std_logic; -- Guardado en Reg_Dir
		Leer: out std_logic;
		Cnt_SelI: out std_logic_vector(0 to 3);
		Cnt_SelSal: out std_logic_vector(0 to 3);
		Cnt_RegB: out std_logic; --Habilitar RegBanderas
		Cnt_SumRes: out std_logic;
		Cnt_RegS: out std_logic;
		Cnt_SelSu: out std_logic_vector(0 to 1);
		Cnt_RegIn: out std_logic;
		Escribir: out std_logic;
		Cnt_RGE: out std_logic;
		Cnt_RGS: out std_logic;
		Cnt_SelSum: out std_logic_vector(0 to 1);
		Cnt_Sel: out std_logic_vector(0 to 1);
		Cnt_SelE: out std_logic_vector(0 to 2); -- Selector de Entrada de RegEntrada
		Cnt_InstFu: out std_logic;
		CSRF: out std_logic;
		Cnt_SeleSa: out std_logic_vector(0 to 1); -- Selector de entrada al registro de Salida
		Cnt_RB: out std_logic; -- Selector de RegBanderas
		Cnt_CT: out std_logic_vector(0 to 1); -- bit 0 reiniciar bit 1 contar
		
		--Salidas para ver estados
		Estados: out std_logic_vector(1 to 88)
	  );
end Entity Control;              

--Definicion de la arquitectura 
--******************************************************--
--DEFINICIÓN DE ARQUITECTURA                            --
--******************************************************--

architecture ControlArch of Control is
component dffe is
port(
d, clk, clrn, prn, ena: IN std_logic;
q:OUT std_logic
);
end component dffe;

--******************************************************--
--DEFINICIÓN DE 

--SEÑALES DE CONEXIÓN                     --
--******************************************************--

signal estado: std_logic_vector(1 to 88);

--******************************************************--
--Instancias y Conectividad                             --
--******************************************************--

begin

--port map ( Data ,  Reloj,    Reset,  Preset , Enable,  Salida
F1:  dffe port map( (not Inicio and estado(1)), CLK,'1',RESET,'1', estado(1));
F2:  dffe port map( Inicio and estado(1), CLK, RESET,'1','1', estado(2));
F3:  dffe port map( estado(88) or estado(80) or estado(67) or estado(49) or estado(46) or estado(42) or estado(37) or estado(35) or estado(32) or estado(30) or estado(2) or estado(15) or (not Reg_Banderas(3) and estado(16)) or (Reg_Banderas(2) and estado(17)) or (not Reg_Banderas(2) and estado(18)) or (not Reg_Banderas(0) and estado(19)) or ((Reg_Banderas(2) or not Reg_Banderas(3)) and estado(20)) or ((not Reg_Banderas(2) or not Reg_Banderas(3)) and estado(21)) or estado(27), CLK, RESET,'1','1', estado(3));
F4:  dffe port map( estado(3), CLK, RESET,'1','1', estado(4));
F5:  dffe port map( estado(4), CLK, RESET,'1','1', estado(5));
F6:  dffe port map( estado(5), CLK, RESET,'1','1', estado(6));
F7:  dffe port map( estado(6) , CLK, RESET,'1','1', estado(7));
F8:  dffe port map( (estado(7) and not Interrupcion) , CLK, RESET,'1','1', estado(8));
F9:  dffe port map( estado(8), CLK, RESET,'1','1', estado(9));
F10:  dffe port map( (estado(9) and MI_Control(1) and not MI_Control(0)) , CLK, RESET,'1','1', estado(10));
F11:  dffe port map( (estado(10) and not DI_Control(3) and not DI_Control(2) and DI_Control(1) and not DI_Control(0)), CLK, RESET,'1','1', estado(11));
F12:  dffe port map( estado(59) or estado(11), CLK, RESET,'1','1', estado(12));
F13:  dffe port map( estado(12), CLK, RESET,'1','1', estado(13));
F14:  dffe port map( estado(13), CLK, RESET,'1','1', estado(14));
F15:  dffe port map( estado(14), CLK, RESET,'1','1', estado(15));
F16:  dffe port map( (estado(53) and not DI_Control(3) and DI_Control(2) and not DI_Control(1) and DI_Control(0)) or (estado(48) and not DI_Control(3) and DI_Control(2) and not DI_Control(1) and DI_Control(0)) or (estado(10) and not DI_Control(3) and DI_Control(2) and not DI_Control(1) and DI_Control(0)) , CLK, RESET,'1','1', estado(16));
F17:  dffe port map(  (estado(53) and not DI_Control(3) and DI_Control(2) and DI_Control(1) and not DI_Control(0)) or (estado(48) and not DI_Control(3) and DI_Control(2) and DI_Control(1) and not DI_Control(0)) or (estado(10) and not DI_Control(3) and DI_Control(2) and DI_Control(1) and not DI_Control(0)), CLK, RESET,'1','1', estado(17));
F18:  dffe port map( (estado(53) and not DI_Control(3) and DI_Control(2) and DI_Control(1) and DI_Control(0)) or (estado(48) and not DI_Control(3) and DI_Control(2) and DI_Control(1) and DI_Control(0)) or (estado(10) and not DI_Control(3) and DI_Control(2) and DI_Control(1) and DI_Control(0)), CLK, RESET,'1','1', estado(18));
F19:  dffe port map( (estado(53) and DI_Control(3) and not DI_Control(2) and not DI_Control(1) and not DI_Control(0)) or (estado(48) and DI_Control(3) and not DI_Control(2) and not DI_Control(1) and not DI_Control(0)) or (estado(10) and DI_Control(3) and not DI_Control(2) and not DI_Control(1) and not DI_Control(0)), CLK, RESET,'1','1', estado(19));
F20:  dffe port map( (estado(53) and DI_Control(3) and DI_Control(2) and not DI_Control(1) and not DI_Control(0)) or (estado(48) and DI_Control(3) and DI_Control(2) and not DI_Control(1) and not DI_Control(0)) or (estado(10) and DI_Control(3) and DI_Control(2) and not DI_Control(1) and not DI_Control(0)), CLK, RESET,'1','1', estado(20));
F21:  dffe port map( (estado(53) and DI_Control(3) and DI_Control(2) and not DI_Control(1) and DI_Control(0)) or (estado(48) and DI_Control(3) and DI_Control(2) and not DI_Control(1) and DI_Control(0)) or (estado(48) and DI_Control(3) and DI_Control(2) and not DI_Control(1) and DI_Control(0)) or  (estado(10) and DI_Control(3) and DI_Control(2) and not DI_Control(1) and DI_Control(0)), CLK, RESET,'1','1', estado(21));
F22:  dffe port map(  (estado(10) and not DI_Control(3) and not DI_Control(2) and not DI_Control(1) and DI_Control(0)) or (estado(10) and not DI_Control(3) and not DI_Control(2) and DI_Control(1) and DI_Control(0)) or (estado(10) and not DI_Control(3) and DI_Control(2) and not DI_Control(1) and not DI_Control(0)) or (estado(10) and DI_Control(3) and not DI_Control(2) and not DI_Control(1) and DI_Control(0)) or (estado(10) and DI_Control(3) and not DI_Control(2) and DI_Control(1) and not DI_Control(0)) or (estado(10) and DI_Control(3) and not DI_Control(2) and DI_Control(1) and DI_Control(0)), CLK, RESET,'1','1', estado(22));
F23:  dffe port map(  estado(65) or estado(22), CLK, RESET,'1','1', estado(23));
F24:  dffe port map(  estado(23), CLK, RESET,'1','1', estado(24));
F25:  dffe port map(  estado(24), CLK, RESET,'1','1', estado(25));
F26:  dffe port map(  (estado(25) and (MI_Control(1) or MI_Control(0))), CLK, RESET,'1','1', estado(26));
F27:  dffe port map( (estado(26) and not DI_Control(3) and not DI_Control(2) and not DI_Control(1) and DI_Control(0)) , CLK, RESET,'1','1', estado(27));
F28:  dffe port map( (estado(26) and not DI_Control(3) and not DI_Control(2) and DI_Control(1) and DI_Control(0)), CLK, RESET,'1','1', estado(28));
F29:  dffe port map(  estado(68) or estado(50) or estado(28), CLK, RESET,'1','1', estado(29));
F30:  dffe port map(  estado(29), CLK, RESET,'1','1', estado(30));
F31:  dffe port map(  estado(69) or estado(51) or (estado(26) and not DI_Control(3) and DI_Control(2) and not DI_Control(1) and not DI_Control(0)), CLK, RESET,'1','1', estado(31));
F32:  dffe port map(  estado(31), CLK, RESET,'1','1', estado(32));
F33:  dffe port map(  (estado(26) and DI_Control(3) and not DI_Control(2) and not DI_Control(1) and DI_Control(0)), CLK, RESET,'1','1', estado(33));
F34:  dffe port map( estado(70) or estado(52) or estado(33), CLK, RESET,'1','1', estado(34));
F35:  dffe port map(  estado(34), CLK, RESET,'1','1', estado(35));
F36:  dffe port map( (Reg_Banderas(3) and estado(16)) or (not Reg_Banderas(2) and estado(17)) or (Reg_Banderas(2) and estado(18)) or (Reg_Banderas(0) and estado(19)) or ((not Reg_Banderas(2) or Reg_Banderas(3)) and estado(20)) or ((Reg_Banderas(2) or Reg_Banderas(3)) and estado(21)), CLK, RESET,'1','1', estado(36));
F37:  dffe port map(  estado(36), CLK, RESET,'1','1', estado(37)); --Revisar
F38:  dffe port map(  (estado(26) and DI_Control(3) and not DI_Control(2) and DI_Control(1) and not DI_Control(0)), CLK, RESET,'1','1', estado(38));
F39:  dffe port map(  estado(38), CLK, RESET,'1','1', estado(39));
F40:  dffe port map(  estado(39), CLK, RESET,'1','1', estado(40));
F41:  dffe port map(  estado(40), CLK, RESET,'1','1', estado(41));
F42:  dffe port map(  estado(41) , CLK, RESET,'1','1', estado(42));
F43:  dffe port map( (estado(26) and DI_Control(3) and not DI_Control(2) and DI_Control(1) and DI_Control(0)) , CLK, RESET,'1','1', estado(43));
F44:  dffe port map(  estado(43), CLK, RESET,'1','1', estado(44));
F45:  dffe port map(  estado(44), CLK, RESET,'1','1', estado(45));
F46:  dffe port map(  estado(45), CLK, RESET,'1','1', estado(46));
F47:  dffe port map( (estado(9) and not MI_Control(1) and MI_Control(0)), CLK, RESET,'1','1', estado(47));
F48:  dffe port map(  estado(47), CLK, RESET,'1','1', estado(48));
F49:  dffe port map(  (estado(48) and not DI_Control(3) and not DI_Control(2) and not DI_Control(1) and DI_Control(0)), CLK, RESET,'1','1', estado(49));
F50:  dffe port map(  (estado(48) and not DI_Control(3) and not DI_Control(2) and DI_Control(1) and DI_Control(0)), CLK, RESET,'1','1', estado(50));
F51:  dffe port map(  (estado(48) and not DI_Control(3) and DI_Control(2) and not DI_Control(1) and not DI_Control(0)), CLK, RESET,'1','1', estado(51));
F52:  dffe port map(  (estado(48) and DI_Control(3) and not DI_Control(2) and not DI_Control(1) and DI_Control(0)), CLK, RESET,'1','1', estado(52));
F53:  dffe port map((estado(9) and not MI_Control(1) and not MI_Control(0)), CLK, RESET,'1','1', estado(53));
F54:  dffe port map( (estado(53) and not DI_Control(3) and not DI_Control(2) and DI_Control(1) and not DI_Control(0)) , CLK, RESET,'1','1', estado(54));
F55:  dffe port map( estado(54), CLK, RESET,'1','1', estado(55));
F56:  dffe port map( estado(55), CLK, RESET,'1','1', estado(56));
F57:  dffe port map( estado(56), CLK, RESET,'1','1', estado(57));
F58:  dffe port map( estado(57), CLK, RESET,'1','1', estado(58));
F59:  dffe port map( estado(58), CLK, RESET,'1','1', estado(59));
F60:  dffe port map(  (estado(53) and DI_Control(3) and not DI_Control(2) and not DI_Control(1) and DI_Control(0)) or (estado(53) and not DI_Control(3) and DI_Control(2) and not DI_Control(1) and not DI_Control(0)) or (estado(53) and not DI_Control(3) and not DI_Control(2) and DI_Control(1) and DI_Control(0)) or (estado(53) and not DI_Control(3) and not DI_Control(2) and not DI_Control(1) and DI_Control(0)), CLK, RESET,'1','1', estado(60));
F61:  dffe port map(  estado(60), CLK, RESET,'1','1', estado(61));
F62:  dffe port map(  estado(61), CLK, RESET,'1','1', estado(62));
F63:  dffe port map(  estado(62), CLK, RESET,'1','1', estado(63));
F64:  dffe port map(  estado(63), CLK, RESET,'1','1', estado(64));
F65:  dffe port map(  estado(64), CLK, RESET,'1','1', estado(65));
F66:  dffe port map(  (estado(25) and not MI_Control(1) and not MI_Control(0)), CLK, RESET,'1','1', estado(66));
F67:  dffe port map(  (estado(66) and not DI_Control(3) and not DI_Control(2) and not DI_Control(1) and DI_Control(0)), CLK, RESET,'1','1', estado(67));
F68:  dffe port map(  (estado(66) and not DI_Control(3) and not DI_Control(2) and DI_Control(1) and DI_Control(0)), CLK, RESET,'1','1', estado(68));
F69:  dffe port map(  (estado(66) and not DI_Control(3) and DI_Control(2) and not DI_Control(1) and not DI_Control(0)), CLK, RESET,'1','1', estado(69));
F70:  dffe port map(  (estado(66) and DI_Control(3) and not DI_Control(2) and not DI_Control(1) and DI_Control(0)), CLK, RESET,'1','1', estado(70));
F71:  dffe port map( (estado(7) and Interrupcion), CLK, RESET,'1','1', estado(71));
F72:  dffe port map( estado(71), CLK, RESET,'1','1', estado(72));
F73:  dffe port map( (estado(79) and not Contador(2) and not Contador(1) and Contador(0)), CLK, RESET,'1','1', estado(73));
F74:  dffe port map( (estado(79) and not Contador(2) and Contador(1) and not Contador(0)), CLK, RESET,'1','1', estado(74));
F75:  dffe port map(  (estado(79) and not Contador(2) and Contador(1) and Contador(0)), CLK, RESET,'1','1', estado(75));
F76:  dffe port map( estado(72) or estado(73) or estado(74) or estado(75), CLK, RESET,'1','1', estado(76));
F77:  dffe port map( estado(76), CLK, RESET,'1','1', estado(77));
F78:  dffe port map( estado(77), CLK, RESET,'1','1', estado(78));
F79:  dffe port map( estado(78), CLK, RESET,'1','1', estado(79));
F80:  dffe port map( (estado(79) and Contador(2) and not Contador(1) and not Contador(0)), CLK, RESET,'1','1', estado(80));
F81:  dffe port map( estado(87) or estado(86) or estado(85) or (estado(10) and DI_Control(3) and DI_Control(2) and DI_Control(1) and not DI_Control(0)), CLK, RESET,'1','1', estado(81));
F82:  dffe port map( estado(81), CLK, RESET,'1','1', estado(82));
F83:  dffe port map( estado(82), CLK, RESET,'1','1', estado(83));
F84:  dffe port map( estado(83) , CLK, RESET,'1','1', estado(84));
F85:  dffe port map( (estado(84) and not Contador(2) and not Contador(1) and not Contador(0)), CLK, RESET,'1','1', estado(85));
F86:  dffe port map( (estado(84) and not Contador(2) and not Contador(1) and Contador(0)), CLK, RESET,'1','1', estado(86));
F87:  dffe port map( (estado(84) and not Contador(2) and Contador(1) and not Contador(0)), CLK, RESET,'1','1', estado(87));
F88:  dffe port map( (estado(84) and not Contador(2) and Contador(1) and Contador(0)), CLK, RESET,'1','1', estado(88 ));

Cnt_RegE <= estado(27) or estado(29) or estado(34) or estado(49) or estado(67) or estado(86) ;

Cnt_Iactual(0) <= estado(2);
Cnt_Iactual(1) <= estado(8) or estado(37) or estado(42) or estado(85);

Cnt_RegDir <=  estado(3) or estado(11) or estado(22) or estado(38) or estado(43) or estado(54) or estado(59) or estado(60) or estado(65) or estado(76) or estado(81);

Leer <= estado(4) or estado(5) or estado(6) or estado(23) or estado(24) or estado(25) or estado(43) or estado(44) or 
estado(45) or estado(45) or estado(55) or estado(56) or estado(57) or estado(61) or estado(62) or estado(63) or 
estado(82) or estado(83) or estado(84);

Cnt_SelI(2) <= estado(3);
Cnt_SelI(1) <= estado(11) or estado(22) or estado(54) or estado(60);
Cnt_SelI(3) <= estado(38) or estado(43) or estado(76) or estado(81);
Cnt_SelI(0) <= estado(59) or estado(65); 

Cnt_SelSal(0) <= estado(12) or estado(74);
Cnt_SelSal(1) <= estado(73);
Cnt_SelSal(2) <= estado(38) or estado(75);
Cnt_SelSal(3) <= estado(72);

Cnt_RegB <= estado(29) or estado(34) or estado(88) or estado(32);

Cnt_SumRes <= estado(34);

Cnt_RegS <= estado(28) or estado(31) or estado(33) or estado(50) or estado(51) or estado(52) or estado(58) or estado(64) or 
estado(68) or estado(69) or estado(70) or estado(87);

Cnt_SelSu(0) <= estado(29);
Cnt_SelSu(1) <= estado(34);

Cnt_RegIn <= estado(7) or estado(47);

Escribir <= estado(13) or estado(14) or estado(15) or estado(38) or estado(39) or estado(40) or estado(76) or estado(77) or estado(78);

Cnt_RGE <= estado(6) or estado(25) or estado(57) or estado(63) or estado(84);

Cnt_RGS <= estado(12) or estado(38) or estado(72) or estado(73) or estado(74) or estado(75);

Cnt_SelSum(0) <= estado(37) or estado(42);
Cnt_SelSum(1) <= estado(8);

Cnt_Sel(0) <= estado(8) or estado(37) or estado(42);
Cnt_Sel(1) <= estado(85);

Cnt_SelE(0) <= estado(29) or estado(34);
Cnt_SelE(1) <= estado(27) or estado(67) or estado(86);
Cnt_SelE(2) <= estado(49);

Cnt_InstFu <= estado(41) or estado(46) or estado(79) or estado(85) or estado(86) or estado(87);

CSRF <= estado(41) or estado(79);

Cnt_SeleSa(0) <= estado(28) or estado(31) or estado(33) or estado(58) or estado(64) or estado(68) or estado(69) or estado(70) or estado(87);
Cnt_SeleSa(1) <= estado(50) or estado(51) or estado(52);

Cnt_RB <= estado(29) or estado(34);

Cnt_CT(0) <= estado(2) or estado(80) or estado(88);
Cnt_CT(1) <= estado(79) or estado(85) or estado(86) or estado(87);

Estados(1 to 88) <= estado(1 to 88);

End  ControlArch;
