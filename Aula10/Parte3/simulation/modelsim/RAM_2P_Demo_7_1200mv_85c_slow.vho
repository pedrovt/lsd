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
-- VERSION "Version 15.1.1 Build 189 12/02/2015 SJ Lite Edition"

-- DATE "05/16/2017 19:22:58"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RAM_2P_Demo IS
    PORT (
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(12 DOWNTO 0)
	);
END RAM_2P_Demo;

-- Design Ports Information
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RAM_2P_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM1|s_memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \RAM1|s_memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM1|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM1|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Equal0~5_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst1|s_divCounter~5_combout\ : std_logic;
SIGNAL \inst1|Add0~27\ : std_logic;
SIGNAL \inst1|Add0~28_combout\ : std_logic;
SIGNAL \inst1|s_divCounter~4_combout\ : std_logic;
SIGNAL \inst1|Add0~29\ : std_logic;
SIGNAL \inst1|Add0~30_combout\ : std_logic;
SIGNAL \inst1|s_divCounter~11_combout\ : std_logic;
SIGNAL \inst1|Add0~31\ : std_logic;
SIGNAL \inst1|Add0~32_combout\ : std_logic;
SIGNAL \inst1|Add0~33\ : std_logic;
SIGNAL \inst1|Add0~34_combout\ : std_logic;
SIGNAL \inst1|s_divCounter~10_combout\ : std_logic;
SIGNAL \inst1|Add0~35\ : std_logic;
SIGNAL \inst1|Add0~36_combout\ : std_logic;
SIGNAL \inst1|Add0~37\ : std_logic;
SIGNAL \inst1|Add0~38_combout\ : std_logic;
SIGNAL \inst1|s_divCounter~3_combout\ : std_logic;
SIGNAL \inst1|Add0~39\ : std_logic;
SIGNAL \inst1|Add0~40_combout\ : std_logic;
SIGNAL \inst1|s_divCounter~2_combout\ : std_logic;
SIGNAL \inst1|Add0~41\ : std_logic;
SIGNAL \inst1|Add0~42_combout\ : std_logic;
SIGNAL \inst1|s_divCounter~1_combout\ : std_logic;
SIGNAL \inst1|Add0~43\ : std_logic;
SIGNAL \inst1|Add0~44_combout\ : std_logic;
SIGNAL \inst1|s_divCounter~0_combout\ : std_logic;
SIGNAL \inst1|Add0~45\ : std_logic;
SIGNAL \inst1|Add0~46_combout\ : std_logic;
SIGNAL \inst1|s_divCounter~9_combout\ : std_logic;
SIGNAL \inst1|Add0~47\ : std_logic;
SIGNAL \inst1|Add0~48_combout\ : std_logic;
SIGNAL \inst1|Add0~49\ : std_logic;
SIGNAL \inst1|Add0~50_combout\ : std_logic;
SIGNAL \inst1|s_divCounter~8_combout\ : std_logic;
SIGNAL \inst1|Equal0~7_combout\ : std_logic;
SIGNAL \inst1|Equal0~8_combout\ : std_logic;
SIGNAL \inst1|Equal0~9_combout\ : std_logic;
SIGNAL \inst1|s_divCounter~7_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|s_divCounter~6_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~51\ : std_logic;
SIGNAL \inst1|Add0~52_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|Add0~53\ : std_logic;
SIGNAL \inst1|Add0~54_combout\ : std_logic;
SIGNAL \inst1|Add0~55\ : std_logic;
SIGNAL \inst1|Add0~56_combout\ : std_logic;
SIGNAL \inst1|Add0~57\ : std_logic;
SIGNAL \inst1|Add0~58_combout\ : std_logic;
SIGNAL \inst1|Add0~59\ : std_logic;
SIGNAL \inst1|Add0~60_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~4_combout\ : std_logic;
SIGNAL \inst1|Equal0~6_combout\ : std_logic;
SIGNAL \inst1|clkOut~0_combout\ : std_logic;
SIGNAL \inst1|clkOut~1_combout\ : std_logic;
SIGNAL \inst1|clkOut~2_combout\ : std_logic;
SIGNAL \inst1|clkOut~3_combout\ : std_logic;
SIGNAL \inst1|clkOut~feeder_combout\ : std_logic;
SIGNAL \inst1|clkOut~q\ : std_logic;
SIGNAL \inst1|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst2|s_count[0]~0_combout\ : std_logic;
SIGNAL \inst2|s_count[0]~_wirecell_combout\ : std_logic;
SIGNAL \inst2|s_count[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|Add1~0_combout\ : std_logic;
SIGNAL \inst2|s_count[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|Add1~1_combout\ : std_logic;
SIGNAL \inst2|Add1~2_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \RAM1|s_memory_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \RAM1|s_memory_rtl_0_bypass[8]~feeder_combout\ : std_logic;
SIGNAL \RAM1|s_memory_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \RAM1|s_memory_rtl_0_bypass[7]~feeder_combout\ : std_logic;
SIGNAL \RAM1|s_memory~14_combout\ : std_logic;
SIGNAL \RAM1|s_memory_rtl_0_bypass[2]~0_combout\ : std_logic;
SIGNAL \RAM1|s_memory~13_combout\ : std_logic;
SIGNAL \RAM1|s_memory~15_combout\ : std_logic;
SIGNAL \RAM1|s_memory~16_combout\ : std_logic;
SIGNAL \RAM1|s_memory_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \RAM1|s_memory~17_combout\ : std_logic;
SIGNAL \RAM1|s_memory_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \RAM1|s_memory~18_combout\ : std_logic;
SIGNAL \RAM1|s_memory_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \RAM1|s_memory~19_combout\ : std_logic;
SIGNAL \RAM1|s_memory_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \RAM1|s_memory~20_combout\ : std_logic;
SIGNAL \RAM1|s_memory_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \RAM1|s_memory~21_combout\ : std_logic;
SIGNAL \RAM1|s_memory_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \RAM1|s_memory~22_combout\ : std_logic;
SIGNAL \RAM1|s_memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \RAM1|s_memory~23_combout\ : std_logic;
SIGNAL \RAM1|s_memory_rtl_0_bypass\ : std_logic_vector(0 TO 16);
SIGNAL \inst2|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|s_divCounter\ : std_logic_vector(30 DOWNTO 0);

BEGIN

LEDG <= ww_LEDG;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RAM1|s_memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \SW[12]~input_o\
& \SW[11]~input_o\ & \SW[10]~input_o\ & \SW[9]~input_o\ & \SW[8]~input_o\ & \SW[7]~input_o\ & \SW[6]~input_o\ & \SW[5]~input_o\);

\RAM1|s_memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\SW[4]~input_o\ & \SW[3]~input_o\ & \SW[2]~input_o\ & \SW[1]~input_o\);

\RAM1|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst2|Add1~2_combout\ & \inst2|Add1~1_combout\ & \inst2|Add1~0_combout\ & \inst2|s_count[0]~_wirecell_combout\);

\RAM1|s_memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \RAM1|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\RAM1|s_memory_rtl_0|auto_generated|ram_block1a1\ <= \RAM1|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\RAM1|s_memory_rtl_0|auto_generated|ram_block1a2\ <= \RAM1|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\RAM1|s_memory_rtl_0|auto_generated|ram_block1a3\ <= \RAM1|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\RAM1|s_memory_rtl_0|auto_generated|ram_block1a4\ <= \RAM1|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\RAM1|s_memory_rtl_0|auto_generated|ram_block1a5\ <= \RAM1|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\RAM1|s_memory_rtl_0|auto_generated|ram_block1a6\ <= \RAM1|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\RAM1|s_memory_rtl_0|auto_generated|ram_block1a7\ <= \RAM1|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst1|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|clkOut~q\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|s_memory~16_combout\,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|s_memory~17_combout\,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|s_memory~18_combout\,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|s_memory~19_combout\,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|s_memory~20_combout\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|s_memory~21_combout\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|s_memory~22_combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|s_memory~23_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X60_Y69_N2
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|s_divCounter\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: FF_X60_Y69_N3
\inst1|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(0));

-- Location: LCCOMB_X60_Y69_N4
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|s_divCounter\(1) & (!\inst1|Add0~1\)) # (!\inst1|s_divCounter\(1) & ((\inst1|Add0~1\) # (GND)))
-- \inst1|Add0~3\ = CARRY((!\inst1|Add0~1\) # (!\inst1|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: FF_X60_Y69_N5
\inst1|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(1));

-- Location: LCCOMB_X60_Y69_N6
\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|s_divCounter\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|s_divCounter\(2) & (!\inst1|Add0~3\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|s_divCounter\(2) & !\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: FF_X60_Y69_N7
\inst1|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(2));

-- Location: LCCOMB_X60_Y69_N8
\inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|s_divCounter\(3) & (!\inst1|Add0~5\)) # (!\inst1|s_divCounter\(3) & ((\inst1|Add0~5\) # (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|Add0~5\) # (!\inst1|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: FF_X60_Y69_N9
\inst1|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(3));

-- Location: LCCOMB_X60_Y69_N10
\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|s_divCounter\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|s_divCounter\(4) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|s_divCounter\(4) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: FF_X60_Y69_N11
\inst1|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(4));

-- Location: LCCOMB_X60_Y69_N12
\inst1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|s_divCounter\(5) & (!\inst1|Add0~9\)) # (!\inst1|s_divCounter\(5) & ((\inst1|Add0~9\) # (GND)))
-- \inst1|Add0~11\ = CARRY((!\inst1|Add0~9\) # (!\inst1|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: FF_X60_Y69_N13
\inst1|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(5));

-- Location: LCCOMB_X60_Y69_N0
\inst1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~5_combout\ = (\inst1|s_divCounter\(4) & (\inst1|s_divCounter\(3) & (\inst1|s_divCounter\(2) & \inst1|s_divCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(4),
	datab => \inst1|s_divCounter\(3),
	datac => \inst1|s_divCounter\(2),
	datad => \inst1|s_divCounter\(5),
	combout => \inst1|Equal0~5_combout\);

-- Location: LCCOMB_X60_Y69_N14
\inst1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|s_divCounter\(6) & (\inst1|Add0~11\ $ (GND))) # (!\inst1|s_divCounter\(6) & (!\inst1|Add0~11\ & VCC))
-- \inst1|Add0~13\ = CARRY((\inst1|s_divCounter\(6) & !\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: FF_X60_Y69_N15
\inst1|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(6));

-- Location: LCCOMB_X60_Y69_N16
\inst1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|s_divCounter\(7) & (!\inst1|Add0~13\)) # (!\inst1|s_divCounter\(7) & ((\inst1|Add0~13\) # (GND)))
-- \inst1|Add0~15\ = CARRY((!\inst1|Add0~13\) # (!\inst1|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X60_Y69_N26
\inst1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = (\inst1|s_divCounter\(12) & (\inst1|Add0~23\ $ (GND))) # (!\inst1|s_divCounter\(12) & (!\inst1|Add0~23\ & VCC))
-- \inst1|Add0~25\ = CARRY((\inst1|s_divCounter\(12) & !\inst1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(12),
	datad => VCC,
	cin => \inst1|Add0~23\,
	combout => \inst1|Add0~24_combout\,
	cout => \inst1|Add0~25\);

-- Location: LCCOMB_X60_Y69_N28
\inst1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = (\inst1|s_divCounter\(13) & (!\inst1|Add0~25\)) # (!\inst1|s_divCounter\(13) & ((\inst1|Add0~25\) # (GND)))
-- \inst1|Add0~27\ = CARRY((!\inst1|Add0~25\) # (!\inst1|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(13),
	datad => VCC,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~26_combout\,
	cout => \inst1|Add0~27\);

-- Location: LCCOMB_X59_Y68_N10
\inst1|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter~5_combout\ = (!\inst1|Equal0~9_combout\ & \inst1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~9_combout\,
	datac => \inst1|Add0~26_combout\,
	combout => \inst1|s_divCounter~5_combout\);

-- Location: FF_X59_Y68_N11
\inst1|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(13));

-- Location: LCCOMB_X60_Y69_N30
\inst1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~28_combout\ = (\inst1|s_divCounter\(14) & (\inst1|Add0~27\ $ (GND))) # (!\inst1|s_divCounter\(14) & (!\inst1|Add0~27\ & VCC))
-- \inst1|Add0~29\ = CARRY((\inst1|s_divCounter\(14) & !\inst1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(14),
	datad => VCC,
	cin => \inst1|Add0~27\,
	combout => \inst1|Add0~28_combout\,
	cout => \inst1|Add0~29\);

-- Location: LCCOMB_X59_Y68_N28
\inst1|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter~4_combout\ = (\inst1|Add0~28_combout\ & !\inst1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~28_combout\,
	datad => \inst1|Equal0~9_combout\,
	combout => \inst1|s_divCounter~4_combout\);

-- Location: FF_X59_Y68_N29
\inst1|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(14));

-- Location: LCCOMB_X60_Y68_N0
\inst1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~30_combout\ = (\inst1|s_divCounter\(15) & (!\inst1|Add0~29\)) # (!\inst1|s_divCounter\(15) & ((\inst1|Add0~29\) # (GND)))
-- \inst1|Add0~31\ = CARRY((!\inst1|Add0~29\) # (!\inst1|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(15),
	datad => VCC,
	cin => \inst1|Add0~29\,
	combout => \inst1|Add0~30_combout\,
	cout => \inst1|Add0~31\);

-- Location: LCCOMB_X58_Y68_N26
\inst1|s_divCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter~11_combout\ = (\inst1|Add0~30_combout\ & !\inst1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~30_combout\,
	datad => \inst1|Equal0~9_combout\,
	combout => \inst1|s_divCounter~11_combout\);

-- Location: FF_X58_Y68_N27
\inst1|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(15));

-- Location: LCCOMB_X60_Y68_N2
\inst1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~32_combout\ = (\inst1|s_divCounter\(16) & (\inst1|Add0~31\ $ (GND))) # (!\inst1|s_divCounter\(16) & (!\inst1|Add0~31\ & VCC))
-- \inst1|Add0~33\ = CARRY((\inst1|s_divCounter\(16) & !\inst1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(16),
	datad => VCC,
	cin => \inst1|Add0~31\,
	combout => \inst1|Add0~32_combout\,
	cout => \inst1|Add0~33\);

-- Location: FF_X60_Y68_N3
\inst1|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(16));

-- Location: LCCOMB_X60_Y68_N4
\inst1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~34_combout\ = (\inst1|s_divCounter\(17) & (!\inst1|Add0~33\)) # (!\inst1|s_divCounter\(17) & ((\inst1|Add0~33\) # (GND)))
-- \inst1|Add0~35\ = CARRY((!\inst1|Add0~33\) # (!\inst1|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(17),
	datad => VCC,
	cin => \inst1|Add0~33\,
	combout => \inst1|Add0~34_combout\,
	cout => \inst1|Add0~35\);

-- Location: LCCOMB_X59_Y68_N14
\inst1|s_divCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter~10_combout\ = (\inst1|Add0~34_combout\ & !\inst1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~34_combout\,
	datad => \inst1|Equal0~9_combout\,
	combout => \inst1|s_divCounter~10_combout\);

-- Location: FF_X59_Y68_N15
\inst1|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(17));

-- Location: LCCOMB_X60_Y68_N6
\inst1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~36_combout\ = (\inst1|s_divCounter\(18) & (\inst1|Add0~35\ $ (GND))) # (!\inst1|s_divCounter\(18) & (!\inst1|Add0~35\ & VCC))
-- \inst1|Add0~37\ = CARRY((\inst1|s_divCounter\(18) & !\inst1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(18),
	datad => VCC,
	cin => \inst1|Add0~35\,
	combout => \inst1|Add0~36_combout\,
	cout => \inst1|Add0~37\);

-- Location: FF_X60_Y68_N7
\inst1|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(18));

-- Location: LCCOMB_X60_Y68_N8
\inst1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~38_combout\ = (\inst1|s_divCounter\(19) & (!\inst1|Add0~37\)) # (!\inst1|s_divCounter\(19) & ((\inst1|Add0~37\) # (GND)))
-- \inst1|Add0~39\ = CARRY((!\inst1|Add0~37\) # (!\inst1|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(19),
	datad => VCC,
	cin => \inst1|Add0~37\,
	combout => \inst1|Add0~38_combout\,
	cout => \inst1|Add0~39\);

-- Location: LCCOMB_X59_Y68_N18
\inst1|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter~3_combout\ = (\inst1|Add0~38_combout\ & !\inst1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~38_combout\,
	datad => \inst1|Equal0~9_combout\,
	combout => \inst1|s_divCounter~3_combout\);

-- Location: FF_X59_Y68_N19
\inst1|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(19));

-- Location: LCCOMB_X60_Y68_N10
\inst1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~40_combout\ = (\inst1|s_divCounter\(20) & (\inst1|Add0~39\ $ (GND))) # (!\inst1|s_divCounter\(20) & (!\inst1|Add0~39\ & VCC))
-- \inst1|Add0~41\ = CARRY((\inst1|s_divCounter\(20) & !\inst1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(20),
	datad => VCC,
	cin => \inst1|Add0~39\,
	combout => \inst1|Add0~40_combout\,
	cout => \inst1|Add0~41\);

-- Location: LCCOMB_X59_Y68_N26
\inst1|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter~2_combout\ = (\inst1|Add0~40_combout\ & !\inst1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~40_combout\,
	datad => \inst1|Equal0~9_combout\,
	combout => \inst1|s_divCounter~2_combout\);

-- Location: FF_X59_Y68_N27
\inst1|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(20));

-- Location: LCCOMB_X60_Y68_N12
\inst1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~42_combout\ = (\inst1|s_divCounter\(21) & (!\inst1|Add0~41\)) # (!\inst1|s_divCounter\(21) & ((\inst1|Add0~41\) # (GND)))
-- \inst1|Add0~43\ = CARRY((!\inst1|Add0~41\) # (!\inst1|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(21),
	datad => VCC,
	cin => \inst1|Add0~41\,
	combout => \inst1|Add0~42_combout\,
	cout => \inst1|Add0~43\);

-- Location: LCCOMB_X59_Y68_N16
\inst1|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter~1_combout\ = (\inst1|Add0~42_combout\ & !\inst1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~42_combout\,
	datad => \inst1|Equal0~9_combout\,
	combout => \inst1|s_divCounter~1_combout\);

-- Location: FF_X59_Y68_N17
\inst1|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(21));

-- Location: LCCOMB_X60_Y68_N14
\inst1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~44_combout\ = (\inst1|s_divCounter\(22) & (\inst1|Add0~43\ $ (GND))) # (!\inst1|s_divCounter\(22) & (!\inst1|Add0~43\ & VCC))
-- \inst1|Add0~45\ = CARRY((\inst1|s_divCounter\(22) & !\inst1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(22),
	datad => VCC,
	cin => \inst1|Add0~43\,
	combout => \inst1|Add0~44_combout\,
	cout => \inst1|Add0~45\);

-- Location: LCCOMB_X59_Y68_N6
\inst1|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter~0_combout\ = (\inst1|Add0~44_combout\ & !\inst1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~44_combout\,
	datad => \inst1|Equal0~9_combout\,
	combout => \inst1|s_divCounter~0_combout\);

-- Location: FF_X59_Y68_N7
\inst1|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(22));

-- Location: LCCOMB_X60_Y68_N16
\inst1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~46_combout\ = (\inst1|s_divCounter\(23) & (!\inst1|Add0~45\)) # (!\inst1|s_divCounter\(23) & ((\inst1|Add0~45\) # (GND)))
-- \inst1|Add0~47\ = CARRY((!\inst1|Add0~45\) # (!\inst1|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(23),
	datad => VCC,
	cin => \inst1|Add0~45\,
	combout => \inst1|Add0~46_combout\,
	cout => \inst1|Add0~47\);

-- Location: LCCOMB_X58_Y68_N28
\inst1|s_divCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter~9_combout\ = (!\inst1|Equal0~9_combout\ & \inst1|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~9_combout\,
	datad => \inst1|Add0~46_combout\,
	combout => \inst1|s_divCounter~9_combout\);

-- Location: FF_X58_Y68_N29
\inst1|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(23));

-- Location: LCCOMB_X60_Y68_N18
\inst1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~48_combout\ = (\inst1|s_divCounter\(24) & (\inst1|Add0~47\ $ (GND))) # (!\inst1|s_divCounter\(24) & (!\inst1|Add0~47\ & VCC))
-- \inst1|Add0~49\ = CARRY((\inst1|s_divCounter\(24) & !\inst1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(24),
	datad => VCC,
	cin => \inst1|Add0~47\,
	combout => \inst1|Add0~48_combout\,
	cout => \inst1|Add0~49\);

-- Location: FF_X60_Y68_N19
\inst1|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(24));

-- Location: LCCOMB_X60_Y68_N20
\inst1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~50_combout\ = (\inst1|s_divCounter\(25) & (!\inst1|Add0~49\)) # (!\inst1|s_divCounter\(25) & ((\inst1|Add0~49\) # (GND)))
-- \inst1|Add0~51\ = CARRY((!\inst1|Add0~49\) # (!\inst1|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(25),
	datad => VCC,
	cin => \inst1|Add0~49\,
	combout => \inst1|Add0~50_combout\,
	cout => \inst1|Add0~51\);

-- Location: LCCOMB_X59_Y68_N8
\inst1|s_divCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter~8_combout\ = (\inst1|Add0~50_combout\ & !\inst1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~50_combout\,
	datad => \inst1|Equal0~9_combout\,
	combout => \inst1|s_divCounter~8_combout\);

-- Location: FF_X59_Y68_N9
\inst1|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(25));

-- Location: LCCOMB_X58_Y68_N18
\inst1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~7_combout\ = (!\inst1|s_divCounter\(24) & (\inst1|s_divCounter\(25) & (!\inst1|s_divCounter\(18) & \inst1|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(24),
	datab => \inst1|s_divCounter\(25),
	datac => \inst1|s_divCounter\(18),
	datad => \inst1|s_divCounter\(23),
	combout => \inst1|Equal0~7_combout\);

-- Location: LCCOMB_X58_Y68_N22
\inst1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~8_combout\ = (\inst1|s_divCounter\(15) & (!\inst1|s_divCounter\(16) & (\inst1|s_divCounter\(17) & !\inst1|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(15),
	datab => \inst1|s_divCounter\(16),
	datac => \inst1|s_divCounter\(17),
	datad => \inst1|s_divCounter\(11),
	combout => \inst1|Equal0~8_combout\);

-- Location: LCCOMB_X58_Y68_N10
\inst1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~9_combout\ = (\inst1|s_divCounter\(6) & (\inst1|Equal0~7_combout\ & (\inst1|Equal0~8_combout\ & \inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(6),
	datab => \inst1|Equal0~7_combout\,
	datac => \inst1|Equal0~8_combout\,
	datad => \inst1|Equal0~6_combout\,
	combout => \inst1|Equal0~9_combout\);

-- Location: LCCOMB_X59_Y68_N0
\inst1|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter~7_combout\ = (\inst1|Add0~14_combout\ & !\inst1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~14_combout\,
	datad => \inst1|Equal0~9_combout\,
	combout => \inst1|s_divCounter~7_combout\);

-- Location: FF_X59_Y68_N1
\inst1|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(7));

-- Location: LCCOMB_X60_Y69_N18
\inst1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|s_divCounter\(8) & (\inst1|Add0~15\ $ (GND))) # (!\inst1|s_divCounter\(8) & (!\inst1|Add0~15\ & VCC))
-- \inst1|Add0~17\ = CARRY((\inst1|s_divCounter\(8) & !\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: FF_X60_Y69_N19
\inst1|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(8));

-- Location: LCCOMB_X60_Y69_N20
\inst1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|s_divCounter\(9) & (!\inst1|Add0~17\)) # (!\inst1|s_divCounter\(9) & ((\inst1|Add0~17\) # (GND)))
-- \inst1|Add0~19\ = CARRY((!\inst1|Add0~17\) # (!\inst1|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: FF_X60_Y69_N21
\inst1|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(9));

-- Location: LCCOMB_X60_Y69_N22
\inst1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst1|s_divCounter\(10) & (\inst1|Add0~19\ $ (GND))) # (!\inst1|s_divCounter\(10) & (!\inst1|Add0~19\ & VCC))
-- \inst1|Add0~21\ = CARRY((\inst1|s_divCounter\(10) & !\inst1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(10),
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: FF_X60_Y69_N23
\inst1|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(10));

-- Location: LCCOMB_X60_Y69_N24
\inst1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = (\inst1|s_divCounter\(11) & (!\inst1|Add0~21\)) # (!\inst1|s_divCounter\(11) & ((\inst1|Add0~21\) # (GND)))
-- \inst1|Add0~23\ = CARRY((!\inst1|Add0~21\) # (!\inst1|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(11),
	datad => VCC,
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\,
	cout => \inst1|Add0~23\);

-- Location: FF_X60_Y69_N25
\inst1|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(11));

-- Location: LCCOMB_X59_Y68_N12
\inst1|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter~6_combout\ = (\inst1|Add0~24_combout\ & !\inst1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~24_combout\,
	datad => \inst1|Equal0~9_combout\,
	combout => \inst1|s_divCounter~6_combout\);

-- Location: FF_X59_Y68_N13
\inst1|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(12));

-- Location: LCCOMB_X59_Y68_N30
\inst1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (\inst1|s_divCounter\(12) & (\inst1|s_divCounter\(14) & (\inst1|s_divCounter\(13) & \inst1|s_divCounter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(12),
	datab => \inst1|s_divCounter\(14),
	datac => \inst1|s_divCounter\(13),
	datad => \inst1|s_divCounter\(19),
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X60_Y68_N22
\inst1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~52_combout\ = (\inst1|s_divCounter\(26) & (\inst1|Add0~51\ $ (GND))) # (!\inst1|s_divCounter\(26) & (!\inst1|Add0~51\ & VCC))
-- \inst1|Add0~53\ = CARRY((\inst1|s_divCounter\(26) & !\inst1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(26),
	datad => VCC,
	cin => \inst1|Add0~51\,
	combout => \inst1|Add0~52_combout\,
	cout => \inst1|Add0~53\);

-- Location: FF_X60_Y68_N23
\inst1|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(26));

-- Location: LCCOMB_X59_Y68_N4
\inst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (\inst1|s_divCounter\(22) & (\inst1|s_divCounter\(21) & (\inst1|s_divCounter\(20) & !\inst1|s_divCounter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(22),
	datab => \inst1|s_divCounter\(21),
	datac => \inst1|s_divCounter\(20),
	datad => \inst1|s_divCounter\(26),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X59_Y68_N22
\inst1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~3_combout\ = (!\inst1|s_divCounter\(10) & (!\inst1|s_divCounter\(7) & (!\inst1|s_divCounter\(9) & !\inst1|s_divCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(10),
	datab => \inst1|s_divCounter\(7),
	datac => \inst1|s_divCounter\(9),
	datad => \inst1|s_divCounter\(8),
	combout => \inst1|Equal0~3_combout\);

-- Location: LCCOMB_X60_Y68_N24
\inst1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~54_combout\ = (\inst1|s_divCounter\(27) & (!\inst1|Add0~53\)) # (!\inst1|s_divCounter\(27) & ((\inst1|Add0~53\) # (GND)))
-- \inst1|Add0~55\ = CARRY((!\inst1|Add0~53\) # (!\inst1|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(27),
	datad => VCC,
	cin => \inst1|Add0~53\,
	combout => \inst1|Add0~54_combout\,
	cout => \inst1|Add0~55\);

-- Location: FF_X60_Y68_N25
\inst1|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(27));

-- Location: LCCOMB_X60_Y68_N26
\inst1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~56_combout\ = (\inst1|s_divCounter\(28) & (\inst1|Add0~55\ $ (GND))) # (!\inst1|s_divCounter\(28) & (!\inst1|Add0~55\ & VCC))
-- \inst1|Add0~57\ = CARRY((\inst1|s_divCounter\(28) & !\inst1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(28),
	datad => VCC,
	cin => \inst1|Add0~55\,
	combout => \inst1|Add0~56_combout\,
	cout => \inst1|Add0~57\);

-- Location: FF_X60_Y68_N27
\inst1|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(28));

-- Location: LCCOMB_X60_Y68_N28
\inst1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~58_combout\ = (\inst1|s_divCounter\(29) & (!\inst1|Add0~57\)) # (!\inst1|s_divCounter\(29) & ((\inst1|Add0~57\) # (GND)))
-- \inst1|Add0~59\ = CARRY((!\inst1|Add0~57\) # (!\inst1|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(29),
	datad => VCC,
	cin => \inst1|Add0~57\,
	combout => \inst1|Add0~58_combout\,
	cout => \inst1|Add0~59\);

-- Location: FF_X60_Y68_N29
\inst1|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(29));

-- Location: LCCOMB_X60_Y68_N30
\inst1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~60_combout\ = \inst1|s_divCounter\(30) $ (!\inst1|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(30),
	cin => \inst1|Add0~59\,
	combout => \inst1|Add0~60_combout\);

-- Location: FF_X60_Y68_N31
\inst1|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(30));

-- Location: LCCOMB_X59_Y68_N24
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst1|s_divCounter\(30) & (!\inst1|s_divCounter\(29) & (!\inst1|s_divCounter\(27) & !\inst1|s_divCounter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(30),
	datab => \inst1|s_divCounter\(29),
	datac => \inst1|s_divCounter\(27),
	datad => \inst1|s_divCounter\(28),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X59_Y68_N20
\inst1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~4_combout\ = (\inst1|Equal0~2_combout\ & (\inst1|Equal0~1_combout\ & (\inst1|Equal0~3_combout\ & \inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~2_combout\,
	datab => \inst1|Equal0~1_combout\,
	datac => \inst1|Equal0~3_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|Equal0~4_combout\);

-- Location: LCCOMB_X59_Y68_N2
\inst1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~6_combout\ = (\inst1|s_divCounter\(1) & (\inst1|s_divCounter\(0) & (\inst1|Equal0~5_combout\ & \inst1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(1),
	datab => \inst1|s_divCounter\(0),
	datac => \inst1|Equal0~5_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|Equal0~6_combout\);

-- Location: LCCOMB_X58_Y68_N14
\inst1|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clkOut~0_combout\ = (\inst1|s_divCounter\(24) & (!\inst1|s_divCounter\(25) & (\inst1|s_divCounter\(18) & !\inst1|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(24),
	datab => \inst1|s_divCounter\(25),
	datac => \inst1|s_divCounter\(18),
	datad => \inst1|s_divCounter\(23),
	combout => \inst1|clkOut~0_combout\);

-- Location: LCCOMB_X58_Y68_N24
\inst1|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clkOut~1_combout\ = (!\inst1|s_divCounter\(15) & (\inst1|s_divCounter\(16) & (!\inst1|s_divCounter\(17) & \inst1|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(15),
	datab => \inst1|s_divCounter\(16),
	datac => \inst1|s_divCounter\(17),
	datad => \inst1|s_divCounter\(11),
	combout => \inst1|clkOut~1_combout\);

-- Location: LCCOMB_X58_Y68_N4
\inst1|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clkOut~2_combout\ = (!\inst1|s_divCounter\(6) & (\inst1|clkOut~0_combout\ & \inst1|clkOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(6),
	datac => \inst1|clkOut~0_combout\,
	datad => \inst1|clkOut~1_combout\,
	combout => \inst1|clkOut~2_combout\);

-- Location: LCCOMB_X58_Y68_N12
\inst1|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clkOut~3_combout\ = (!\inst1|Equal0~9_combout\ & ((\inst1|clkOut~q\) # ((\inst1|Equal0~6_combout\ & \inst1|clkOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~6_combout\,
	datab => \inst1|clkOut~q\,
	datac => \inst1|clkOut~2_combout\,
	datad => \inst1|Equal0~9_combout\,
	combout => \inst1|clkOut~3_combout\);

-- Location: LCCOMB_X58_Y68_N0
\inst1|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clkOut~feeder_combout\ = \inst1|clkOut~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|clkOut~3_combout\,
	combout => \inst1|clkOut~feeder_combout\);

-- Location: FF_X58_Y68_N1
\inst1|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|clkOut~q\);

-- Location: CLKCTRL_G11
\inst1|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X105_Y17_N10
\inst2|s_count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[0]~0_combout\ = !\inst2|s_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_count\(0),
	combout => \inst2|s_count[0]~0_combout\);

-- Location: FF_X105_Y17_N11
\inst2|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~clkctrl_outclk\,
	d => \inst2|s_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(0));

-- Location: LCCOMB_X105_Y17_N6
\inst2|s_count[0]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[0]~_wirecell_combout\ = !\inst2|s_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_count\(0),
	combout => \inst2|s_count[0]~_wirecell_combout\);

-- Location: LCCOMB_X105_Y17_N12
\inst2|s_count[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[1]~feeder_combout\ = \inst2|Add1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add1~0_combout\,
	combout => \inst2|s_count[1]~feeder_combout\);

-- Location: FF_X105_Y17_N13
\inst2|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~clkctrl_outclk\,
	d => \inst2|s_count[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(1));

-- Location: LCCOMB_X105_Y17_N4
\inst2|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~0_combout\ = \inst2|s_count\(1) $ (\inst2|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(1),
	datad => \inst2|s_count\(0),
	combout => \inst2|Add1~0_combout\);

-- Location: LCCOMB_X105_Y17_N2
\inst2|s_count[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[2]~feeder_combout\ = \inst2|Add1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add1~1_combout\,
	combout => \inst2|s_count[2]~feeder_combout\);

-- Location: FF_X105_Y17_N3
\inst2|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~clkctrl_outclk\,
	d => \inst2|s_count[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(2));

-- Location: LCCOMB_X105_Y17_N22
\inst2|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~1_combout\ = \inst2|s_count\(2) $ (((\inst2|s_count\(0) & \inst2|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(0),
	datab => \inst2|s_count\(2),
	datad => \inst2|s_count\(1),
	combout => \inst2|Add1~1_combout\);

-- Location: FF_X105_Y17_N17
\inst2|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~clkctrl_outclk\,
	d => \inst2|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(3));

-- Location: LCCOMB_X105_Y17_N16
\inst2|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~2_combout\ = \inst2|s_count\(3) $ (((\inst2|s_count\(0) & (\inst2|s_count\(2) & \inst2|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(0),
	datab => \inst2|s_count\(2),
	datac => \inst2|s_count\(3),
	datad => \inst2|s_count\(1),
	combout => \inst2|Add1~2_combout\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: M9K_X104_Y17_N0
\RAM1|s_memory_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM_2P_16_8:RAM1|altsyncram:s_memory_rtl_0|altsyncram_u9c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \SW[0]~input_o\,
	portbre => VCC,
	clk0 => \inst1|clkOut~clkctrl_outclk\,
	portadatain => \RAM1|s_memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RAM1|s_memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \RAM1|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM1|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X103_Y17_N13
\RAM1|s_memory_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|s_memory_rtl_0_bypass\(16));

-- Location: LCCOMB_X105_Y17_N30
\RAM1|s_memory_rtl_0_bypass[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM1|s_memory_rtl_0_bypass[8]~feeder_combout\ = \inst2|Add1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Add1~2_combout\,
	combout => \RAM1|s_memory_rtl_0_bypass[8]~feeder_combout\);

-- Location: FF_X105_Y17_N31
\RAM1|s_memory_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~clkctrl_outclk\,
	d => \RAM1|s_memory_rtl_0_bypass[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|s_memory_rtl_0_bypass\(8));

-- Location: LCCOMB_X105_Y17_N14
\RAM1|s_memory_rtl_0_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM1|s_memory_rtl_0_bypass[5]~feeder_combout\ = \SW[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[3]~input_o\,
	combout => \RAM1|s_memory_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X105_Y17_N15
\RAM1|s_memory_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~clkctrl_outclk\,
	d => \RAM1|s_memory_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|s_memory_rtl_0_bypass\(5));

-- Location: FF_X105_Y17_N1
\RAM1|s_memory_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~clkctrl_outclk\,
	asdata => \inst2|Add1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|s_memory_rtl_0_bypass\(6));

-- Location: LCCOMB_X105_Y17_N8
\RAM1|s_memory_rtl_0_bypass[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM1|s_memory_rtl_0_bypass[7]~feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \RAM1|s_memory_rtl_0_bypass[7]~feeder_combout\);

-- Location: FF_X105_Y17_N9
\RAM1|s_memory_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~clkctrl_outclk\,
	d => \RAM1|s_memory_rtl_0_bypass[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|s_memory_rtl_0_bypass\(7));

-- Location: LCCOMB_X105_Y17_N0
\RAM1|s_memory~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM1|s_memory~14_combout\ = (\RAM1|s_memory_rtl_0_bypass\(8) & (\RAM1|s_memory_rtl_0_bypass\(7) & (\RAM1|s_memory_rtl_0_bypass\(5) $ (!\RAM1|s_memory_rtl_0_bypass\(6))))) # (!\RAM1|s_memory_rtl_0_bypass\(8) & (!\RAM1|s_memory_rtl_0_bypass\(7) & 
-- (\RAM1|s_memory_rtl_0_bypass\(5) $ (!\RAM1|s_memory_rtl_0_bypass\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|s_memory_rtl_0_bypass\(8),
	datab => \RAM1|s_memory_rtl_0_bypass\(5),
	datac => \RAM1|s_memory_rtl_0_bypass\(6),
	datad => \RAM1|s_memory_rtl_0_bypass\(7),
	combout => \RAM1|s_memory~14_combout\);

-- Location: FF_X105_Y17_N25
\RAM1|s_memory_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~clkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|s_memory_rtl_0_bypass\(0));

-- Location: FF_X105_Y17_N23
\RAM1|s_memory_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~clkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|s_memory_rtl_0_bypass\(3));

-- Location: LCCOMB_X105_Y17_N26
\RAM1|s_memory_rtl_0_bypass[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM1|s_memory_rtl_0_bypass[2]~0_combout\ = !\inst2|s_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_count\(0),
	combout => \RAM1|s_memory_rtl_0_bypass[2]~0_combout\);

-- Location: FF_X105_Y17_N27
\RAM1|s_memory_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~clkctrl_outclk\,
	d => \RAM1|s_memory_rtl_0_bypass[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|s_memory_rtl_0_bypass\(2));

-- Location: FF_X105_Y17_N29
\RAM1|s_memory_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~clkctrl_outclk\,
	asdata => \inst2|Add1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|s_memory_rtl_0_bypass\(4));

-- Location: FF_X105_Y17_N5
\RAM1|s_memory_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~clkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|s_memory_rtl_0_bypass\(1));

-- Location: LCCOMB_X105_Y17_N28
\RAM1|s_memory~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM1|s_memory~13_combout\ = (\RAM1|s_memory_rtl_0_bypass\(3) & (\RAM1|s_memory_rtl_0_bypass\(4) & (\RAM1|s_memory_rtl_0_bypass\(2) $ (!\RAM1|s_memory_rtl_0_bypass\(1))))) # (!\RAM1|s_memory_rtl_0_bypass\(3) & (!\RAM1|s_memory_rtl_0_bypass\(4) & 
-- (\RAM1|s_memory_rtl_0_bypass\(2) $ (!\RAM1|s_memory_rtl_0_bypass\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|s_memory_rtl_0_bypass\(3),
	datab => \RAM1|s_memory_rtl_0_bypass\(2),
	datac => \RAM1|s_memory_rtl_0_bypass\(4),
	datad => \RAM1|s_memory_rtl_0_bypass\(1),
	combout => \RAM1|s_memory~13_combout\);

-- Location: LCCOMB_X105_Y17_N24
\RAM1|s_memory~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM1|s_memory~15_combout\ = (\RAM1|s_memory~14_combout\ & (\RAM1|s_memory_rtl_0_bypass\(0) & \RAM1|s_memory~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|s_memory~14_combout\,
	datac => \RAM1|s_memory_rtl_0_bypass\(0),
	datad => \RAM1|s_memory~13_combout\,
	combout => \RAM1|s_memory~15_combout\);

-- Location: LCCOMB_X103_Y17_N12
\RAM1|s_memory~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM1|s_memory~16_combout\ = (\RAM1|s_memory~15_combout\ & ((\RAM1|s_memory_rtl_0_bypass\(16)))) # (!\RAM1|s_memory~15_combout\ & (\RAM1|s_memory_rtl_0|auto_generated|ram_block1a7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|s_memory_rtl_0|auto_generated|ram_block1a7\,
	datac => \RAM1|s_memory_rtl_0_bypass\(16),
	datad => \RAM1|s_memory~15_combout\,
	combout => \RAM1|s_memory~16_combout\);

-- Location: FF_X103_Y17_N23
\RAM1|s_memory_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|s_memory_rtl_0_bypass\(15));

-- Location: LCCOMB_X103_Y17_N22
\RAM1|s_memory~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM1|s_memory~17_combout\ = (\RAM1|s_memory~15_combout\ & ((\RAM1|s_memory_rtl_0_bypass\(15)))) # (!\RAM1|s_memory~15_combout\ & (\RAM1|s_memory_rtl_0|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|s_memory_rtl_0|auto_generated|ram_block1a6\,
	datac => \RAM1|s_memory_rtl_0_bypass\(15),
	datad => \RAM1|s_memory~15_combout\,
	combout => \RAM1|s_memory~17_combout\);

-- Location: FF_X103_Y17_N21
\RAM1|s_memory_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|s_memory_rtl_0_bypass\(14));

-- Location: LCCOMB_X103_Y17_N20
\RAM1|s_memory~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM1|s_memory~18_combout\ = (\RAM1|s_memory~15_combout\ & ((\RAM1|s_memory_rtl_0_bypass\(14)))) # (!\RAM1|s_memory~15_combout\ & (\RAM1|s_memory_rtl_0|auto_generated|ram_block1a5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|s_memory_rtl_0|auto_generated|ram_block1a5\,
	datac => \RAM1|s_memory_rtl_0_bypass\(14),
	datad => \RAM1|s_memory~15_combout\,
	combout => \RAM1|s_memory~18_combout\);

-- Location: FF_X103_Y17_N11
\RAM1|s_memory_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|s_memory_rtl_0_bypass\(13));

-- Location: LCCOMB_X103_Y17_N10
\RAM1|s_memory~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM1|s_memory~19_combout\ = (\RAM1|s_memory~15_combout\ & ((\RAM1|s_memory_rtl_0_bypass\(13)))) # (!\RAM1|s_memory~15_combout\ & (\RAM1|s_memory_rtl_0|auto_generated|ram_block1a4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|s_memory_rtl_0|auto_generated|ram_block1a4\,
	datac => \RAM1|s_memory_rtl_0_bypass\(13),
	datad => \RAM1|s_memory~15_combout\,
	combout => \RAM1|s_memory~19_combout\);

-- Location: FF_X103_Y17_N25
\RAM1|s_memory_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|s_memory_rtl_0_bypass\(12));

-- Location: LCCOMB_X103_Y17_N24
\RAM1|s_memory~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM1|s_memory~20_combout\ = (\RAM1|s_memory~15_combout\ & ((\RAM1|s_memory_rtl_0_bypass\(12)))) # (!\RAM1|s_memory~15_combout\ & (\RAM1|s_memory_rtl_0|auto_generated|ram_block1a3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|s_memory_rtl_0|auto_generated|ram_block1a3\,
	datac => \RAM1|s_memory_rtl_0_bypass\(12),
	datad => \RAM1|s_memory~15_combout\,
	combout => \RAM1|s_memory~20_combout\);

-- Location: FF_X103_Y17_N27
\RAM1|s_memory_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|s_memory_rtl_0_bypass\(11));

-- Location: LCCOMB_X103_Y17_N26
\RAM1|s_memory~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM1|s_memory~21_combout\ = (\RAM1|s_memory~15_combout\ & ((\RAM1|s_memory_rtl_0_bypass\(11)))) # (!\RAM1|s_memory~15_combout\ & (\RAM1|s_memory_rtl_0|auto_generated|ram_block1a2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|s_memory_rtl_0|auto_generated|ram_block1a2\,
	datac => \RAM1|s_memory_rtl_0_bypass\(11),
	datad => \RAM1|s_memory~15_combout\,
	combout => \RAM1|s_memory~21_combout\);

-- Location: FF_X105_Y17_N19
\RAM1|s_memory_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|s_memory_rtl_0_bypass\(10));

-- Location: LCCOMB_X105_Y17_N18
\RAM1|s_memory~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM1|s_memory~22_combout\ = (\RAM1|s_memory~15_combout\ & ((\RAM1|s_memory_rtl_0_bypass\(10)))) # (!\RAM1|s_memory~15_combout\ & (\RAM1|s_memory_rtl_0|auto_generated|ram_block1a1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|s_memory~15_combout\,
	datab => \RAM1|s_memory_rtl_0|auto_generated|ram_block1a1\,
	datac => \RAM1|s_memory_rtl_0_bypass\(10),
	combout => \RAM1|s_memory~22_combout\);

-- Location: FF_X105_Y17_N21
\RAM1|s_memory_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|s_memory_rtl_0_bypass\(9));

-- Location: LCCOMB_X105_Y17_N20
\RAM1|s_memory~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM1|s_memory~23_combout\ = (\RAM1|s_memory~15_combout\ & ((\RAM1|s_memory_rtl_0_bypass\(9)))) # (!\RAM1|s_memory~15_combout\ & (\RAM1|s_memory_rtl_0|auto_generated|ram_block1a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|s_memory~15_combout\,
	datab => \RAM1|s_memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \RAM1|s_memory_rtl_0_bypass\(9),
	combout => \RAM1|s_memory~23_combout\);

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


