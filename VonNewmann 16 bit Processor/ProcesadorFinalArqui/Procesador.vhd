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

entity Procesador is
port(
		  --Entradas
		  DatoIn: in std_logic_vector(0 to 15);
		  Clk: in std_logic;
		  Reset: in std_logic;
		  Interrupcion: in std_logic;
		  Inicio: in std_logic;
		  --SalidaPrueba:
		  EstadosQ: out std_logic_vector(1 to 88);
		  IActualQ: out std_logic_vector(0 to 15);
		  --Salida
		  Escribir: out std_logic;
		  Leer: out std_logic;
		  Direccion: out std_logic_vector(0 to 11);
		  DatoOut: out std_logic_vector(0 to 15)
);
end entity Procesador;   

architecture ProcesadorArch of Procesador is

component Registro16P is
port(
        Dato: in std_logic_vector(0 to 15);
        Reset: in std_logic;
        clk: in std_logic;
        Enable: in std_logic;
        
        RegistroSalida: out std_logic_vector(0 to 15)
);
end component Registro16P;  

component Selector15II is
port(
        A: in std_logic_vector(0 to 15);
		  B: in std_logic_vector(0 to 15);
		  Control: in std_logic_vector(0 to 1); -- Control en 1 deja pasar A y en 0 deja pasar B	  
		  Salida: out std_logic_vector(0 to 15)
);
end component Selector15II;   

component Selector16III is
port(
        A: in std_logic_vector(0 to 15);
        B: in std_logic_vector(0 to 15);
		  C: in std_logic_vector(0 to 15);
		  Elegir: in std_logic_vector(0 to 2);  -- 0 deja pasar A, 1 deja pasar B, 2 deja pasar C
		  
		  Salida: out std_logic_vector(0 to 15)
);
end component Selector16III;   

component SelectorComplemento is
port(
        A: in std_logic_vector(0 to 15);
		  Elegir: in std_logic_vector(0 to 1); --0 es A y 1 es ~A
		  
		  Salida: out std_logic_vector(0 to 15)
);
end component SelectorComplemento; 

component SumarRestar is
port(
        A: in std_logic_vector(0 to 15);
		  B: in std_logic_vector(0 to 15);
		  Cin: in std_logic; -- 0 para sumar y 1 para restar
		  Banderas: out std_logic_vector(0 to 3); -- Z N OV CO
		  Salida: out std_logic_vector(0 to 15)
		  
);
end component SumarRestar;

component Comparador is
port(
        A: in std_logic_vector(0 to 15);
		  B: in std_logic_vector(0 to 15);
		  
		  Banderas: out std_logic_vector(0 to 1) -- Z N
);
end component Comparador;   

component Selector4II is
port(
        A: in std_logic_vector(0 to 3);
		  B: in std_logic_vector(0 to 1);
		  Control: in std_logic; -- Control en 1 deja pasar A y en 0 deja pasar B	  
		  Salida: out std_logic_vector(0 to 3)
);
end component Selector4II;

component RegBanderas is
port(
        Dato: in std_logic_vector(0 to 3);
        Reset: in std_logic;
        clk: in std_logic;
        Enable: in std_logic;    
        RegistroSalida: out std_logic_vector(0 to 3)
);
end component RegBanderas;    

component SelectorSalida is
port(
        A: in std_logic_vector(0 to 15); --Entrada
        B: in std_logic_vector(0 to 15); --Salida
		  C: in std_logic_vector(0 to 11); -- i	nstrucActual
		  D: in std_logic_vector(0 to 3); -- RegBanderas
		  Elegir: in std_logic_vector(0 to 3); -- 0 deja pasar A, 1 deja pasar B, 2 deja pasar C, 3 deja pasar D
		  
		  Salida: out std_logic_vector(0 to 15)
);
end component SelectorSalida;

component SelectorSumIns is
port(
        RegInstruccion: in std_logic_vector(0 to 11);
		  Control: in std_logic_vector(0 to 1);
		  
		  Salida: out std_logic_vector(0 to 11)
);
end component SelectorSumIns;

component Sumador12 is
port(
        A: in std_logic_vector(11 downto 0);
		  B: in std_logic_vector(11 downto 0);
		  Cin: in std_logic;
		  Suma: out std_logic_vector(11 downto 0);
		  Cout: out std_logic
);
end component Sumador12;      

component Selector12II is
port(
        A: in std_logic_vector(0 to 11);
		  B: in std_logic_vector(0 to 11);
		  Control: in std_logic_vector(0 to 1); -- Control en 1 deja pasar A y en 0 deja pasar B	  
		  Salida: out std_logic_vector(0 to 11)
);
end component Selector12II; 

component Registro12P is
port(
        Dato: in std_logic_vector(0 to 11);
        Reset: in std_logic;
        clk: in std_logic;
        Enable: in std_logic;
        
        RegistroSalida: out std_logic_vector(0 to 11)
);
end component Registro12P; 

component SRF is
port(
        A: in std_logic_vector(0 to 11);
		  Operacion: in std_logic; --0 Suma 1 Resta
		  
		  Suma: out std_logic_vector(0 to 11)
);
end component SRF;   

component Selector12IV is
port(
        A: in std_logic_vector(0 to 11); --InstrucActual
        B: in std_logic_vector(0 to 11); --RegInst
		  C: in std_logic_vector(0 to 11); -- InstrucFunc
		  D: in std_logic_vector(0 to 11); -- RegSalida
		  Elegir: in std_logic_vector(0 to 3); -- 0 deja pasar A, 1 deja pasar B, 2 deja pasar C, 3 deja pasar D
		  
		  Salida: out std_logic_vector(0 to 11)
);
end component Selector12IV;   

component ContAsc is
port(
        Enable:in std_logic; --Contar
		  Reloj: in std_logic;
        Reset: in std_logic;
        ContadorSalida: out std_logic_vector(0 to 2)
);
end component ContAsc;

component Control is
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
end component Control; 


signal Cnt_RGE: std_logic;
signal RGE: std_logic_vector(0 to 15);
signal Cnt_RegIn: std_logic;
signal SalidaRegInst: std_logic_vector(0 to 15);
signal Cnt_Sele: std_logic_vector(0 to 1);
signal SSRS: std_logic_vector(0 to 15);
signal SelE_RegE: std_logic_vector(0 to 15);
signal Cnt_RegE: std_logic;
signal SalidaRegE: std_logic_vector(0 to 15);
signal SumRes_SelE: std_logic_vector(0 to 15);
signal Cnt_SelEnt: std_logic_vector(0 to 2);
signal Cnt_RegS: std_logic;
signal SalidaRegS: std_logic_vector(0 to 15);
signal Cnt_SelSu: std_logic_vector(0 to 1);
signal SSU_SumRes: std_logic_vector(0 to 15);
signal Cnt_SumRes: std_logic;
signal SumRes_RegB: std_logic_vector(0 to 3);
signal Comp_RegB: std_logic_vector(0 to 1);
signal CntRB: std_logic;
signal RegB_Cnt: std_logic_vector(0 to 3);
signal RBRB: std_logic_vector(0 to 3);
signal Cnt_RegB: std_logic;
signal IActual_SelI: std_logic_vector(0 to 11);
signal Cnt_SelSal: std_logic_vector(0 to 3);
signal SS_RGS: std_logic_vector(0 to 15);
signal Cnt_RGS: std_logic;
signal Cnt_SelSum: std_logic_vector(0 to 1);
signal SelSum_SumI: std_logic_vector(0 to 11);

signal SIS: std_logic_vector(0 to 11);
signal coutSI: std_logic;
signal InstFu_SelI: std_logic_vector(0 to 11);
signal Cnt_sel: std_logic_vector(0 to 1);
signal Sel_InstrucActual: std_logic_vector(0 to 11);
signal Cnt_IActual: std_logic_vector(0 to 1);
signal SRF_InstFu: std_logic_vector(0 to 11);
signal Cnt_InstFu: std_logic;
signal InstFu_SRF: std_logic_vector(0 to 11);
signal CSRF: std_logic;
signal Cnt_SelI: std_logic_vector(0 to 3);
signal SelI_RegDir: std_logic_vector(0 to 11);
signal Cnt_RegDir: std_logic;
signal Cnt_Contador: std_logic_vector(0 to 1);
signal CCnt: std_logic_vector(0 to 2);
signal RegIn_SelI: std_logic_vector(0 to 11);
signal RegInst_SelSa: std_logic_vector(0 to 15);
signal RGE_SelSa: std_logic_vector(0 to 15);
signal DireccionD: std_logic_vector(0 to 11);

signal estados: std_logic_vector(1 to 88);

begin

--0 es el MSB y 15 es el LSB

Reg_Dato_Ent: Registro16P port map(DatoIn, Reset, Clk, Cnt_RGE, RGE);
Reg_Inst: Registro16P port map(RGE, Reset, Clk, Cnt_RegIn, SalidaRegInst);
Sele_Sa: Selector15II port map(RGE_SelSa, RegInst_SelSa, Cnt_Sele, SSRS);
Reg_Entrada: Registro16P port map(SelE_RegE, Reset, Clk, Cnt_RegE, SalidaRegE);
Sel_Entrada: Selector16III port map(SumRes_SelE, RGE, RegInst_SelSa, Cnt_SelEnt, SelE_RegE);
Reg_Salida: Registro16P port map(SSRS, Reset, Clk, Cnt_RegS, SalidaRegS);
SelectSustra: SelectorComplemento port map(SalidaRegS, Cnt_SelSu, SSU_SumRes);
SumaResta: SumarRestar port map(SalidaRegE, SSU_SumRes, Cnt_SumRes, SumRes_RegB, SumRes_SelE);
Comparacion: Comparador port map(SalidaRegE, SalidaRegS, Comp_RegB);
SelRB: Selector4II port map(SumRes_RegB, Comp_RegB, CntRB, RBRB);
RegistroBanderas: RegBanderas port map(RBRB, Reset, Clk, Cnt_RegB, RegB_Cnt);
Sel_Sal: SelectorSalida port map(SalidaRegE, SalidaRegS, IActual_SelI, RegB_Cnt, Cnt_SelSal, SS_RGS);
Reg_Dato_Sal: Registro16P port map(SS_RGS, Reset, Clk, Cnt_RGS, DatoOut);
SelSumador: SelectorSumIns port map(RegIn_SelI, Cnt_SelSum, SelSum_SumI);
SumInstruc: Sumador12 port map(SelSum_SumI, IActual_SelI, '0', SIS, coutSI);
Sel: Selector12II port map(SIS, RGE(4 to 15), Cnt_sel, Sel_InstrucActual);
InstrucActual: Registro12P port map(Sel_InstrucActual, Reset, Clk, Cnt_IActual(1), IActual_SelI);
InstrucFunc: Registro12P port map(SRF_InstFu, Reset, Clk, Cnt_InstFu, InstFu_SRF);
SRFun: SRF port map(InstFu_SRF, CSRF, SRF_InstFu);
Sel_Instruccion: Selector12IV port map(SalidaRegS(4 to 15), RegIn_SelI, IActual_SelI,InstFu_SRF, Cnt_SelI, SelI_RegDir);
RegDir: Registro12P port map(SelI_RegDir, Reset, Clk, Cnt_RegDir, Direccion);
Contador: ContAsc port map(Cnt_Contador(1), Clk, Cnt_Contador(0), CCnt);
ControlT: Control port map(Inicio, Interrupcion, SalidaRegInst(4 to 5), SalidaRegInst(0 to 3), RegB_Cnt, CCnt, Clk, Reset,
Cnt_RegE, Cnt_IActual, Cnt_RegDir, Leer, Cnt_SelI, Cnt_SelSal, Cnt_RegB, Cnt_SumRes, Cnt_RegS, Cnt_SelSu, Cnt_RegIn, Escribir,
Cnt_RGE, Cnt_RGS, Cnt_SelSum, Cnt_sel, Cnt_SelEnt, Cnt_InstFu, CSRF, Cnt_Sele, CntRB, Cnt_Contador, estados);
RegIn_SelI(2 to 11) <= SalidaRegInst(6 to 15);
RegIn_SelI(0 to 1) <= "00";
RegInst_SelSa(0 to 5) <= "000000";
RegInst_SelSa(6 to 15) <= SalidaRegInst(6 to 15);
RGE_SelSa(0 to 5) <= "000000";
RGE_SelSa(6 to 15) <= RGE(6 to 15);

EstadosQ(1 to 88) <= estados(1 to 88);
--IActualQ(0 to 1) <= Comp_RegB(0 to 1);
IActualQ(0 to 15) <= SalidaRegE(0 to 15);


End ProcesadorArch;
--Definicion de la arquitectura 
--******************************************************--
--Aqui funcionamiento del Disenho1                  --
