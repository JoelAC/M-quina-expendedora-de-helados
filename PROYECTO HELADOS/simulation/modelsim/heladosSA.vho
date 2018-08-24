-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "08/21/2018 11:14:39"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bin2bcd9 IS
    PORT (
	num_bin : IN std_logic_vector(8 DOWNTO 0);
	num_bcd : OUT std_logic_vector(10 DOWNTO 0)
	);
END bin2bcd9;

-- Design Ports Information
-- num_bcd[0]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_bcd[1]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_bcd[2]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_bcd[3]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_bcd[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_bcd[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_bcd[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_bcd[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_bcd[8]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_bcd[9]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_bcd[10]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_bin[0]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_bin[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_bin[8]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_bin[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_bin[7]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_bin[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_bin[3]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_bin[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_bin[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bin2bcd9 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_num_bin : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_num_bcd : std_logic_vector(10 DOWNTO 0);
SIGNAL \z~3_combout\ : std_logic;
SIGNAL \z~10_combout\ : std_logic;
SIGNAL \num_bin[7]~input_o\ : std_logic;
SIGNAL \num_bin[3]~input_o\ : std_logic;
SIGNAL \num_bcd[0]~output_o\ : std_logic;
SIGNAL \num_bcd[1]~output_o\ : std_logic;
SIGNAL \num_bcd[2]~output_o\ : std_logic;
SIGNAL \num_bcd[3]~output_o\ : std_logic;
SIGNAL \num_bcd[4]~output_o\ : std_logic;
SIGNAL \num_bcd[5]~output_o\ : std_logic;
SIGNAL \num_bcd[6]~output_o\ : std_logic;
SIGNAL \num_bcd[7]~output_o\ : std_logic;
SIGNAL \num_bcd[8]~output_o\ : std_logic;
SIGNAL \num_bcd[9]~output_o\ : std_logic;
SIGNAL \num_bcd[10]~output_o\ : std_logic;
SIGNAL \num_bin[0]~input_o\ : std_logic;
SIGNAL \num_bin[1]~input_o\ : std_logic;
SIGNAL \num_bin[2]~input_o\ : std_logic;
SIGNAL \num_bin[5]~input_o\ : std_logic;
SIGNAL \num_bin[8]~input_o\ : std_logic;
SIGNAL \num_bin[6]~input_o\ : std_logic;
SIGNAL \z~4_combout\ : std_logic;
SIGNAL \z~2_combout\ : std_logic;
SIGNAL \num_bin[4]~input_o\ : std_logic;
SIGNAL \z~5_combout\ : std_logic;
SIGNAL \z~6_combout\ : std_logic;
SIGNAL \z~7_combout\ : std_logic;
SIGNAL \z~9_combout\ : std_logic;
SIGNAL \z~8_combout\ : std_logic;
SIGNAL \z~12_combout\ : std_logic;
SIGNAL \z~11_combout\ : std_logic;
SIGNAL \z~13_combout\ : std_logic;
SIGNAL \z~14_combout\ : std_logic;
SIGNAL \z~15_combout\ : std_logic;
SIGNAL \z~16_combout\ : std_logic;
SIGNAL \z~17_combout\ : std_logic;
SIGNAL \z~22_combout\ : std_logic;
SIGNAL \z~21_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \z~18_combout\ : std_logic;
SIGNAL \z~20_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \z~24_combout\ : std_logic;
SIGNAL \z~23_combout\ : std_logic;
SIGNAL \z~25_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \z~26_combout\ : std_logic;
SIGNAL \z~27_combout\ : std_logic;
SIGNAL \z~28_combout\ : std_logic;
SIGNAL \z~29_combout\ : std_logic;
SIGNAL \z~19_combout\ : std_logic;
SIGNAL \z~33_combout\ : std_logic;
SIGNAL \z~30_combout\ : std_logic;
SIGNAL \z~31_combout\ : std_logic;
SIGNAL \z~32_combout\ : std_logic;
SIGNAL \ALT_INV_z~30_combout\ : std_logic;
SIGNAL \ALT_INV_z~29_combout\ : std_logic;
SIGNAL \ALT_INV_z~27_combout\ : std_logic;
SIGNAL \ALT_INV_z~25_combout\ : std_logic;
SIGNAL \ALT_INV_z~17_combout\ : std_logic;

BEGIN

ww_num_bin <= num_bin;
num_bcd <= ww_num_bcd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_z~30_combout\ <= NOT \z~30_combout\;
\ALT_INV_z~29_combout\ <= NOT \z~29_combout\;
\ALT_INV_z~27_combout\ <= NOT \z~27_combout\;
\ALT_INV_z~25_combout\ <= NOT \z~25_combout\;
\ALT_INV_z~17_combout\ <= NOT \z~17_combout\;

-- Location: LCCOMB_X18_Y9_N10
\z~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~3_combout\ = (\num_bin[7]~input_o\ & (!\num_bin[5]~input_o\ & (\num_bin[8]~input_o\ $ (!\num_bin[6]~input_o\)))) # (!\num_bin[7]~input_o\ & (\num_bin[5]~input_o\ & (\num_bin[8]~input_o\ & !\num_bin[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num_bin[7]~input_o\,
	datab => \num_bin[5]~input_o\,
	datac => \num_bin[8]~input_o\,
	datad => \num_bin[6]~input_o\,
	combout => \z~3_combout\);

-- Location: LCCOMB_X17_Y17_N12
\z~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~10_combout\ = (\num_bin[3]~input_o\ & (\z~5_combout\)) # (!\num_bin[3]~input_o\ & ((\z~5_combout\ & (!\z~6_combout\ & !\z~7_combout\)) # (!\z~5_combout\ & (\z~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num_bin[3]~input_o\,
	datab => \z~5_combout\,
	datac => \z~6_combout\,
	datad => \z~7_combout\,
	combout => \z~10_combout\);

-- Location: IOIBUF_X16_Y0_N15
\num_bin[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num_bin(7),
	o => \num_bin[7]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\num_bin[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num_bin(3),
	o => \num_bin[3]~input_o\);

-- Location: IOOBUF_X45_Y0_N23
\num_bcd[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \num_bin[0]~input_o\,
	devoe => ww_devoe,
	o => \num_bcd[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\num_bcd[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z~14_combout\,
	devoe => ww_devoe,
	o => \num_bcd[1]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\num_bcd[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z~15_combout\,
	devoe => ww_devoe,
	o => \num_bcd[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\num_bcd[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z~16_combout\,
	devoe => ww_devoe,
	o => \num_bcd[3]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\num_bcd[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_z~17_combout\,
	devoe => ww_devoe,
	o => \num_bcd[4]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\num_bcd[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_z~25_combout\,
	devoe => ww_devoe,
	o => \num_bcd[5]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\num_bcd[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_z~27_combout\,
	devoe => ww_devoe,
	o => \num_bcd[6]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\num_bcd[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z~28_combout\,
	devoe => ww_devoe,
	o => \num_bcd[7]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\num_bcd[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_z~29_combout\,
	devoe => ww_devoe,
	o => \num_bcd[8]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\num_bcd[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_z~30_combout\,
	devoe => ww_devoe,
	o => \num_bcd[9]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\num_bcd[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z~32_combout\,
	devoe => ww_devoe,
	o => \num_bcd[10]~output_o\);

-- Location: IOIBUF_X43_Y0_N22
\num_bin[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num_bin(0),
	o => \num_bin[0]~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\num_bin[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num_bin(1),
	o => \num_bin[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\num_bin[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num_bin(2),
	o => \num_bin[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\num_bin[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num_bin(5),
	o => \num_bin[5]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\num_bin[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num_bin(8),
	o => \num_bin[8]~input_o\);

-- Location: IOIBUF_X20_Y34_N22
\num_bin[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num_bin(6),
	o => \num_bin[6]~input_o\);

-- Location: LCCOMB_X18_Y9_N28
\z~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~4_combout\ = (\num_bin[8]~input_o\ & (!\num_bin[6]~input_o\ & ((\num_bin[7]~input_o\) # (!\num_bin[5]~input_o\)))) # (!\num_bin[8]~input_o\ & (\num_bin[6]~input_o\ & ((\num_bin[5]~input_o\) # (!\num_bin[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num_bin[7]~input_o\,
	datab => \num_bin[5]~input_o\,
	datac => \num_bin[8]~input_o\,
	datad => \num_bin[6]~input_o\,
	combout => \z~4_combout\);

-- Location: LCCOMB_X18_Y9_N8
\z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~2_combout\ = (\num_bin[7]~input_o\ & ((\num_bin[5]~input_o\ & (\num_bin[8]~input_o\ & !\num_bin[6]~input_o\)) # (!\num_bin[5]~input_o\ & (!\num_bin[8]~input_o\ & \num_bin[6]~input_o\)))) # (!\num_bin[7]~input_o\ & (\num_bin[5]~input_o\ $ 
-- (((\num_bin[8]~input_o\ & !\num_bin[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num_bin[7]~input_o\,
	datab => \num_bin[5]~input_o\,
	datac => \num_bin[8]~input_o\,
	datad => \num_bin[6]~input_o\,
	combout => \z~2_combout\);

-- Location: IOIBUF_X18_Y0_N8
\num_bin[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num_bin(4),
	o => \num_bin[4]~input_o\);

-- Location: LCCOMB_X18_Y9_N14
\z~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~5_combout\ = (\z~3_combout\ & (((!\num_bin[4]~input_o\)))) # (!\z~3_combout\ & ((\z~4_combout\ & (\z~2_combout\ & !\num_bin[4]~input_o\)) # (!\z~4_combout\ & ((\num_bin[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \z~3_combout\,
	datab => \z~4_combout\,
	datac => \z~2_combout\,
	datad => \num_bin[4]~input_o\,
	combout => \z~5_combout\);

-- Location: LCCOMB_X18_Y9_N0
\z~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~6_combout\ = (\z~4_combout\ & (((!\z~2_combout\ & !\num_bin[4]~input_o\)))) # (!\z~4_combout\ & (\z~3_combout\ & ((\z~2_combout\) # (\num_bin[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \z~3_combout\,
	datab => \z~4_combout\,
	datac => \z~2_combout\,
	datad => \num_bin[4]~input_o\,
	combout => \z~6_combout\);

-- Location: LCCOMB_X18_Y9_N2
\z~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~7_combout\ = (\z~3_combout\ & ((\z~2_combout\ $ (!\num_bin[4]~input_o\)))) # (!\z~3_combout\ & (\z~2_combout\ & ((\num_bin[4]~input_o\) # (!\z~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \z~3_combout\,
	datab => \z~4_combout\,
	datac => \z~2_combout\,
	datad => \num_bin[4]~input_o\,
	combout => \z~7_combout\);

-- Location: LCCOMB_X17_Y17_N26
\z~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~9_combout\ = (\z~7_combout\ & (!\num_bin[3]~input_o\ & (!\z~5_combout\))) # (!\z~7_combout\ & (\z~6_combout\ & ((\num_bin[3]~input_o\) # (\z~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num_bin[3]~input_o\,
	datab => \z~5_combout\,
	datac => \z~6_combout\,
	datad => \z~7_combout\,
	combout => \z~9_combout\);

-- Location: LCCOMB_X17_Y17_N0
\z~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~8_combout\ = (\num_bin[3]~input_o\ & (((!\z~6_combout\ & !\z~7_combout\)))) # (!\num_bin[3]~input_o\ & ((\z~6_combout\) # ((\z~5_combout\ & \z~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num_bin[3]~input_o\,
	datab => \z~5_combout\,
	datac => \z~6_combout\,
	datad => \z~7_combout\,
	combout => \z~8_combout\);

-- Location: LCCOMB_X17_Y17_N24
\z~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~12_combout\ = (\z~10_combout\ & (!\num_bin[2]~input_o\ & ((!\z~8_combout\)))) # (!\z~10_combout\ & (\z~9_combout\ & ((\num_bin[2]~input_o\) # (\z~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \z~10_combout\,
	datab => \num_bin[2]~input_o\,
	datac => \z~9_combout\,
	datad => \z~8_combout\,
	combout => \z~12_combout\);

-- Location: LCCOMB_X17_Y17_N22
\z~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~11_combout\ = (\z~10_combout\ & (!\num_bin[2]~input_o\ & ((\z~9_combout\) # (\z~8_combout\)))) # (!\z~10_combout\ & (\num_bin[2]~input_o\ $ ((\z~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \z~10_combout\,
	datab => \num_bin[2]~input_o\,
	datac => \z~9_combout\,
	datad => \z~8_combout\,
	combout => \z~11_combout\);

-- Location: LCCOMB_X17_Y17_N10
\z~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~13_combout\ = (\num_bin[2]~input_o\ & (((\z~8_combout\)))) # (!\num_bin[2]~input_o\ & ((\z~9_combout\ & ((!\z~8_combout\))) # (!\z~9_combout\ & (!\z~10_combout\ & \z~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \z~10_combout\,
	datab => \num_bin[2]~input_o\,
	datac => \z~9_combout\,
	datad => \z~8_combout\,
	combout => \z~13_combout\);

-- Location: LCCOMB_X17_Y17_N20
\z~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~14_combout\ = (\num_bin[1]~input_o\ & (!\z~12_combout\ & ((!\z~13_combout\)))) # (!\num_bin[1]~input_o\ & ((\z~12_combout\) # ((\z~11_combout\ & \z~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num_bin[1]~input_o\,
	datab => \z~12_combout\,
	datac => \z~11_combout\,
	datad => \z~13_combout\,
	combout => \z~14_combout\);

-- Location: LCCOMB_X17_Y17_N6
\z~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~15_combout\ = (\num_bin[1]~input_o\ & (((\z~11_combout\)))) # (!\num_bin[1]~input_o\ & ((\z~12_combout\ & (!\z~11_combout\)) # (!\z~12_combout\ & (\z~11_combout\ & !\z~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num_bin[1]~input_o\,
	datab => \z~12_combout\,
	datac => \z~11_combout\,
	datad => \z~13_combout\,
	combout => \z~15_combout\);

-- Location: LCCOMB_X17_Y17_N16
\z~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~16_combout\ = (\z~13_combout\ & (!\num_bin[1]~input_o\ & ((!\z~11_combout\)))) # (!\z~13_combout\ & (\z~12_combout\ & ((\num_bin[1]~input_o\) # (\z~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num_bin[1]~input_o\,
	datab => \z~12_combout\,
	datac => \z~11_combout\,
	datad => \z~13_combout\,
	combout => \z~16_combout\);

-- Location: LCCOMB_X17_Y17_N2
\z~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~17_combout\ = \z~12_combout\ $ ((((!\num_bin[1]~input_o\ & !\z~11_combout\)) # (!\z~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num_bin[1]~input_o\,
	datab => \z~12_combout\,
	datac => \z~11_combout\,
	datad => \z~13_combout\,
	combout => \z~17_combout\);

-- Location: LCCOMB_X17_Y17_N4
\z~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~22_combout\ = \z~9_combout\ $ ((((!\num_bin[2]~input_o\ & !\z~8_combout\)) # (!\z~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \z~10_combout\,
	datab => \num_bin[2]~input_o\,
	datac => \z~9_combout\,
	datad => \z~8_combout\,
	combout => \z~22_combout\);

-- Location: LCCOMB_X18_Y9_N16
\z~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~21_combout\ = (\num_bin[7]~input_o\ & ((\num_bin[5]~input_o\ & ((\num_bin[6]~input_o\) # (!\num_bin[8]~input_o\))) # (!\num_bin[5]~input_o\ & (!\num_bin[8]~input_o\ & \num_bin[6]~input_o\)))) # (!\num_bin[7]~input_o\ & (((\num_bin[8]~input_o\ & 
-- !\num_bin[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num_bin[7]~input_o\,
	datab => \num_bin[5]~input_o\,
	datac => \num_bin[8]~input_o\,
	datad => \num_bin[6]~input_o\,
	combout => \z~21_combout\);

-- Location: LCCOMB_X18_Y9_N18
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\num_bin[7]~input_o\) # (\num_bin[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num_bin[7]~input_o\,
	datad => \num_bin[6]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X18_Y9_N24
\z~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~18_combout\ = (\num_bin[7]~input_o\ & (\num_bin[5]~input_o\ & (\num_bin[8]~input_o\ & \num_bin[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num_bin[7]~input_o\,
	datab => \num_bin[5]~input_o\,
	datac => \num_bin[8]~input_o\,
	datad => \num_bin[6]~input_o\,
	combout => \z~18_combout\);

-- Location: LCCOMB_X18_Y9_N22
\z~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~20_combout\ = (\z~18_combout\) # ((!\z~19_combout\ & ((!\LessThan0~0_combout\) # (!\num_bin[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \z~19_combout\,
	datab => \z~18_combout\,
	datac => \num_bin[8]~input_o\,
	datad => \LessThan0~0_combout\,
	combout => \z~20_combout\);

-- Location: LCCOMB_X21_Y21_N24
\LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (\z~20_combout\) # (\LessThan3~0_combout\ $ (\z~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datac => \z~6_combout\,
	datad => \z~20_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X21_Y21_N10
\LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = (\z~21_combout\ & (\LessThan6~0_combout\ & ((!\LessThan0~0_combout\) # (!\z~33_combout\)))) # (!\z~21_combout\ & (\z~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \z~33_combout\,
	datab => \z~21_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan6~0_combout\,
	combout => \LessThan6~1_combout\);

-- Location: LCCOMB_X21_Y21_N12
\LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (\LessThan3~0_combout\ $ (\z~6_combout\ $ (\LessThan6~1_combout\))) # (!\z~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \z~22_combout\,
	datac => \z~6_combout\,
	datad => \LessThan6~1_combout\,
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X21_Y21_N0
\z~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~24_combout\ = (\z~21_combout\ & (!\LessThan6~0_combout\ & ((!\LessThan0~0_combout\) # (!\z~33_combout\)))) # (!\z~21_combout\ & (\z~33_combout\ & ((\LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \z~33_combout\,
	datab => \z~21_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan6~0_combout\,
	combout => \z~24_combout\);

-- Location: LCCOMB_X21_Y21_N6
\z~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~23_combout\ = \z~20_combout\ $ (((\LessThan6~1_combout\ & (\LessThan3~0_combout\ $ (!\z~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \z~20_combout\,
	datac => \z~6_combout\,
	datad => \LessThan6~1_combout\,
	combout => \z~23_combout\);

-- Location: LCCOMB_X21_Y21_N2
\z~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~25_combout\ = \z~22_combout\ $ (((\z~24_combout\) # ((\LessThan8~0_combout\ & \z~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~0_combout\,
	datab => \z~24_combout\,
	datac => \z~22_combout\,
	datad => \z~23_combout\,
	combout => \z~25_combout\);

-- Location: LCCOMB_X18_Y9_N12
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\z~3_combout\) # ((\z~4_combout\ & ((\z~2_combout\) # (\num_bin[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \z~3_combout\,
	datab => \z~4_combout\,
	datac => \z~2_combout\,
	datad => \num_bin[4]~input_o\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X18_Y9_N30
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (\num_bin[4]~input_o\ & (\z~2_combout\ & ((\num_bin[3]~input_o\) # (!\LessThan2~0_combout\)))) # (!\num_bin[4]~input_o\ & ((\z~2_combout\ & (\num_bin[3]~input_o\ & !\LessThan2~0_combout\)) # (!\z~2_combout\ & 
-- ((\LessThan2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num_bin[3]~input_o\,
	datab => \num_bin[4]~input_o\,
	datac => \z~2_combout\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X21_Y21_N28
\z~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~26_combout\ = \z~6_combout\ $ (\LessThan3~0_combout\ $ (!\LessThan6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \z~6_combout\,
	datac => \LessThan3~0_combout\,
	datad => \LessThan6~1_combout\,
	combout => \z~26_combout\);

-- Location: LCCOMB_X21_Y21_N22
\z~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~27_combout\ = (\z~26_combout\ & (((!\z~24_combout\) # (!\z~22_combout\)))) # (!\z~26_combout\ & (\z~22_combout\ & ((\z~23_combout\) # (\z~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \z~23_combout\,
	datab => \z~26_combout\,
	datac => \z~22_combout\,
	datad => \z~24_combout\,
	combout => \z~27_combout\);

-- Location: LCCOMB_X21_Y21_N16
\z~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~28_combout\ = (\LessThan8~0_combout\ & (\z~24_combout\ & !\z~23_combout\)) # (!\LessThan8~0_combout\ & ((\z~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~0_combout\,
	datab => \z~24_combout\,
	datad => \z~23_combout\,
	combout => \z~28_combout\);

-- Location: LCCOMB_X21_Y21_N26
\z~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~29_combout\ = \z~24_combout\ $ (((!\z~23_combout\) # (!\LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~0_combout\,
	datab => \z~24_combout\,
	datad => \z~23_combout\,
	combout => \z~29_combout\);

-- Location: LCCOMB_X18_Y9_N20
\z~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~19_combout\ = \z~3_combout\ $ ((((!\z~2_combout\ & !\num_bin[4]~input_o\)) # (!\z~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \z~3_combout\,
	datab => \z~4_combout\,
	datac => \z~2_combout\,
	datad => \num_bin[4]~input_o\,
	combout => \z~19_combout\);

-- Location: LCCOMB_X18_Y9_N6
\z~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~33_combout\ = (\z~19_combout\ & (\num_bin[8]~input_o\ & ((\num_bin[7]~input_o\) # (\num_bin[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num_bin[7]~input_o\,
	datab => \z~19_combout\,
	datac => \num_bin[8]~input_o\,
	datad => \num_bin[6]~input_o\,
	combout => \z~33_combout\);

-- Location: LCCOMB_X21_Y21_N4
\z~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~30_combout\ = (\z~21_combout\ & (((\z~33_combout\ & \LessThan0~0_combout\)) # (!\LessThan6~0_combout\))) # (!\z~21_combout\ & (!\z~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \z~33_combout\,
	datab => \z~21_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan6~0_combout\,
	combout => \z~30_combout\);

-- Location: LCCOMB_X18_Y9_N26
\z~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~31_combout\ = (\num_bin[7]~input_o\ & \num_bin[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num_bin[7]~input_o\,
	datac => \num_bin[8]~input_o\,
	combout => \z~31_combout\);

-- Location: LCCOMB_X18_Y9_N4
\z~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~32_combout\ = (\z~31_combout\ & ((\num_bin[6]~input_o\) # ((\num_bin[4]~input_o\) # (\num_bin[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num_bin[6]~input_o\,
	datab => \num_bin[4]~input_o\,
	datac => \z~31_combout\,
	datad => \num_bin[5]~input_o\,
	combout => \z~32_combout\);

ww_num_bcd(0) <= \num_bcd[0]~output_o\;

ww_num_bcd(1) <= \num_bcd[1]~output_o\;

ww_num_bcd(2) <= \num_bcd[2]~output_o\;

ww_num_bcd(3) <= \num_bcd[3]~output_o\;

ww_num_bcd(4) <= \num_bcd[4]~output_o\;

ww_num_bcd(5) <= \num_bcd[5]~output_o\;

ww_num_bcd(6) <= \num_bcd[6]~output_o\;

ww_num_bcd(7) <= \num_bcd[7]~output_o\;

ww_num_bcd(8) <= \num_bcd[8]~output_o\;

ww_num_bcd(9) <= \num_bcd[9]~output_o\;

ww_num_bcd(10) <= \num_bcd[10]~output_o\;
END structure;


