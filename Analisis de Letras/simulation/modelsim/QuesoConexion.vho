-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "11/20/2016 21:43:00"

-- 
-- Device: Altera 10M08SAE144C8GES Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	QuesoConexion IS
    PORT (
	Inicio : IN std_logic;
	CLK : IN std_logic;
	RESET : IN std_logic;
	Letra : IN std_logic_vector(0 TO 4);
	HayLetra : IN std_logic;
	AntiReboteLetra : IN std_logic;
	FinPalabra : IN std_logic;
	Selector : IN std_logic_vector(0 TO 1);
	EnviarDatos : IN std_logic;
	AntiReboteEnviar : IN std_logic;
	Led0 : BUFFER std_logic;
	Led1 : BUFFER std_logic;
	Led2 : BUFFER std_logic;
	Led3 : BUFFER std_logic;
	EstadosControl : BUFFER std_logic_vector(0 TO 14);
	ComunicacionPC : BUFFER std_logic;
	Reloj : BUFFER std_logic
	);
END QuesoConexion;

-- Design Ports Information
-- Led0	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led1	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led2	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led3	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EstadosControl[14]	=>  Location: PIN_17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EstadosControl[13]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EstadosControl[12]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EstadosControl[11]	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EstadosControl[10]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EstadosControl[9]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EstadosControl[8]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EstadosControl[7]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EstadosControl[6]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EstadosControl[5]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EstadosControl[4]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EstadosControl[3]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EstadosControl[2]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EstadosControl[1]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EstadosControl[0]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ComunicacionPC	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reloj	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Selector[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Selector[1]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inicio	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FinPalabra	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Letra[1]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Letra[3]	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Letra[4]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Letra[2]	=>  Location: PIN_81,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Letra[0]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnviarDatos	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AntiReboteEnviar	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HayLetra	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AntiReboteLetra	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF QuesoConexion IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Inicio : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_Letra : std_logic_vector(0 TO 4);
SIGNAL ww_HayLetra : std_logic;
SIGNAL ww_AntiReboteLetra : std_logic;
SIGNAL ww_FinPalabra : std_logic;
SIGNAL ww_Selector : std_logic_vector(0 TO 1);
SIGNAL ww_EnviarDatos : std_logic;
SIGNAL ww_AntiReboteEnviar : std_logic;
SIGNAL ww_Led0 : std_logic;
SIGNAL ww_Led1 : std_logic;
SIGNAL ww_Led2 : std_logic;
SIGNAL ww_Led3 : std_logic;
SIGNAL ww_EstadosControl : std_logic_vector(0 TO 14);
SIGNAL ww_ComunicacionPC : std_logic;
SIGNAL ww_Reloj : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \Led0~output_o\ : std_logic;
SIGNAL \Led1~output_o\ : std_logic;
SIGNAL \Led2~output_o\ : std_logic;
SIGNAL \Led3~output_o\ : std_logic;
SIGNAL \EstadosControl[14]~output_o\ : std_logic;
SIGNAL \EstadosControl[13]~output_o\ : std_logic;
SIGNAL \EstadosControl[12]~output_o\ : std_logic;
SIGNAL \EstadosControl[11]~output_o\ : std_logic;
SIGNAL \EstadosControl[10]~output_o\ : std_logic;
SIGNAL \EstadosControl[9]~output_o\ : std_logic;
SIGNAL \EstadosControl[8]~output_o\ : std_logic;
SIGNAL \EstadosControl[7]~output_o\ : std_logic;
SIGNAL \EstadosControl[6]~output_o\ : std_logic;
SIGNAL \EstadosControl[5]~output_o\ : std_logic;
SIGNAL \EstadosControl[4]~output_o\ : std_logic;
SIGNAL \EstadosControl[3]~output_o\ : std_logic;
SIGNAL \EstadosControl[2]~output_o\ : std_logic;
SIGNAL \EstadosControl[1]~output_o\ : std_logic;
SIGNAL \EstadosControl[0]~output_o\ : std_logic;
SIGNAL \ComunicacionPC~output_o\ : std_logic;
SIGNAL \Reloj~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \ContadorBit|dato2~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \ContadorBit|dato1~0_combout\ : std_logic;
SIGNAL \FinPalabra~input_o\ : std_logic;
SIGNAL \HayLetra~input_o\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \AntiReboteLetra~input_o\ : std_logic;
SIGNAL \RegistroAntiReboteLetra|dato1~q\ : std_logic;
SIGNAL \Controll|comb~20_combout\ : std_logic;
SIGNAL \Inicio~input_o\ : std_logic;
SIGNAL \ContadorLetras|dato4~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \ContadorLetras|dato2~0_combout\ : std_logic;
SIGNAL \EnviarDatos~input_o\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \AntiReboteEnviar~input_o\ : std_logic;
SIGNAL \RegistroAntiReboteEnviarDatos|dato1~q\ : std_logic;
SIGNAL \Controll|comb~4_combout\ : std_logic;
SIGNAL \Controll|F14~q\ : std_logic;
SIGNAL \ContadorSelector|dato4~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \ContadorSelector|dato3~0_combout\ : std_logic;
SIGNAL \ContadorTiempos|dato1~0_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \ContadorSelector|dato2~0_combout\ : std_logic;
SIGNAL \ContadorSelector|dato1~0_combout\ : std_logic;
SIGNAL \ContadorTiempos|dato13~0_combout\ : std_logic;
SIGNAL \ContadorTiempos|dato12~0_combout\ : std_logic;
SIGNAL \ContadorTiempos|dato10~0_combout\ : std_logic;
SIGNAL \ContadorTiempos|dato9~0_combout\ : std_logic;
SIGNAL \ContadorTiempos|dato7~0_combout\ : std_logic;
SIGNAL \ContadorTiempos|dato6~0_combout\ : std_logic;
SIGNAL \ContadorTiempos|dato5~0_combout\ : std_logic;
SIGNAL \ContadorTiempos|dato3~0_combout\ : std_logic;
SIGNAL \ContadorTiempos|dato2~0_combout\ : std_logic;
SIGNAL \ContadorTiempos|comb~0_combout\ : std_logic;
SIGNAL \ContadorTiempos|dato2~q\ : std_logic;
SIGNAL \ContadorTiempos|comb~1_combout\ : std_logic;
SIGNAL \ContadorTiempos|dato3~q\ : std_logic;
SIGNAL \ContadorTiempos|dato4~0_combout\ : std_logic;
SIGNAL \ContadorTiempos|comb~2_combout\ : std_logic;
SIGNAL \ContadorTiempos|dato4~q\ : std_logic;
SIGNAL \ContadorTiempos|comb~3_combout\ : std_logic;
SIGNAL \ContadorTiempos|dato5~q\ : std_logic;
SIGNAL \ContadorTiempos|comb~4_combout\ : std_logic;
SIGNAL \ContadorTiempos|dato6~q\ : std_logic;
SIGNAL \ContadorTiempos|comb~5_combout\ : std_logic;
SIGNAL \ContadorTiempos|dato7~q\ : std_logic;
SIGNAL \ContadorTiempos|dato8~0_combout\ : std_logic;
SIGNAL \ContadorTiempos|comb~6_combout\ : std_logic;
SIGNAL \ContadorTiempos|dato8~q\ : std_logic;
SIGNAL \ContadorTiempos|comb~10_combout\ : std_logic;
SIGNAL \ContadorTiempos|comb~11_combout\ : std_logic;
SIGNAL \ContadorTiempos|dato9~q\ : std_logic;
SIGNAL \ContadorTiempos|comb~13_combout\ : std_logic;
SIGNAL \ContadorTiempos|dato10~q\ : std_logic;
SIGNAL \ContadorTiempos|dato11~0_combout\ : std_logic;
SIGNAL \ContadorTiempos|comb~12_combout\ : std_logic;
SIGNAL \ContadorTiempos|dato11~q\ : std_logic;
SIGNAL \ContadorTiempos|comb~7_combout\ : std_logic;
SIGNAL \ContadorTiempos|comb~8_combout\ : std_logic;
SIGNAL \ContadorTiempos|dato12~q\ : std_logic;
SIGNAL \ContadorTiempos|comb~9_combout\ : std_logic;
SIGNAL \ContadorTiempos|dato13~q\ : std_logic;
SIGNAL \ContadorTiempos|FinTiempo~1_combout\ : std_logic;
SIGNAL \ContadorTiempos|FinTiempo~2_combout\ : std_logic;
SIGNAL \ContadorTiempos|FinTiempo~3_combout\ : std_logic;
SIGNAL \Controll|comb~24_combout\ : std_logic;
SIGNAL \ContadorSelector|dato1~q\ : std_logic;
SIGNAL \ContadorSelector|comb~2_combout\ : std_logic;
SIGNAL \ContadorSelector|dato2~q\ : std_logic;
SIGNAL \Controll|comb~6_combout\ : std_logic;
SIGNAL \Controll|F12~q\ : std_logic;
SIGNAL \Controll|comb~5_combout\ : std_logic;
SIGNAL \Controll|F13~q\ : std_logic;
SIGNAL \Controll|Protocolo~0_combout\ : std_logic;
SIGNAL \ContadorTiempos|dato1~q\ : std_logic;
SIGNAL \ContadorTiempos|FinTiempo~0_combout\ : std_logic;
SIGNAL \ContadorSelector|comb~0_combout\ : std_logic;
SIGNAL \ContadorSelector|comb~1_combout\ : std_logic;
SIGNAL \ContadorSelector|dato3~q\ : std_logic;
SIGNAL \ContadorSelector|comb~3_combout\ : std_logic;
SIGNAL \ContadorSelector|dato4~q\ : std_logic;
SIGNAL \Controll|IncrementarCaracter~0_combout\ : std_logic;
SIGNAL \Controll|comb~8_combout\ : std_logic;
SIGNAL \Controll|F10~q\ : std_logic;
SIGNAL \Controll|comb~7_combout\ : std_logic;
SIGNAL \Controll|F11~q\ : std_logic;
SIGNAL \ContadorLetras|dato1~0_combout\ : std_logic;
SIGNAL \ContadorLetras|dato1~q\ : std_logic;
SIGNAL \ContadorLetras|comb~3_combout\ : std_logic;
SIGNAL \ContadorLetras|dato2~q\ : std_logic;
SIGNAL \ContadorLetras|dato3~0_combout\ : std_logic;
SIGNAL \ContadorLetras|comb~2_combout\ : std_logic;
SIGNAL \ContadorLetras|comb~4_combout\ : std_logic;
SIGNAL \ContadorLetras|dato3~q\ : std_logic;
SIGNAL \ContadorLetras|comb~5_combout\ : std_logic;
SIGNAL \ContadorLetras|dato4~q\ : std_logic;
SIGNAL \Controll|comb~23_combout\ : std_logic;
SIGNAL \Controll|F0~q\ : std_logic;
SIGNAL \Controll|comb~18_combout\ : std_logic;
SIGNAL \Controll|F3~q\ : std_logic;
SIGNAL \Controll|comb~9_combout\ : std_logic;
SIGNAL \Controll|comb~10_combout\ : std_logic;
SIGNAL \Controll|comb~11_combout\ : std_logic;
SIGNAL \Controll|F9~q\ : std_logic;
SIGNAL \Controll|comb~22_combout\ : std_logic;
SIGNAL \Controll|F1~q\ : std_logic;
SIGNAL \ContadorRegistro|dato3~0_combout\ : std_logic;
SIGNAL \ContadorRegistro|dato2~0_combout\ : std_logic;
SIGNAL \Controll|comb~17_combout\ : std_logic;
SIGNAL \Controll|F4~q\ : std_logic;
SIGNAL \Controll|comb~16_combout\ : std_logic;
SIGNAL \Controll|F5~q\ : std_logic;
SIGNAL \ContadorRegistro|dato1~0_combout\ : std_logic;
SIGNAL \Controll|comb~15_combout\ : std_logic;
SIGNAL \Controll|F6~feeder_combout\ : std_logic;
SIGNAL \Controll|F6~q\ : std_logic;
SIGNAL \Controll|comb~12_combout\ : std_logic;
SIGNAL \ContadorRegistro|dato1~q\ : std_logic;
SIGNAL \ContadorRegistro|comb~1_combout\ : std_logic;
SIGNAL \ContadorRegistro|dato2~q\ : std_logic;
SIGNAL \Controll|comb~13_combout\ : std_logic;
SIGNAL \Controll|F8~q\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \ContadorRegistro|comb~0_combout\ : std_logic;
SIGNAL \ContadorRegistro|dato3~q\ : std_logic;
SIGNAL \Controll|comb~19_combout\ : std_logic;
SIGNAL \Controll|comb~21_combout\ : std_logic;
SIGNAL \Controll|F2~q\ : std_logic;
SIGNAL \Controll|comb~14_combout\ : std_logic;
SIGNAL \Controll|F7~q\ : std_logic;
SIGNAL \Controll|IncrementarRegistro~0_combout\ : std_logic;
SIGNAL \ContadorBit|dato1~q\ : std_logic;
SIGNAL \ContadorBit|comb~0_combout\ : std_logic;
SIGNAL \ContadorBit|dato2~q\ : std_logic;
SIGNAL \Controll|comb~0_combout\ : std_logic;
SIGNAL \Controll|comb~1_combout\ : std_logic;
SIGNAL \Controll|comb~2_combout\ : std_logic;
SIGNAL \Controll|comb~3_combout\ : std_logic;
SIGNAL \Letra[2]~input_o\ : std_logic;
SIGNAL \Registro1|Reg1|dato2~q\ : std_logic;
SIGNAL \Registro1|Reg2|dato2~q\ : std_logic;
SIGNAL \Registro1|Reg3|dato2~feeder_combout\ : std_logic;
SIGNAL \Registro1|Reg3|dato2~q\ : std_logic;
SIGNAL \Registro1|Reg4|dato2~q\ : std_logic;
SIGNAL \Registro1|Reg5|dato2~feeder_combout\ : std_logic;
SIGNAL \Registro1|Reg5|dato2~q\ : std_logic;
SIGNAL \Registro1|Reg6|dato2~q\ : std_logic;
SIGNAL \Registro1|Reg7|dato2~q\ : std_logic;
SIGNAL \Selector[1]~input_o\ : std_logic;
SIGNAL \SelectorLetra|Mux1|Out_Mux~2_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux3|Out_Mux~6_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux1|Out_Mux~3_combout\ : std_logic;
SIGNAL \Registro1|Reg8|dato2~q\ : std_logic;
SIGNAL \SelectorLetra|Mux3|Out_Mux~7_combout\ : std_logic;
SIGNAL \Selector[0]~input_o\ : std_logic;
SIGNAL \SelectorLetra|Mux5|Out_Mux~0_combout\ : std_logic;
SIGNAL \Registro3|Reg1|dato2~q\ : std_logic;
SIGNAL \Registro3|Reg2|dato2~feeder_combout\ : std_logic;
SIGNAL \Registro3|Reg2|dato2~q\ : std_logic;
SIGNAL \Registro3|Reg3|dato2~feeder_combout\ : std_logic;
SIGNAL \Registro3|Reg3|dato2~q\ : std_logic;
SIGNAL \Registro3|Reg4|dato2~feeder_combout\ : std_logic;
SIGNAL \Registro3|Reg4|dato2~q\ : std_logic;
SIGNAL \Registro3|Reg5|dato2~feeder_combout\ : std_logic;
SIGNAL \Registro3|Reg5|dato2~q\ : std_logic;
SIGNAL \Registro3|Reg6|dato2~q\ : std_logic;
SIGNAL \Registro3|Reg7|dato2~q\ : std_logic;
SIGNAL \Registro3|Reg8|dato2~q\ : std_logic;
SIGNAL \SelectorLetra|Mux3|Out_Mux~4_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux3|Out_Mux~3_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux3|Out_Mux~5_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux3|Out_Mux~8_combout\ : std_logic;
SIGNAL \Registro2|Reg1|dato2~feeder_combout\ : std_logic;
SIGNAL \Registro2|Reg1|dato2~q\ : std_logic;
SIGNAL \Registro2|Reg2|dato2~feeder_combout\ : std_logic;
SIGNAL \Registro2|Reg2|dato2~q\ : std_logic;
SIGNAL \Registro2|Reg3|dato2~feeder_combout\ : std_logic;
SIGNAL \Registro2|Reg3|dato2~q\ : std_logic;
SIGNAL \Registro2|Reg4|dato2~feeder_combout\ : std_logic;
SIGNAL \Registro2|Reg4|dato2~q\ : std_logic;
SIGNAL \Registro2|Reg5|dato2~q\ : std_logic;
SIGNAL \SelectorLetra|Mux3|Out_Mux~17_combout\ : std_logic;
SIGNAL \Registro2|Reg6|dato2~q\ : std_logic;
SIGNAL \Registro2|Reg7|dato2~q\ : std_logic;
SIGNAL \Registro2|Reg8|dato2~q\ : std_logic;
SIGNAL \SelectorLetra|Mux3|Out_Mux~14_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux3|Out_Mux~15_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux3|Out_Mux~16_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux1|Out_Mux~0_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux3|Out_Mux~18_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux3|Out_Mux~0_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux3|Out_Mux~19_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux3|Out_Mux~1_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux3|Out_Mux~9_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux1|Out_Mux~4_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux3|Out_Mux~10_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux3|Out_Mux~11_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux3|Out_Mux~12_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux3|Out_Mux~13_combout\ : std_logic;
SIGNAL \ComunicacionPC~3_combout\ : std_logic;
SIGNAL \ComunicacionPC~4_combout\ : std_logic;
SIGNAL \Letra[0]~input_o\ : std_logic;
SIGNAL \Registro3|Reg1|dato0~q\ : std_logic;
SIGNAL \Registro3|Reg2|dato0~feeder_combout\ : std_logic;
SIGNAL \Registro3|Reg2|dato0~q\ : std_logic;
SIGNAL \Registro3|Reg3|dato0~feeder_combout\ : std_logic;
SIGNAL \Registro3|Reg3|dato0~q\ : std_logic;
SIGNAL \Registro3|Reg4|dato0~feeder_combout\ : std_logic;
SIGNAL \Registro3|Reg4|dato0~q\ : std_logic;
SIGNAL \Registro3|Reg5|dato0~feeder_combout\ : std_logic;
SIGNAL \Registro3|Reg5|dato0~q\ : std_logic;
SIGNAL \Registro3|Reg6|dato0~q\ : std_logic;
SIGNAL \SelectorLetra|Mux1|Out_Mux~11_combout\ : std_logic;
SIGNAL \Registro1|Reg1|dato0~q\ : std_logic;
SIGNAL \Registro1|Reg2|dato0~q\ : std_logic;
SIGNAL \Registro1|Reg3|dato0~q\ : std_logic;
SIGNAL \Registro1|Reg4|dato0~feeder_combout\ : std_logic;
SIGNAL \Registro1|Reg4|dato0~q\ : std_logic;
SIGNAL \Registro1|Reg5|dato0~feeder_combout\ : std_logic;
SIGNAL \Registro1|Reg5|dato0~q\ : std_logic;
SIGNAL \Registro1|Reg6|dato0~q\ : std_logic;
SIGNAL \SelectorLetra|Mux1|Out_Mux~12_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux1|Out_Mux~13_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux1|Out_Mux~14_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux1|Out_Mux~15_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux1|Out_Mux~16_combout\ : std_logic;
SIGNAL \Registro2|Reg1|dato0~feeder_combout\ : std_logic;
SIGNAL \Registro2|Reg1|dato0~q\ : std_logic;
SIGNAL \Registro2|Reg2|dato0~q\ : std_logic;
SIGNAL \Registro2|Reg3|dato0~feeder_combout\ : std_logic;
SIGNAL \Registro2|Reg3|dato0~q\ : std_logic;
SIGNAL \Registro2|Reg4|dato0~feeder_combout\ : std_logic;
SIGNAL \Registro2|Reg4|dato0~q\ : std_logic;
SIGNAL \Registro2|Reg5|dato0~q\ : std_logic;
SIGNAL \SelectorLetra|Mux1|Out_Mux~8_combout\ : std_logic;
SIGNAL \Registro2|Reg6|dato0~q\ : std_logic;
SIGNAL \Registro2|Reg7|dato0~q\ : std_logic;
SIGNAL \SelectorLetra|Mux1|Out_Mux~5_combout\ : std_logic;
SIGNAL \Registro2|Reg8|dato0~q\ : std_logic;
SIGNAL \SelectorLetra|Mux1|Out_Mux~6_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux1|Out_Mux~7_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux1|Out_Mux~9_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux1|Out_Mux~10_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux1|Out_Mux~1_combout\ : std_logic;
SIGNAL \Registro3|Reg7|dato0~q\ : std_logic;
SIGNAL \Registro3|Reg8|dato0~q\ : std_logic;
SIGNAL \SelectorLetra|Mux1|Out_Mux~18_combout\ : std_logic;
SIGNAL \Registro1|Reg7|dato0~q\ : std_logic;
SIGNAL \Registro1|Reg8|dato0~q\ : std_logic;
SIGNAL \SelectorLetra|Mux1|Out_Mux~20_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux1|Out_Mux~19_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux3|Out_Mux~2_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux1|Out_Mux~17_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux1|Out_Mux~21_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux1|Out_Mux~22_combout\ : std_logic;
SIGNAL \ComunicacionPC~5_combout\ : std_logic;
SIGNAL \Letra[1]~input_o\ : std_logic;
SIGNAL \Registro1|Reg1|dato1~q\ : std_logic;
SIGNAL \Registro1|Reg2|dato1~q\ : std_logic;
SIGNAL \Registro1|Reg3|dato1~feeder_combout\ : std_logic;
SIGNAL \Registro1|Reg3|dato1~q\ : std_logic;
SIGNAL \Registro1|Reg4|dato1~feeder_combout\ : std_logic;
SIGNAL \Registro1|Reg4|dato1~q\ : std_logic;
SIGNAL \Registro1|Reg5|dato1~q\ : std_logic;
SIGNAL \Registro1|Reg6|dato1~q\ : std_logic;
SIGNAL \Registro1|Reg7|dato1~q\ : std_logic;
SIGNAL \Registro1|Reg8|dato1~q\ : std_logic;
SIGNAL \SelectorLetra|Mux2|Out_Mux~15_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux2|Out_Mux~14_combout\ : std_logic;
SIGNAL \Registro3|Reg1|dato1~q\ : std_logic;
SIGNAL \Registro3|Reg2|dato1~feeder_combout\ : std_logic;
SIGNAL \Registro3|Reg2|dato1~q\ : std_logic;
SIGNAL \Registro3|Reg3|dato1~q\ : std_logic;
SIGNAL \Registro3|Reg4|dato1~feeder_combout\ : std_logic;
SIGNAL \Registro3|Reg4|dato1~q\ : std_logic;
SIGNAL \Registro3|Reg5|dato1~feeder_combout\ : std_logic;
SIGNAL \Registro3|Reg5|dato1~q\ : std_logic;
SIGNAL \Registro3|Reg6|dato1~feeder_combout\ : std_logic;
SIGNAL \Registro3|Reg6|dato1~q\ : std_logic;
SIGNAL \Registro3|Reg7|dato1~q\ : std_logic;
SIGNAL \SelectorLetra|Mux2|Out_Mux~12_combout\ : std_logic;
SIGNAL \Registro3|Reg8|dato1~q\ : std_logic;
SIGNAL \SelectorLetra|Mux2|Out_Mux~13_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux2|Out_Mux~16_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux2|Out_Mux~9_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux2|Out_Mux~10_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux2|Out_Mux~6_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux2|Out_Mux~7_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux2|Out_Mux~8_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux2|Out_Mux~11_combout\ : std_logic;
SIGNAL \Registro2|Reg1|dato1~q\ : std_logic;
SIGNAL \Registro2|Reg2|dato1~feeder_combout\ : std_logic;
SIGNAL \Registro2|Reg2|dato1~q\ : std_logic;
SIGNAL \Registro2|Reg3|dato1~feeder_combout\ : std_logic;
SIGNAL \Registro2|Reg3|dato1~q\ : std_logic;
SIGNAL \Registro2|Reg4|dato1~feeder_combout\ : std_logic;
SIGNAL \Registro2|Reg4|dato1~q\ : std_logic;
SIGNAL \Registro2|Reg5|dato1~q\ : std_logic;
SIGNAL \Registro2|Reg6|dato1~q\ : std_logic;
SIGNAL \Registro2|Reg7|dato1~q\ : std_logic;
SIGNAL \Registro2|Reg8|dato1~q\ : std_logic;
SIGNAL \SelectorLetra|Mux2|Out_Mux~0_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux2|Out_Mux~1_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux2|Out_Mux~2_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux2|Out_Mux~4_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux2|Out_Mux~3_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux2|Out_Mux~5_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux2|Out_Mux~17_combout\ : std_logic;
SIGNAL \SelectorBits|Mux1|Out_Mux~0_combout\ : std_logic;
SIGNAL \ComunicacionPC~0_combout\ : std_logic;
SIGNAL \ComunicacionPC~6_combout\ : std_logic;
SIGNAL \Letra[4]~input_o\ : std_logic;
SIGNAL \Registro3|Reg1|dato4~q\ : std_logic;
SIGNAL \Registro3|Reg2|dato4~feeder_combout\ : std_logic;
SIGNAL \Registro3|Reg2|dato4~q\ : std_logic;
SIGNAL \Registro3|Reg3|dato4~feeder_combout\ : std_logic;
SIGNAL \Registro3|Reg3|dato4~q\ : std_logic;
SIGNAL \Registro3|Reg4|dato4~feeder_combout\ : std_logic;
SIGNAL \Registro3|Reg4|dato4~q\ : std_logic;
SIGNAL \Registro3|Reg5|dato4~feeder_combout\ : std_logic;
SIGNAL \Registro3|Reg5|dato4~q\ : std_logic;
SIGNAL \Registro3|Reg6|dato4~q\ : std_logic;
SIGNAL \Registro3|Reg7|dato4~q\ : std_logic;
SIGNAL \SelectorLetra|Mux5|Out_Mux~1_combout\ : std_logic;
SIGNAL \Registro3|Reg8|dato4~q\ : std_logic;
SIGNAL \SelectorLetra|Mux5|Out_Mux~2_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux5|Out_Mux~3_combout\ : std_logic;
SIGNAL \Registro1|Reg1|dato4~q\ : std_logic;
SIGNAL \Registro1|Reg2|dato4~q\ : std_logic;
SIGNAL \Registro1|Reg3|dato4~q\ : std_logic;
SIGNAL \Registro1|Reg4|dato4~feeder_combout\ : std_logic;
SIGNAL \Registro1|Reg4|dato4~q\ : std_logic;
SIGNAL \Registro1|Reg5|dato4~feeder_combout\ : std_logic;
SIGNAL \Registro1|Reg5|dato4~q\ : std_logic;
SIGNAL \Registro1|Reg6|dato4~q\ : std_logic;
SIGNAL \Registro1|Reg7|dato4~q\ : std_logic;
SIGNAL \Registro1|Reg8|dato4~q\ : std_logic;
SIGNAL \SelectorLetra|Mux5|Out_Mux~5_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux5|Out_Mux~4_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux5|Out_Mux~6_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux5|Out_Mux~7_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux5|Out_Mux~8_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux5|Out_Mux~9_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux5|Out_Mux~10_combout\ : std_logic;
SIGNAL \ComunicacionPC~1_combout\ : std_logic;
SIGNAL \Registro2|Reg1|dato4~q\ : std_logic;
SIGNAL \Registro2|Reg2|dato4~q\ : std_logic;
SIGNAL \Registro2|Reg3|dato4~feeder_combout\ : std_logic;
SIGNAL \Registro2|Reg3|dato4~q\ : std_logic;
SIGNAL \Registro2|Reg4|dato4~q\ : std_logic;
SIGNAL \Registro2|Reg5|dato4~q\ : std_logic;
SIGNAL \Registro2|Reg6|dato4~q\ : std_logic;
SIGNAL \SelectorLetra|Mux5|Out_Mux~15_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux5|Out_Mux~14_combout\ : std_logic;
SIGNAL \Registro2|Reg7|dato4~q\ : std_logic;
SIGNAL \Registro2|Reg8|dato4~q\ : std_logic;
SIGNAL \SelectorLetra|Mux5|Out_Mux~12_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux5|Out_Mux~11_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux5|Out_Mux~13_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux5|Out_Mux~16_combout\ : std_logic;
SIGNAL \ComunicacionPC~2_combout\ : std_logic;
SIGNAL \Letra[3]~input_o\ : std_logic;
SIGNAL \Registro2|Reg1|dato3~feeder_combout\ : std_logic;
SIGNAL \Registro2|Reg1|dato3~q\ : std_logic;
SIGNAL \Registro2|Reg2|dato3~feeder_combout\ : std_logic;
SIGNAL \Registro2|Reg2|dato3~q\ : std_logic;
SIGNAL \Registro2|Reg3|dato3~feeder_combout\ : std_logic;
SIGNAL \Registro2|Reg3|dato3~q\ : std_logic;
SIGNAL \Registro2|Reg4|dato3~feeder_combout\ : std_logic;
SIGNAL \Registro2|Reg4|dato3~q\ : std_logic;
SIGNAL \Registro2|Reg5|dato3~q\ : std_logic;
SIGNAL \Registro2|Reg6|dato3~q\ : std_logic;
SIGNAL \SelectorLetra|Mux4|Out_Mux~4_combout\ : std_logic;
SIGNAL \Registro2|Reg7|dato3~q\ : std_logic;
SIGNAL \Registro2|Reg8|dato3~q\ : std_logic;
SIGNAL \SelectorLetra|Mux4|Out_Mux~0_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux4|Out_Mux~1_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux4|Out_Mux~2_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux4|Out_Mux~3_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux4|Out_Mux~5_combout\ : std_logic;
SIGNAL \Registro1|Reg1|dato3~q\ : std_logic;
SIGNAL \Registro1|Reg2|dato3~q\ : std_logic;
SIGNAL \Registro1|Reg3|dato3~feeder_combout\ : std_logic;
SIGNAL \Registro1|Reg3|dato3~q\ : std_logic;
SIGNAL \Registro1|Reg4|dato3~feeder_combout\ : std_logic;
SIGNAL \Registro1|Reg4|dato3~q\ : std_logic;
SIGNAL \Registro1|Reg5|dato3~feeder_combout\ : std_logic;
SIGNAL \Registro1|Reg5|dato3~q\ : std_logic;
SIGNAL \Registro3|Reg1|dato3~q\ : std_logic;
SIGNAL \Registro3|Reg2|dato3~feeder_combout\ : std_logic;
SIGNAL \Registro3|Reg2|dato3~q\ : std_logic;
SIGNAL \Registro3|Reg3|dato3~q\ : std_logic;
SIGNAL \Registro3|Reg4|dato3~q\ : std_logic;
SIGNAL \Registro3|Reg5|dato3~q\ : std_logic;
SIGNAL \SelectorLetra|Mux4|Out_Mux~6_combout\ : std_logic;
SIGNAL \Registro3|Reg6|dato3~q\ : std_logic;
SIGNAL \Registro1|Reg6|dato3~q\ : std_logic;
SIGNAL \SelectorLetra|Mux4|Out_Mux~7_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux4|Out_Mux~8_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux4|Out_Mux~9_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux4|Out_Mux~10_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux4|Out_Mux~11_combout\ : std_logic;
SIGNAL \Registro3|Reg7|dato3~q\ : std_logic;
SIGNAL \SelectorLetra|Mux4|Out_Mux~12_combout\ : std_logic;
SIGNAL \Registro1|Reg7|dato3~q\ : std_logic;
SIGNAL \Registro1|Reg8|dato3~q\ : std_logic;
SIGNAL \SelectorLetra|Mux4|Out_Mux~15_combout\ : std_logic;
SIGNAL \Registro3|Reg8|dato3~q\ : std_logic;
SIGNAL \SelectorLetra|Mux4|Out_Mux~13_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux4|Out_Mux~14_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux4|Out_Mux~16_combout\ : std_logic;
SIGNAL \SelectorLetra|Mux4|Out_Mux~17_combout\ : std_logic;
SIGNAL \ComunicacionPC~8_combout\ : std_logic;
SIGNAL \ComunicacionPC~9_combout\ : std_logic;
SIGNAL \ComunicacionPC~7_combout\ : std_logic;
SIGNAL \Controll|ALT_INV_F0~q\ : std_logic;
SIGNAL \Controll|ALT_INV_F1~q\ : std_logic;
SIGNAL \Controll|ALT_INV_F14~q\ : std_logic;
SIGNAL \Controll|ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \Controll|ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \Controll|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_AntiReboteLetra~input_o\ : std_logic;
SIGNAL \ALT_INV_AntiReboteEnviar~input_o\ : std_logic;
SIGNAL \ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;

BEGIN

ww_Inicio <= Inicio;
ww_CLK <= CLK;
ww_RESET <= RESET;
ww_Letra <= Letra;
ww_HayLetra <= HayLetra;
ww_AntiReboteLetra <= AntiReboteLetra;
ww_FinPalabra <= FinPalabra;
ww_Selector <= Selector;
ww_EnviarDatos <= EnviarDatos;
ww_AntiReboteEnviar <= AntiReboteEnviar;
Led0 <= ww_Led0;
Led1 <= ww_Led1;
Led2 <= ww_Led2;
Led3 <= ww_Led3;
EstadosControl <= ww_EstadosControl;
ComunicacionPC <= ww_ComunicacionPC;
Reloj <= ww_Reloj;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\Controll|ALT_INV_F0~q\ <= NOT \Controll|F0~q\;
\Controll|ALT_INV_F1~q\ <= NOT \Controll|F1~q\;
\Controll|ALT_INV_F14~q\ <= NOT \Controll|F14~q\;
\Controll|ALT_INV_comb~3_combout\ <= NOT \Controll|comb~3_combout\;
\Controll|ALT_INV_comb~2_combout\ <= NOT \Controll|comb~2_combout\;
\Controll|ALT_INV_comb~1_combout\ <= NOT \Controll|comb~1_combout\;
\ALT_INV_AntiReboteLetra~input_o\ <= NOT \AntiReboteLetra~input_o\;
\ALT_INV_AntiReboteEnviar~input_o\ <= NOT \AntiReboteEnviar~input_o\;
\ALT_INV_comb~4_combout\ <= NOT \comb~4_combout\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;

-- Location: LCCOMB_X11_Y13_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X6_Y10_N23
\Led0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Controll|comb~0_combout\,
	devoe => ww_devoe,
	o => \Led0~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\Led1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Controll|ALT_INV_comb~1_combout\,
	devoe => ww_devoe,
	o => \Led1~output_o\);

-- Location: IOOBUF_X3_Y10_N9
\Led2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Controll|ALT_INV_comb~2_combout\,
	devoe => ww_devoe,
	o => \Led2~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\Led3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Controll|ALT_INV_comb~3_combout\,
	devoe => ww_devoe,
	o => \Led3~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\EstadosControl[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Controll|ALT_INV_F14~q\,
	devoe => ww_devoe,
	o => \EstadosControl[14]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\EstadosControl[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Controll|F13~q\,
	devoe => ww_devoe,
	o => \EstadosControl[13]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\EstadosControl[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Controll|F12~q\,
	devoe => ww_devoe,
	o => \EstadosControl[12]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\EstadosControl[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Controll|F11~q\,
	devoe => ww_devoe,
	o => \EstadosControl[11]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\EstadosControl[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Controll|F10~q\,
	devoe => ww_devoe,
	o => \EstadosControl[10]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\EstadosControl[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Controll|F9~q\,
	devoe => ww_devoe,
	o => \EstadosControl[9]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\EstadosControl[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Controll|F8~q\,
	devoe => ww_devoe,
	o => \EstadosControl[8]~output_o\);

-- Location: IOOBUF_X17_Y0_N2
\EstadosControl[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Controll|F7~q\,
	devoe => ww_devoe,
	o => \EstadosControl[7]~output_o\);

-- Location: IOOBUF_X15_Y0_N16
\EstadosControl[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Controll|F6~q\,
	devoe => ww_devoe,
	o => \EstadosControl[6]~output_o\);

-- Location: IOOBUF_X15_Y0_N23
\EstadosControl[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Controll|F5~q\,
	devoe => ww_devoe,
	o => \EstadosControl[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\EstadosControl[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Controll|F4~q\,
	devoe => ww_devoe,
	o => \EstadosControl[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\EstadosControl[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Controll|F3~q\,
	devoe => ww_devoe,
	o => \EstadosControl[3]~output_o\);

-- Location: IOOBUF_X6_Y0_N16
\EstadosControl[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Controll|F2~q\,
	devoe => ww_devoe,
	o => \EstadosControl[2]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\EstadosControl[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Controll|ALT_INV_F1~q\,
	devoe => ww_devoe,
	o => \EstadosControl[1]~output_o\);

-- Location: IOOBUF_X17_Y0_N30
\EstadosControl[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Controll|ALT_INV_F0~q\,
	devoe => ww_devoe,
	o => \EstadosControl[0]~output_o\);

-- Location: IOOBUF_X31_Y1_N23
\ComunicacionPC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ComunicacionPC~7_combout\,
	devoe => ww_devoe,
	o => \ComunicacionPC~output_o\);

-- Location: IOOBUF_X19_Y25_N9
\Reloj~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLK~input_o\,
	devoe => ww_devoe,
	o => \Reloj~output_o\);

-- Location: IOIBUF_X0_Y7_N22
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X13_Y10_N16
\ContadorBit|dato2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorBit|dato2~0_combout\ = !\ContadorBit|dato2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorBit|dato2~q\,
	combout => \ContadorBit|dato2~0_combout\);

-- Location: IOIBUF_X11_Y25_N15
\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: LCCOMB_X14_Y10_N28
\ContadorBit|dato1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorBit|dato1~0_combout\ = !\ContadorBit|dato1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorBit|dato1~q\,
	combout => \ContadorBit|dato1~0_combout\);

-- Location: IOIBUF_X29_Y0_N8
\FinPalabra~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FinPalabra,
	o => \FinPalabra~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\HayLetra~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HayLetra,
	o => \HayLetra~input_o\);

-- Location: LCCOMB_X22_Y6_N0
\comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (\RegistroAntiReboteLetra|dato1~q\) # (\HayLetra~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegistroAntiReboteLetra|dato1~q\,
	datad => \HayLetra~input_o\,
	combout => \comb~5_combout\);

-- Location: IOIBUF_X27_Y0_N22
\AntiReboteLetra~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AntiReboteLetra,
	o => \AntiReboteLetra~input_o\);

-- Location: FF_X22_Y6_N1
\RegistroAntiReboteLetra|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \comb~5_combout\,
	clrn => \ALT_INV_AntiReboteLetra~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistroAntiReboteLetra|dato1~q\);

-- Location: LCCOMB_X14_Y6_N12
\Controll|comb~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~20_combout\ = (!\Controll|IncrementarRegistro~0_combout\ & ((\FinPalabra~input_o\) # ((\RegistroAntiReboteLetra|dato1~q\) # (!\Controll|F2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FinPalabra~input_o\,
	datab => \Controll|IncrementarRegistro~0_combout\,
	datac => \Controll|F2~q\,
	datad => \RegistroAntiReboteLetra|dato1~q\,
	combout => \Controll|comb~20_combout\);

-- Location: IOIBUF_X15_Y25_N15
\Inicio~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inicio,
	o => \Inicio~input_o\);

-- Location: LCCOMB_X15_Y10_N30
\ContadorLetras|dato4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorLetras|dato4~0_combout\ = !\ContadorLetras|dato4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorLetras|dato4~q\,
	combout => \ContadorLetras|dato4~0_combout\);

-- Location: LCCOMB_X15_Y10_N24
\comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\Controll|F9~q\) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \Controll|F9~q\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X16_Y10_N16
\ContadorLetras|dato2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorLetras|dato2~0_combout\ = !\ContadorLetras|dato2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorLetras|dato2~q\,
	combout => \ContadorLetras|dato2~0_combout\);

-- Location: IOIBUF_X27_Y0_N1
\EnviarDatos~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EnviarDatos,
	o => \EnviarDatos~input_o\);

-- Location: LCCOMB_X19_Y10_N30
\comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\RegistroAntiReboteEnviarDatos|dato1~q\) # (\EnviarDatos~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegistroAntiReboteEnviarDatos|dato1~q\,
	datad => \EnviarDatos~input_o\,
	combout => \comb~2_combout\);

-- Location: IOIBUF_X27_Y0_N29
\AntiReboteEnviar~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AntiReboteEnviar,
	o => \AntiReboteEnviar~input_o\);

-- Location: FF_X19_Y10_N31
\RegistroAntiReboteEnviarDatos|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \comb~2_combout\,
	clrn => \ALT_INV_AntiReboteEnviar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistroAntiReboteEnviarDatos|dato1~q\);

-- Location: LCCOMB_X19_Y10_N0
\Controll|comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~4_combout\ = ((\Controll|F14~q\ & ((!\Controll|F9~q\) # (!\Inicio~input_o\)))) # (!\RegistroAntiReboteEnviarDatos|dato1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegistroAntiReboteEnviarDatos|dato1~q\,
	datab => \Inicio~input_o\,
	datac => \Controll|F14~q\,
	datad => \Controll|F9~q\,
	combout => \Controll|comb~4_combout\);

-- Location: FF_X19_Y10_N1
\Controll|F14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Controll|comb~4_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controll|F14~q\);

-- Location: LCCOMB_X16_Y14_N30
\ContadorSelector|dato4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorSelector|dato4~0_combout\ = !\ContadorSelector|dato4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorSelector|dato4~q\,
	combout => \ContadorSelector|dato4~0_combout\);

-- Location: LCCOMB_X15_Y14_N8
\comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\Controll|F10~q\) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datad => \Controll|F10~q\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X15_Y14_N30
\ContadorSelector|dato3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorSelector|dato3~0_combout\ = !\ContadorSelector|dato3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorSelector|dato3~q\,
	combout => \ContadorSelector|dato3~0_combout\);

-- Location: LCCOMB_X14_Y12_N14
\ContadorTiempos|dato1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|dato1~0_combout\ = !\ContadorTiempos|dato1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorTiempos|dato1~q\,
	combout => \ContadorTiempos|dato1~0_combout\);

-- Location: LCCOMB_X15_Y10_N2
\comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\Controll|F11~q\) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \Controll|F11~q\,
	combout => \comb~3_combout\);

-- Location: LCCOMB_X16_Y14_N28
\ContadorSelector|dato2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorSelector|dato2~0_combout\ = !\ContadorSelector|dato2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorSelector|dato2~q\,
	combout => \ContadorSelector|dato2~0_combout\);

-- Location: LCCOMB_X14_Y14_N8
\ContadorSelector|dato1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorSelector|dato1~0_combout\ = !\ContadorSelector|dato1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorSelector|dato1~q\,
	combout => \ContadorSelector|dato1~0_combout\);

-- Location: LCCOMB_X16_Y12_N20
\ContadorTiempos|dato13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|dato13~0_combout\ = !\ContadorTiempos|dato13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorTiempos|dato13~q\,
	combout => \ContadorTiempos|dato13~0_combout\);

-- Location: LCCOMB_X16_Y12_N30
\ContadorTiempos|dato12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|dato12~0_combout\ = !\ContadorTiempos|dato12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorTiempos|dato12~q\,
	combout => \ContadorTiempos|dato12~0_combout\);

-- Location: LCCOMB_X18_Y12_N30
\ContadorTiempos|dato10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|dato10~0_combout\ = !\ContadorTiempos|dato10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorTiempos|dato10~q\,
	combout => \ContadorTiempos|dato10~0_combout\);

-- Location: LCCOMB_X15_Y11_N12
\ContadorTiempos|dato9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|dato9~0_combout\ = !\ContadorTiempos|dato9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ContadorTiempos|dato9~q\,
	combout => \ContadorTiempos|dato9~0_combout\);

-- Location: LCCOMB_X17_Y12_N14
\ContadorTiempos|dato7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|dato7~0_combout\ = !\ContadorTiempos|dato7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorTiempos|dato7~q\,
	combout => \ContadorTiempos|dato7~0_combout\);

-- Location: LCCOMB_X15_Y13_N30
\ContadorTiempos|dato6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|dato6~0_combout\ = !\ContadorTiempos|dato6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorTiempos|dato6~q\,
	combout => \ContadorTiempos|dato6~0_combout\);

-- Location: LCCOMB_X17_Y12_N28
\ContadorTiempos|dato5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|dato5~0_combout\ = !\ContadorTiempos|dato5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorTiempos|dato5~q\,
	combout => \ContadorTiempos|dato5~0_combout\);

-- Location: LCCOMB_X15_Y13_N24
\ContadorTiempos|dato3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|dato3~0_combout\ = !\ContadorTiempos|dato3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorTiempos|dato3~q\,
	combout => \ContadorTiempos|dato3~0_combout\);

-- Location: LCCOMB_X13_Y12_N16
\ContadorTiempos|dato2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|dato2~0_combout\ = !\ContadorTiempos|dato2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorTiempos|dato2~q\,
	combout => \ContadorTiempos|dato2~0_combout\);

-- Location: LCCOMB_X14_Y12_N22
\ContadorTiempos|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|comb~0_combout\ = (\ContadorTiempos|dato1~q\ & ((\Controll|F12~q\) # (\Controll|F13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controll|F12~q\,
	datac => \ContadorTiempos|dato1~q\,
	datad => \Controll|F13~q\,
	combout => \ContadorTiempos|comb~0_combout\);

-- Location: FF_X13_Y12_N17
\ContadorTiempos|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorTiempos|dato2~0_combout\,
	clrn => \ALT_INV_comb~3_combout\,
	ena => \ContadorTiempos|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorTiempos|dato2~q\);

-- Location: LCCOMB_X14_Y12_N24
\ContadorTiempos|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|comb~1_combout\ = (\ContadorTiempos|dato2~q\ & (\ContadorTiempos|dato1~q\ & ((\Controll|F12~q\) # (\Controll|F13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorTiempos|dato2~q\,
	datab => \ContadorTiempos|dato1~q\,
	datac => \Controll|F12~q\,
	datad => \Controll|F13~q\,
	combout => \ContadorTiempos|comb~1_combout\);

-- Location: FF_X15_Y13_N25
\ContadorTiempos|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorTiempos|dato3~0_combout\,
	clrn => \ALT_INV_comb~3_combout\,
	ena => \ContadorTiempos|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorTiempos|dato3~q\);

-- Location: LCCOMB_X15_Y12_N0
\ContadorTiempos|dato4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|dato4~0_combout\ = !\ContadorTiempos|dato4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorTiempos|dato4~q\,
	combout => \ContadorTiempos|dato4~0_combout\);

-- Location: LCCOMB_X15_Y12_N16
\ContadorTiempos|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|comb~2_combout\ = (\ContadorTiempos|comb~1_combout\ & \ContadorTiempos|dato3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ContadorTiempos|comb~1_combout\,
	datac => \ContadorTiempos|dato3~q\,
	combout => \ContadorTiempos|comb~2_combout\);

-- Location: FF_X15_Y12_N1
\ContadorTiempos|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorTiempos|dato4~0_combout\,
	clrn => \ALT_INV_comb~3_combout\,
	ena => \ContadorTiempos|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorTiempos|dato4~q\);

-- Location: LCCOMB_X14_Y12_N26
\ContadorTiempos|comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|comb~3_combout\ = (\ContadorTiempos|dato3~q\ & (\ContadorTiempos|dato4~q\ & \ContadorTiempos|comb~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorTiempos|dato3~q\,
	datab => \ContadorTiempos|dato4~q\,
	datac => \ContadorTiempos|comb~1_combout\,
	combout => \ContadorTiempos|comb~3_combout\);

-- Location: FF_X17_Y12_N29
\ContadorTiempos|dato5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorTiempos|dato5~0_combout\,
	clrn => \ALT_INV_comb~3_combout\,
	ena => \ContadorTiempos|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorTiempos|dato5~q\);

-- Location: LCCOMB_X15_Y12_N14
\ContadorTiempos|comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|comb~4_combout\ = (\ContadorTiempos|dato5~q\ & (\ContadorTiempos|dato4~q\ & (\ContadorTiempos|dato3~q\ & \ContadorTiempos|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorTiempos|dato5~q\,
	datab => \ContadorTiempos|dato4~q\,
	datac => \ContadorTiempos|dato3~q\,
	datad => \ContadorTiempos|comb~1_combout\,
	combout => \ContadorTiempos|comb~4_combout\);

-- Location: FF_X15_Y13_N31
\ContadorTiempos|dato6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorTiempos|dato6~0_combout\,
	clrn => \ALT_INV_comb~3_combout\,
	ena => \ContadorTiempos|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorTiempos|dato6~q\);

-- Location: LCCOMB_X16_Y12_N16
\ContadorTiempos|comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|comb~5_combout\ = (\ContadorTiempos|dato6~q\ & \ContadorTiempos|comb~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorTiempos|dato6~q\,
	datad => \ContadorTiempos|comb~4_combout\,
	combout => \ContadorTiempos|comb~5_combout\);

-- Location: FF_X17_Y12_N15
\ContadorTiempos|dato7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorTiempos|dato7~0_combout\,
	clrn => \ALT_INV_comb~3_combout\,
	ena => \ContadorTiempos|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorTiempos|dato7~q\);

-- Location: LCCOMB_X15_Y12_N20
\ContadorTiempos|dato8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|dato8~0_combout\ = !\ContadorTiempos|dato8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorTiempos|dato8~q\,
	combout => \ContadorTiempos|dato8~0_combout\);

-- Location: LCCOMB_X15_Y12_N12
\ContadorTiempos|comb~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|comb~6_combout\ = (\ContadorTiempos|dato6~q\ & (\ContadorTiempos|comb~4_combout\ & \ContadorTiempos|dato7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorTiempos|dato6~q\,
	datac => \ContadorTiempos|comb~4_combout\,
	datad => \ContadorTiempos|dato7~q\,
	combout => \ContadorTiempos|comb~6_combout\);

-- Location: FF_X15_Y12_N21
\ContadorTiempos|dato8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorTiempos|dato8~0_combout\,
	clrn => \ALT_INV_comb~3_combout\,
	ena => \ContadorTiempos|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorTiempos|dato8~q\);

-- Location: LCCOMB_X14_Y12_N16
\ContadorTiempos|comb~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|comb~10_combout\ = (\ContadorTiempos|dato8~q\ & (\ContadorTiempos|dato4~q\ & (\ContadorTiempos|dato5~q\ & \ContadorTiempos|dato3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorTiempos|dato8~q\,
	datab => \ContadorTiempos|dato4~q\,
	datac => \ContadorTiempos|dato5~q\,
	datad => \ContadorTiempos|dato3~q\,
	combout => \ContadorTiempos|comb~10_combout\);

-- Location: LCCOMB_X14_Y12_N30
\ContadorTiempos|comb~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|comb~11_combout\ = (\ContadorTiempos|dato7~q\ & (\ContadorTiempos|dato6~q\ & (\ContadorTiempos|comb~1_combout\ & \ContadorTiempos|comb~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorTiempos|dato7~q\,
	datab => \ContadorTiempos|dato6~q\,
	datac => \ContadorTiempos|comb~1_combout\,
	datad => \ContadorTiempos|comb~10_combout\,
	combout => \ContadorTiempos|comb~11_combout\);

-- Location: FF_X14_Y11_N17
\ContadorTiempos|dato9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ContadorTiempos|dato9~0_combout\,
	clrn => \ALT_INV_comb~3_combout\,
	sload => VCC,
	ena => \ContadorTiempos|comb~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorTiempos|dato9~q\);

-- Location: LCCOMB_X18_Y12_N20
\ContadorTiempos|comb~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|comb~13_combout\ = (\ContadorTiempos|dato9~q\ & \ContadorTiempos|comb~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorTiempos|dato9~q\,
	datad => \ContadorTiempos|comb~11_combout\,
	combout => \ContadorTiempos|comb~13_combout\);

-- Location: FF_X18_Y12_N21
\ContadorTiempos|dato10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ContadorTiempos|dato10~0_combout\,
	clrn => \ALT_INV_comb~3_combout\,
	sload => VCC,
	ena => \ContadorTiempos|comb~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorTiempos|dato10~q\);

-- Location: LCCOMB_X14_Y12_N28
\ContadorTiempos|dato11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|dato11~0_combout\ = !\ContadorTiempos|dato11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorTiempos|dato11~q\,
	combout => \ContadorTiempos|dato11~0_combout\);

-- Location: LCCOMB_X14_Y12_N12
\ContadorTiempos|comb~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|comb~12_combout\ = (\ContadorTiempos|dato9~q\ & (\ContadorTiempos|dato10~q\ & \ContadorTiempos|comb~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorTiempos|dato9~q\,
	datab => \ContadorTiempos|dato10~q\,
	datac => \ContadorTiempos|comb~11_combout\,
	combout => \ContadorTiempos|comb~12_combout\);

-- Location: FF_X14_Y12_N29
\ContadorTiempos|dato11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorTiempos|dato11~0_combout\,
	clrn => \ALT_INV_comb~3_combout\,
	ena => \ContadorTiempos|comb~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorTiempos|dato11~q\);

-- Location: LCCOMB_X16_Y12_N26
\ContadorTiempos|comb~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|comb~7_combout\ = (\ContadorTiempos|dato6~q\ & (\ContadorTiempos|dato7~q\ & (\ContadorTiempos|dato11~q\ & \ContadorTiempos|dato8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorTiempos|dato6~q\,
	datab => \ContadorTiempos|dato7~q\,
	datac => \ContadorTiempos|dato11~q\,
	datad => \ContadorTiempos|dato8~q\,
	combout => \ContadorTiempos|comb~7_combout\);

-- Location: LCCOMB_X16_Y12_N28
\ContadorTiempos|comb~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|comb~8_combout\ = (\ContadorTiempos|dato10~q\ & (\ContadorTiempos|dato9~q\ & (\ContadorTiempos|comb~7_combout\ & \ContadorTiempos|comb~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorTiempos|dato10~q\,
	datab => \ContadorTiempos|dato9~q\,
	datac => \ContadorTiempos|comb~7_combout\,
	datad => \ContadorTiempos|comb~4_combout\,
	combout => \ContadorTiempos|comb~8_combout\);

-- Location: FF_X16_Y12_N31
\ContadorTiempos|dato12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorTiempos|dato12~0_combout\,
	clrn => \ALT_INV_comb~3_combout\,
	ena => \ContadorTiempos|comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorTiempos|dato12~q\);

-- Location: LCCOMB_X16_Y12_N18
\ContadorTiempos|comb~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|comb~9_combout\ = (\ContadorTiempos|dato12~q\ & \ContadorTiempos|comb~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorTiempos|dato12~q\,
	datad => \ContadorTiempos|comb~8_combout\,
	combout => \ContadorTiempos|comb~9_combout\);

-- Location: FF_X16_Y12_N21
\ContadorTiempos|dato13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorTiempos|dato13~0_combout\,
	clrn => \ALT_INV_comb~3_combout\,
	ena => \ContadorTiempos|comb~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorTiempos|dato13~q\);

-- Location: LCCOMB_X15_Y12_N22
\ContadorTiempos|FinTiempo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|FinTiempo~1_combout\ = (!\ContadorTiempos|dato6~q\ & (!\ContadorTiempos|dato8~q\ & (\ContadorTiempos|dato5~q\ & \ContadorTiempos|dato7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorTiempos|dato6~q\,
	datab => \ContadorTiempos|dato8~q\,
	datac => \ContadorTiempos|dato5~q\,
	datad => \ContadorTiempos|dato7~q\,
	combout => \ContadorTiempos|FinTiempo~1_combout\);

-- Location: LCCOMB_X15_Y12_N24
\ContadorTiempos|FinTiempo~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|FinTiempo~2_combout\ = (!\ContadorTiempos|dato12~q\ & (\ContadorTiempos|dato11~q\ & (!\ContadorTiempos|dato10~q\ & !\ContadorTiempos|dato9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorTiempos|dato12~q\,
	datab => \ContadorTiempos|dato11~q\,
	datac => \ContadorTiempos|dato10~q\,
	datad => \ContadorTiempos|dato9~q\,
	combout => \ContadorTiempos|FinTiempo~2_combout\);

-- Location: LCCOMB_X15_Y12_N6
\ContadorTiempos|FinTiempo~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|FinTiempo~3_combout\ = (\ContadorTiempos|FinTiempo~0_combout\ & (\ContadorTiempos|dato13~q\ & (\ContadorTiempos|FinTiempo~1_combout\ & \ContadorTiempos|FinTiempo~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorTiempos|FinTiempo~0_combout\,
	datab => \ContadorTiempos|dato13~q\,
	datac => \ContadorTiempos|FinTiempo~1_combout\,
	datad => \ContadorTiempos|FinTiempo~2_combout\,
	combout => \ContadorTiempos|FinTiempo~3_combout\);

-- Location: LCCOMB_X15_Y12_N26
\Controll|comb~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~24_combout\ = (\Controll|F13~q\ & \ContadorTiempos|FinTiempo~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controll|F13~q\,
	datad => \ContadorTiempos|FinTiempo~3_combout\,
	combout => \Controll|comb~24_combout\);

-- Location: FF_X14_Y14_N9
\ContadorSelector|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorSelector|dato1~0_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	ena => \Controll|comb~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSelector|dato1~q\);

-- Location: LCCOMB_X15_Y12_N8
\ContadorSelector|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorSelector|comb~2_combout\ = (\Controll|F13~q\ & (\ContadorSelector|dato1~q\ & \ContadorTiempos|FinTiempo~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controll|F13~q\,
	datac => \ContadorSelector|dato1~q\,
	datad => \ContadorTiempos|FinTiempo~3_combout\,
	combout => \ContadorSelector|comb~2_combout\);

-- Location: FF_X16_Y14_N29
\ContadorSelector|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorSelector|dato2~0_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	ena => \ContadorSelector|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSelector|dato2~q\);

-- Location: LCCOMB_X13_Y12_N6
\Controll|comb~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~6_combout\ = (\Controll|F11~q\ & ((!\ContadorSelector|dato2~q\) # (!\ContadorSelector|dato4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ContadorSelector|dato4~q\,
	datac => \Controll|F11~q\,
	datad => \ContadorSelector|dato2~q\,
	combout => \Controll|comb~6_combout\);

-- Location: FF_X13_Y12_N7
\Controll|F12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Controll|comb~6_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controll|F12~q\);

-- Location: LCCOMB_X13_Y12_N28
\Controll|comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~5_combout\ = (\Controll|F12~q\) # ((\Controll|F13~q\ & !\ContadorTiempos|FinTiempo~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controll|F12~q\,
	datac => \Controll|F13~q\,
	datad => \ContadorTiempos|FinTiempo~3_combout\,
	combout => \Controll|comb~5_combout\);

-- Location: FF_X13_Y12_N29
\Controll|F13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Controll|comb~5_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controll|F13~q\);

-- Location: LCCOMB_X14_Y12_N20
\Controll|Protocolo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|Protocolo~0_combout\ = (\Controll|F13~q\) # (\Controll|F12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controll|F13~q\,
	datac => \Controll|F12~q\,
	combout => \Controll|Protocolo~0_combout\);

-- Location: FF_X14_Y12_N15
\ContadorTiempos|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorTiempos|dato1~0_combout\,
	clrn => \ALT_INV_comb~3_combout\,
	ena => \Controll|Protocolo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorTiempos|dato1~q\);

-- Location: LCCOMB_X15_Y12_N30
\ContadorTiempos|FinTiempo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorTiempos|FinTiempo~0_combout\ = (!\ContadorTiempos|dato1~q\ & (!\ContadorTiempos|dato4~q\ & (!\ContadorTiempos|dato3~q\ & !\ContadorTiempos|dato2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorTiempos|dato1~q\,
	datab => \ContadorTiempos|dato4~q\,
	datac => \ContadorTiempos|dato3~q\,
	datad => \ContadorTiempos|dato2~q\,
	combout => \ContadorTiempos|FinTiempo~0_combout\);

-- Location: LCCOMB_X15_Y12_N28
\ContadorSelector|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorSelector|comb~0_combout\ = (\ContadorTiempos|dato13~q\ & (\Controll|F13~q\ & (\ContadorSelector|dato1~q\ & \ContadorSelector|dato2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorTiempos|dato13~q\,
	datab => \Controll|F13~q\,
	datac => \ContadorSelector|dato1~q\,
	datad => \ContadorSelector|dato2~q\,
	combout => \ContadorSelector|comb~0_combout\);

-- Location: LCCOMB_X15_Y12_N18
\ContadorSelector|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorSelector|comb~1_combout\ = (\ContadorTiempos|FinTiempo~0_combout\ & (\ContadorTiempos|FinTiempo~2_combout\ & (\ContadorTiempos|FinTiempo~1_combout\ & \ContadorSelector|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorTiempos|FinTiempo~0_combout\,
	datab => \ContadorTiempos|FinTiempo~2_combout\,
	datac => \ContadorTiempos|FinTiempo~1_combout\,
	datad => \ContadorSelector|comb~0_combout\,
	combout => \ContadorSelector|comb~1_combout\);

-- Location: FF_X15_Y14_N31
\ContadorSelector|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorSelector|dato3~0_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	ena => \ContadorSelector|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSelector|dato3~q\);

-- Location: LCCOMB_X16_Y14_N2
\ContadorSelector|comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorSelector|comb~3_combout\ = (\ContadorSelector|dato3~q\ & \ContadorSelector|comb~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorSelector|dato3~q\,
	datad => \ContadorSelector|comb~1_combout\,
	combout => \ContadorSelector|comb~3_combout\);

-- Location: FF_X16_Y14_N31
\ContadorSelector|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorSelector|dato4~0_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	ena => \ContadorSelector|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSelector|dato4~q\);

-- Location: LCCOMB_X16_Y14_N16
\Controll|IncrementarCaracter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|IncrementarCaracter~0_combout\ = (\ContadorSelector|dato4~q\ & (\ContadorSelector|dato2~q\ & \Controll|F11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorSelector|dato4~q\,
	datab => \ContadorSelector|dato2~q\,
	datad => \Controll|F11~q\,
	combout => \Controll|IncrementarCaracter~0_combout\);

-- Location: LCCOMB_X15_Y14_N28
\Controll|comb~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~8_combout\ = (\Controll|IncrementarCaracter~0_combout\) # ((!\Controll|F14~q\ & !\RegistroAntiReboteEnviarDatos|dato1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controll|F14~q\,
	datab => \Controll|IncrementarCaracter~0_combout\,
	datad => \RegistroAntiReboteEnviarDatos|dato1~q\,
	combout => \Controll|comb~8_combout\);

-- Location: FF_X15_Y14_N29
\Controll|F10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Controll|comb~8_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controll|F10~q\);

-- Location: LCCOMB_X15_Y10_N20
\Controll|comb~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~7_combout\ = (\ContadorLetras|dato4~q\ & (((\Controll|F13~q\ & \ContadorTiempos|FinTiempo~3_combout\)))) # (!\ContadorLetras|dato4~q\ & ((\Controll|F10~q\) # ((\Controll|F13~q\ & \ContadorTiempos|FinTiempo~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato4~q\,
	datab => \Controll|F10~q\,
	datac => \Controll|F13~q\,
	datad => \ContadorTiempos|FinTiempo~3_combout\,
	combout => \Controll|comb~7_combout\);

-- Location: FF_X15_Y10_N21
\Controll|F11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Controll|comb~7_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controll|F11~q\);

-- Location: LCCOMB_X16_Y13_N0
\ContadorLetras|dato1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorLetras|dato1~0_combout\ = !\ContadorLetras|dato1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorLetras|dato1~q\,
	combout => \ContadorLetras|dato1~0_combout\);

-- Location: FF_X16_Y13_N1
\ContadorLetras|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorLetras|dato1~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \Controll|IncrementarCaracter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorLetras|dato1~q\);

-- Location: LCCOMB_X16_Y13_N6
\ContadorLetras|comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorLetras|comb~3_combout\ = (\Controll|F11~q\ & (\ContadorSelector|dato2~q\ & (\ContadorSelector|dato4~q\ & \ContadorLetras|dato1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controll|F11~q\,
	datab => \ContadorSelector|dato2~q\,
	datac => \ContadorSelector|dato4~q\,
	datad => \ContadorLetras|dato1~q\,
	combout => \ContadorLetras|comb~3_combout\);

-- Location: FF_X16_Y10_N17
\ContadorLetras|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorLetras|dato2~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ContadorLetras|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorLetras|dato2~q\);

-- Location: LCCOMB_X16_Y10_N10
\ContadorLetras|dato3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorLetras|dato3~0_combout\ = !\ContadorLetras|dato3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorLetras|dato3~q\,
	combout => \ContadorLetras|dato3~0_combout\);

-- Location: LCCOMB_X16_Y13_N18
\ContadorLetras|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorLetras|comb~2_combout\ = (\ContadorLetras|dato1~q\ & \ContadorLetras|dato2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ContadorLetras|dato1~q\,
	datad => \ContadorLetras|dato2~q\,
	combout => \ContadorLetras|comb~2_combout\);

-- Location: LCCOMB_X16_Y13_N8
\ContadorLetras|comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorLetras|comb~4_combout\ = (\Controll|F11~q\ & (\ContadorSelector|dato2~q\ & (\ContadorSelector|dato4~q\ & \ContadorLetras|comb~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controll|F11~q\,
	datab => \ContadorSelector|dato2~q\,
	datac => \ContadorSelector|dato4~q\,
	datad => \ContadorLetras|comb~2_combout\,
	combout => \ContadorLetras|comb~4_combout\);

-- Location: FF_X16_Y10_N11
\ContadorLetras|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorLetras|dato3~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ContadorLetras|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorLetras|dato3~q\);

-- Location: LCCOMB_X16_Y14_N0
\ContadorLetras|comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorLetras|comb~5_combout\ = (\ContadorLetras|dato2~q\ & (\ContadorLetras|dato1~q\ & (\ContadorLetras|dato3~q\ & \Controll|IncrementarCaracter~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato2~q\,
	datab => \ContadorLetras|dato1~q\,
	datac => \ContadorLetras|dato3~q\,
	datad => \Controll|IncrementarCaracter~0_combout\,
	combout => \ContadorLetras|comb~5_combout\);

-- Location: FF_X15_Y10_N31
\ContadorLetras|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorLetras|dato4~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ContadorLetras|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorLetras|dato4~q\);

-- Location: LCCOMB_X14_Y6_N26
\Controll|comb~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~23_combout\ = ((\Controll|F0~q\ & ((\FinPalabra~input_o\) # (!\Controll|F2~q\)))) # (!\RegistroAntiReboteLetra|dato1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FinPalabra~input_o\,
	datab => \Controll|F2~q\,
	datac => \Controll|F0~q\,
	datad => \RegistroAntiReboteLetra|dato1~q\,
	combout => \Controll|comb~23_combout\);

-- Location: FF_X14_Y6_N27
\Controll|F0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Controll|comb~23_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controll|F0~q\);

-- Location: LCCOMB_X14_Y6_N20
\Controll|comb~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~18_combout\ = (!\Controll|F0~q\ & !\RegistroAntiReboteLetra|dato1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Controll|F0~q\,
	datad => \RegistroAntiReboteLetra|dato1~q\,
	combout => \Controll|comb~18_combout\);

-- Location: FF_X14_Y6_N21
\Controll|F3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Controll|comb~18_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controll|F3~q\);

-- Location: LCCOMB_X14_Y10_N16
\Controll|comb~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~9_combout\ = (\ContadorBit|dato1~q\ & (\ContadorBit|dato2~q\ & \Controll|F3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ContadorBit|dato1~q\,
	datac => \ContadorBit|dato2~q\,
	datad => \Controll|F3~q\,
	combout => \Controll|comb~9_combout\);

-- Location: LCCOMB_X19_Y10_N24
\Controll|comb~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~10_combout\ = (\Inicio~input_o\ & (!\RegistroAntiReboteEnviarDatos|dato1~q\ & \Controll|F9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inicio~input_o\,
	datac => \RegistroAntiReboteEnviarDatos|dato1~q\,
	datad => \Controll|F9~q\,
	combout => \Controll|comb~10_combout\);

-- Location: LCCOMB_X15_Y10_N18
\Controll|comb~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~11_combout\ = (\Controll|comb~9_combout\) # ((\Controll|comb~10_combout\) # ((\ContadorLetras|dato4~q\ & \Controll|F10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato4~q\,
	datab => \Controll|F10~q\,
	datac => \Controll|comb~9_combout\,
	datad => \Controll|comb~10_combout\,
	combout => \Controll|comb~11_combout\);

-- Location: FF_X15_Y10_N19
\Controll|F9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Controll|comb~11_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controll|F9~q\);

-- Location: LCCOMB_X14_Y6_N24
\Controll|comb~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~22_combout\ = (\Inicio~input_o\) # ((!\Controll|F9~q\ & \Controll|F1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controll|F9~q\,
	datac => \Controll|F1~q\,
	datad => \Inicio~input_o\,
	combout => \Controll|comb~22_combout\);

-- Location: FF_X14_Y6_N25
\Controll|F1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Controll|comb~22_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controll|F1~q\);

-- Location: LCCOMB_X15_Y6_N20
\ContadorRegistro|dato3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorRegistro|dato3~0_combout\ = !\ContadorRegistro|dato3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorRegistro|dato3~q\,
	combout => \ContadorRegistro|dato3~0_combout\);

-- Location: LCCOMB_X15_Y6_N26
\ContadorRegistro|dato2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorRegistro|dato2~0_combout\ = !\ContadorRegistro|dato2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorRegistro|dato2~q\,
	combout => \ContadorRegistro|dato2~0_combout\);

-- Location: LCCOMB_X14_Y10_N8
\Controll|comb~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~17_combout\ = (!\ContadorBit|dato1~q\ & (!\ContadorBit|dato2~q\ & \Controll|F3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ContadorBit|dato1~q\,
	datac => \ContadorBit|dato2~q\,
	datad => \Controll|F3~q\,
	combout => \Controll|comb~17_combout\);

-- Location: FF_X14_Y10_N9
\Controll|F4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Controll|comb~17_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controll|F4~q\);

-- Location: LCCOMB_X14_Y10_N6
\Controll|comb~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~16_combout\ = (!\ContadorBit|dato1~q\ & (\ContadorBit|dato2~q\ & \Controll|F3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ContadorBit|dato1~q\,
	datac => \ContadorBit|dato2~q\,
	datad => \Controll|F3~q\,
	combout => \Controll|comb~16_combout\);

-- Location: FF_X14_Y10_N7
\Controll|F5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Controll|comb~16_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controll|F5~q\);

-- Location: LCCOMB_X14_Y6_N30
\ContadorRegistro|dato1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorRegistro|dato1~0_combout\ = !\ContadorRegistro|dato1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorRegistro|dato1~q\,
	combout => \ContadorRegistro|dato1~0_combout\);

-- Location: LCCOMB_X14_Y10_N22
\Controll|comb~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~15_combout\ = (\Controll|F3~q\ & (!\ContadorBit|dato2~q\ & \ContadorBit|dato1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controll|F3~q\,
	datac => \ContadorBit|dato2~q\,
	datad => \ContadorBit|dato1~q\,
	combout => \Controll|comb~15_combout\);

-- Location: LCCOMB_X15_Y10_N4
\Controll|F6~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|F6~feeder_combout\ = \Controll|comb~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Controll|comb~15_combout\,
	combout => \Controll|F6~feeder_combout\);

-- Location: FF_X15_Y10_N5
\Controll|F6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Controll|F6~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controll|F6~q\);

-- Location: LCCOMB_X14_Y6_N28
\Controll|comb~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~12_combout\ = (\Controll|F4~q\) # ((\Controll|F5~q\) # (\Controll|F6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controll|F4~q\,
	datac => \Controll|F5~q\,
	datad => \Controll|F6~q\,
	combout => \Controll|comb~12_combout\);

-- Location: FF_X14_Y6_N31
\ContadorRegistro|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorRegistro|dato1~0_combout\,
	clrn => \ALT_INV_comb~4_combout\,
	ena => \Controll|comb~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorRegistro|dato1~q\);

-- Location: LCCOMB_X14_Y6_N14
\ContadorRegistro|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorRegistro|comb~1_combout\ = (\ContadorRegistro|dato1~q\ & ((\Controll|F4~q\) # ((\Controll|F5~q\) # (\Controll|F6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controll|F4~q\,
	datab => \Controll|F5~q\,
	datac => \ContadorRegistro|dato1~q\,
	datad => \Controll|F6~q\,
	combout => \ContadorRegistro|comb~1_combout\);

-- Location: FF_X15_Y6_N27
\ContadorRegistro|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorRegistro|dato2~0_combout\,
	clrn => \ALT_INV_comb~4_combout\,
	ena => \ContadorRegistro|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorRegistro|dato2~q\);

-- Location: LCCOMB_X14_Y6_N8
\Controll|comb~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~13_combout\ = (\ContadorRegistro|dato3~q\ & (\ContadorRegistro|dato2~q\ & (\ContadorRegistro|dato1~q\ & \Controll|comb~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorRegistro|dato3~q\,
	datab => \ContadorRegistro|dato2~q\,
	datac => \ContadorRegistro|dato1~q\,
	datad => \Controll|comb~12_combout\,
	combout => \Controll|comb~13_combout\);

-- Location: FF_X14_Y6_N9
\Controll|F8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Controll|comb~13_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controll|F8~q\);

-- Location: LCCOMB_X14_Y6_N6
\comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = ((\Controll|F8~q\) # (\Controll|F7~q\)) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \Controll|F8~q\,
	datad => \Controll|F7~q\,
	combout => \comb~4_combout\);

-- Location: LCCOMB_X14_Y6_N16
\ContadorRegistro|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorRegistro|comb~0_combout\ = (\ContadorRegistro|dato2~q\ & (\ContadorRegistro|dato1~q\ & \Controll|comb~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ContadorRegistro|dato2~q\,
	datac => \ContadorRegistro|dato1~q\,
	datad => \Controll|comb~12_combout\,
	combout => \ContadorRegistro|comb~0_combout\);

-- Location: FF_X15_Y6_N21
\ContadorRegistro|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorRegistro|dato3~0_combout\,
	clrn => \ALT_INV_comb~4_combout\,
	ena => \ContadorRegistro|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorRegistro|dato3~q\);

-- Location: LCCOMB_X14_Y6_N18
\Controll|comb~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~19_combout\ = (\Controll|comb~12_combout\ & (((!\ContadorRegistro|dato1~q\) # (!\ContadorRegistro|dato2~q\)) # (!\ContadorRegistro|dato3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorRegistro|dato3~q\,
	datab => \ContadorRegistro|dato2~q\,
	datac => \ContadorRegistro|dato1~q\,
	datad => \Controll|comb~12_combout\,
	combout => \Controll|comb~19_combout\);

-- Location: LCCOMB_X14_Y6_N22
\Controll|comb~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~21_combout\ = ((\Controll|comb~19_combout\) # ((\Inicio~input_o\ & !\Controll|F1~q\))) # (!\Controll|comb~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controll|comb~20_combout\,
	datab => \Inicio~input_o\,
	datac => \Controll|F1~q\,
	datad => \Controll|comb~19_combout\,
	combout => \Controll|comb~21_combout\);

-- Location: FF_X14_Y6_N23
\Controll|F2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Controll|comb~21_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controll|F2~q\);

-- Location: LCCOMB_X14_Y6_N10
\Controll|comb~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~14_combout\ = (\FinPalabra~input_o\ & \Controll|F2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FinPalabra~input_o\,
	datac => \Controll|F2~q\,
	combout => \Controll|comb~14_combout\);

-- Location: FF_X14_Y6_N11
\Controll|F7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Controll|comb~14_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controll|F7~q\);

-- Location: LCCOMB_X14_Y6_N4
\Controll|IncrementarRegistro~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|IncrementarRegistro~0_combout\ = (\Controll|F7~q\) # (\Controll|F8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controll|F7~q\,
	datad => \Controll|F8~q\,
	combout => \Controll|IncrementarRegistro~0_combout\);

-- Location: FF_X14_Y10_N29
\ContadorBit|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorBit|dato1~0_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|IncrementarRegistro~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorBit|dato1~q\);

-- Location: LCCOMB_X14_Y10_N26
\ContadorBit|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ContadorBit|comb~0_combout\ = (\ContadorBit|dato1~q\ & ((\Controll|F8~q\) # (\Controll|F7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ContadorBit|dato1~q\,
	datac => \Controll|F8~q\,
	datad => \Controll|F7~q\,
	combout => \ContadorBit|comb~0_combout\);

-- Location: FF_X13_Y10_N17
\ContadorBit|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ContadorBit|dato2~0_combout\,
	clrn => \RESET~input_o\,
	ena => \ContadorBit|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorBit|dato2~q\);

-- Location: LCCOMB_X14_Y10_N18
\Controll|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~0_combout\ = (\ContadorBit|dato2~q\) # (\ContadorBit|dato1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorBit|dato2~q\,
	datad => \ContadorBit|dato1~q\,
	combout => \Controll|comb~0_combout\);

-- Location: LCCOMB_X14_Y10_N20
\Controll|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~1_combout\ = (!\ContadorBit|dato2~q\ & \ContadorBit|dato1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorBit|dato2~q\,
	datad => \ContadorBit|dato1~q\,
	combout => \Controll|comb~1_combout\);

-- Location: LCCOMB_X14_Y10_N10
\Controll|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~2_combout\ = (\ContadorBit|dato2~q\ & !\ContadorBit|dato1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorBit|dato2~q\,
	datad => \ContadorBit|dato1~q\,
	combout => \Controll|comb~2_combout\);

-- Location: LCCOMB_X14_Y10_N4
\Controll|comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Controll|comb~3_combout\ = (\ContadorBit|dato2~q\ & \ContadorBit|dato1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorBit|dato2~q\,
	datad => \ContadorBit|dato1~q\,
	combout => \Controll|comb~3_combout\);

-- Location: IOIBUF_X31_Y4_N15
\Letra[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Letra(2),
	o => \Letra[2]~input_o\);

-- Location: FF_X19_Y15_N21
\Registro1|Reg1|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Letra[2]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg1|dato2~q\);

-- Location: FF_X18_Y15_N11
\Registro1|Reg2|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg1|dato2~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg2|dato2~q\);

-- Location: LCCOMB_X18_Y15_N4
\Registro1|Reg3|dato2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro1|Reg3|dato2~feeder_combout\ = \Registro1|Reg2|dato2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro1|Reg2|dato2~q\,
	combout => \Registro1|Reg3|dato2~feeder_combout\);

-- Location: FF_X18_Y15_N5
\Registro1|Reg3|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro1|Reg3|dato2~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg3|dato2~q\);

-- Location: FF_X18_Y15_N3
\Registro1|Reg4|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg3|dato2~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg4|dato2~q\);

-- Location: LCCOMB_X18_Y15_N8
\Registro1|Reg5|dato2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro1|Reg5|dato2~feeder_combout\ = \Registro1|Reg4|dato2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro1|Reg4|dato2~q\,
	combout => \Registro1|Reg5|dato2~feeder_combout\);

-- Location: FF_X18_Y15_N9
\Registro1|Reg5|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro1|Reg5|dato2~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg5|dato2~q\);

-- Location: FF_X18_Y15_N13
\Registro1|Reg6|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg5|dato2~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg6|dato2~q\);

-- Location: FF_X18_Y15_N27
\Registro1|Reg7|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg6|dato2~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg7|dato2~q\);

-- Location: IOIBUF_X11_Y25_N29
\Selector[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Selector(1),
	o => \Selector[1]~input_o\);

-- Location: LCCOMB_X20_Y13_N28
\SelectorLetra|Mux1|Out_Mux~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux1|Out_Mux~2_combout\ = (!\Selector[1]~input_o\ & \ContadorLetras|dato1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector[1]~input_o\,
	datad => \ContadorLetras|dato1~q\,
	combout => \SelectorLetra|Mux1|Out_Mux~2_combout\);

-- Location: LCCOMB_X18_Y15_N26
\SelectorLetra|Mux3|Out_Mux~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux3|Out_Mux~6_combout\ = (\SelectorLetra|Mux1|Out_Mux~2_combout\ & ((\ContadorLetras|dato3~q\ & (\Registro1|Reg3|dato2~q\)) # (!\ContadorLetras|dato3~q\ & ((\Registro1|Reg7|dato2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato3~q\,
	datab => \Registro1|Reg3|dato2~q\,
	datac => \Registro1|Reg7|dato2~q\,
	datad => \SelectorLetra|Mux1|Out_Mux~2_combout\,
	combout => \SelectorLetra|Mux3|Out_Mux~6_combout\);

-- Location: LCCOMB_X19_Y13_N10
\SelectorLetra|Mux1|Out_Mux~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux1|Out_Mux~3_combout\ = (!\ContadorLetras|dato1~q\ & !\Selector[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorLetras|dato1~q\,
	datad => \Selector[1]~input_o\,
	combout => \SelectorLetra|Mux1|Out_Mux~3_combout\);

-- Location: FF_X18_Y15_N21
\Registro1|Reg8|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg7|dato2~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg8|dato2~q\);

-- Location: LCCOMB_X18_Y15_N20
\SelectorLetra|Mux3|Out_Mux~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux3|Out_Mux~7_combout\ = (\SelectorLetra|Mux1|Out_Mux~3_combout\ & ((\ContadorLetras|dato3~q\ & ((\Registro1|Reg4|dato2~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro1|Reg8|dato2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux1|Out_Mux~3_combout\,
	datab => \ContadorLetras|dato3~q\,
	datac => \Registro1|Reg8|dato2~q\,
	datad => \Registro1|Reg4|dato2~q\,
	combout => \SelectorLetra|Mux3|Out_Mux~7_combout\);

-- Location: IOIBUF_X11_Y25_N22
\Selector[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Selector(0),
	o => \Selector[0]~input_o\);

-- Location: LCCOMB_X18_Y14_N28
\SelectorLetra|Mux5|Out_Mux~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux5|Out_Mux~0_combout\ = (!\ContadorLetras|dato2~q\ & !\Selector[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato2~q\,
	datad => \Selector[0]~input_o\,
	combout => \SelectorLetra|Mux5|Out_Mux~0_combout\);

-- Location: FF_X19_Y15_N25
\Registro3|Reg1|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Letra[2]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg1|dato2~q\);

-- Location: LCCOMB_X19_Y15_N26
\Registro3|Reg2|dato2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro3|Reg2|dato2~feeder_combout\ = \Registro3|Reg1|dato2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro3|Reg1|dato2~q\,
	combout => \Registro3|Reg2|dato2~feeder_combout\);

-- Location: FF_X19_Y15_N27
\Registro3|Reg2|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro3|Reg2|dato2~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg2|dato2~q\);

-- Location: LCCOMB_X18_Y15_N24
\Registro3|Reg3|dato2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro3|Reg3|dato2~feeder_combout\ = \Registro3|Reg2|dato2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro3|Reg2|dato2~q\,
	combout => \Registro3|Reg3|dato2~feeder_combout\);

-- Location: FF_X18_Y15_N25
\Registro3|Reg3|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro3|Reg3|dato2~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg3|dato2~q\);

-- Location: LCCOMB_X18_Y15_N16
\Registro3|Reg4|dato2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro3|Reg4|dato2~feeder_combout\ = \Registro3|Reg3|dato2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro3|Reg3|dato2~q\,
	combout => \Registro3|Reg4|dato2~feeder_combout\);

-- Location: FF_X18_Y15_N17
\Registro3|Reg4|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro3|Reg4|dato2~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg4|dato2~q\);

-- Location: LCCOMB_X18_Y15_N30
\Registro3|Reg5|dato2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro3|Reg5|dato2~feeder_combout\ = \Registro3|Reg4|dato2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro3|Reg4|dato2~q\,
	combout => \Registro3|Reg5|dato2~feeder_combout\);

-- Location: FF_X18_Y15_N31
\Registro3|Reg5|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro3|Reg5|dato2~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg5|dato2~q\);

-- Location: FF_X18_Y15_N23
\Registro3|Reg6|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro3|Reg5|dato2~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg6|dato2~q\);

-- Location: FF_X18_Y15_N15
\Registro3|Reg7|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro3|Reg6|dato2~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg7|dato2~q\);

-- Location: FF_X18_Y15_N7
\Registro3|Reg8|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro3|Reg7|dato2~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg8|dato2~q\);

-- Location: LCCOMB_X18_Y15_N6
\SelectorLetra|Mux3|Out_Mux~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux3|Out_Mux~4_combout\ = (\ContadorLetras|dato3~q\ & ((\Registro3|Reg4|dato2~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro3|Reg8|dato2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ContadorLetras|dato3~q\,
	datac => \Registro3|Reg8|dato2~q\,
	datad => \Registro3|Reg4|dato2~q\,
	combout => \SelectorLetra|Mux3|Out_Mux~4_combout\);

-- Location: LCCOMB_X18_Y15_N14
\SelectorLetra|Mux3|Out_Mux~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux3|Out_Mux~3_combout\ = (\ContadorLetras|dato3~q\ & ((\Registro3|Reg3|dato2~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro3|Reg7|dato2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ContadorLetras|dato3~q\,
	datac => \Registro3|Reg7|dato2~q\,
	datad => \Registro3|Reg3|dato2~q\,
	combout => \SelectorLetra|Mux3|Out_Mux~3_combout\);

-- Location: LCCOMB_X18_Y15_N28
\SelectorLetra|Mux3|Out_Mux~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux3|Out_Mux~5_combout\ = (\Selector[1]~input_o\ & ((\ContadorLetras|dato1~q\ & ((\SelectorLetra|Mux3|Out_Mux~3_combout\))) # (!\ContadorLetras|dato1~q\ & (\SelectorLetra|Mux3|Out_Mux~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux3|Out_Mux~4_combout\,
	datab => \SelectorLetra|Mux3|Out_Mux~3_combout\,
	datac => \ContadorLetras|dato1~q\,
	datad => \Selector[1]~input_o\,
	combout => \SelectorLetra|Mux3|Out_Mux~5_combout\);

-- Location: LCCOMB_X18_Y15_N18
\SelectorLetra|Mux3|Out_Mux~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux3|Out_Mux~8_combout\ = (\SelectorLetra|Mux5|Out_Mux~0_combout\ & ((\SelectorLetra|Mux3|Out_Mux~6_combout\) # ((\SelectorLetra|Mux3|Out_Mux~7_combout\) # (\SelectorLetra|Mux3|Out_Mux~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux3|Out_Mux~6_combout\,
	datab => \SelectorLetra|Mux3|Out_Mux~7_combout\,
	datac => \SelectorLetra|Mux5|Out_Mux~0_combout\,
	datad => \SelectorLetra|Mux3|Out_Mux~5_combout\,
	combout => \SelectorLetra|Mux3|Out_Mux~8_combout\);

-- Location: LCCOMB_X19_Y14_N6
\Registro2|Reg1|dato2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro2|Reg1|dato2~feeder_combout\ = \Letra[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Letra[2]~input_o\,
	combout => \Registro2|Reg1|dato2~feeder_combout\);

-- Location: FF_X19_Y14_N7
\Registro2|Reg1|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro2|Reg1|dato2~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg1|dato2~q\);

-- Location: LCCOMB_X19_Y14_N22
\Registro2|Reg2|dato2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro2|Reg2|dato2~feeder_combout\ = \Registro2|Reg1|dato2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro2|Reg1|dato2~q\,
	combout => \Registro2|Reg2|dato2~feeder_combout\);

-- Location: FF_X19_Y14_N23
\Registro2|Reg2|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro2|Reg2|dato2~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg2|dato2~q\);

-- Location: LCCOMB_X18_Y14_N0
\Registro2|Reg3|dato2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro2|Reg3|dato2~feeder_combout\ = \Registro2|Reg2|dato2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro2|Reg2|dato2~q\,
	combout => \Registro2|Reg3|dato2~feeder_combout\);

-- Location: FF_X18_Y14_N1
\Registro2|Reg3|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro2|Reg3|dato2~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg3|dato2~q\);

-- Location: LCCOMB_X18_Y14_N6
\Registro2|Reg4|dato2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro2|Reg4|dato2~feeder_combout\ = \Registro2|Reg3|dato2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro2|Reg3|dato2~q\,
	combout => \Registro2|Reg4|dato2~feeder_combout\);

-- Location: FF_X18_Y14_N7
\Registro2|Reg4|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro2|Reg4|dato2~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg4|dato2~q\);

-- Location: FF_X19_Y14_N13
\Registro2|Reg5|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro2|Reg4|dato2~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg5|dato2~q\);

-- Location: LCCOMB_X19_Y14_N12
\SelectorLetra|Mux3|Out_Mux~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux3|Out_Mux~17_combout\ = (\ContadorLetras|comb~2_combout\ & ((\ContadorLetras|dato3~q\ & ((\Registro2|Reg1|dato2~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro2|Reg5|dato2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato3~q\,
	datab => \ContadorLetras|comb~2_combout\,
	datac => \Registro2|Reg5|dato2~q\,
	datad => \Registro2|Reg1|dato2~q\,
	combout => \SelectorLetra|Mux3|Out_Mux~17_combout\);

-- Location: FF_X18_Y14_N23
\Registro2|Reg6|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro2|Reg5|dato2~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg6|dato2~q\);

-- Location: FF_X18_Y14_N25
\Registro2|Reg7|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro2|Reg6|dato2~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg7|dato2~q\);

-- Location: FF_X18_Y14_N3
\Registro2|Reg8|dato2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro2|Reg7|dato2~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg8|dato2~q\);

-- Location: LCCOMB_X18_Y14_N2
\SelectorLetra|Mux3|Out_Mux~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux3|Out_Mux~14_combout\ = (\ContadorLetras|dato3~q\ & ((\Registro2|Reg4|dato2~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro2|Reg8|dato2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato3~q\,
	datac => \Registro2|Reg8|dato2~q\,
	datad => \Registro2|Reg4|dato2~q\,
	combout => \SelectorLetra|Mux3|Out_Mux~14_combout\);

-- Location: LCCOMB_X18_Y14_N24
\SelectorLetra|Mux3|Out_Mux~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux3|Out_Mux~15_combout\ = (\ContadorLetras|dato3~q\ & ((\Registro2|Reg3|dato2~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro2|Reg7|dato2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato3~q\,
	datac => \Registro2|Reg7|dato2~q\,
	datad => \Registro2|Reg3|dato2~q\,
	combout => \SelectorLetra|Mux3|Out_Mux~15_combout\);

-- Location: LCCOMB_X18_Y14_N4
\SelectorLetra|Mux3|Out_Mux~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux3|Out_Mux~16_combout\ = (!\ContadorLetras|dato2~q\ & ((\ContadorLetras|dato1~q\ & ((\SelectorLetra|Mux3|Out_Mux~15_combout\))) # (!\ContadorLetras|dato1~q\ & (\SelectorLetra|Mux3|Out_Mux~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato2~q\,
	datab => \SelectorLetra|Mux3|Out_Mux~14_combout\,
	datac => \ContadorLetras|dato1~q\,
	datad => \SelectorLetra|Mux3|Out_Mux~15_combout\,
	combout => \SelectorLetra|Mux3|Out_Mux~16_combout\);

-- Location: LCCOMB_X18_Y14_N8
\SelectorLetra|Mux1|Out_Mux~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux1|Out_Mux~0_combout\ = (\ContadorLetras|dato2~q\ & !\ContadorLetras|dato1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato2~q\,
	datac => \ContadorLetras|dato1~q\,
	combout => \SelectorLetra|Mux1|Out_Mux~0_combout\);

-- Location: LCCOMB_X18_Y14_N22
\SelectorLetra|Mux3|Out_Mux~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux3|Out_Mux~18_combout\ = (\SelectorLetra|Mux1|Out_Mux~0_combout\ & ((\ContadorLetras|dato3~q\ & (\Registro2|Reg2|dato2~q\)) # (!\ContadorLetras|dato3~q\ & ((\Registro2|Reg6|dato2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux1|Out_Mux~0_combout\,
	datab => \Registro2|Reg2|dato2~q\,
	datac => \Registro2|Reg6|dato2~q\,
	datad => \ContadorLetras|dato3~q\,
	combout => \SelectorLetra|Mux3|Out_Mux~18_combout\);

-- Location: LCCOMB_X19_Y13_N22
\SelectorLetra|Mux3|Out_Mux~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux3|Out_Mux~0_combout\ = (\Selector[0]~input_o\ & !\Selector[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector[0]~input_o\,
	datad => \Selector[1]~input_o\,
	combout => \SelectorLetra|Mux3|Out_Mux~0_combout\);

-- Location: LCCOMB_X19_Y14_N28
\SelectorLetra|Mux3|Out_Mux~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux3|Out_Mux~19_combout\ = (\SelectorLetra|Mux3|Out_Mux~0_combout\ & ((\SelectorLetra|Mux3|Out_Mux~17_combout\) # ((\SelectorLetra|Mux3|Out_Mux~16_combout\) # (\SelectorLetra|Mux3|Out_Mux~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux3|Out_Mux~17_combout\,
	datab => \SelectorLetra|Mux3|Out_Mux~16_combout\,
	datac => \SelectorLetra|Mux3|Out_Mux~18_combout\,
	datad => \SelectorLetra|Mux3|Out_Mux~0_combout\,
	combout => \SelectorLetra|Mux3|Out_Mux~19_combout\);

-- Location: LCCOMB_X18_Y13_N24
\SelectorLetra|Mux3|Out_Mux~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux3|Out_Mux~1_combout\ = (!\Selector[0]~input_o\ & (\ContadorLetras|dato2~q\ & \ContadorLetras|dato3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector[0]~input_o\,
	datac => \ContadorLetras|dato2~q\,
	datad => \ContadorLetras|dato3~q\,
	combout => \SelectorLetra|Mux3|Out_Mux~1_combout\);

-- Location: LCCOMB_X18_Y15_N22
\SelectorLetra|Mux3|Out_Mux~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux3|Out_Mux~9_combout\ = (\Selector[1]~input_o\ & ((\ContadorLetras|dato1~q\ & (\Registro3|Reg5|dato2~q\)) # (!\ContadorLetras|dato1~q\ & ((\Registro3|Reg6|dato2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registro3|Reg5|dato2~q\,
	datab => \Selector[1]~input_o\,
	datac => \Registro3|Reg6|dato2~q\,
	datad => \ContadorLetras|dato1~q\,
	combout => \SelectorLetra|Mux3|Out_Mux~9_combout\);

-- Location: LCCOMB_X18_Y14_N30
\SelectorLetra|Mux1|Out_Mux~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux1|Out_Mux~4_combout\ = (!\Selector[0]~input_o\ & (\ContadorLetras|dato2~q\ & !\ContadorLetras|dato3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector[0]~input_o\,
	datac => \ContadorLetras|dato2~q\,
	datad => \ContadorLetras|dato3~q\,
	combout => \SelectorLetra|Mux1|Out_Mux~4_combout\);

-- Location: LCCOMB_X18_Y15_N12
\SelectorLetra|Mux3|Out_Mux~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux3|Out_Mux~10_combout\ = (!\Selector[1]~input_o\ & ((\ContadorLetras|dato1~q\ & (\Registro1|Reg5|dato2~q\)) # (!\ContadorLetras|dato1~q\ & ((\Registro1|Reg6|dato2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato1~q\,
	datab => \Registro1|Reg5|dato2~q\,
	datac => \Registro1|Reg6|dato2~q\,
	datad => \Selector[1]~input_o\,
	combout => \SelectorLetra|Mux3|Out_Mux~10_combout\);

-- Location: LCCOMB_X18_Y15_N2
\SelectorLetra|Mux3|Out_Mux~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux3|Out_Mux~11_combout\ = (\SelectorLetra|Mux1|Out_Mux~4_combout\ & ((\SelectorLetra|Mux3|Out_Mux~9_combout\) # (\SelectorLetra|Mux3|Out_Mux~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux3|Out_Mux~9_combout\,
	datab => \SelectorLetra|Mux1|Out_Mux~4_combout\,
	datad => \SelectorLetra|Mux3|Out_Mux~10_combout\,
	combout => \SelectorLetra|Mux3|Out_Mux~11_combout\);

-- Location: LCCOMB_X18_Y15_N10
\SelectorLetra|Mux3|Out_Mux~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux3|Out_Mux~12_combout\ = (\Selector[1]~input_o\ & ((\ContadorLetras|dato1~q\) # ((\Registro3|Reg2|dato2~q\)))) # (!\Selector[1]~input_o\ & (!\ContadorLetras|dato1~q\ & (\Registro1|Reg2|dato2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector[1]~input_o\,
	datab => \ContadorLetras|dato1~q\,
	datac => \Registro1|Reg2|dato2~q\,
	datad => \Registro3|Reg2|dato2~q\,
	combout => \SelectorLetra|Mux3|Out_Mux~12_combout\);

-- Location: LCCOMB_X19_Y15_N24
\SelectorLetra|Mux3|Out_Mux~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux3|Out_Mux~13_combout\ = (\SelectorLetra|Mux3|Out_Mux~12_combout\ & (((\Registro3|Reg1|dato2~q\)) # (!\ContadorLetras|dato1~q\))) # (!\SelectorLetra|Mux3|Out_Mux~12_combout\ & (\ContadorLetras|dato1~q\ & ((\Registro1|Reg1|dato2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux3|Out_Mux~12_combout\,
	datab => \ContadorLetras|dato1~q\,
	datac => \Registro3|Reg1|dato2~q\,
	datad => \Registro1|Reg1|dato2~q\,
	combout => \SelectorLetra|Mux3|Out_Mux~13_combout\);

-- Location: LCCOMB_X18_Y15_N0
\ComunicacionPC~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ComunicacionPC~3_combout\ = (\SelectorLetra|Mux3|Out_Mux~11_combout\) # ((\SelectorLetra|Mux3|Out_Mux~1_combout\ & \SelectorLetra|Mux3|Out_Mux~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux3|Out_Mux~1_combout\,
	datab => \SelectorLetra|Mux3|Out_Mux~11_combout\,
	datad => \SelectorLetra|Mux3|Out_Mux~13_combout\,
	combout => \ComunicacionPC~3_combout\);

-- Location: LCCOMB_X15_Y14_N16
\ComunicacionPC~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ComunicacionPC~4_combout\ = (\ContadorSelector|dato3~q\) # ((\SelectorLetra|Mux3|Out_Mux~8_combout\) # ((\SelectorLetra|Mux3|Out_Mux~19_combout\) # (\ComunicacionPC~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorSelector|dato3~q\,
	datab => \SelectorLetra|Mux3|Out_Mux~8_combout\,
	datac => \SelectorLetra|Mux3|Out_Mux~19_combout\,
	datad => \ComunicacionPC~3_combout\,
	combout => \ComunicacionPC~4_combout\);

-- Location: IOIBUF_X31_Y6_N1
\Letra[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Letra(0),
	o => \Letra[0]~input_o\);

-- Location: FF_X20_Y13_N11
\Registro3|Reg1|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Letra[0]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg1|dato0~q\);

-- Location: LCCOMB_X20_Y13_N26
\Registro3|Reg2|dato0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro3|Reg2|dato0~feeder_combout\ = \Registro3|Reg1|dato0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro3|Reg1|dato0~q\,
	combout => \Registro3|Reg2|dato0~feeder_combout\);

-- Location: FF_X20_Y13_N27
\Registro3|Reg2|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro3|Reg2|dato0~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg2|dato0~q\);

-- Location: LCCOMB_X19_Y13_N16
\Registro3|Reg3|dato0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro3|Reg3|dato0~feeder_combout\ = \Registro3|Reg2|dato0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro3|Reg2|dato0~q\,
	combout => \Registro3|Reg3|dato0~feeder_combout\);

-- Location: FF_X19_Y13_N17
\Registro3|Reg3|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro3|Reg3|dato0~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg3|dato0~q\);

-- Location: LCCOMB_X19_Y13_N0
\Registro3|Reg4|dato0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro3|Reg4|dato0~feeder_combout\ = \Registro3|Reg3|dato0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro3|Reg3|dato0~q\,
	combout => \Registro3|Reg4|dato0~feeder_combout\);

-- Location: FF_X19_Y13_N1
\Registro3|Reg4|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro3|Reg4|dato0~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg4|dato0~q\);

-- Location: LCCOMB_X19_Y13_N8
\Registro3|Reg5|dato0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro3|Reg5|dato0~feeder_combout\ = \Registro3|Reg4|dato0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro3|Reg4|dato0~q\,
	combout => \Registro3|Reg5|dato0~feeder_combout\);

-- Location: FF_X19_Y13_N9
\Registro3|Reg5|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro3|Reg5|dato0~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg5|dato0~q\);

-- Location: FF_X19_Y13_N15
\Registro3|Reg6|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro3|Reg5|dato0~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg6|dato0~q\);

-- Location: LCCOMB_X19_Y13_N14
\SelectorLetra|Mux1|Out_Mux~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux1|Out_Mux~11_combout\ = (\Selector[1]~input_o\ & ((\ContadorLetras|dato1~q\ & (\Registro3|Reg5|dato0~q\)) # (!\ContadorLetras|dato1~q\ & ((\Registro3|Reg6|dato0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato1~q\,
	datab => \Registro3|Reg5|dato0~q\,
	datac => \Registro3|Reg6|dato0~q\,
	datad => \Selector[1]~input_o\,
	combout => \SelectorLetra|Mux1|Out_Mux~11_combout\);

-- Location: FF_X20_Y13_N9
\Registro1|Reg1|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Letra[0]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg1|dato0~q\);

-- Location: FF_X20_Y13_N19
\Registro1|Reg2|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg1|dato0~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg2|dato0~q\);

-- Location: FF_X20_Y13_N21
\Registro1|Reg3|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg2|dato0~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg3|dato0~q\);

-- Location: LCCOMB_X20_Y13_N0
\Registro1|Reg4|dato0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro1|Reg4|dato0~feeder_combout\ = \Registro1|Reg3|dato0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro1|Reg3|dato0~q\,
	combout => \Registro1|Reg4|dato0~feeder_combout\);

-- Location: FF_X20_Y13_N1
\Registro1|Reg4|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro1|Reg4|dato0~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg4|dato0~q\);

-- Location: LCCOMB_X20_Y13_N6
\Registro1|Reg5|dato0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro1|Reg5|dato0~feeder_combout\ = \Registro1|Reg4|dato0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro1|Reg4|dato0~q\,
	combout => \Registro1|Reg5|dato0~feeder_combout\);

-- Location: FF_X20_Y13_N7
\Registro1|Reg5|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro1|Reg5|dato0~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg5|dato0~q\);

-- Location: FF_X20_Y13_N5
\Registro1|Reg6|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg5|dato0~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg6|dato0~q\);

-- Location: LCCOMB_X20_Y13_N4
\SelectorLetra|Mux1|Out_Mux~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux1|Out_Mux~12_combout\ = (\ContadorLetras|dato1~q\ & (\Registro1|Reg5|dato0~q\)) # (!\ContadorLetras|dato1~q\ & ((\Registro1|Reg6|dato0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registro1|Reg5|dato0~q\,
	datac => \Registro1|Reg6|dato0~q\,
	datad => \ContadorLetras|dato1~q\,
	combout => \SelectorLetra|Mux1|Out_Mux~12_combout\);

-- Location: LCCOMB_X16_Y13_N4
\SelectorLetra|Mux1|Out_Mux~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux1|Out_Mux~13_combout\ = (\SelectorLetra|Mux1|Out_Mux~4_combout\ & ((\SelectorLetra|Mux1|Out_Mux~11_combout\) # ((!\Selector[1]~input_o\ & \SelectorLetra|Mux1|Out_Mux~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux1|Out_Mux~11_combout\,
	datab => \Selector[1]~input_o\,
	datac => \SelectorLetra|Mux1|Out_Mux~12_combout\,
	datad => \SelectorLetra|Mux1|Out_Mux~4_combout\,
	combout => \SelectorLetra|Mux1|Out_Mux~13_combout\);

-- Location: LCCOMB_X20_Y13_N18
\SelectorLetra|Mux1|Out_Mux~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux1|Out_Mux~14_combout\ = (\Selector[1]~input_o\ & ((\ContadorLetras|dato1~q\) # ((\Registro3|Reg2|dato0~q\)))) # (!\Selector[1]~input_o\ & (!\ContadorLetras|dato1~q\ & (\Registro1|Reg2|dato0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector[1]~input_o\,
	datab => \ContadorLetras|dato1~q\,
	datac => \Registro1|Reg2|dato0~q\,
	datad => \Registro3|Reg2|dato0~q\,
	combout => \SelectorLetra|Mux1|Out_Mux~14_combout\);

-- Location: LCCOMB_X20_Y13_N10
\SelectorLetra|Mux1|Out_Mux~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux1|Out_Mux~15_combout\ = (\ContadorLetras|dato1~q\ & ((\SelectorLetra|Mux1|Out_Mux~14_combout\ & ((\Registro3|Reg1|dato0~q\))) # (!\SelectorLetra|Mux1|Out_Mux~14_combout\ & (\Registro1|Reg1|dato0~q\)))) # (!\ContadorLetras|dato1~q\ & 
-- (((\SelectorLetra|Mux1|Out_Mux~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato1~q\,
	datab => \Registro1|Reg1|dato0~q\,
	datac => \Registro3|Reg1|dato0~q\,
	datad => \SelectorLetra|Mux1|Out_Mux~14_combout\,
	combout => \SelectorLetra|Mux1|Out_Mux~15_combout\);

-- Location: LCCOMB_X16_Y14_N8
\SelectorLetra|Mux1|Out_Mux~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux1|Out_Mux~16_combout\ = (\SelectorLetra|Mux1|Out_Mux~13_combout\) # ((\SelectorLetra|Mux1|Out_Mux~15_combout\ & \SelectorLetra|Mux3|Out_Mux~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux1|Out_Mux~13_combout\,
	datac => \SelectorLetra|Mux1|Out_Mux~15_combout\,
	datad => \SelectorLetra|Mux3|Out_Mux~1_combout\,
	combout => \SelectorLetra|Mux1|Out_Mux~16_combout\);

-- Location: LCCOMB_X15_Y11_N16
\Registro2|Reg1|dato0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro2|Reg1|dato0~feeder_combout\ = \Letra[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Letra[0]~input_o\,
	combout => \Registro2|Reg1|dato0~feeder_combout\);

-- Location: FF_X15_Y11_N17
\Registro2|Reg1|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro2|Reg1|dato0~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg1|dato0~q\);

-- Location: FF_X15_Y11_N3
\Registro2|Reg2|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro2|Reg1|dato0~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg2|dato0~q\);

-- Location: LCCOMB_X15_Y11_N10
\Registro2|Reg3|dato0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro2|Reg3|dato0~feeder_combout\ = \Registro2|Reg2|dato0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro2|Reg2|dato0~q\,
	combout => \Registro2|Reg3|dato0~feeder_combout\);

-- Location: FF_X15_Y11_N11
\Registro2|Reg3|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro2|Reg3|dato0~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg3|dato0~q\);

-- Location: LCCOMB_X15_Y11_N26
\Registro2|Reg4|dato0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro2|Reg4|dato0~feeder_combout\ = \Registro2|Reg3|dato0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro2|Reg3|dato0~q\,
	combout => \Registro2|Reg4|dato0~feeder_combout\);

-- Location: FF_X15_Y11_N27
\Registro2|Reg4|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro2|Reg4|dato0~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg4|dato0~q\);

-- Location: FF_X15_Y11_N13
\Registro2|Reg5|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro2|Reg4|dato0~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg5|dato0~q\);

-- Location: LCCOMB_X15_Y11_N28
\SelectorLetra|Mux1|Out_Mux~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux1|Out_Mux~8_combout\ = (\ContadorLetras|comb~2_combout\ & ((\ContadorLetras|dato3~q\ & (\Registro2|Reg1|dato0~q\)) # (!\ContadorLetras|dato3~q\ & ((\Registro2|Reg5|dato0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registro2|Reg1|dato0~q\,
	datab => \ContadorLetras|comb~2_combout\,
	datac => \Registro2|Reg5|dato0~q\,
	datad => \ContadorLetras|dato3~q\,
	combout => \SelectorLetra|Mux1|Out_Mux~8_combout\);

-- Location: FF_X15_Y11_N29
\Registro2|Reg6|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro2|Reg5|dato0~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg6|dato0~q\);

-- Location: FF_X15_Y11_N15
\Registro2|Reg7|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro2|Reg6|dato0~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg7|dato0~q\);

-- Location: LCCOMB_X15_Y11_N14
\SelectorLetra|Mux1|Out_Mux~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux1|Out_Mux~5_combout\ = (\ContadorLetras|dato3~q\ & (\Registro2|Reg3|dato0~q\)) # (!\ContadorLetras|dato3~q\ & ((\Registro2|Reg7|dato0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registro2|Reg3|dato0~q\,
	datac => \Registro2|Reg7|dato0~q\,
	datad => \ContadorLetras|dato3~q\,
	combout => \SelectorLetra|Mux1|Out_Mux~5_combout\);

-- Location: FF_X15_Y11_N21
\Registro2|Reg8|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro2|Reg7|dato0~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg8|dato0~q\);

-- Location: LCCOMB_X15_Y11_N20
\SelectorLetra|Mux1|Out_Mux~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux1|Out_Mux~6_combout\ = (\ContadorLetras|dato3~q\ & (\Registro2|Reg4|dato0~q\)) # (!\ContadorLetras|dato3~q\ & ((\Registro2|Reg8|dato0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registro2|Reg4|dato0~q\,
	datac => \Registro2|Reg8|dato0~q\,
	datad => \ContadorLetras|dato3~q\,
	combout => \SelectorLetra|Mux1|Out_Mux~6_combout\);

-- Location: LCCOMB_X16_Y14_N24
\SelectorLetra|Mux1|Out_Mux~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux1|Out_Mux~7_combout\ = (!\ContadorLetras|dato2~q\ & ((\ContadorLetras|dato1~q\ & (\SelectorLetra|Mux1|Out_Mux~5_combout\)) # (!\ContadorLetras|dato1~q\ & ((\SelectorLetra|Mux1|Out_Mux~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux1|Out_Mux~5_combout\,
	datab => \ContadorLetras|dato2~q\,
	datac => \SelectorLetra|Mux1|Out_Mux~6_combout\,
	datad => \ContadorLetras|dato1~q\,
	combout => \SelectorLetra|Mux1|Out_Mux~7_combout\);

-- Location: LCCOMB_X15_Y11_N2
\SelectorLetra|Mux1|Out_Mux~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux1|Out_Mux~9_combout\ = (\SelectorLetra|Mux1|Out_Mux~0_combout\ & ((\ContadorLetras|dato3~q\ & ((\Registro2|Reg2|dato0~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro2|Reg6|dato0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registro2|Reg6|dato0~q\,
	datab => \SelectorLetra|Mux1|Out_Mux~0_combout\,
	datac => \Registro2|Reg2|dato0~q\,
	datad => \ContadorLetras|dato3~q\,
	combout => \SelectorLetra|Mux1|Out_Mux~9_combout\);

-- Location: LCCOMB_X16_Y14_N18
\SelectorLetra|Mux1|Out_Mux~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux1|Out_Mux~10_combout\ = (\SelectorLetra|Mux3|Out_Mux~0_combout\ & ((\SelectorLetra|Mux1|Out_Mux~8_combout\) # ((\SelectorLetra|Mux1|Out_Mux~7_combout\) # (\SelectorLetra|Mux1|Out_Mux~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux1|Out_Mux~8_combout\,
	datab => \SelectorLetra|Mux1|Out_Mux~7_combout\,
	datac => \SelectorLetra|Mux3|Out_Mux~0_combout\,
	datad => \SelectorLetra|Mux1|Out_Mux~9_combout\,
	combout => \SelectorLetra|Mux1|Out_Mux~10_combout\);

-- Location: LCCOMB_X19_Y13_N26
\SelectorLetra|Mux1|Out_Mux~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux1|Out_Mux~1_combout\ = (!\ContadorLetras|dato1~q\ & \Selector[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContadorLetras|dato1~q\,
	datad => \Selector[1]~input_o\,
	combout => \SelectorLetra|Mux1|Out_Mux~1_combout\);

-- Location: FF_X19_Y13_N21
\Registro3|Reg7|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro3|Reg6|dato0~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg7|dato0~q\);

-- Location: FF_X19_Y13_N13
\Registro3|Reg8|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro3|Reg7|dato0~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg8|dato0~q\);

-- Location: LCCOMB_X19_Y13_N12
\SelectorLetra|Mux1|Out_Mux~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux1|Out_Mux~18_combout\ = (\SelectorLetra|Mux1|Out_Mux~1_combout\ & ((\ContadorLetras|dato3~q\ & ((\Registro3|Reg4|dato0~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro3|Reg8|dato0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato3~q\,
	datab => \SelectorLetra|Mux1|Out_Mux~1_combout\,
	datac => \Registro3|Reg8|dato0~q\,
	datad => \Registro3|Reg4|dato0~q\,
	combout => \SelectorLetra|Mux1|Out_Mux~18_combout\);

-- Location: FF_X20_Y13_N15
\Registro1|Reg7|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg6|dato0~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg7|dato0~q\);

-- Location: FF_X20_Y13_N23
\Registro1|Reg8|dato0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg7|dato0~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg8|dato0~q\);

-- Location: LCCOMB_X20_Y13_N22
\SelectorLetra|Mux1|Out_Mux~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux1|Out_Mux~20_combout\ = (\SelectorLetra|Mux1|Out_Mux~3_combout\ & ((\ContadorLetras|dato3~q\ & ((\Registro1|Reg4|dato0~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro1|Reg8|dato0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato3~q\,
	datab => \SelectorLetra|Mux1|Out_Mux~3_combout\,
	datac => \Registro1|Reg8|dato0~q\,
	datad => \Registro1|Reg4|dato0~q\,
	combout => \SelectorLetra|Mux1|Out_Mux~20_combout\);

-- Location: LCCOMB_X20_Y13_N14
\SelectorLetra|Mux1|Out_Mux~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux1|Out_Mux~19_combout\ = (\SelectorLetra|Mux1|Out_Mux~2_combout\ & ((\ContadorLetras|dato3~q\ & (\Registro1|Reg3|dato0~q\)) # (!\ContadorLetras|dato3~q\ & ((\Registro1|Reg7|dato0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato3~q\,
	datab => \Registro1|Reg3|dato0~q\,
	datac => \Registro1|Reg7|dato0~q\,
	datad => \SelectorLetra|Mux1|Out_Mux~2_combout\,
	combout => \SelectorLetra|Mux1|Out_Mux~19_combout\);

-- Location: LCCOMB_X17_Y13_N8
\SelectorLetra|Mux3|Out_Mux~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux3|Out_Mux~2_combout\ = (\Selector[1]~input_o\ & \ContadorLetras|dato1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector[1]~input_o\,
	datad => \ContadorLetras|dato1~q\,
	combout => \SelectorLetra|Mux3|Out_Mux~2_combout\);

-- Location: LCCOMB_X19_Y13_N20
\SelectorLetra|Mux1|Out_Mux~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux1|Out_Mux~17_combout\ = (\SelectorLetra|Mux3|Out_Mux~2_combout\ & ((\ContadorLetras|dato3~q\ & ((\Registro3|Reg3|dato0~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro3|Reg7|dato0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato3~q\,
	datab => \SelectorLetra|Mux3|Out_Mux~2_combout\,
	datac => \Registro3|Reg7|dato0~q\,
	datad => \Registro3|Reg3|dato0~q\,
	combout => \SelectorLetra|Mux1|Out_Mux~17_combout\);

-- Location: LCCOMB_X19_Y13_N28
\SelectorLetra|Mux1|Out_Mux~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux1|Out_Mux~21_combout\ = (\SelectorLetra|Mux1|Out_Mux~18_combout\) # ((\SelectorLetra|Mux1|Out_Mux~20_combout\) # ((\SelectorLetra|Mux1|Out_Mux~19_combout\) # (\SelectorLetra|Mux1|Out_Mux~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux1|Out_Mux~18_combout\,
	datab => \SelectorLetra|Mux1|Out_Mux~20_combout\,
	datac => \SelectorLetra|Mux1|Out_Mux~19_combout\,
	datad => \SelectorLetra|Mux1|Out_Mux~17_combout\,
	combout => \SelectorLetra|Mux1|Out_Mux~21_combout\);

-- Location: LCCOMB_X16_Y14_N14
\SelectorLetra|Mux1|Out_Mux~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux1|Out_Mux~22_combout\ = (\SelectorLetra|Mux1|Out_Mux~16_combout\) # ((\SelectorLetra|Mux1|Out_Mux~10_combout\) # ((\SelectorLetra|Mux1|Out_Mux~21_combout\ & \SelectorLetra|Mux5|Out_Mux~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux1|Out_Mux~16_combout\,
	datab => \SelectorLetra|Mux1|Out_Mux~10_combout\,
	datac => \SelectorLetra|Mux1|Out_Mux~21_combout\,
	datad => \SelectorLetra|Mux5|Out_Mux~0_combout\,
	combout => \SelectorLetra|Mux1|Out_Mux~22_combout\);

-- Location: LCCOMB_X15_Y14_N26
\ComunicacionPC~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ComunicacionPC~5_combout\ = (\ContadorSelector|dato2~q\ & ((\ComunicacionPC~4_combout\) # ((\SelectorLetra|Mux1|Out_Mux~22_combout\ & \ContadorSelector|dato3~q\)))) # (!\ContadorSelector|dato2~q\ & (((\SelectorLetra|Mux1|Out_Mux~22_combout\ & 
-- \ContadorSelector|dato3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorSelector|dato2~q\,
	datab => \ComunicacionPC~4_combout\,
	datac => \SelectorLetra|Mux1|Out_Mux~22_combout\,
	datad => \ContadorSelector|dato3~q\,
	combout => \ComunicacionPC~5_combout\);

-- Location: IOIBUF_X31_Y6_N8
\Letra[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Letra(1),
	o => \Letra[1]~input_o\);

-- Location: FF_X17_Y13_N9
\Registro1|Reg1|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Letra[1]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg1|dato1~q\);

-- Location: FF_X17_Y13_N19
\Registro1|Reg2|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg1|dato1~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg2|dato1~q\);

-- Location: LCCOMB_X17_Y13_N26
\Registro1|Reg3|dato1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro1|Reg3|dato1~feeder_combout\ = \Registro1|Reg2|dato1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro1|Reg2|dato1~q\,
	combout => \Registro1|Reg3|dato1~feeder_combout\);

-- Location: FF_X17_Y13_N27
\Registro1|Reg3|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro1|Reg3|dato1~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg3|dato1~q\);

-- Location: LCCOMB_X17_Y13_N30
\Registro1|Reg4|dato1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro1|Reg4|dato1~feeder_combout\ = \Registro1|Reg3|dato1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro1|Reg3|dato1~q\,
	combout => \Registro1|Reg4|dato1~feeder_combout\);

-- Location: FF_X17_Y13_N31
\Registro1|Reg4|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro1|Reg4|dato1~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg4|dato1~q\);

-- Location: FF_X17_Y13_N13
\Registro1|Reg5|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg4|dato1~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg5|dato1~q\);

-- Location: FF_X17_Y13_N15
\Registro1|Reg6|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg5|dato1~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg6|dato1~q\);

-- Location: FF_X17_Y13_N3
\Registro1|Reg7|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg6|dato1~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg7|dato1~q\);

-- Location: FF_X17_Y13_N7
\Registro1|Reg8|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg7|dato1~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg8|dato1~q\);

-- Location: LCCOMB_X17_Y13_N6
\SelectorLetra|Mux2|Out_Mux~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux2|Out_Mux~15_combout\ = (\SelectorLetra|Mux1|Out_Mux~3_combout\ & ((\ContadorLetras|dato3~q\ & (\Registro1|Reg4|dato1~q\)) # (!\ContadorLetras|dato3~q\ & ((\Registro1|Reg8|dato1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registro1|Reg4|dato1~q\,
	datab => \ContadorLetras|dato3~q\,
	datac => \Registro1|Reg8|dato1~q\,
	datad => \SelectorLetra|Mux1|Out_Mux~3_combout\,
	combout => \SelectorLetra|Mux2|Out_Mux~15_combout\);

-- Location: LCCOMB_X17_Y13_N2
\SelectorLetra|Mux2|Out_Mux~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux2|Out_Mux~14_combout\ = (\SelectorLetra|Mux1|Out_Mux~2_combout\ & ((\ContadorLetras|dato3~q\ & (\Registro1|Reg3|dato1~q\)) # (!\ContadorLetras|dato3~q\ & ((\Registro1|Reg7|dato1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato3~q\,
	datab => \Registro1|Reg3|dato1~q\,
	datac => \Registro1|Reg7|dato1~q\,
	datad => \SelectorLetra|Mux1|Out_Mux~2_combout\,
	combout => \SelectorLetra|Mux2|Out_Mux~14_combout\);

-- Location: FF_X17_Y13_N29
\Registro3|Reg1|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Letra[1]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg1|dato1~q\);

-- Location: LCCOMB_X18_Y13_N12
\Registro3|Reg2|dato1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro3|Reg2|dato1~feeder_combout\ = \Registro3|Reg1|dato1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro3|Reg1|dato1~q\,
	combout => \Registro3|Reg2|dato1~feeder_combout\);

-- Location: FF_X18_Y13_N13
\Registro3|Reg2|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro3|Reg2|dato1~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg2|dato1~q\);

-- Location: FF_X17_Y13_N21
\Registro3|Reg3|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro3|Reg2|dato1~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg3|dato1~q\);

-- Location: LCCOMB_X17_Y13_N0
\Registro3|Reg4|dato1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro3|Reg4|dato1~feeder_combout\ = \Registro3|Reg3|dato1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro3|Reg3|dato1~q\,
	combout => \Registro3|Reg4|dato1~feeder_combout\);

-- Location: FF_X17_Y13_N1
\Registro3|Reg4|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro3|Reg4|dato1~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg4|dato1~q\);

-- Location: LCCOMB_X17_Y13_N10
\Registro3|Reg5|dato1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro3|Reg5|dato1~feeder_combout\ = \Registro3|Reg4|dato1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro3|Reg4|dato1~q\,
	combout => \Registro3|Reg5|dato1~feeder_combout\);

-- Location: FF_X17_Y13_N11
\Registro3|Reg5|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro3|Reg5|dato1~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg5|dato1~q\);

-- Location: LCCOMB_X17_Y13_N22
\Registro3|Reg6|dato1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro3|Reg6|dato1~feeder_combout\ = \Registro3|Reg5|dato1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro3|Reg5|dato1~q\,
	combout => \Registro3|Reg6|dato1~feeder_combout\);

-- Location: FF_X17_Y13_N23
\Registro3|Reg6|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro3|Reg6|dato1~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg6|dato1~q\);

-- Location: FF_X17_Y13_N5
\Registro3|Reg7|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro3|Reg6|dato1~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg7|dato1~q\);

-- Location: LCCOMB_X17_Y13_N4
\SelectorLetra|Mux2|Out_Mux~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux2|Out_Mux~12_combout\ = (\SelectorLetra|Mux3|Out_Mux~2_combout\ & ((\ContadorLetras|dato3~q\ & ((\Registro3|Reg3|dato1~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro3|Reg7|dato1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux3|Out_Mux~2_combout\,
	datab => \ContadorLetras|dato3~q\,
	datac => \Registro3|Reg7|dato1~q\,
	datad => \Registro3|Reg3|dato1~q\,
	combout => \SelectorLetra|Mux2|Out_Mux~12_combout\);

-- Location: FF_X17_Y13_N25
\Registro3|Reg8|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro3|Reg7|dato1~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg8|dato1~q\);

-- Location: LCCOMB_X17_Y13_N24
\SelectorLetra|Mux2|Out_Mux~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux2|Out_Mux~13_combout\ = (\SelectorLetra|Mux1|Out_Mux~1_combout\ & ((\ContadorLetras|dato3~q\ & ((\Registro3|Reg4|dato1~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro3|Reg8|dato1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux1|Out_Mux~1_combout\,
	datab => \ContadorLetras|dato3~q\,
	datac => \Registro3|Reg8|dato1~q\,
	datad => \Registro3|Reg4|dato1~q\,
	combout => \SelectorLetra|Mux2|Out_Mux~13_combout\);

-- Location: LCCOMB_X17_Y13_N16
\SelectorLetra|Mux2|Out_Mux~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux2|Out_Mux~16_combout\ = (\SelectorLetra|Mux2|Out_Mux~15_combout\) # ((\SelectorLetra|Mux2|Out_Mux~14_combout\) # ((\SelectorLetra|Mux2|Out_Mux~12_combout\) # (\SelectorLetra|Mux2|Out_Mux~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux2|Out_Mux~15_combout\,
	datab => \SelectorLetra|Mux2|Out_Mux~14_combout\,
	datac => \SelectorLetra|Mux2|Out_Mux~12_combout\,
	datad => \SelectorLetra|Mux2|Out_Mux~13_combout\,
	combout => \SelectorLetra|Mux2|Out_Mux~16_combout\);

-- Location: LCCOMB_X17_Y13_N18
\SelectorLetra|Mux2|Out_Mux~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux2|Out_Mux~9_combout\ = (\Selector[1]~input_o\ & ((\Registro3|Reg2|dato1~q\) # ((\ContadorLetras|dato1~q\)))) # (!\Selector[1]~input_o\ & (((\Registro1|Reg2|dato1~q\ & !\ContadorLetras|dato1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector[1]~input_o\,
	datab => \Registro3|Reg2|dato1~q\,
	datac => \Registro1|Reg2|dato1~q\,
	datad => \ContadorLetras|dato1~q\,
	combout => \SelectorLetra|Mux2|Out_Mux~9_combout\);

-- Location: LCCOMB_X17_Y13_N28
\SelectorLetra|Mux2|Out_Mux~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux2|Out_Mux~10_combout\ = (\SelectorLetra|Mux2|Out_Mux~9_combout\ & (((\Registro3|Reg1|dato1~q\) # (!\ContadorLetras|dato1~q\)))) # (!\SelectorLetra|Mux2|Out_Mux~9_combout\ & (\Registro1|Reg1|dato1~q\ & ((\ContadorLetras|dato1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux2|Out_Mux~9_combout\,
	datab => \Registro1|Reg1|dato1~q\,
	datac => \Registro3|Reg1|dato1~q\,
	datad => \ContadorLetras|dato1~q\,
	combout => \SelectorLetra|Mux2|Out_Mux~10_combout\);

-- Location: LCCOMB_X17_Y13_N12
\SelectorLetra|Mux2|Out_Mux~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux2|Out_Mux~6_combout\ = (\Selector[1]~input_o\ & (((\Registro3|Reg5|dato1~q\)) # (!\ContadorLetras|dato1~q\))) # (!\Selector[1]~input_o\ & (\ContadorLetras|dato1~q\ & (\Registro1|Reg5|dato1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector[1]~input_o\,
	datab => \ContadorLetras|dato1~q\,
	datac => \Registro1|Reg5|dato1~q\,
	datad => \Registro3|Reg5|dato1~q\,
	combout => \SelectorLetra|Mux2|Out_Mux~6_combout\);

-- Location: LCCOMB_X17_Y13_N14
\SelectorLetra|Mux2|Out_Mux~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux2|Out_Mux~7_combout\ = (\ContadorLetras|dato1~q\ & (((\SelectorLetra|Mux2|Out_Mux~6_combout\)))) # (!\ContadorLetras|dato1~q\ & ((\SelectorLetra|Mux2|Out_Mux~6_combout\ & (\Registro3|Reg6|dato1~q\)) # 
-- (!\SelectorLetra|Mux2|Out_Mux~6_combout\ & ((\Registro1|Reg6|dato1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registro3|Reg6|dato1~q\,
	datab => \ContadorLetras|dato1~q\,
	datac => \Registro1|Reg6|dato1~q\,
	datad => \SelectorLetra|Mux2|Out_Mux~6_combout\,
	combout => \SelectorLetra|Mux2|Out_Mux~7_combout\);

-- Location: LCCOMB_X18_Y13_N4
\SelectorLetra|Mux2|Out_Mux~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux2|Out_Mux~8_combout\ = (!\ContadorLetras|dato3~q\ & (\ContadorLetras|dato2~q\ & (\SelectorLetra|Mux2|Out_Mux~7_combout\ & !\Selector[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato3~q\,
	datab => \ContadorLetras|dato2~q\,
	datac => \SelectorLetra|Mux2|Out_Mux~7_combout\,
	datad => \Selector[0]~input_o\,
	combout => \SelectorLetra|Mux2|Out_Mux~8_combout\);

-- Location: LCCOMB_X17_Y13_N20
\SelectorLetra|Mux2|Out_Mux~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux2|Out_Mux~11_combout\ = (\SelectorLetra|Mux2|Out_Mux~8_combout\) # ((\SelectorLetra|Mux3|Out_Mux~1_combout\ & \SelectorLetra|Mux2|Out_Mux~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux3|Out_Mux~1_combout\,
	datab => \SelectorLetra|Mux2|Out_Mux~10_combout\,
	datad => \SelectorLetra|Mux2|Out_Mux~8_combout\,
	combout => \SelectorLetra|Mux2|Out_Mux~11_combout\);

-- Location: FF_X18_Y13_N21
\Registro2|Reg1|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Letra[1]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg1|dato1~q\);

-- Location: LCCOMB_X18_Y13_N26
\Registro2|Reg2|dato1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro2|Reg2|dato1~feeder_combout\ = \Registro2|Reg1|dato1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro2|Reg1|dato1~q\,
	combout => \Registro2|Reg2|dato1~feeder_combout\);

-- Location: FF_X18_Y13_N27
\Registro2|Reg2|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro2|Reg2|dato1~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg2|dato1~q\);

-- Location: LCCOMB_X18_Y13_N28
\Registro2|Reg3|dato1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro2|Reg3|dato1~feeder_combout\ = \Registro2|Reg2|dato1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro2|Reg2|dato1~q\,
	combout => \Registro2|Reg3|dato1~feeder_combout\);

-- Location: FF_X18_Y13_N29
\Registro2|Reg3|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro2|Reg3|dato1~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg3|dato1~q\);

-- Location: LCCOMB_X18_Y13_N10
\Registro2|Reg4|dato1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro2|Reg4|dato1~feeder_combout\ = \Registro2|Reg3|dato1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro2|Reg3|dato1~q\,
	combout => \Registro2|Reg4|dato1~feeder_combout\);

-- Location: FF_X18_Y13_N11
\Registro2|Reg4|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro2|Reg4|dato1~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg4|dato1~q\);

-- Location: FF_X18_Y13_N23
\Registro2|Reg5|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro2|Reg4|dato1~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg5|dato1~q\);

-- Location: FF_X18_Y13_N17
\Registro2|Reg6|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro2|Reg5|dato1~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg6|dato1~q\);

-- Location: FF_X18_Y13_N15
\Registro2|Reg7|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro2|Reg6|dato1~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg7|dato1~q\);

-- Location: FF_X18_Y13_N31
\Registro2|Reg8|dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro2|Reg7|dato1~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg8|dato1~q\);

-- Location: LCCOMB_X18_Y13_N30
\SelectorLetra|Mux2|Out_Mux~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux2|Out_Mux~0_combout\ = (\ContadorLetras|dato3~q\ & (\Registro2|Reg4|dato1~q\)) # (!\ContadorLetras|dato3~q\ & ((\Registro2|Reg8|dato1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato3~q\,
	datab => \Registro2|Reg4|dato1~q\,
	datac => \Registro2|Reg8|dato1~q\,
	combout => \SelectorLetra|Mux2|Out_Mux~0_combout\);

-- Location: LCCOMB_X18_Y13_N14
\SelectorLetra|Mux2|Out_Mux~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux2|Out_Mux~1_combout\ = (\ContadorLetras|dato3~q\ & ((\Registro2|Reg3|dato1~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro2|Reg7|dato1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato3~q\,
	datac => \Registro2|Reg7|dato1~q\,
	datad => \Registro2|Reg3|dato1~q\,
	combout => \SelectorLetra|Mux2|Out_Mux~1_combout\);

-- Location: LCCOMB_X18_Y13_N6
\SelectorLetra|Mux2|Out_Mux~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux2|Out_Mux~2_combout\ = (!\ContadorLetras|dato2~q\ & ((\ContadorLetras|dato1~q\ & ((\SelectorLetra|Mux2|Out_Mux~1_combout\))) # (!\ContadorLetras|dato1~q\ & (\SelectorLetra|Mux2|Out_Mux~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux2|Out_Mux~0_combout\,
	datab => \SelectorLetra|Mux2|Out_Mux~1_combout\,
	datac => \ContadorLetras|dato2~q\,
	datad => \ContadorLetras|dato1~q\,
	combout => \SelectorLetra|Mux2|Out_Mux~2_combout\);

-- Location: LCCOMB_X18_Y13_N16
\SelectorLetra|Mux2|Out_Mux~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux2|Out_Mux~4_combout\ = (\SelectorLetra|Mux1|Out_Mux~0_combout\ & ((\ContadorLetras|dato3~q\ & ((\Registro2|Reg2|dato1~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro2|Reg6|dato1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato3~q\,
	datab => \SelectorLetra|Mux1|Out_Mux~0_combout\,
	datac => \Registro2|Reg6|dato1~q\,
	datad => \Registro2|Reg2|dato1~q\,
	combout => \SelectorLetra|Mux2|Out_Mux~4_combout\);

-- Location: LCCOMB_X18_Y13_N22
\SelectorLetra|Mux2|Out_Mux~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux2|Out_Mux~3_combout\ = (\ContadorLetras|comb~2_combout\ & ((\ContadorLetras|dato3~q\ & ((\Registro2|Reg1|dato1~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro2|Reg5|dato1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato3~q\,
	datab => \ContadorLetras|comb~2_combout\,
	datac => \Registro2|Reg5|dato1~q\,
	datad => \Registro2|Reg1|dato1~q\,
	combout => \SelectorLetra|Mux2|Out_Mux~3_combout\);

-- Location: LCCOMB_X18_Y13_N8
\SelectorLetra|Mux2|Out_Mux~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux2|Out_Mux~5_combout\ = (\SelectorLetra|Mux3|Out_Mux~0_combout\ & ((\SelectorLetra|Mux2|Out_Mux~2_combout\) # ((\SelectorLetra|Mux2|Out_Mux~4_combout\) # (\SelectorLetra|Mux2|Out_Mux~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux2|Out_Mux~2_combout\,
	datab => \SelectorLetra|Mux2|Out_Mux~4_combout\,
	datac => \SelectorLetra|Mux3|Out_Mux~0_combout\,
	datad => \SelectorLetra|Mux2|Out_Mux~3_combout\,
	combout => \SelectorLetra|Mux2|Out_Mux~5_combout\);

-- Location: LCCOMB_X18_Y13_N18
\SelectorLetra|Mux2|Out_Mux~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux2|Out_Mux~17_combout\ = (\SelectorLetra|Mux2|Out_Mux~11_combout\) # ((\SelectorLetra|Mux2|Out_Mux~5_combout\) # ((\SelectorLetra|Mux2|Out_Mux~16_combout\ & \SelectorLetra|Mux5|Out_Mux~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux2|Out_Mux~16_combout\,
	datab => \SelectorLetra|Mux2|Out_Mux~11_combout\,
	datac => \SelectorLetra|Mux2|Out_Mux~5_combout\,
	datad => \SelectorLetra|Mux5|Out_Mux~0_combout\,
	combout => \SelectorLetra|Mux2|Out_Mux~17_combout\);

-- Location: LCCOMB_X15_Y10_N22
\SelectorBits|Mux1|Out_Mux~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorBits|Mux1|Out_Mux~0_combout\ = (!\ContadorSelector|dato2~q\ & (!\ContadorSelector|dato1~q\ & (!\ContadorSelector|dato4~q\ & \ContadorSelector|dato3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorSelector|dato2~q\,
	datab => \ContadorSelector|dato1~q\,
	datac => \ContadorSelector|dato4~q\,
	datad => \ContadorSelector|dato3~q\,
	combout => \SelectorBits|Mux1|Out_Mux~0_combout\);

-- Location: LCCOMB_X15_Y10_N28
\ComunicacionPC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ComunicacionPC~0_combout\ = (\SelectorLetra|Mux2|Out_Mux~17_combout\ & ((\SelectorBits|Mux1|Out_Mux~0_combout\) # ((!\Controll|Protocolo~0_combout\ & !\Controll|F11~q\)))) # (!\SelectorLetra|Mux2|Out_Mux~17_combout\ & (!\Controll|Protocolo~0_combout\ & 
-- (!\Controll|F11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux2|Out_Mux~17_combout\,
	datab => \Controll|Protocolo~0_combout\,
	datac => \Controll|F11~q\,
	datad => \SelectorBits|Mux1|Out_Mux~0_combout\,
	combout => \ComunicacionPC~0_combout\);

-- Location: LCCOMB_X15_Y10_N26
\ComunicacionPC~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ComunicacionPC~6_combout\ = (!\ContadorSelector|dato4~q\ & \ContadorSelector|dato1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorSelector|dato4~q\,
	datac => \ContadorSelector|dato1~q\,
	combout => \ComunicacionPC~6_combout\);

-- Location: IOIBUF_X31_Y1_N15
\Letra[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Letra(4),
	o => \Letra[4]~input_o\);

-- Location: FF_X17_Y14_N1
\Registro3|Reg1|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Letra[4]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg1|dato4~q\);

-- Location: LCCOMB_X17_Y14_N2
\Registro3|Reg2|dato4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro3|Reg2|dato4~feeder_combout\ = \Registro3|Reg1|dato4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro3|Reg1|dato4~q\,
	combout => \Registro3|Reg2|dato4~feeder_combout\);

-- Location: FF_X17_Y14_N3
\Registro3|Reg2|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro3|Reg2|dato4~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg2|dato4~q\);

-- Location: LCCOMB_X17_Y14_N12
\Registro3|Reg3|dato4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro3|Reg3|dato4~feeder_combout\ = \Registro3|Reg2|dato4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro3|Reg2|dato4~q\,
	combout => \Registro3|Reg3|dato4~feeder_combout\);

-- Location: FF_X17_Y14_N13
\Registro3|Reg3|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro3|Reg3|dato4~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg3|dato4~q\);

-- Location: LCCOMB_X17_Y14_N6
\Registro3|Reg4|dato4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro3|Reg4|dato4~feeder_combout\ = \Registro3|Reg3|dato4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro3|Reg3|dato4~q\,
	combout => \Registro3|Reg4|dato4~feeder_combout\);

-- Location: FF_X17_Y14_N7
\Registro3|Reg4|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro3|Reg4|dato4~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg4|dato4~q\);

-- Location: LCCOMB_X17_Y14_N26
\Registro3|Reg5|dato4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro3|Reg5|dato4~feeder_combout\ = \Registro3|Reg4|dato4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro3|Reg4|dato4~q\,
	combout => \Registro3|Reg5|dato4~feeder_combout\);

-- Location: FF_X17_Y14_N27
\Registro3|Reg5|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro3|Reg5|dato4~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg5|dato4~q\);

-- Location: FF_X17_Y14_N23
\Registro3|Reg6|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro3|Reg5|dato4~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg6|dato4~q\);

-- Location: FF_X17_Y14_N17
\Registro3|Reg7|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro3|Reg6|dato4~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg7|dato4~q\);

-- Location: LCCOMB_X17_Y14_N16
\SelectorLetra|Mux5|Out_Mux~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux5|Out_Mux~1_combout\ = (\ContadorLetras|dato3~q\ & ((\Registro3|Reg3|dato4~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro3|Reg7|dato4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ContadorLetras|dato3~q\,
	datac => \Registro3|Reg7|dato4~q\,
	datad => \Registro3|Reg3|dato4~q\,
	combout => \SelectorLetra|Mux5|Out_Mux~1_combout\);

-- Location: FF_X17_Y14_N11
\Registro3|Reg8|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro3|Reg7|dato4~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg8|dato4~q\);

-- Location: LCCOMB_X17_Y14_N10
\SelectorLetra|Mux5|Out_Mux~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux5|Out_Mux~2_combout\ = (\ContadorLetras|dato3~q\ & ((\Registro3|Reg4|dato4~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro3|Reg8|dato4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ContadorLetras|dato3~q\,
	datac => \Registro3|Reg8|dato4~q\,
	datad => \Registro3|Reg4|dato4~q\,
	combout => \SelectorLetra|Mux5|Out_Mux~2_combout\);

-- Location: LCCOMB_X17_Y14_N4
\SelectorLetra|Mux5|Out_Mux~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux5|Out_Mux~3_combout\ = (\Selector[1]~input_o\ & ((\ContadorLetras|dato1~q\ & (\SelectorLetra|Mux5|Out_Mux~1_combout\)) # (!\ContadorLetras|dato1~q\ & ((\SelectorLetra|Mux5|Out_Mux~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato1~q\,
	datab => \SelectorLetra|Mux5|Out_Mux~1_combout\,
	datac => \Selector[1]~input_o\,
	datad => \SelectorLetra|Mux5|Out_Mux~2_combout\,
	combout => \SelectorLetra|Mux5|Out_Mux~3_combout\);

-- Location: FF_X19_Y14_N9
\Registro1|Reg1|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Letra[4]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg1|dato4~q\);

-- Location: FF_X17_Y14_N21
\Registro1|Reg2|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg1|dato4~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg2|dato4~q\);

-- Location: FF_X17_Y14_N25
\Registro1|Reg3|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg2|dato4~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg3|dato4~q\);

-- Location: LCCOMB_X17_Y14_N18
\Registro1|Reg4|dato4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro1|Reg4|dato4~feeder_combout\ = \Registro1|Reg3|dato4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro1|Reg3|dato4~q\,
	combout => \Registro1|Reg4|dato4~feeder_combout\);

-- Location: FF_X17_Y14_N19
\Registro1|Reg4|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro1|Reg4|dato4~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg4|dato4~q\);

-- Location: LCCOMB_X17_Y14_N14
\Registro1|Reg5|dato4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro1|Reg5|dato4~feeder_combout\ = \Registro1|Reg4|dato4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro1|Reg4|dato4~q\,
	combout => \Registro1|Reg5|dato4~feeder_combout\);

-- Location: FF_X17_Y14_N15
\Registro1|Reg5|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro1|Reg5|dato4~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg5|dato4~q\);

-- Location: FF_X17_Y14_N31
\Registro1|Reg6|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg5|dato4~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg6|dato4~q\);

-- Location: FF_X17_Y14_N9
\Registro1|Reg7|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg6|dato4~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg7|dato4~q\);

-- Location: FF_X17_Y14_N29
\Registro1|Reg8|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg7|dato4~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg8|dato4~q\);

-- Location: LCCOMB_X17_Y14_N28
\SelectorLetra|Mux5|Out_Mux~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux5|Out_Mux~5_combout\ = (\SelectorLetra|Mux1|Out_Mux~3_combout\ & ((\ContadorLetras|dato3~q\ & ((\Registro1|Reg4|dato4~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro1|Reg8|dato4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux1|Out_Mux~3_combout\,
	datab => \ContadorLetras|dato3~q\,
	datac => \Registro1|Reg8|dato4~q\,
	datad => \Registro1|Reg4|dato4~q\,
	combout => \SelectorLetra|Mux5|Out_Mux~5_combout\);

-- Location: LCCOMB_X17_Y14_N8
\SelectorLetra|Mux5|Out_Mux~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux5|Out_Mux~4_combout\ = (\SelectorLetra|Mux1|Out_Mux~2_combout\ & ((\ContadorLetras|dato3~q\ & ((\Registro1|Reg3|dato4~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro1|Reg7|dato4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux1|Out_Mux~2_combout\,
	datab => \ContadorLetras|dato3~q\,
	datac => \Registro1|Reg7|dato4~q\,
	datad => \Registro1|Reg3|dato4~q\,
	combout => \SelectorLetra|Mux5|Out_Mux~4_combout\);

-- Location: LCCOMB_X16_Y14_N22
\SelectorLetra|Mux5|Out_Mux~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux5|Out_Mux~6_combout\ = (\SelectorLetra|Mux5|Out_Mux~0_combout\ & ((\SelectorLetra|Mux5|Out_Mux~3_combout\) # ((\SelectorLetra|Mux5|Out_Mux~5_combout\) # (\SelectorLetra|Mux5|Out_Mux~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux5|Out_Mux~3_combout\,
	datab => \SelectorLetra|Mux5|Out_Mux~5_combout\,
	datac => \SelectorLetra|Mux5|Out_Mux~4_combout\,
	datad => \SelectorLetra|Mux5|Out_Mux~0_combout\,
	combout => \SelectorLetra|Mux5|Out_Mux~6_combout\);

-- Location: LCCOMB_X17_Y14_N30
\SelectorLetra|Mux5|Out_Mux~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux5|Out_Mux~7_combout\ = (\ContadorLetras|dato1~q\ & ((\Registro1|Reg5|dato4~q\) # ((\Selector[1]~input_o\)))) # (!\ContadorLetras|dato1~q\ & (((\Registro1|Reg6|dato4~q\ & !\Selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato1~q\,
	datab => \Registro1|Reg5|dato4~q\,
	datac => \Registro1|Reg6|dato4~q\,
	datad => \Selector[1]~input_o\,
	combout => \SelectorLetra|Mux5|Out_Mux~7_combout\);

-- Location: LCCOMB_X17_Y14_N22
\SelectorLetra|Mux5|Out_Mux~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux5|Out_Mux~8_combout\ = (\Selector[1]~input_o\ & ((\SelectorLetra|Mux5|Out_Mux~7_combout\ & (\Registro3|Reg5|dato4~q\)) # (!\SelectorLetra|Mux5|Out_Mux~7_combout\ & ((\Registro3|Reg6|dato4~q\))))) # (!\Selector[1]~input_o\ & 
-- (((\SelectorLetra|Mux5|Out_Mux~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registro3|Reg5|dato4~q\,
	datab => \Selector[1]~input_o\,
	datac => \Registro3|Reg6|dato4~q\,
	datad => \SelectorLetra|Mux5|Out_Mux~7_combout\,
	combout => \SelectorLetra|Mux5|Out_Mux~8_combout\);

-- Location: LCCOMB_X17_Y14_N20
\SelectorLetra|Mux5|Out_Mux~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux5|Out_Mux~9_combout\ = (\ContadorLetras|dato1~q\ & (\Selector[1]~input_o\)) # (!\ContadorLetras|dato1~q\ & ((\Selector[1]~input_o\ & ((\Registro3|Reg2|dato4~q\))) # (!\Selector[1]~input_o\ & (\Registro1|Reg2|dato4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato1~q\,
	datab => \Selector[1]~input_o\,
	datac => \Registro1|Reg2|dato4~q\,
	datad => \Registro3|Reg2|dato4~q\,
	combout => \SelectorLetra|Mux5|Out_Mux~9_combout\);

-- Location: LCCOMB_X17_Y14_N0
\SelectorLetra|Mux5|Out_Mux~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux5|Out_Mux~10_combout\ = (\SelectorLetra|Mux5|Out_Mux~9_combout\ & (((\Registro3|Reg1|dato4~q\) # (!\ContadorLetras|dato1~q\)))) # (!\SelectorLetra|Mux5|Out_Mux~9_combout\ & (\Registro1|Reg1|dato4~q\ & ((\ContadorLetras|dato1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registro1|Reg1|dato4~q\,
	datab => \SelectorLetra|Mux5|Out_Mux~9_combout\,
	datac => \Registro3|Reg1|dato4~q\,
	datad => \ContadorLetras|dato1~q\,
	combout => \SelectorLetra|Mux5|Out_Mux~10_combout\);

-- Location: LCCOMB_X16_Y14_N20
\ComunicacionPC~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ComunicacionPC~1_combout\ = (\SelectorLetra|Mux3|Out_Mux~1_combout\ & ((\SelectorLetra|Mux5|Out_Mux~10_combout\) # ((\SelectorLetra|Mux5|Out_Mux~8_combout\ & \SelectorLetra|Mux1|Out_Mux~4_combout\)))) # (!\SelectorLetra|Mux3|Out_Mux~1_combout\ & 
-- (\SelectorLetra|Mux5|Out_Mux~8_combout\ & ((\SelectorLetra|Mux1|Out_Mux~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux3|Out_Mux~1_combout\,
	datab => \SelectorLetra|Mux5|Out_Mux~8_combout\,
	datac => \SelectorLetra|Mux5|Out_Mux~10_combout\,
	datad => \SelectorLetra|Mux1|Out_Mux~4_combout\,
	combout => \ComunicacionPC~1_combout\);

-- Location: FF_X19_Y14_N27
\Registro2|Reg1|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Letra[4]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg1|dato4~q\);

-- Location: FF_X19_Y14_N17
\Registro2|Reg2|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro2|Reg1|dato4~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg2|dato4~q\);

-- Location: LCCOMB_X18_Y14_N12
\Registro2|Reg3|dato4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro2|Reg3|dato4~feeder_combout\ = \Registro2|Reg2|dato4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro2|Reg2|dato4~q\,
	combout => \Registro2|Reg3|dato4~feeder_combout\);

-- Location: FF_X18_Y14_N13
\Registro2|Reg3|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro2|Reg3|dato4~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg3|dato4~q\);

-- Location: FF_X18_Y14_N29
\Registro2|Reg4|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro2|Reg3|dato4~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg4|dato4~q\);

-- Location: FF_X18_Y14_N19
\Registro2|Reg5|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro2|Reg4|dato4~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg5|dato4~q\);

-- Location: FF_X18_Y14_N27
\Registro2|Reg6|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro2|Reg5|dato4~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg6|dato4~q\);

-- Location: LCCOMB_X18_Y14_N26
\SelectorLetra|Mux5|Out_Mux~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux5|Out_Mux~15_combout\ = (\SelectorLetra|Mux1|Out_Mux~0_combout\ & ((\ContadorLetras|dato3~q\ & (\Registro2|Reg2|dato4~q\)) # (!\ContadorLetras|dato3~q\ & ((\Registro2|Reg6|dato4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux1|Out_Mux~0_combout\,
	datab => \Registro2|Reg2|dato4~q\,
	datac => \Registro2|Reg6|dato4~q\,
	datad => \ContadorLetras|dato3~q\,
	combout => \SelectorLetra|Mux5|Out_Mux~15_combout\);

-- Location: LCCOMB_X18_Y14_N18
\SelectorLetra|Mux5|Out_Mux~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux5|Out_Mux~14_combout\ = (\ContadorLetras|comb~2_combout\ & ((\ContadorLetras|dato3~q\ & ((\Registro2|Reg1|dato4~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro2|Reg5|dato4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato3~q\,
	datab => \ContadorLetras|comb~2_combout\,
	datac => \Registro2|Reg5|dato4~q\,
	datad => \Registro2|Reg1|dato4~q\,
	combout => \SelectorLetra|Mux5|Out_Mux~14_combout\);

-- Location: FF_X18_Y14_N15
\Registro2|Reg7|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro2|Reg6|dato4~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg7|dato4~q\);

-- Location: FF_X18_Y14_N21
\Registro2|Reg8|dato4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro2|Reg7|dato4~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg8|dato4~q\);

-- Location: LCCOMB_X18_Y14_N20
\SelectorLetra|Mux5|Out_Mux~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux5|Out_Mux~12_combout\ = (\ContadorLetras|dato3~q\ & (\Registro2|Reg4|dato4~q\)) # (!\ContadorLetras|dato3~q\ & ((\Registro2|Reg8|dato4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registro2|Reg4|dato4~q\,
	datac => \Registro2|Reg8|dato4~q\,
	datad => \ContadorLetras|dato3~q\,
	combout => \SelectorLetra|Mux5|Out_Mux~12_combout\);

-- Location: LCCOMB_X18_Y14_N14
\SelectorLetra|Mux5|Out_Mux~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux5|Out_Mux~11_combout\ = (\ContadorLetras|dato3~q\ & (\Registro2|Reg3|dato4~q\)) # (!\ContadorLetras|dato3~q\ & ((\Registro2|Reg7|dato4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registro2|Reg3|dato4~q\,
	datac => \Registro2|Reg7|dato4~q\,
	datad => \ContadorLetras|dato3~q\,
	combout => \SelectorLetra|Mux5|Out_Mux~11_combout\);

-- Location: LCCOMB_X18_Y14_N16
\SelectorLetra|Mux5|Out_Mux~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux5|Out_Mux~13_combout\ = (!\ContadorLetras|dato2~q\ & ((\ContadorLetras|dato1~q\ & ((\SelectorLetra|Mux5|Out_Mux~11_combout\))) # (!\ContadorLetras|dato1~q\ & (\SelectorLetra|Mux5|Out_Mux~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato2~q\,
	datab => \SelectorLetra|Mux5|Out_Mux~12_combout\,
	datac => \ContadorLetras|dato1~q\,
	datad => \SelectorLetra|Mux5|Out_Mux~11_combout\,
	combout => \SelectorLetra|Mux5|Out_Mux~13_combout\);

-- Location: LCCOMB_X18_Y14_N10
\SelectorLetra|Mux5|Out_Mux~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux5|Out_Mux~16_combout\ = (\SelectorLetra|Mux3|Out_Mux~0_combout\ & ((\SelectorLetra|Mux5|Out_Mux~15_combout\) # ((\SelectorLetra|Mux5|Out_Mux~14_combout\) # (\SelectorLetra|Mux5|Out_Mux~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux5|Out_Mux~15_combout\,
	datab => \SelectorLetra|Mux5|Out_Mux~14_combout\,
	datac => \SelectorLetra|Mux3|Out_Mux~0_combout\,
	datad => \SelectorLetra|Mux5|Out_Mux~13_combout\,
	combout => \SelectorLetra|Mux5|Out_Mux~16_combout\);

-- Location: LCCOMB_X16_Y14_N10
\ComunicacionPC~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ComunicacionPC~2_combout\ = (\SelectorLetra|Mux5|Out_Mux~6_combout\) # ((\ComunicacionPC~1_combout\) # ((\ContadorSelector|dato4~q\) # (\SelectorLetra|Mux5|Out_Mux~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux5|Out_Mux~6_combout\,
	datab => \ComunicacionPC~1_combout\,
	datac => \ContadorSelector|dato4~q\,
	datad => \SelectorLetra|Mux5|Out_Mux~16_combout\,
	combout => \ComunicacionPC~2_combout\);

-- Location: IOIBUF_X31_Y4_N22
\Letra[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Letra(3),
	o => \Letra[3]~input_o\);

-- Location: LCCOMB_X15_Y11_N6
\Registro2|Reg1|dato3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro2|Reg1|dato3~feeder_combout\ = \Letra[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Letra[3]~input_o\,
	combout => \Registro2|Reg1|dato3~feeder_combout\);

-- Location: FF_X15_Y11_N7
\Registro2|Reg1|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro2|Reg1|dato3~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg1|dato3~q\);

-- Location: LCCOMB_X15_Y11_N18
\Registro2|Reg2|dato3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro2|Reg2|dato3~feeder_combout\ = \Registro2|Reg1|dato3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro2|Reg1|dato3~q\,
	combout => \Registro2|Reg2|dato3~feeder_combout\);

-- Location: FF_X15_Y11_N19
\Registro2|Reg2|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro2|Reg2|dato3~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg2|dato3~q\);

-- Location: LCCOMB_X15_Y11_N24
\Registro2|Reg3|dato3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro2|Reg3|dato3~feeder_combout\ = \Registro2|Reg2|dato3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro2|Reg2|dato3~q\,
	combout => \Registro2|Reg3|dato3~feeder_combout\);

-- Location: FF_X15_Y11_N25
\Registro2|Reg3|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro2|Reg3|dato3~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg3|dato3~q\);

-- Location: LCCOMB_X15_Y11_N4
\Registro2|Reg4|dato3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro2|Reg4|dato3~feeder_combout\ = \Registro2|Reg3|dato3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro2|Reg3|dato3~q\,
	combout => \Registro2|Reg4|dato3~feeder_combout\);

-- Location: FF_X15_Y11_N5
\Registro2|Reg4|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro2|Reg4|dato3~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg4|dato3~q\);

-- Location: FF_X15_Y11_N31
\Registro2|Reg5|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro2|Reg4|dato3~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg5|dato3~q\);

-- Location: FF_X15_Y11_N23
\Registro2|Reg6|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro2|Reg5|dato3~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg6|dato3~q\);

-- Location: LCCOMB_X15_Y11_N22
\SelectorLetra|Mux4|Out_Mux~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux4|Out_Mux~4_combout\ = (\SelectorLetra|Mux1|Out_Mux~0_combout\ & ((\ContadorLetras|dato3~q\ & ((\Registro2|Reg2|dato3~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro2|Reg6|dato3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato3~q\,
	datab => \SelectorLetra|Mux1|Out_Mux~0_combout\,
	datac => \Registro2|Reg6|dato3~q\,
	datad => \Registro2|Reg2|dato3~q\,
	combout => \SelectorLetra|Mux4|Out_Mux~4_combout\);

-- Location: FF_X15_Y11_N9
\Registro2|Reg7|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro2|Reg6|dato3~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg7|dato3~q\);

-- Location: FF_X15_Y11_N1
\Registro2|Reg8|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro2|Reg7|dato3~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro2|Reg8|dato3~q\);

-- Location: LCCOMB_X15_Y11_N0
\SelectorLetra|Mux4|Out_Mux~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux4|Out_Mux~0_combout\ = (\ContadorLetras|dato3~q\ & (\Registro2|Reg4|dato3~q\)) # (!\ContadorLetras|dato3~q\ & ((\Registro2|Reg8|dato3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registro2|Reg4|dato3~q\,
	datac => \Registro2|Reg8|dato3~q\,
	datad => \ContadorLetras|dato3~q\,
	combout => \SelectorLetra|Mux4|Out_Mux~0_combout\);

-- Location: LCCOMB_X15_Y11_N8
\SelectorLetra|Mux4|Out_Mux~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux4|Out_Mux~1_combout\ = (\ContadorLetras|dato3~q\ & (\Registro2|Reg3|dato3~q\)) # (!\ContadorLetras|dato3~q\ & ((\Registro2|Reg7|dato3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registro2|Reg3|dato3~q\,
	datac => \Registro2|Reg7|dato3~q\,
	datad => \ContadorLetras|dato3~q\,
	combout => \SelectorLetra|Mux4|Out_Mux~1_combout\);

-- Location: LCCOMB_X16_Y14_N4
\SelectorLetra|Mux4|Out_Mux~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux4|Out_Mux~2_combout\ = (!\ContadorLetras|dato2~q\ & ((\ContadorLetras|dato1~q\ & ((\SelectorLetra|Mux4|Out_Mux~1_combout\))) # (!\ContadorLetras|dato1~q\ & (\SelectorLetra|Mux4|Out_Mux~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux4|Out_Mux~0_combout\,
	datab => \ContadorLetras|dato2~q\,
	datac => \SelectorLetra|Mux4|Out_Mux~1_combout\,
	datad => \ContadorLetras|dato1~q\,
	combout => \SelectorLetra|Mux4|Out_Mux~2_combout\);

-- Location: LCCOMB_X15_Y11_N30
\SelectorLetra|Mux4|Out_Mux~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux4|Out_Mux~3_combout\ = (\ContadorLetras|comb~2_combout\ & ((\ContadorLetras|dato3~q\ & ((\Registro2|Reg1|dato3~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro2|Reg5|dato3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato3~q\,
	datab => \ContadorLetras|comb~2_combout\,
	datac => \Registro2|Reg5|dato3~q\,
	datad => \Registro2|Reg1|dato3~q\,
	combout => \SelectorLetra|Mux4|Out_Mux~3_combout\);

-- Location: LCCOMB_X16_Y14_N6
\SelectorLetra|Mux4|Out_Mux~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux4|Out_Mux~5_combout\ = (\SelectorLetra|Mux3|Out_Mux~0_combout\ & ((\SelectorLetra|Mux4|Out_Mux~4_combout\) # ((\SelectorLetra|Mux4|Out_Mux~2_combout\) # (\SelectorLetra|Mux4|Out_Mux~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux4|Out_Mux~4_combout\,
	datab => \SelectorLetra|Mux4|Out_Mux~2_combout\,
	datac => \SelectorLetra|Mux3|Out_Mux~0_combout\,
	datad => \SelectorLetra|Mux4|Out_Mux~3_combout\,
	combout => \SelectorLetra|Mux4|Out_Mux~5_combout\);

-- Location: FF_X20_Y13_N25
\Registro1|Reg1|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Letra[3]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg1|dato3~q\);

-- Location: FF_X20_Y13_N17
\Registro1|Reg2|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg1|dato3~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg2|dato3~q\);

-- Location: LCCOMB_X20_Y13_N12
\Registro1|Reg3|dato3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro1|Reg3|dato3~feeder_combout\ = \Registro1|Reg2|dato3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro1|Reg2|dato3~q\,
	combout => \Registro1|Reg3|dato3~feeder_combout\);

-- Location: FF_X20_Y13_N13
\Registro1|Reg3|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro1|Reg3|dato3~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg3|dato3~q\);

-- Location: LCCOMB_X19_Y14_N10
\Registro1|Reg4|dato3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro1|Reg4|dato3~feeder_combout\ = \Registro1|Reg3|dato3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro1|Reg3|dato3~q\,
	combout => \Registro1|Reg4|dato3~feeder_combout\);

-- Location: FF_X19_Y14_N11
\Registro1|Reg4|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro1|Reg4|dato3~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg4|dato3~q\);

-- Location: LCCOMB_X19_Y14_N30
\Registro1|Reg5|dato3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro1|Reg5|dato3~feeder_combout\ = \Registro1|Reg4|dato3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro1|Reg4|dato3~q\,
	combout => \Registro1|Reg5|dato3~feeder_combout\);

-- Location: FF_X19_Y14_N31
\Registro1|Reg5|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro1|Reg5|dato3~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg5|dato3~q\);

-- Location: FF_X20_Y13_N3
\Registro3|Reg1|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Letra[3]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg1|dato3~q\);

-- Location: LCCOMB_X20_Y13_N30
\Registro3|Reg2|dato3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registro3|Reg2|dato3~feeder_combout\ = \Registro3|Reg1|dato3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registro3|Reg1|dato3~q\,
	combout => \Registro3|Reg2|dato3~feeder_combout\);

-- Location: FF_X20_Y13_N31
\Registro3|Reg2|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Registro3|Reg2|dato3~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg2|dato3~q\);

-- Location: FF_X19_Y13_N23
\Registro3|Reg3|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro3|Reg2|dato3~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg3|dato3~q\);

-- Location: FF_X19_Y13_N5
\Registro3|Reg4|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro3|Reg3|dato3~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg4|dato3~q\);

-- Location: FF_X19_Y13_N3
\Registro3|Reg5|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro3|Reg4|dato3~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg5|dato3~q\);

-- Location: LCCOMB_X19_Y13_N2
\SelectorLetra|Mux4|Out_Mux~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux4|Out_Mux~6_combout\ = (\ContadorLetras|dato1~q\ & ((\Selector[1]~input_o\ & ((\Registro3|Reg5|dato3~q\))) # (!\Selector[1]~input_o\ & (\Registro1|Reg5|dato3~q\)))) # (!\ContadorLetras|dato1~q\ & (((\Selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato1~q\,
	datab => \Registro1|Reg5|dato3~q\,
	datac => \Registro3|Reg5|dato3~q\,
	datad => \Selector[1]~input_o\,
	combout => \SelectorLetra|Mux4|Out_Mux~6_combout\);

-- Location: FF_X19_Y13_N25
\Registro3|Reg6|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro3|Reg5|dato3~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg6|dato3~q\);

-- Location: FF_X19_Y14_N5
\Registro1|Reg6|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg5|dato3~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg6|dato3~q\);

-- Location: LCCOMB_X19_Y13_N24
\SelectorLetra|Mux4|Out_Mux~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux4|Out_Mux~7_combout\ = (\ContadorLetras|dato1~q\ & (\SelectorLetra|Mux4|Out_Mux~6_combout\)) # (!\ContadorLetras|dato1~q\ & ((\SelectorLetra|Mux4|Out_Mux~6_combout\ & (\Registro3|Reg6|dato3~q\)) # (!\SelectorLetra|Mux4|Out_Mux~6_combout\ 
-- & ((\Registro1|Reg6|dato3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato1~q\,
	datab => \SelectorLetra|Mux4|Out_Mux~6_combout\,
	datac => \Registro3|Reg6|dato3~q\,
	datad => \Registro1|Reg6|dato3~q\,
	combout => \SelectorLetra|Mux4|Out_Mux~7_combout\);

-- Location: LCCOMB_X19_Y13_N6
\SelectorLetra|Mux4|Out_Mux~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux4|Out_Mux~8_combout\ = (!\ContadorLetras|dato3~q\ & (!\Selector[0]~input_o\ & (\ContadorLetras|dato2~q\ & \SelectorLetra|Mux4|Out_Mux~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato3~q\,
	datab => \Selector[0]~input_o\,
	datac => \ContadorLetras|dato2~q\,
	datad => \SelectorLetra|Mux4|Out_Mux~7_combout\,
	combout => \SelectorLetra|Mux4|Out_Mux~8_combout\);

-- Location: LCCOMB_X20_Y13_N16
\SelectorLetra|Mux4|Out_Mux~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux4|Out_Mux~9_combout\ = (\Selector[1]~input_o\ & ((\ContadorLetras|dato1~q\) # ((\Registro3|Reg2|dato3~q\)))) # (!\Selector[1]~input_o\ & (!\ContadorLetras|dato1~q\ & (\Registro1|Reg2|dato3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector[1]~input_o\,
	datab => \ContadorLetras|dato1~q\,
	datac => \Registro1|Reg2|dato3~q\,
	datad => \Registro3|Reg2|dato3~q\,
	combout => \SelectorLetra|Mux4|Out_Mux~9_combout\);

-- Location: LCCOMB_X20_Y13_N2
\SelectorLetra|Mux4|Out_Mux~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux4|Out_Mux~10_combout\ = (\ContadorLetras|dato1~q\ & ((\SelectorLetra|Mux4|Out_Mux~9_combout\ & ((\Registro3|Reg1|dato3~q\))) # (!\SelectorLetra|Mux4|Out_Mux~9_combout\ & (\Registro1|Reg1|dato3~q\)))) # (!\ContadorLetras|dato1~q\ & 
-- (((\SelectorLetra|Mux4|Out_Mux~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registro1|Reg1|dato3~q\,
	datab => \ContadorLetras|dato1~q\,
	datac => \Registro3|Reg1|dato3~q\,
	datad => \SelectorLetra|Mux4|Out_Mux~9_combout\,
	combout => \SelectorLetra|Mux4|Out_Mux~10_combout\);

-- Location: LCCOMB_X19_Y13_N4
\SelectorLetra|Mux4|Out_Mux~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux4|Out_Mux~11_combout\ = (\SelectorLetra|Mux4|Out_Mux~8_combout\) # ((\SelectorLetra|Mux3|Out_Mux~1_combout\ & \SelectorLetra|Mux4|Out_Mux~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux4|Out_Mux~8_combout\,
	datab => \SelectorLetra|Mux3|Out_Mux~1_combout\,
	datad => \SelectorLetra|Mux4|Out_Mux~10_combout\,
	combout => \SelectorLetra|Mux4|Out_Mux~11_combout\);

-- Location: FF_X19_Y13_N31
\Registro3|Reg7|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro3|Reg6|dato3~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg7|dato3~q\);

-- Location: LCCOMB_X19_Y13_N30
\SelectorLetra|Mux4|Out_Mux~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux4|Out_Mux~12_combout\ = (\SelectorLetra|Mux3|Out_Mux~2_combout\ & ((\ContadorLetras|dato3~q\ & (\Registro3|Reg3|dato3~q\)) # (!\ContadorLetras|dato3~q\ & ((\Registro3|Reg7|dato3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registro3|Reg3|dato3~q\,
	datab => \SelectorLetra|Mux3|Out_Mux~2_combout\,
	datac => \Registro3|Reg7|dato3~q\,
	datad => \ContadorLetras|dato3~q\,
	combout => \SelectorLetra|Mux4|Out_Mux~12_combout\);

-- Location: FF_X19_Y14_N25
\Registro1|Reg7|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg6|dato3~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg7|dato3~q\);

-- Location: FF_X19_Y14_N21
\Registro1|Reg8|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro1|Reg7|dato3~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro1|Reg8|dato3~q\);

-- Location: LCCOMB_X19_Y14_N20
\SelectorLetra|Mux4|Out_Mux~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux4|Out_Mux~15_combout\ = (\SelectorLetra|Mux1|Out_Mux~3_combout\ & ((\ContadorLetras|dato3~q\ & ((\Registro1|Reg4|dato3~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro1|Reg8|dato3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato3~q\,
	datab => \SelectorLetra|Mux1|Out_Mux~3_combout\,
	datac => \Registro1|Reg8|dato3~q\,
	datad => \Registro1|Reg4|dato3~q\,
	combout => \SelectorLetra|Mux4|Out_Mux~15_combout\);

-- Location: FF_X19_Y13_N19
\Registro3|Reg8|dato3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Registro3|Reg7|dato3~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \Controll|F6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registro3|Reg8|dato3~q\);

-- Location: LCCOMB_X19_Y13_N18
\SelectorLetra|Mux4|Out_Mux~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux4|Out_Mux~13_combout\ = (\SelectorLetra|Mux1|Out_Mux~1_combout\ & ((\ContadorLetras|dato3~q\ & (\Registro3|Reg4|dato3~q\)) # (!\ContadorLetras|dato3~q\ & ((\Registro3|Reg8|dato3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato3~q\,
	datab => \Registro3|Reg4|dato3~q\,
	datac => \Registro3|Reg8|dato3~q\,
	datad => \SelectorLetra|Mux1|Out_Mux~1_combout\,
	combout => \SelectorLetra|Mux4|Out_Mux~13_combout\);

-- Location: LCCOMB_X19_Y14_N24
\SelectorLetra|Mux4|Out_Mux~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux4|Out_Mux~14_combout\ = (\SelectorLetra|Mux1|Out_Mux~2_combout\ & ((\ContadorLetras|dato3~q\ & ((\Registro1|Reg3|dato3~q\))) # (!\ContadorLetras|dato3~q\ & (\Registro1|Reg7|dato3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorLetras|dato3~q\,
	datab => \SelectorLetra|Mux1|Out_Mux~2_combout\,
	datac => \Registro1|Reg7|dato3~q\,
	datad => \Registro1|Reg3|dato3~q\,
	combout => \SelectorLetra|Mux4|Out_Mux~14_combout\);

-- Location: LCCOMB_X19_Y14_N18
\SelectorLetra|Mux4|Out_Mux~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux4|Out_Mux~16_combout\ = (\SelectorLetra|Mux4|Out_Mux~12_combout\) # ((\SelectorLetra|Mux4|Out_Mux~15_combout\) # ((\SelectorLetra|Mux4|Out_Mux~13_combout\) # (\SelectorLetra|Mux4|Out_Mux~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux4|Out_Mux~12_combout\,
	datab => \SelectorLetra|Mux4|Out_Mux~15_combout\,
	datac => \SelectorLetra|Mux4|Out_Mux~13_combout\,
	datad => \SelectorLetra|Mux4|Out_Mux~14_combout\,
	combout => \SelectorLetra|Mux4|Out_Mux~16_combout\);

-- Location: LCCOMB_X16_Y14_N12
\SelectorLetra|Mux4|Out_Mux~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelectorLetra|Mux4|Out_Mux~17_combout\ = (\SelectorLetra|Mux4|Out_Mux~5_combout\) # ((\SelectorLetra|Mux4|Out_Mux~11_combout\) # ((\SelectorLetra|Mux5|Out_Mux~0_combout\ & \SelectorLetra|Mux4|Out_Mux~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectorLetra|Mux4|Out_Mux~5_combout\,
	datab => \SelectorLetra|Mux5|Out_Mux~0_combout\,
	datac => \SelectorLetra|Mux4|Out_Mux~11_combout\,
	datad => \SelectorLetra|Mux4|Out_Mux~16_combout\,
	combout => \SelectorLetra|Mux4|Out_Mux~17_combout\);

-- Location: LCCOMB_X16_Y14_N26
\ComunicacionPC~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ComunicacionPC~8_combout\ = (\ContadorSelector|dato2~q\ & (((\SelectorLetra|Mux4|Out_Mux~17_combout\ & !\ContadorSelector|dato4~q\)))) # (!\ContadorSelector|dato2~q\ & (\ComunicacionPC~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ComunicacionPC~2_combout\,
	datab => \SelectorLetra|Mux4|Out_Mux~17_combout\,
	datac => \ContadorSelector|dato4~q\,
	datad => \ContadorSelector|dato2~q\,
	combout => \ComunicacionPC~8_combout\);

-- Location: LCCOMB_X15_Y10_N16
\ComunicacionPC~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ComunicacionPC~9_combout\ = (\ComunicacionPC~8_combout\ & (!\ContadorSelector|dato3~q\ & (\ContadorSelector|dato2~q\ $ (\ContadorSelector|dato1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorSelector|dato2~q\,
	datab => \ComunicacionPC~8_combout\,
	datac => \ContadorSelector|dato1~q\,
	datad => \ContadorSelector|dato3~q\,
	combout => \ComunicacionPC~9_combout\);

-- Location: LCCOMB_X15_Y10_N12
\ComunicacionPC~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ComunicacionPC~7_combout\ = (\ComunicacionPC~0_combout\) # ((\ComunicacionPC~9_combout\) # ((\ComunicacionPC~5_combout\ & \ComunicacionPC~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ComunicacionPC~5_combout\,
	datab => \ComunicacionPC~0_combout\,
	datac => \ComunicacionPC~6_combout\,
	datad => \ComunicacionPC~9_combout\,
	combout => \ComunicacionPC~7_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_Led0 <= \Led0~output_o\;

ww_Led1 <= \Led1~output_o\;

ww_Led2 <= \Led2~output_o\;

ww_Led3 <= \Led3~output_o\;

ww_EstadosControl(14) <= \EstadosControl[14]~output_o\;

ww_EstadosControl(13) <= \EstadosControl[13]~output_o\;

ww_EstadosControl(12) <= \EstadosControl[12]~output_o\;

ww_EstadosControl(11) <= \EstadosControl[11]~output_o\;

ww_EstadosControl(10) <= \EstadosControl[10]~output_o\;

ww_EstadosControl(9) <= \EstadosControl[9]~output_o\;

ww_EstadosControl(8) <= \EstadosControl[8]~output_o\;

ww_EstadosControl(7) <= \EstadosControl[7]~output_o\;

ww_EstadosControl(6) <= \EstadosControl[6]~output_o\;

ww_EstadosControl(5) <= \EstadosControl[5]~output_o\;

ww_EstadosControl(4) <= \EstadosControl[4]~output_o\;

ww_EstadosControl(3) <= \EstadosControl[3]~output_o\;

ww_EstadosControl(2) <= \EstadosControl[2]~output_o\;

ww_EstadosControl(1) <= \EstadosControl[1]~output_o\;

ww_EstadosControl(0) <= \EstadosControl[0]~output_o\;

ww_ComunicacionPC <= \ComunicacionPC~output_o\;

ww_Reloj <= \Reloj~output_o\;
END structure;


