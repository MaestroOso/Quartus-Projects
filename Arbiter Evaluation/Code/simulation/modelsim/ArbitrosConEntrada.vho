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

-- DATE "08/19/2016 15:18:38"

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

ENTITY 	ArbitrosConEntrada IS
    PORT (
	empiece1 : BUFFER std_logic;
	guardar_sensor : BUFFER std_logic;
	guardar_calificacion : BUFFER std_logic_vector(3 DOWNTO 0);
	guardar_validacion : BUFFER std_logic;
	SalidaEstados : BUFFER std_logic_vector(13 DOWNTO 0);
	salidaspatea : BUFFER std_logic_vector(3 DOWNTO 0);
	Sensor : IN std_logic;
	RespA : IN std_logic;
	Patea : IN std_logic;
	Reloj : IN std_logic;
	ValArbitro : IN std_logic;
	Fin : IN std_logic;
	Reset : IN std_logic;
	Resultado : BUFFER std_logic_vector(2 DOWNTO 0);
	reloj1 : BUFFER std_logic
	);
END ArbitrosConEntrada;

-- Design Ports Information
-- empiece1	=>  Location: PIN_17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- guardar_sensor	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- guardar_calificacion[0]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- guardar_calificacion[1]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- guardar_calificacion[2]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- guardar_calificacion[3]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- guardar_validacion	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SalidaEstados[0]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SalidaEstados[1]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SalidaEstados[2]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SalidaEstados[3]	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SalidaEstados[4]	=>  Location: PIN_96,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SalidaEstados[5]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SalidaEstados[6]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SalidaEstados[7]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SalidaEstados[8]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SalidaEstados[9]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SalidaEstados[10]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SalidaEstados[11]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SalidaEstados[12]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SalidaEstados[13]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidaspatea[0]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidaspatea[1]	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidaspatea[2]	=>  Location: PIN_102,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidaspatea[3]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultado[0]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultado[1]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultado[2]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reloj1	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reloj	=>  Location: PIN_27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sensor	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RespA	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fin	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Patea	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ValArbitro	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ArbitrosConEntrada IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_empiece1 : std_logic;
SIGNAL ww_guardar_sensor : std_logic;
SIGNAL ww_guardar_calificacion : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_guardar_validacion : std_logic;
SIGNAL ww_SalidaEstados : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_salidaspatea : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Sensor : std_logic;
SIGNAL ww_RespA : std_logic;
SIGNAL ww_Patea : std_logic;
SIGNAL ww_Reloj : std_logic;
SIGNAL ww_ValArbitro : std_logic;
SIGNAL ww_Fin : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Resultado : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_reloj1 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Reloj~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \empiece1~output_o\ : std_logic;
SIGNAL \guardar_sensor~output_o\ : std_logic;
SIGNAL \guardar_calificacion[0]~output_o\ : std_logic;
SIGNAL \guardar_calificacion[1]~output_o\ : std_logic;
SIGNAL \guardar_calificacion[2]~output_o\ : std_logic;
SIGNAL \guardar_calificacion[3]~output_o\ : std_logic;
SIGNAL \guardar_validacion~output_o\ : std_logic;
SIGNAL \SalidaEstados[0]~output_o\ : std_logic;
SIGNAL \SalidaEstados[1]~output_o\ : std_logic;
SIGNAL \SalidaEstados[2]~output_o\ : std_logic;
SIGNAL \SalidaEstados[3]~output_o\ : std_logic;
SIGNAL \SalidaEstados[4]~output_o\ : std_logic;
SIGNAL \SalidaEstados[5]~output_o\ : std_logic;
SIGNAL \SalidaEstados[6]~output_o\ : std_logic;
SIGNAL \SalidaEstados[7]~output_o\ : std_logic;
SIGNAL \SalidaEstados[8]~output_o\ : std_logic;
SIGNAL \SalidaEstados[9]~output_o\ : std_logic;
SIGNAL \SalidaEstados[10]~output_o\ : std_logic;
SIGNAL \SalidaEstados[11]~output_o\ : std_logic;
SIGNAL \SalidaEstados[12]~output_o\ : std_logic;
SIGNAL \SalidaEstados[13]~output_o\ : std_logic;
SIGNAL \salidaspatea[0]~output_o\ : std_logic;
SIGNAL \salidaspatea[1]~output_o\ : std_logic;
SIGNAL \salidaspatea[2]~output_o\ : std_logic;
SIGNAL \salidaspatea[3]~output_o\ : std_logic;
SIGNAL \Resultado[0]~output_o\ : std_logic;
SIGNAL \Resultado[1]~output_o\ : std_logic;
SIGNAL \Resultado[2]~output_o\ : std_logic;
SIGNAL \reloj1~output_o\ : std_logic;
SIGNAL \Reloj~input_o\ : std_logic;
SIGNAL \Reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \BLOQUE_EntradaSerial|inicio[0]~feeder_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \BLOQUE_EntradaSerial|inicio[1]~0_combout\ : std_logic;
SIGNAL \BLOQUE_EntradaSerial|inicio[2]~feeder_combout\ : std_logic;
SIGNAL \BLOQUE_EntradaSerial|inicio[3]~feeder_combout\ : std_logic;
SIGNAL \Sensor~input_o\ : std_logic;
SIGNAL \Patea~input_o\ : std_logic;
SIGNAL \ValArbitro~input_o\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|comb~5_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_8~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|comb~6_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_9~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_10~feeder_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_10~q\ : std_logic;
SIGNAL \RespA~input_o\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_MemRespA|BLOQUE_1~feeder_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_MemRespA|BLOQUE_1~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|comb~8_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_12~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|comb~7_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_11~q\ : std_logic;
SIGNAL \Fin~input_o\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_1~0_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_1~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_3~0_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_2~0_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ContPatea|comb~0_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_2~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ContPatea|comb~1_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_3~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_4~0_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ContPatea|comb~2_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_4~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ContPatea|Control1~0_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|comb~9_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_13~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|comb~10_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_14~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|comb~0_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_1~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|comb~1_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_2~feeder_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_2~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_3~feeder_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_3~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_4~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_5~feeder_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_5~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|comb~2_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|comb~3_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_6~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|comb~4_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_7~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_MemSenF|BLOQUE_1~q\ : std_logic;
SIGNAL \BLOQUE_EntradaSerial|valor_salida[5]~feeder_combout\ : std_logic;
SIGNAL \BLOQUE_EntradaSerial|valor_salida[6]~feeder_combout\ : std_logic;
SIGNAL \BLOQUE_EntradaSerial|valor_salida[7]~feeder_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_1~feeder_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|MemArb~0_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_1~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_2~feeder_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_2~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_3~feeder_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_3~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_4~feeder_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_4~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_2~0_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_1~0_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_1~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ContRta|comb~0_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_2~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Igual~0_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_4~0_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_3~0_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ContRta|comb~1_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_3~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ContRta|comb~2_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_4~q\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~2_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~1_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~0_combout\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Resultado[0]~0_combout\ : std_logic;
SIGNAL \BLOQUE_EntradaSerial|inicio\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Resultado\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \BLOQUE_EntradaSerial|valor_salida\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;
SIGNAL \BLOQUE_Arbitros|BLOQUE_Control|ALT_INV_BLOQUE_1~q\ : std_logic;

BEGIN

empiece1 <= ww_empiece1;
guardar_sensor <= ww_guardar_sensor;
guardar_calificacion <= ww_guardar_calificacion;
guardar_validacion <= ww_guardar_validacion;
SalidaEstados <= ww_SalidaEstados;
salidaspatea <= ww_salidaspatea;
ww_Sensor <= Sensor;
ww_RespA <= RespA;
ww_Patea <= Patea;
ww_Reloj <= Reloj;
ww_ValArbitro <= ValArbitro;
ww_Fin <= Fin;
ww_Reset <= Reset;
Resultado <= ww_Resultado;
reloj1 <= ww_reloj1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Reloj~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reloj~input_o\);
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
\BLOQUE_Arbitros|BLOQUE_Control|ALT_INV_BLOQUE_1~q\ <= NOT \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_1~q\;

-- Location: LCCOMB_X11_Y12_N16
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

-- Location: IOOBUF_X10_Y17_N2
\empiece1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_EntradaSerial|inicio\(3),
	devoe => ww_devoe,
	o => \empiece1~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\guardar_sensor~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_MemSenF|BLOQUE_1~q\,
	devoe => ww_devoe,
	o => \guardar_sensor~output_o\);

-- Location: IOOBUF_X17_Y0_N2
\guardar_calificacion[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_4~q\,
	devoe => ww_devoe,
	o => \guardar_calificacion[0]~output_o\);

-- Location: IOOBUF_X17_Y0_N30
\guardar_calificacion[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_3~q\,
	devoe => ww_devoe,
	o => \guardar_calificacion[1]~output_o\);

-- Location: IOOBUF_X17_Y0_N23
\guardar_calificacion[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_2~q\,
	devoe => ww_devoe,
	o => \guardar_calificacion[2]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\guardar_calificacion[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_1~q\,
	devoe => ww_devoe,
	o => \guardar_calificacion[3]~output_o\);

-- Location: IOOBUF_X15_Y0_N16
\guardar_validacion~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_MemRespA|BLOQUE_1~q\,
	devoe => ww_devoe,
	o => \guardar_validacion~output_o\);

-- Location: IOOBUF_X31_Y19_N9
\SalidaEstados[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_Control|ALT_INV_BLOQUE_1~q\,
	devoe => ww_devoe,
	o => \SalidaEstados[0]~output_o\);

-- Location: IOOBUF_X31_Y12_N16
\SalidaEstados[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_2~q\,
	devoe => ww_devoe,
	o => \SalidaEstados[1]~output_o\);

-- Location: IOOBUF_X31_Y17_N16
\SalidaEstados[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_3~q\,
	devoe => ww_devoe,
	o => \SalidaEstados[2]~output_o\);

-- Location: IOOBUF_X31_Y12_N23
\SalidaEstados[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_4~q\,
	devoe => ww_devoe,
	o => \SalidaEstados[3]~output_o\);

-- Location: IOOBUF_X31_Y17_N23
\SalidaEstados[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_5~q\,
	devoe => ww_devoe,
	o => \SalidaEstados[4]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\SalidaEstados[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_6~q\,
	devoe => ww_devoe,
	o => \SalidaEstados[5]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\SalidaEstados[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_7~q\,
	devoe => ww_devoe,
	o => \SalidaEstados[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\SalidaEstados[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_8~q\,
	devoe => ww_devoe,
	o => \SalidaEstados[7]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\SalidaEstados[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_9~q\,
	devoe => ww_devoe,
	o => \SalidaEstados[8]~output_o\);

-- Location: IOOBUF_X6_Y0_N16
\SalidaEstados[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_10~q\,
	devoe => ww_devoe,
	o => \SalidaEstados[9]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\SalidaEstados[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_11~q\,
	devoe => ww_devoe,
	o => \SalidaEstados[10]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\SalidaEstados[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_12~q\,
	devoe => ww_devoe,
	o => \SalidaEstados[11]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\SalidaEstados[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_13~q\,
	devoe => ww_devoe,
	o => \SalidaEstados[12]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\SalidaEstados[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_14~q\,
	devoe => ww_devoe,
	o => \SalidaEstados[13]~output_o\);

-- Location: IOOBUF_X31_Y22_N16
\salidaspatea[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_1~q\,
	devoe => ww_devoe,
	o => \salidaspatea[0]~output_o\);

-- Location: IOOBUF_X31_Y19_N16
\salidaspatea[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_2~q\,
	devoe => ww_devoe,
	o => \salidaspatea[1]~output_o\);

-- Location: IOOBUF_X31_Y19_N2
\salidaspatea[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_3~q\,
	devoe => ww_devoe,
	o => \salidaspatea[2]~output_o\);

-- Location: IOOBUF_X31_Y19_N23
\salidaspatea[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_4~q\,
	devoe => ww_devoe,
	o => \salidaspatea[3]~output_o\);

-- Location: IOOBUF_X6_Y10_N23
\Resultado[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Resultado\(0),
	devoe => ww_devoe,
	o => \Resultado[0]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\Resultado[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Resultado\(1),
	devoe => ww_devoe,
	o => \Resultado[1]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\Resultado[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Resultado\(2),
	devoe => ww_devoe,
	o => \Resultado[2]~output_o\);

-- Location: IOOBUF_X19_Y25_N2
\reloj1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reloj~input_o\,
	devoe => ww_devoe,
	o => \reloj1~output_o\);

-- Location: IOIBUF_X0_Y7_N22
\Reloj~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reloj,
	o => \Reloj~input_o\);

-- Location: CLKCTRL_G4
\Reloj~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reloj~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reloj~inputclkctrl_outclk\);

-- Location: LCCOMB_X12_Y16_N28
\BLOQUE_EntradaSerial|inicio[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_EntradaSerial|inicio[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \BLOQUE_EntradaSerial|inicio[0]~feeder_combout\);

-- Location: IOIBUF_X15_Y25_N15
\Reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: FF_X12_Y16_N29
\BLOQUE_EntradaSerial|inicio[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_EntradaSerial|inicio[0]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_EntradaSerial|inicio\(0));

-- Location: LCCOMB_X12_Y16_N10
\BLOQUE_EntradaSerial|inicio[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_EntradaSerial|inicio[1]~0_combout\ = !\BLOQUE_EntradaSerial|inicio\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BLOQUE_EntradaSerial|inicio\(0),
	combout => \BLOQUE_EntradaSerial|inicio[1]~0_combout\);

-- Location: FF_X12_Y16_N11
\BLOQUE_EntradaSerial|inicio[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_EntradaSerial|inicio[1]~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_EntradaSerial|inicio\(1));

-- Location: LCCOMB_X12_Y16_N2
\BLOQUE_EntradaSerial|inicio[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_EntradaSerial|inicio[2]~feeder_combout\ = \BLOQUE_EntradaSerial|inicio\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BLOQUE_EntradaSerial|inicio\(1),
	combout => \BLOQUE_EntradaSerial|inicio[2]~feeder_combout\);

-- Location: FF_X12_Y16_N3
\BLOQUE_EntradaSerial|inicio[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_EntradaSerial|inicio[2]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_EntradaSerial|inicio\(2));

-- Location: LCCOMB_X12_Y16_N12
\BLOQUE_EntradaSerial|inicio[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_EntradaSerial|inicio[3]~feeder_combout\ = \BLOQUE_EntradaSerial|inicio\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BLOQUE_EntradaSerial|inicio\(2),
	combout => \BLOQUE_EntradaSerial|inicio[3]~feeder_combout\);

-- Location: FF_X12_Y16_N13
\BLOQUE_EntradaSerial|inicio[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_EntradaSerial|inicio[3]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_EntradaSerial|inicio\(3));

-- Location: IOIBUF_X6_Y10_N1
\Sensor~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sensor,
	o => \Sensor~input_o\);

-- Location: IOIBUF_X11_Y25_N22
\Patea~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Patea,
	o => \Patea~input_o\);

-- Location: IOIBUF_X11_Y25_N29
\ValArbitro~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ValArbitro,
	o => \ValArbitro~input_o\);

-- Location: LCCOMB_X12_Y16_N16
\BLOQUE_Arbitros|BLOQUE_Control|comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_Control|comb~5_combout\ = (\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_7~q\) # ((!\ValArbitro~input_o\ & \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValArbitro~input_o\,
	datac => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_8~q\,
	datad => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_7~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_Control|comb~5_combout\);

-- Location: FF_X12_Y16_N17
\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_Control|comb~5_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_8~q\);

-- Location: LCCOMB_X12_Y16_N14
\BLOQUE_Arbitros|BLOQUE_Control|comb~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_Control|comb~6_combout\ = (\ValArbitro~input_o\ & \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ValArbitro~input_o\,
	datad => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_8~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_Control|comb~6_combout\);

-- Location: FF_X12_Y16_N15
\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_Control|comb~6_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_9~q\);

-- Location: LCCOMB_X13_Y17_N6
\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_10~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_10~feeder_combout\ = \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_9~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_10~feeder_combout\);

-- Location: FF_X13_Y17_N7
\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_10~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_10~q\);

-- Location: IOIBUF_X11_Y25_N15
\RespA~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RespA,
	o => \RespA~input_o\);

-- Location: LCCOMB_X13_Y16_N0
\BLOQUE_Arbitros|BLOQUE_MemRespA|BLOQUE_1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_MemRespA|BLOQUE_1~feeder_combout\ = \RespA~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RespA~input_o\,
	combout => \BLOQUE_Arbitros|BLOQUE_MemRespA|BLOQUE_1~feeder_combout\);

-- Location: FF_X13_Y16_N1
\BLOQUE_Arbitros|BLOQUE_MemRespA|BLOQUE_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_MemRespA|BLOQUE_1~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_9~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_MemRespA|BLOQUE_1~q\);

-- Location: LCCOMB_X13_Y17_N14
\BLOQUE_Arbitros|BLOQUE_Control|comb~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_Control|comb~8_combout\ = (\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_10~q\ & (\BLOQUE_Arbitros|BLOQUE_MemSenF|BLOQUE_1~q\ $ (!\BLOQUE_Arbitros|BLOQUE_MemRespA|BLOQUE_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_10~q\,
	datac => \BLOQUE_Arbitros|BLOQUE_MemSenF|BLOQUE_1~q\,
	datad => \BLOQUE_Arbitros|BLOQUE_MemRespA|BLOQUE_1~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_Control|comb~8_combout\);

-- Location: FF_X13_Y17_N15
\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_Control|comb~8_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_12~q\);

-- Location: LCCOMB_X13_Y17_N4
\BLOQUE_Arbitros|BLOQUE_Control|comb~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_Control|comb~7_combout\ = (\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_10~q\ & (\BLOQUE_Arbitros|BLOQUE_MemSenF|BLOQUE_1~q\ $ (\BLOQUE_Arbitros|BLOQUE_MemRespA|BLOQUE_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_10~q\,
	datac => \BLOQUE_Arbitros|BLOQUE_MemSenF|BLOQUE_1~q\,
	datad => \BLOQUE_Arbitros|BLOQUE_MemRespA|BLOQUE_1~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_Control|comb~7_combout\);

-- Location: FF_X13_Y17_N5
\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_Control|comb~7_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_11~q\);

-- Location: IOIBUF_X10_Y15_N22
\Fin~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fin,
	o => \Fin~input_o\);

-- Location: LCCOMB_X13_Y17_N22
\BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_1~0_combout\ = !\BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_1~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_1~0_combout\);

-- Location: FF_X13_Y17_N23
\BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_1~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_1~q\);

-- Location: LCCOMB_X12_Y17_N22
\BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_3~0_combout\ = !\BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_3~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_3~0_combout\);

-- Location: LCCOMB_X12_Y17_N4
\BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_2~0_combout\ = !\BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_2~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_2~0_combout\);

-- Location: LCCOMB_X13_Y17_N10
\BLOQUE_Arbitros|BLOQUE_ContPatea|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_ContPatea|comb~0_combout\ = (\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_10~q\ & \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_10~q\,
	datac => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_1~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_ContPatea|comb~0_combout\);

-- Location: FF_X12_Y17_N5
\BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_2~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \BLOQUE_Arbitros|BLOQUE_ContPatea|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_2~q\);

-- Location: LCCOMB_X12_Y17_N16
\BLOQUE_Arbitros|BLOQUE_ContPatea|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_ContPatea|comb~1_combout\ = (\BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_1~q\ & (\BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_2~q\ & \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_1~q\,
	datac => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_2~q\,
	datad => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_10~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_ContPatea|comb~1_combout\);

-- Location: FF_X12_Y17_N23
\BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_3~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \BLOQUE_Arbitros|BLOQUE_ContPatea|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_3~q\);

-- Location: LCCOMB_X11_Y17_N16
\BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_4~0_combout\ = !\BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_4~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_4~0_combout\);

-- Location: LCCOMB_X12_Y17_N26
\BLOQUE_Arbitros|BLOQUE_ContPatea|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_ContPatea|comb~2_combout\ = (\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_10~q\ & (\BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_2~q\ & (\BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_3~q\ & \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_10~q\,
	datab => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_2~q\,
	datac => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_3~q\,
	datad => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_1~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_ContPatea|comb~2_combout\);

-- Location: FF_X11_Y17_N17
\BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_4~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \BLOQUE_Arbitros|BLOQUE_ContPatea|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_4~q\);

-- Location: LCCOMB_X13_Y17_N16
\BLOQUE_Arbitros|BLOQUE_ContPatea|Control1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_ContPatea|Control1~0_combout\ = (\BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_1~q\ & (!\BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_3~q\ & (\BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_2~q\ & !\BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_1~q\,
	datab => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_3~q\,
	datac => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_2~q\,
	datad => \BLOQUE_Arbitros|BLOQUE_ContPatea|BLOQUE_4~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_ContPatea|Control1~0_combout\);

-- Location: LCCOMB_X13_Y17_N28
\BLOQUE_Arbitros|BLOQUE_Control|comb~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_Control|comb~9_combout\ = (\BLOQUE_Arbitros|BLOQUE_ContPatea|Control1~0_combout\ & ((\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_11~q\) # (\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_11~q\,
	datac => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_12~q\,
	datad => \BLOQUE_Arbitros|BLOQUE_ContPatea|Control1~0_combout\,
	combout => \BLOQUE_Arbitros|BLOQUE_Control|comb~9_combout\);

-- Location: FF_X13_Y17_N29
\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_Control|comb~9_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_13~q\);

-- Location: LCCOMB_X12_Y16_N20
\BLOQUE_Arbitros|BLOQUE_Control|comb~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_Control|comb~10_combout\ = (\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_13~q\) # ((!\Fin~input_o\ & \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_14~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Fin~input_o\,
	datac => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_14~q\,
	datad => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_13~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_Control|comb~10_combout\);

-- Location: FF_X12_Y16_N21
\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_Control|comb~10_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_14~q\);

-- Location: LCCOMB_X12_Y16_N8
\BLOQUE_Arbitros|BLOQUE_Control|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_Control|comb~0_combout\ = (\BLOQUE_EntradaSerial|inicio\(3) & (((!\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_14~q\)) # (!\Fin~input_o\))) # (!\BLOQUE_EntradaSerial|inicio\(3) & (\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_1~q\ & 
-- ((!\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_14~q\) # (!\Fin~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOQUE_EntradaSerial|inicio\(3),
	datab => \Fin~input_o\,
	datac => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_1~q\,
	datad => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_14~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_Control|comb~0_combout\);

-- Location: FF_X12_Y16_N9
\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_Control|comb~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_1~q\);

-- Location: LCCOMB_X12_Y16_N24
\BLOQUE_Arbitros|BLOQUE_Control|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_Control|comb~1_combout\ = (!\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_1~q\ & \BLOQUE_EntradaSerial|inicio\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_1~q\,
	datad => \BLOQUE_EntradaSerial|inicio\(3),
	combout => \BLOQUE_Arbitros|BLOQUE_Control|comb~1_combout\);

-- Location: LCCOMB_X13_Y17_N8
\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_2~feeder_combout\ = \BLOQUE_Arbitros|BLOQUE_Control|comb~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BLOQUE_Arbitros|BLOQUE_Control|comb~1_combout\,
	combout => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_2~feeder_combout\);

-- Location: FF_X13_Y17_N9
\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_2~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_2~q\);

-- Location: LCCOMB_X13_Y17_N30
\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_3~feeder_combout\ = \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_2~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_3~feeder_combout\);

-- Location: FF_X13_Y17_N31
\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_3~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_3~q\);

-- Location: FF_X13_Y17_N13
\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_3~q\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_4~q\);

-- Location: LCCOMB_X13_Y17_N18
\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_5~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_5~feeder_combout\ = \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_4~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_5~feeder_combout\);

-- Location: FF_X13_Y17_N19
\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_5~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_5~q\);

-- Location: LCCOMB_X13_Y17_N26
\BLOQUE_Arbitros|BLOQUE_Control|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_Control|comb~2_combout\ = (\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_5~q\) # ((!\Patea~input_o\ & \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Patea~input_o\,
	datac => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_6~q\,
	datad => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_5~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_Control|comb~2_combout\);

-- Location: LCCOMB_X13_Y17_N24
\BLOQUE_Arbitros|BLOQUE_Control|comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_Control|comb~3_combout\ = (\BLOQUE_Arbitros|BLOQUE_Control|comb~2_combout\) # ((!\BLOQUE_Arbitros|BLOQUE_ContPatea|Control1~0_combout\ & ((\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_12~q\) # 
-- (\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_12~q\,
	datab => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_11~q\,
	datac => \BLOQUE_Arbitros|BLOQUE_Control|comb~2_combout\,
	datad => \BLOQUE_Arbitros|BLOQUE_ContPatea|Control1~0_combout\,
	combout => \BLOQUE_Arbitros|BLOQUE_Control|comb~3_combout\);

-- Location: FF_X13_Y17_N25
\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_Control|comb~3_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_6~q\);

-- Location: LCCOMB_X12_Y16_N18
\BLOQUE_Arbitros|BLOQUE_Control|comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_Control|comb~4_combout\ = (\Patea~input_o\ & \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Patea~input_o\,
	datad => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_6~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_Control|comb~4_combout\);

-- Location: FF_X12_Y16_N19
\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_Control|comb~4_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_7~q\);

-- Location: FF_X12_Y16_N23
\BLOQUE_Arbitros|BLOQUE_MemSenF|BLOQUE_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Sensor~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	ena => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_MemSenF|BLOQUE_1~q\);

-- Location: FF_X11_Y16_N19
\BLOQUE_EntradaSerial|valor_salida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BLOQUE_EntradaSerial|inicio\(3),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_EntradaSerial|valor_salida\(4));

-- Location: LCCOMB_X11_Y16_N12
\BLOQUE_EntradaSerial|valor_salida[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_EntradaSerial|valor_salida[5]~feeder_combout\ = \BLOQUE_EntradaSerial|valor_salida\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BLOQUE_EntradaSerial|valor_salida\(4),
	combout => \BLOQUE_EntradaSerial|valor_salida[5]~feeder_combout\);

-- Location: FF_X11_Y16_N13
\BLOQUE_EntradaSerial|valor_salida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_EntradaSerial|valor_salida[5]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_EntradaSerial|valor_salida\(5));

-- Location: LCCOMB_X11_Y16_N10
\BLOQUE_EntradaSerial|valor_salida[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_EntradaSerial|valor_salida[6]~feeder_combout\ = \BLOQUE_EntradaSerial|valor_salida\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BLOQUE_EntradaSerial|valor_salida\(5),
	combout => \BLOQUE_EntradaSerial|valor_salida[6]~feeder_combout\);

-- Location: FF_X11_Y16_N11
\BLOQUE_EntradaSerial|valor_salida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_EntradaSerial|valor_salida[6]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_EntradaSerial|valor_salida\(6));

-- Location: LCCOMB_X11_Y16_N0
\BLOQUE_EntradaSerial|valor_salida[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_EntradaSerial|valor_salida[7]~feeder_combout\ = \BLOQUE_EntradaSerial|valor_salida\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BLOQUE_EntradaSerial|valor_salida\(6),
	combout => \BLOQUE_EntradaSerial|valor_salida[7]~feeder_combout\);

-- Location: FF_X11_Y16_N1
\BLOQUE_EntradaSerial|valor_salida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_EntradaSerial|valor_salida[7]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_EntradaSerial|valor_salida\(7));

-- Location: LCCOMB_X14_Y16_N16
\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_1~feeder_combout\ = \BLOQUE_EntradaSerial|valor_salida\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BLOQUE_EntradaSerial|valor_salida\(7),
	combout => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_1~feeder_combout\);

-- Location: LCCOMB_X13_Y17_N20
\BLOQUE_Arbitros|BLOQUE_Control|MemArb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_Control|MemArb~0_combout\ = (\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_4~q\) # ((\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_2~q\) # ((\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_3~q\) # (\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_4~q\,
	datab => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_2~q\,
	datac => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_3~q\,
	datad => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_5~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_Control|MemArb~0_combout\);

-- Location: FF_X14_Y16_N17
\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_1~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \BLOQUE_Arbitros|BLOQUE_Control|MemArb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_1~q\);

-- Location: LCCOMB_X14_Y16_N22
\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_2~feeder_combout\ = \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_1~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_2~feeder_combout\);

-- Location: FF_X14_Y16_N23
\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_2~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \BLOQUE_Arbitros|BLOQUE_Control|MemArb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_2~q\);

-- Location: LCCOMB_X15_Y17_N20
\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_3~feeder_combout\ = \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_2~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_3~feeder_combout\);

-- Location: FF_X15_Y17_N21
\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_3~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \BLOQUE_Arbitros|BLOQUE_Control|MemArb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_3~q\);

-- Location: LCCOMB_X14_Y16_N4
\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_4~feeder_combout\ = \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_3~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_4~feeder_combout\);

-- Location: FF_X14_Y16_N5
\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_4~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \BLOQUE_Arbitros|BLOQUE_Control|MemArb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_4~q\);

-- Location: LCCOMB_X14_Y17_N8
\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_2~0_combout\ = !\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_2~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_2~0_combout\);

-- Location: LCCOMB_X14_Y17_N30
\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_1~0_combout\ = !\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_1~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_1~0_combout\);

-- Location: FF_X14_Y17_N31
\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_1~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_12~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_1~q\);

-- Location: LCCOMB_X14_Y17_N16
\BLOQUE_Arbitros|BLOQUE_ContRta|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_ContRta|comb~0_combout\ = (\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_1~q\ & \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_1~q\,
	datad => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_12~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_ContRta|comb~0_combout\);

-- Location: FF_X14_Y17_N9
\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_2~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \BLOQUE_Arbitros|BLOQUE_ContRta|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_2~q\);

-- Location: LCCOMB_X14_Y16_N26
\BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Igual~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Igual~0_combout\ = (\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_2~q\ & ((\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_1~q\ $ (\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_1~q\)) # (!\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_2~q\))) # 
-- (!\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_2~q\ & ((\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_2~q\) # (\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_1~q\ $ (\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_2~q\,
	datab => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_2~q\,
	datac => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_1~q\,
	datad => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_1~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Igual~0_combout\);

-- Location: LCCOMB_X14_Y16_N10
\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_4~0_combout\ = !\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_4~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_4~0_combout\);

-- Location: LCCOMB_X15_Y17_N30
\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_3~0_combout\ = !\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_3~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_3~0_combout\);

-- Location: LCCOMB_X14_Y17_N6
\BLOQUE_Arbitros|BLOQUE_ContRta|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_ContRta|comb~1_combout\ = (\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_2~q\ & (\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_1~q\ & \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_12~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_2~q\,
	datac => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_1~q\,
	datad => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_12~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_ContRta|comb~1_combout\);

-- Location: FF_X15_Y17_N31
\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_3~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \BLOQUE_Arbitros|BLOQUE_ContRta|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_3~q\);

-- Location: LCCOMB_X14_Y16_N20
\BLOQUE_Arbitros|BLOQUE_ContRta|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_ContRta|comb~2_combout\ = (\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_1~q\ & (\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_3~q\ & (\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_12~q\ & \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_1~q\,
	datab => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_3~q\,
	datac => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_12~q\,
	datad => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_2~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_ContRta|comb~2_combout\);

-- Location: FF_X14_Y16_N11
\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_4~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \BLOQUE_Arbitros|BLOQUE_ContRta|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_4~q\);

-- Location: LCCOMB_X14_Y16_N18
\BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~2_combout\ = (\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_4~q\ & (((\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_3~q\ & !\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_3~q\)) # (!\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_4~q\))) # 
-- (!\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_4~q\ & (!\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_4~q\ & (\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_3~q\ & !\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_4~q\,
	datab => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_4~q\,
	datac => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_3~q\,
	datad => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_3~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~2_combout\);

-- Location: LCCOMB_X14_Y16_N8
\BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~1_combout\ = (\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_4~q\ & (\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_4~q\ & (\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_3~q\ $ (!\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_3~q\)))) # 
-- (!\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_4~q\ & (!\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_4~q\ & (\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_3~q\ $ (!\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_4~q\,
	datab => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_4~q\,
	datac => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_3~q\,
	datad => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_3~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~1_combout\);

-- Location: LCCOMB_X14_Y16_N12
\BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~0_combout\ = (\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_2~q\ & (\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_2~q\ & (\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_1~q\ & !\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_1~q\))) # 
-- (!\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_2~q\ & ((\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_2~q\) # ((\BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_1~q\ & !\BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_2~q\,
	datab => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_2~q\,
	datac => \BLOQUE_Arbitros|BLOQUE_ContRta|BLOQUE_1~q\,
	datad => \BLOQUE_Arbitros|BLOQUE_MemArb|BLOQUE_1~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~0_combout\);

-- Location: LCCOMB_X14_Y16_N24
\BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Resultado[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Resultado[0]~0_combout\ = (!\BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~2_combout\ & (((\BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Igual~0_combout\ & !\BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~0_combout\)) # 
-- (!\BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Igual~0_combout\,
	datab => \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~2_combout\,
	datac => \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~1_combout\,
	datad => \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~0_combout\,
	combout => \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Resultado[0]~0_combout\);

-- Location: LCCOMB_X14_Y16_N30
\BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Resultado[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Resultado\(0) = (\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_14~q\ & \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Resultado[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_14~q\,
	datad => \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Resultado[0]~0_combout\,
	combout => \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Resultado\(0));

-- Location: LCCOMB_X14_Y16_N28
\BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Resultado[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Resultado\(1) = (!\BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Igual~0_combout\ & (\BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~1_combout\ & \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_14~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Igual~0_combout\,
	datab => \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~1_combout\,
	datad => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_14~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Resultado\(1));

-- Location: LCCOMB_X14_Y16_N14
\BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Resultado[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Resultado\(2) = (\BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_14~q\ & ((\BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~2_combout\) # ((\BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~0_combout\ & 
-- \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~0_combout\,
	datab => \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~2_combout\,
	datac => \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Mejor~1_combout\,
	datad => \BLOQUE_Arbitros|BLOQUE_Control|BLOQUE_14~q\,
	combout => \BLOQUE_Arbitros|BLOQUE_ComparadorFinal|Resultado\(2));

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

ww_empiece1 <= \empiece1~output_o\;

ww_guardar_sensor <= \guardar_sensor~output_o\;

ww_guardar_calificacion(0) <= \guardar_calificacion[0]~output_o\;

ww_guardar_calificacion(1) <= \guardar_calificacion[1]~output_o\;

ww_guardar_calificacion(2) <= \guardar_calificacion[2]~output_o\;

ww_guardar_calificacion(3) <= \guardar_calificacion[3]~output_o\;

ww_guardar_validacion <= \guardar_validacion~output_o\;

ww_SalidaEstados(0) <= \SalidaEstados[0]~output_o\;

ww_SalidaEstados(1) <= \SalidaEstados[1]~output_o\;

ww_SalidaEstados(2) <= \SalidaEstados[2]~output_o\;

ww_SalidaEstados(3) <= \SalidaEstados[3]~output_o\;

ww_SalidaEstados(4) <= \SalidaEstados[4]~output_o\;

ww_SalidaEstados(5) <= \SalidaEstados[5]~output_o\;

ww_SalidaEstados(6) <= \SalidaEstados[6]~output_o\;

ww_SalidaEstados(7) <= \SalidaEstados[7]~output_o\;

ww_SalidaEstados(8) <= \SalidaEstados[8]~output_o\;

ww_SalidaEstados(9) <= \SalidaEstados[9]~output_o\;

ww_SalidaEstados(10) <= \SalidaEstados[10]~output_o\;

ww_SalidaEstados(11) <= \SalidaEstados[11]~output_o\;

ww_SalidaEstados(12) <= \SalidaEstados[12]~output_o\;

ww_SalidaEstados(13) <= \SalidaEstados[13]~output_o\;

ww_salidaspatea(0) <= \salidaspatea[0]~output_o\;

ww_salidaspatea(1) <= \salidaspatea[1]~output_o\;

ww_salidaspatea(2) <= \salidaspatea[2]~output_o\;

ww_salidaspatea(3) <= \salidaspatea[3]~output_o\;

ww_Resultado(0) <= \Resultado[0]~output_o\;

ww_Resultado(1) <= \Resultado[1]~output_o\;

ww_Resultado(2) <= \Resultado[2]~output_o\;

ww_reloj1 <= \reloj1~output_o\;
END structure;


