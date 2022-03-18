-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "03/17/2022 21:22:44"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	g40_mod_exp IS
    PORT (
	d : IN std_logic_vector(13 DOWNTO 0);
	c : IN std_logic_vector(9 DOWNTO 0);
	start : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic;
	s : OUT std_logic_vector(15 DOWNTO 0);
	ready : OUT std_logic
	);
END g40_mod_exp;

-- Design Ports Information
-- s[0]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[8]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[9]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[10]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[11]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[12]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[13]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[14]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[15]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ready	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[13]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[10]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[8]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[7]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[6]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[5]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[4]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[0]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[12]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[11]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[0]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[1]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[3]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[4]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[5]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[6]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[7]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[8]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[9]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF g40_mod_exp IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_c : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_start : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_s : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ready : std_logic;
SIGNAL \Mult0~8_AX_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mult0~8_AY_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult0~34\ : std_logic;
SIGNAL \Mult0~35\ : std_logic;
SIGNAL \Mult0~36\ : std_logic;
SIGNAL \Mult0~37\ : std_logic;
SIGNAL \Mult0~38\ : std_logic;
SIGNAL \Mult0~39\ : std_logic;
SIGNAL \Mult0~40\ : std_logic;
SIGNAL \Mult0~41\ : std_logic;
SIGNAL \Mult0~42\ : std_logic;
SIGNAL \Mult0~43\ : std_logic;
SIGNAL \Mult0~44\ : std_logic;
SIGNAL \Mult0~45\ : std_logic;
SIGNAL \Mult0~46\ : std_logic;
SIGNAL \Mult0~47\ : std_logic;
SIGNAL \Mult0~48\ : std_logic;
SIGNAL \Mult0~49\ : std_logic;
SIGNAL \Mult0~50\ : std_logic;
SIGNAL \Mult0~51\ : std_logic;
SIGNAL \Mult0~52\ : std_logic;
SIGNAL \Mult0~53\ : std_logic;
SIGNAL \Mult0~54\ : std_logic;
SIGNAL \Mult0~55\ : std_logic;
SIGNAL \Mult0~56\ : std_logic;
SIGNAL \Mult0~57\ : std_logic;
SIGNAL \Mult0~58\ : std_logic;
SIGNAL \Mult0~59\ : std_logic;
SIGNAL \Mult0~60\ : std_logic;
SIGNAL \Mult0~61\ : std_logic;
SIGNAL \Mult0~62\ : std_logic;
SIGNAL \Mult0~63\ : std_logic;
SIGNAL \Mult0~64\ : std_logic;
SIGNAL \Mult0~65\ : std_logic;
SIGNAL \Mult0~66\ : std_logic;
SIGNAL \Mult0~67\ : std_logic;
SIGNAL \Mult0~68\ : std_logic;
SIGNAL \Mult0~69\ : std_logic;
SIGNAL \Mult0~70\ : std_logic;
SIGNAL \Mult0~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \d[13]~input_o\ : std_logic;
SIGNAL \counter[0]~0_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \state.calculating_state~1_combout\ : std_logic;
SIGNAL \d[10]~input_o\ : std_logic;
SIGNAL \d[12]~input_o\ : std_logic;
SIGNAL \d[11]~input_o\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \d[9]~input_o\ : std_logic;
SIGNAL \d[8]~input_o\ : std_logic;
SIGNAL \d[5]~input_o\ : std_logic;
SIGNAL \d[6]~input_o\ : std_logic;
SIGNAL \d[3]~input_o\ : std_logic;
SIGNAL \d[4]~input_o\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \d[0]~input_o\ : std_logic;
SIGNAL \d[2]~input_o\ : std_logic;
SIGNAL \d[1]~input_o\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \d[7]~input_o\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \state.calculating_state~3_combout\ : std_logic;
SIGNAL \state.calculating_state~0_combout\ : std_logic;
SIGNAL \state.calculating_state~_emulated_q\ : std_logic;
SIGNAL \state.calculating_state~2_combout\ : std_logic;
SIGNAL \s_int[0]~0_combout\ : std_logic;
SIGNAL \s_int[0]~1_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \state.finished_state~0_combout\ : std_logic;
SIGNAL \state.finished_state~q\ : std_logic;
SIGNAL \c[0]~input_o\ : std_logic;
SIGNAL \c[1]~input_o\ : std_logic;
SIGNAL \c[2]~input_o\ : std_logic;
SIGNAL \c[3]~input_o\ : std_logic;
SIGNAL \c[4]~input_o\ : std_logic;
SIGNAL \c[5]~input_o\ : std_logic;
SIGNAL \c[6]~input_o\ : std_logic;
SIGNAL \c[7]~input_o\ : std_logic;
SIGNAL \c[8]~input_o\ : std_logic;
SIGNAL \c[9]~input_o\ : std_logic;
SIGNAL \modulator|Add0~15\ : std_logic;
SIGNAL \modulator|Add0~19\ : std_logic;
SIGNAL \modulator|Add0~23\ : std_logic;
SIGNAL \modulator|Add0~27\ : std_logic;
SIGNAL \modulator|Add0~31\ : std_logic;
SIGNAL \modulator|Add0~35\ : std_logic;
SIGNAL \modulator|Add0~39\ : std_logic;
SIGNAL \modulator|Add0~43\ : std_logic;
SIGNAL \modulator|Add0~46\ : std_logic;
SIGNAL \modulator|Add0~47\ : std_logic;
SIGNAL \modulator|Add0~49_sumout\ : std_logic;
SIGNAL \Mult0~31\ : std_logic;
SIGNAL \Mult0~30\ : std_logic;
SIGNAL \Mult0~28\ : std_logic;
SIGNAL \Mult0~27\ : std_logic;
SIGNAL \Mult0~26\ : std_logic;
SIGNAL \Mult0~25\ : std_logic;
SIGNAL \Mult0~24\ : std_logic;
SIGNAL \Mult0~23\ : std_logic;
SIGNAL \Mult0~19\ : std_logic;
SIGNAL \Mult0~16\ : std_logic;
SIGNAL \A[8]~feeder_combout\ : std_logic;
SIGNAL \Mult0~11\ : std_logic;
SIGNAL \A[3]~feeder_combout\ : std_logic;
SIGNAL \modulator|Add3~350\ : std_logic;
SIGNAL \modulator|Add3~351\ : std_logic;
SIGNAL \modulator|Add3~342\ : std_logic;
SIGNAL \modulator|Add3~343\ : std_logic;
SIGNAL \modulator|Add3~334\ : std_logic;
SIGNAL \modulator|Add3~335\ : std_logic;
SIGNAL \modulator|Add3~326\ : std_logic;
SIGNAL \modulator|Add3~327\ : std_logic;
SIGNAL \modulator|Add3~318\ : std_logic;
SIGNAL \modulator|Add3~319\ : std_logic;
SIGNAL \modulator|Add3~310\ : std_logic;
SIGNAL \modulator|Add3~311\ : std_logic;
SIGNAL \modulator|Add3~302\ : std_logic;
SIGNAL \modulator|Add3~303\ : std_logic;
SIGNAL \modulator|Add3~294\ : std_logic;
SIGNAL \modulator|Add3~295\ : std_logic;
SIGNAL \modulator|Add3~286\ : std_logic;
SIGNAL \modulator|Add3~287\ : std_logic;
SIGNAL \modulator|Add3~278\ : std_logic;
SIGNAL \modulator|Add3~279\ : std_logic;
SIGNAL \modulator|Add3~270\ : std_logic;
SIGNAL \modulator|Add3~271\ : std_logic;
SIGNAL \modulator|Add3~262\ : std_logic;
SIGNAL \modulator|Add3~263\ : std_logic;
SIGNAL \modulator|Add3~254\ : std_logic;
SIGNAL \modulator|Add3~255\ : std_logic;
SIGNAL \modulator|Add3~246\ : std_logic;
SIGNAL \modulator|Add3~247\ : std_logic;
SIGNAL \modulator|Add3~238\ : std_logic;
SIGNAL \modulator|Add3~239\ : std_logic;
SIGNAL \modulator|Add3~230\ : std_logic;
SIGNAL \modulator|Add3~231\ : std_logic;
SIGNAL \modulator|Add3~222\ : std_logic;
SIGNAL \modulator|Add3~223\ : std_logic;
SIGNAL \modulator|Add3~214\ : std_logic;
SIGNAL \modulator|Add3~215\ : std_logic;
SIGNAL \modulator|Add3~206\ : std_logic;
SIGNAL \modulator|Add3~207\ : std_logic;
SIGNAL \modulator|Add3~198\ : std_logic;
SIGNAL \modulator|Add3~199\ : std_logic;
SIGNAL \modulator|Add3~190\ : std_logic;
SIGNAL \modulator|Add3~191\ : std_logic;
SIGNAL \modulator|Add3~182\ : std_logic;
SIGNAL \modulator|Add3~183\ : std_logic;
SIGNAL \modulator|Add3~174\ : std_logic;
SIGNAL \modulator|Add3~175\ : std_logic;
SIGNAL \modulator|Add3~166\ : std_logic;
SIGNAL \modulator|Add3~167\ : std_logic;
SIGNAL \modulator|Add3~158\ : std_logic;
SIGNAL \modulator|Add3~159\ : std_logic;
SIGNAL \modulator|Add3~150\ : std_logic;
SIGNAL \modulator|Add3~151\ : std_logic;
SIGNAL \modulator|Add3~142\ : std_logic;
SIGNAL \modulator|Add3~143\ : std_logic;
SIGNAL \modulator|Add3~134\ : std_logic;
SIGNAL \modulator|Add3~135\ : std_logic;
SIGNAL \modulator|Add3~126\ : std_logic;
SIGNAL \modulator|Add3~127\ : std_logic;
SIGNAL \modulator|Add3~118\ : std_logic;
SIGNAL \modulator|Add3~119\ : std_logic;
SIGNAL \modulator|Add3~110\ : std_logic;
SIGNAL \modulator|Add3~111\ : std_logic;
SIGNAL \modulator|Add3~54\ : std_logic;
SIGNAL \modulator|Add3~55\ : std_logic;
SIGNAL \modulator|Add3~62\ : std_logic;
SIGNAL \modulator|Add3~63\ : std_logic;
SIGNAL \modulator|Add3~66\ : std_logic;
SIGNAL \modulator|Add3~67\ : std_logic;
SIGNAL \modulator|Add3~70\ : std_logic;
SIGNAL \modulator|Add3~71\ : std_logic;
SIGNAL \modulator|Add3~74\ : std_logic;
SIGNAL \modulator|Add3~75\ : std_logic;
SIGNAL \modulator|Add3~78\ : std_logic;
SIGNAL \modulator|Add3~79\ : std_logic;
SIGNAL \modulator|Add3~82\ : std_logic;
SIGNAL \modulator|Add3~83\ : std_logic;
SIGNAL \modulator|Add3~86\ : std_logic;
SIGNAL \modulator|Add3~87\ : std_logic;
SIGNAL \modulator|Add3~90\ : std_logic;
SIGNAL \modulator|Add3~91\ : std_logic;
SIGNAL \modulator|Add3~94\ : std_logic;
SIGNAL \modulator|Add3~95\ : std_logic;
SIGNAL \modulator|Add3~102\ : std_logic;
SIGNAL \modulator|Add3~103\ : std_logic;
SIGNAL \modulator|Add3~105_sumout\ : std_logic;
SIGNAL \modulator|Add3~101_sumout\ : std_logic;
SIGNAL \modulator|Add0~41_sumout\ : std_logic;
SIGNAL \modulator|Add3~93_sumout\ : std_logic;
SIGNAL \modulator|Add0~37_sumout\ : std_logic;
SIGNAL \modulator|Add0~33_sumout\ : std_logic;
SIGNAL \modulator|Add3~89_sumout\ : std_logic;
SIGNAL \modulator|Add3~85_sumout\ : std_logic;
SIGNAL \modulator|Add0~29_sumout\ : std_logic;
SIGNAL \modulator|Add0~25_sumout\ : std_logic;
SIGNAL \modulator|Add3~81_sumout\ : std_logic;
SIGNAL \modulator|Add0~21_sumout\ : std_logic;
SIGNAL \modulator|Add0~17_sumout\ : std_logic;
SIGNAL \modulator|Add3~73_sumout\ : std_logic;
SIGNAL \modulator|Add3~69_sumout\ : std_logic;
SIGNAL \modulator|Add0~9_sumout\ : std_logic;
SIGNAL \modulator|Add3~65_sumout\ : std_logic;
SIGNAL \modulator|Add0~5_sumout\ : std_logic;
SIGNAL \modulator|Add3~61_sumout\ : std_logic;
SIGNAL \modulator|Add0~1_sumout\ : std_logic;
SIGNAL \modulator|Add3~53_sumout\ : std_logic;
SIGNAL \modulator|Add0~53_sumout\ : std_logic;
SIGNAL \modulator|Add3~109_sumout\ : std_logic;
SIGNAL \modulator|Add0~182_cout\ : std_logic;
SIGNAL \modulator|Add0~183\ : std_logic;
SIGNAL \modulator|Add0~178\ : std_logic;
SIGNAL \modulator|Add0~179\ : std_logic;
SIGNAL \modulator|Add0~174\ : std_logic;
SIGNAL \modulator|Add0~175\ : std_logic;
SIGNAL \modulator|Add0~170\ : std_logic;
SIGNAL \modulator|Add0~171\ : std_logic;
SIGNAL \modulator|Add0~166\ : std_logic;
SIGNAL \modulator|Add0~167\ : std_logic;
SIGNAL \modulator|Add0~162\ : std_logic;
SIGNAL \modulator|Add0~163\ : std_logic;
SIGNAL \modulator|Add0~158\ : std_logic;
SIGNAL \modulator|Add0~159\ : std_logic;
SIGNAL \modulator|Add0~154\ : std_logic;
SIGNAL \modulator|Add0~155\ : std_logic;
SIGNAL \modulator|Add0~150\ : std_logic;
SIGNAL \modulator|Add0~151\ : std_logic;
SIGNAL \modulator|Add0~146\ : std_logic;
SIGNAL \modulator|Add0~147\ : std_logic;
SIGNAL \modulator|Add0~142\ : std_logic;
SIGNAL \modulator|Add0~143\ : std_logic;
SIGNAL \modulator|Add0~138\ : std_logic;
SIGNAL \modulator|Add0~139\ : std_logic;
SIGNAL \modulator|Add0~134\ : std_logic;
SIGNAL \modulator|Add0~135\ : std_logic;
SIGNAL \modulator|Add0~130\ : std_logic;
SIGNAL \modulator|Add0~131\ : std_logic;
SIGNAL \modulator|Add0~126\ : std_logic;
SIGNAL \modulator|Add0~127\ : std_logic;
SIGNAL \modulator|Add0~122\ : std_logic;
SIGNAL \modulator|Add0~123\ : std_logic;
SIGNAL \modulator|Add0~118\ : std_logic;
SIGNAL \modulator|Add0~119\ : std_logic;
SIGNAL \modulator|Add0~114\ : std_logic;
SIGNAL \modulator|Add0~115\ : std_logic;
SIGNAL \modulator|Add0~110\ : std_logic;
SIGNAL \modulator|Add0~111\ : std_logic;
SIGNAL \modulator|Add0~106\ : std_logic;
SIGNAL \modulator|Add0~107\ : std_logic;
SIGNAL \modulator|Add0~102\ : std_logic;
SIGNAL \modulator|Add0~103\ : std_logic;
SIGNAL \modulator|Add0~98\ : std_logic;
SIGNAL \modulator|Add0~99\ : std_logic;
SIGNAL \modulator|Add0~94\ : std_logic;
SIGNAL \modulator|Add0~95\ : std_logic;
SIGNAL \modulator|Add0~90\ : std_logic;
SIGNAL \modulator|Add0~91\ : std_logic;
SIGNAL \modulator|Add0~86\ : std_logic;
SIGNAL \modulator|Add0~87\ : std_logic;
SIGNAL \modulator|Add0~82\ : std_logic;
SIGNAL \modulator|Add0~83\ : std_logic;
SIGNAL \modulator|Add0~78\ : std_logic;
SIGNAL \modulator|Add0~79\ : std_logic;
SIGNAL \modulator|Add0~74\ : std_logic;
SIGNAL \modulator|Add0~75\ : std_logic;
SIGNAL \modulator|Add0~70\ : std_logic;
SIGNAL \modulator|Add0~71\ : std_logic;
SIGNAL \modulator|Add0~67\ : std_logic;
SIGNAL \modulator|Add0~61_sumout\ : std_logic;
SIGNAL \modulator|Add3~117_sumout\ : std_logic;
SIGNAL \modulator|Add3~125_sumout\ : std_logic;
SIGNAL \modulator|Add0~65_sumout\ : std_logic;
SIGNAL \modulator|Add3~133_sumout\ : std_logic;
SIGNAL \modulator|Add0~69_sumout\ : std_logic;
SIGNAL \modulator|Add3~141_sumout\ : std_logic;
SIGNAL \modulator|Add0~73_sumout\ : std_logic;
SIGNAL \modulator|Add3~149_sumout\ : std_logic;
SIGNAL \modulator|Add0~77_sumout\ : std_logic;
SIGNAL \modulator|Add0~81_sumout\ : std_logic;
SIGNAL \modulator|Add3~157_sumout\ : std_logic;
SIGNAL \modulator|Add0~85_sumout\ : std_logic;
SIGNAL \modulator|Add3~165_sumout\ : std_logic;
SIGNAL \modulator|Add0~89_sumout\ : std_logic;
SIGNAL \modulator|Add3~173_sumout\ : std_logic;
SIGNAL \modulator|Add3~181_sumout\ : std_logic;
SIGNAL \modulator|Add0~93_sumout\ : std_logic;
SIGNAL \modulator|Add3~189_sumout\ : std_logic;
SIGNAL \modulator|Add0~97_sumout\ : std_logic;
SIGNAL \modulator|Add3~197_sumout\ : std_logic;
SIGNAL \modulator|Add0~101_sumout\ : std_logic;
SIGNAL \modulator|Add3~205_sumout\ : std_logic;
SIGNAL \modulator|Add0~105_sumout\ : std_logic;
SIGNAL \modulator|Add0~109_sumout\ : std_logic;
SIGNAL \modulator|Add3~213_sumout\ : std_logic;
SIGNAL \modulator|Add0~113_sumout\ : std_logic;
SIGNAL \modulator|Add3~221_sumout\ : std_logic;
SIGNAL \modulator|Add0~117_sumout\ : std_logic;
SIGNAL \modulator|Add3~229_sumout\ : std_logic;
SIGNAL \modulator|Add0~121_sumout\ : std_logic;
SIGNAL \modulator|Add3~237_sumout\ : std_logic;
SIGNAL \modulator|Add3~245_sumout\ : std_logic;
SIGNAL \modulator|Add0~125_sumout\ : std_logic;
SIGNAL \modulator|Add3~253_sumout\ : std_logic;
SIGNAL \modulator|Add0~129_sumout\ : std_logic;
SIGNAL \modulator|Add0~133_sumout\ : std_logic;
SIGNAL \modulator|Add3~261_sumout\ : std_logic;
SIGNAL \modulator|Add0~137_sumout\ : std_logic;
SIGNAL \modulator|Add3~269_sumout\ : std_logic;
SIGNAL \modulator|Add3~277_sumout\ : std_logic;
SIGNAL \modulator|Add0~141_sumout\ : std_logic;
SIGNAL \modulator|Add3~285_sumout\ : std_logic;
SIGNAL \modulator|Add0~145_sumout\ : std_logic;
SIGNAL \modulator|Add0~149_sumout\ : std_logic;
SIGNAL \modulator|Add3~293_sumout\ : std_logic;
SIGNAL \modulator|Add3~301_sumout\ : std_logic;
SIGNAL \modulator|Add0~153_sumout\ : std_logic;
SIGNAL \modulator|Add3~309_sumout\ : std_logic;
SIGNAL \modulator|Add0~157_sumout\ : std_logic;
SIGNAL \modulator|Add0~161_sumout\ : std_logic;
SIGNAL \modulator|Add3~317_sumout\ : std_logic;
SIGNAL \modulator|Add3~325_sumout\ : std_logic;
SIGNAL \modulator|Add0~165_sumout\ : std_logic;
SIGNAL \modulator|Add0~169_sumout\ : std_logic;
SIGNAL \modulator|Add3~333_sumout\ : std_logic;
SIGNAL \modulator|Add3~341_sumout\ : std_logic;
SIGNAL \modulator|Add0~173_sumout\ : std_logic;
SIGNAL \modulator|Add3~349_sumout\ : std_logic;
SIGNAL \modulator|Add0~177_sumout\ : std_logic;
SIGNAL \modulator|Add3~346_cout\ : std_logic;
SIGNAL \modulator|Add3~347\ : std_logic;
SIGNAL \modulator|Add3~338_cout\ : std_logic;
SIGNAL \modulator|Add3~339\ : std_logic;
SIGNAL \modulator|Add3~330_cout\ : std_logic;
SIGNAL \modulator|Add3~331\ : std_logic;
SIGNAL \modulator|Add3~322_cout\ : std_logic;
SIGNAL \modulator|Add3~323\ : std_logic;
SIGNAL \modulator|Add3~314_cout\ : std_logic;
SIGNAL \modulator|Add3~315\ : std_logic;
SIGNAL \modulator|Add3~306_cout\ : std_logic;
SIGNAL \modulator|Add3~307\ : std_logic;
SIGNAL \modulator|Add3~298_cout\ : std_logic;
SIGNAL \modulator|Add3~299\ : std_logic;
SIGNAL \modulator|Add3~290_cout\ : std_logic;
SIGNAL \modulator|Add3~291\ : std_logic;
SIGNAL \modulator|Add3~282_cout\ : std_logic;
SIGNAL \modulator|Add3~283\ : std_logic;
SIGNAL \modulator|Add3~274_cout\ : std_logic;
SIGNAL \modulator|Add3~275\ : std_logic;
SIGNAL \modulator|Add3~266_cout\ : std_logic;
SIGNAL \modulator|Add3~267\ : std_logic;
SIGNAL \modulator|Add3~258_cout\ : std_logic;
SIGNAL \modulator|Add3~259\ : std_logic;
SIGNAL \modulator|Add3~250_cout\ : std_logic;
SIGNAL \modulator|Add3~251\ : std_logic;
SIGNAL \modulator|Add3~242_cout\ : std_logic;
SIGNAL \modulator|Add3~243\ : std_logic;
SIGNAL \modulator|Add3~234_cout\ : std_logic;
SIGNAL \modulator|Add3~235\ : std_logic;
SIGNAL \modulator|Add3~226_cout\ : std_logic;
SIGNAL \modulator|Add3~227\ : std_logic;
SIGNAL \modulator|Add3~218_cout\ : std_logic;
SIGNAL \modulator|Add3~219\ : std_logic;
SIGNAL \modulator|Add3~210_cout\ : std_logic;
SIGNAL \modulator|Add3~211\ : std_logic;
SIGNAL \modulator|Add3~202_cout\ : std_logic;
SIGNAL \modulator|Add3~203\ : std_logic;
SIGNAL \modulator|Add3~194_cout\ : std_logic;
SIGNAL \modulator|Add3~195\ : std_logic;
SIGNAL \modulator|Add3~186_cout\ : std_logic;
SIGNAL \modulator|Add3~187\ : std_logic;
SIGNAL \modulator|Add3~178_cout\ : std_logic;
SIGNAL \modulator|Add3~179\ : std_logic;
SIGNAL \modulator|Add3~170_cout\ : std_logic;
SIGNAL \modulator|Add3~171\ : std_logic;
SIGNAL \modulator|Add3~162_cout\ : std_logic;
SIGNAL \modulator|Add3~163\ : std_logic;
SIGNAL \modulator|Add3~154_cout\ : std_logic;
SIGNAL \modulator|Add3~155\ : std_logic;
SIGNAL \modulator|Add3~146_cout\ : std_logic;
SIGNAL \modulator|Add3~147\ : std_logic;
SIGNAL \modulator|Add3~138_cout\ : std_logic;
SIGNAL \modulator|Add3~139\ : std_logic;
SIGNAL \modulator|Add3~130_cout\ : std_logic;
SIGNAL \modulator|Add3~131\ : std_logic;
SIGNAL \modulator|Add3~122_cout\ : std_logic;
SIGNAL \modulator|Add3~123\ : std_logic;
SIGNAL \modulator|Add3~114_cout\ : std_logic;
SIGNAL \modulator|Add3~115\ : std_logic;
SIGNAL \modulator|Add3~58_cout\ : std_logic;
SIGNAL \modulator|Add3~59\ : std_logic;
SIGNAL \modulator|Add3~2\ : std_logic;
SIGNAL \modulator|Add3~3\ : std_logic;
SIGNAL \modulator|Add3~6\ : std_logic;
SIGNAL \modulator|Add3~7\ : std_logic;
SIGNAL \modulator|Add3~10\ : std_logic;
SIGNAL \modulator|Add3~11\ : std_logic;
SIGNAL \modulator|Add3~14\ : std_logic;
SIGNAL \modulator|Add3~15\ : std_logic;
SIGNAL \modulator|Add3~18\ : std_logic;
SIGNAL \modulator|Add3~19\ : std_logic;
SIGNAL \modulator|Add3~22\ : std_logic;
SIGNAL \modulator|Add3~23\ : std_logic;
SIGNAL \modulator|Add3~26\ : std_logic;
SIGNAL \modulator|Add3~27\ : std_logic;
SIGNAL \modulator|Add3~30\ : std_logic;
SIGNAL \modulator|Add3~31\ : std_logic;
SIGNAL \modulator|Add3~34\ : std_logic;
SIGNAL \modulator|Add3~35\ : std_logic;
SIGNAL \modulator|Add3~38\ : std_logic;
SIGNAL \modulator|Add3~39\ : std_logic;
SIGNAL \modulator|Add3~42\ : std_logic;
SIGNAL \modulator|Add3~43\ : std_logic;
SIGNAL \modulator|Add3~46\ : std_logic;
SIGNAL \modulator|Add3~47\ : std_logic;
SIGNAL \modulator|Add3~49_sumout\ : std_logic;
SIGNAL \modulator|Add0~50\ : std_logic;
SIGNAL \modulator|Add0~51\ : std_logic;
SIGNAL \modulator|Add0~57_sumout\ : std_logic;
SIGNAL \modulator|Add3~50\ : std_logic;
SIGNAL \modulator|Add3~51\ : std_logic;
SIGNAL \modulator|Add3~97_sumout\ : std_logic;
SIGNAL \modulator|Add3~1_sumout\ : std_logic;
SIGNAL \modulator|Add3~33_sumout\ : std_logic;
SIGNAL \modulator|Add3~25_sumout\ : std_logic;
SIGNAL \modulator|Add3~29_sumout\ : std_logic;
SIGNAL \modulator|Add3~17_sumout\ : std_logic;
SIGNAL \modulator|Add3~9_sumout\ : std_logic;
SIGNAL \modulator|Add3~5_sumout\ : std_logic;
SIGNAL \modulator|Add6~2\ : std_logic;
SIGNAL \modulator|Add6~6\ : std_logic;
SIGNAL \modulator|Add6~10\ : std_logic;
SIGNAL \modulator|Add6~14\ : std_logic;
SIGNAL \modulator|Add6~18\ : std_logic;
SIGNAL \modulator|Add6~22\ : std_logic;
SIGNAL \modulator|Add6~25_sumout\ : std_logic;
SIGNAL \modulator|Add6~21_sumout\ : std_logic;
SIGNAL \modulator|Add6~17_sumout\ : std_logic;
SIGNAL \modulator|Add6~13_sumout\ : std_logic;
SIGNAL \modulator|Add6~9_sumout\ : std_logic;
SIGNAL \modulator|Add6~5_sumout\ : std_logic;
SIGNAL \modulator|Add3~41_sumout\ : std_logic;
SIGNAL \modulator|Add6~1_sumout\ : std_logic;
SIGNAL \modulator|Add3~37_sumout\ : std_logic;
SIGNAL \modulator|Add7~2\ : std_logic;
SIGNAL \modulator|Add7~6\ : std_logic;
SIGNAL \modulator|Add7~10\ : std_logic;
SIGNAL \modulator|Add7~14\ : std_logic;
SIGNAL \modulator|Add7~18\ : std_logic;
SIGNAL \modulator|Add7~22\ : std_logic;
SIGNAL \modulator|Add7~26\ : std_logic;
SIGNAL \modulator|Add7~30\ : std_logic;
SIGNAL \modulator|Add7~33_sumout\ : std_logic;
SIGNAL \modulator|Add7~29_sumout\ : std_logic;
SIGNAL \modulator|Add7~25_sumout\ : std_logic;
SIGNAL \modulator|Add7~21_sumout\ : std_logic;
SIGNAL \modulator|Add7~13_sumout\ : std_logic;
SIGNAL \modulator|Add7~9_sumout\ : std_logic;
SIGNAL \modulator|Add7~5_sumout\ : std_logic;
SIGNAL \modulator|Add7~1_sumout\ : std_logic;
SIGNAL \modulator|Add9~66_cout\ : std_logic;
SIGNAL \modulator|Add9~67\ : std_logic;
SIGNAL \modulator|Add9~2\ : std_logic;
SIGNAL \modulator|Add9~3\ : std_logic;
SIGNAL \modulator|Add9~6\ : std_logic;
SIGNAL \modulator|Add9~7\ : std_logic;
SIGNAL \modulator|Add9~10\ : std_logic;
SIGNAL \modulator|Add9~11\ : std_logic;
SIGNAL \modulator|Add9~14\ : std_logic;
SIGNAL \modulator|Add9~15\ : std_logic;
SIGNAL \modulator|Add9~18\ : std_logic;
SIGNAL \modulator|Add9~19\ : std_logic;
SIGNAL \modulator|Add9~22\ : std_logic;
SIGNAL \modulator|Add9~23\ : std_logic;
SIGNAL \modulator|Add9~26\ : std_logic;
SIGNAL \modulator|Add9~27\ : std_logic;
SIGNAL \modulator|Add9~30\ : std_logic;
SIGNAL \modulator|Add9~31\ : std_logic;
SIGNAL \modulator|Add9~34\ : std_logic;
SIGNAL \modulator|Add9~35\ : std_logic;
SIGNAL \modulator|Add9~38\ : std_logic;
SIGNAL \modulator|Add9~39\ : std_logic;
SIGNAL \modulator|Add9~42\ : std_logic;
SIGNAL \modulator|Add9~43\ : std_logic;
SIGNAL \modulator|Add9~46\ : std_logic;
SIGNAL \modulator|Add9~47\ : std_logic;
SIGNAL \modulator|Add9~50\ : std_logic;
SIGNAL \modulator|Add9~51\ : std_logic;
SIGNAL \modulator|Add9~54\ : std_logic;
SIGNAL \modulator|Add9~55\ : std_logic;
SIGNAL \modulator|Add9~58\ : std_logic;
SIGNAL \modulator|Add9~59\ : std_logic;
SIGNAL \modulator|Add9~61_sumout\ : std_logic;
SIGNAL \Mult0~22\ : std_logic;
SIGNAL \modulator|Add9~57_sumout\ : std_logic;
SIGNAL \Mult0~21\ : std_logic;
SIGNAL \modulator|Add9~53_sumout\ : std_logic;
SIGNAL \Mult0~20\ : std_logic;
SIGNAL \modulator|Add9~49_sumout\ : std_logic;
SIGNAL \Mult0~32\ : std_logic;
SIGNAL \modulator|Add0~66\ : std_logic;
SIGNAL \modulator|Add0~63\ : std_logic;
SIGNAL \modulator|Add0~55\ : std_logic;
SIGNAL \modulator|Add0~3\ : std_logic;
SIGNAL \modulator|Add0~7\ : std_logic;
SIGNAL \modulator|Add0~11\ : std_logic;
SIGNAL \modulator|Add0~14\ : std_logic;
SIGNAL \modulator|Add0~18\ : std_logic;
SIGNAL \modulator|Add0~22\ : std_logic;
SIGNAL \modulator|Add0~26\ : std_logic;
SIGNAL \modulator|Add0~30\ : std_logic;
SIGNAL \modulator|Add0~34\ : std_logic;
SIGNAL \modulator|Add0~38\ : std_logic;
SIGNAL \modulator|Add0~42\ : std_logic;
SIGNAL \modulator|Add0~45_sumout\ : std_logic;
SIGNAL \modulator|Add3~45_sumout\ : std_logic;
SIGNAL \modulator|Add7~17_sumout\ : std_logic;
SIGNAL \modulator|Add9~45_sumout\ : std_logic;
SIGNAL \Mult0~18\ : std_logic;
SIGNAL \A[10]~feeder_combout\ : std_logic;
SIGNAL \modulator|Add9~41_sumout\ : std_logic;
SIGNAL \Mult0~17\ : std_logic;
SIGNAL \modulator|Add9~37_sumout\ : std_logic;
SIGNAL \Mult0~29\ : std_logic;
SIGNAL \modulator|Add3~77_sumout\ : std_logic;
SIGNAL \modulator|Add3~21_sumout\ : std_logic;
SIGNAL \modulator|Add9~33_sumout\ : std_logic;
SIGNAL \Mult0~15\ : std_logic;
SIGNAL \A[7]~feeder_combout\ : std_logic;
SIGNAL \modulator|Add9~29_sumout\ : std_logic;
SIGNAL \Mult0~14\ : std_logic;
SIGNAL \A[6]~feeder_combout\ : std_logic;
SIGNAL \modulator|Add9~25_sumout\ : std_logic;
SIGNAL \Mult0~13\ : std_logic;
SIGNAL \A[5]~feeder_combout\ : std_logic;
SIGNAL \modulator|Add9~21_sumout\ : std_logic;
SIGNAL \Mult0~12\ : std_logic;
SIGNAL \A[4]~feeder_combout\ : std_logic;
SIGNAL \modulator|Add9~17_sumout\ : std_logic;
SIGNAL \Mult0~33\ : std_logic;
SIGNAL \modulator|Add0~62\ : std_logic;
SIGNAL \modulator|Add0~54\ : std_logic;
SIGNAL \modulator|Add0~2\ : std_logic;
SIGNAL \modulator|Add0~6\ : std_logic;
SIGNAL \modulator|Add0~10\ : std_logic;
SIGNAL \modulator|Add0~13_sumout\ : std_logic;
SIGNAL \modulator|Add3~13_sumout\ : std_logic;
SIGNAL \modulator|Add9~13_sumout\ : std_logic;
SIGNAL \Mult0~10\ : std_logic;
SIGNAL \modulator|Add9~9_sumout\ : std_logic;
SIGNAL \Mult0~9\ : std_logic;
SIGNAL \A[1]~feeder_combout\ : std_logic;
SIGNAL \modulator|Add9~5_sumout\ : std_logic;
SIGNAL \Mult0~8_resulta\ : std_logic;
SIGNAL \modulator|Add9~1_sumout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \s[0]$latch~combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \s[1]$latch~combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \s[2]$latch~combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \s[3]$latch~combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \s[4]$latch~combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \s[5]$latch~combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \s[6]$latch~combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \s[7]$latch~combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \s[8]$latch~combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \s[9]$latch~combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \s[10]$latch~combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \s[11]$latch~combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \s[12]$latch~combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \s[13]$latch~combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \s[14]$latch~combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \s[15]$latch~combout\ : std_logic;
SIGNAL \ready$latch~combout\ : std_logic;
SIGNAL A : std_logic_vector(31 DOWNTO 0);
SIGNAL counter : std_logic_vector(13 DOWNTO 0);
SIGNAL s_int : std_logic_vector(15 DOWNTO 0);
SIGNAL \modulator|ALT_INV_Add3~101_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~97_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add6~17_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~93_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add6~13_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~89_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~85_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~81_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~77_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~73_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~69_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~65_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~61_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~18\ : std_logic;
SIGNAL \ALT_INV_Mult0~16\ : std_logic;
SIGNAL \ALT_INV_Mult0~15\ : std_logic;
SIGNAL \ALT_INV_Mult0~14\ : std_logic;
SIGNAL \ALT_INV_Mult0~13\ : std_logic;
SIGNAL \ALT_INV_Mult0~12\ : std_logic;
SIGNAL \ALT_INV_Mult0~11\ : std_logic;
SIGNAL \ALT_INV_Mult0~9\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~53_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~49_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add7~33_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~45_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add7~29_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~41_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add7~25_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~37_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add7~21_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~33_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~237_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~229_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~221_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~213_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~205_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~197_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~189_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~181_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~173_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~165_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~157_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~149_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~141_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~133_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~125_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~117_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~109_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add6~25_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~105_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add6~21_sumout\ : std_logic;
SIGNAL ALT_INV_s_int : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.finished_state~q\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~349_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~177_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~341_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~173_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~333_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~169_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~325_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~165_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~317_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~161_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~309_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~157_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~301_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~153_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~293_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~149_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~285_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~145_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~277_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~141_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~269_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~137_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~261_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~133_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~253_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~129_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~245_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \ALT_INV_d[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_state.calculating_state~1_combout\ : std_logic;
SIGNAL \ALT_INV_ready$latch~combout\ : std_logic;
SIGNAL \ALT_INV_s[15]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_s[14]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_s[13]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_s[12]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_s[11]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_s[10]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_s[9]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_s[8]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_s[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_s[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_s[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_s[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_s[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_s[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_s[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_s[0]$latch~combout\ : std_logic;
SIGNAL ALT_INV_A : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_state.calculating_state~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.calculating_state~2_combout\ : std_logic;
SIGNAL \ALT_INV_state.calculating_state~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_s_int[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL ALT_INV_counter : std_logic_vector(13 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add7~17_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add7~13_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add7~9_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add7~5_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add7~1_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \modulator|ALT_INV_Add3~1_sumout\ : std_logic;

BEGIN

ww_d <= d;
ww_c <= c;
ww_start <= start;
ww_clk <= clk;
ww_reset <= reset;
s <= ww_s;
ready <= ww_ready;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0~8_AX_bus\ <= (\c[9]~input_o\ & \c[8]~input_o\ & \c[7]~input_o\ & \c[6]~input_o\ & \c[5]~input_o\ & \c[4]~input_o\ & \c[3]~input_o\ & \c[2]~input_o\ & \c[1]~input_o\ & \c[0]~input_o\);

\Mult0~8_AY_bus\ <= (s_int(15) & s_int(14) & s_int(13) & s_int(12) & s_int(11) & s_int(10) & s_int(9) & s_int(8) & s_int(7) & s_int(6) & s_int(5) & s_int(4) & s_int(3) & s_int(2) & s_int(1) & s_int(0));

\Mult0~8_resulta\ <= \Mult0~8_RESULTA_bus\(0);
\Mult0~9\ <= \Mult0~8_RESULTA_bus\(1);
\Mult0~10\ <= \Mult0~8_RESULTA_bus\(2);
\Mult0~11\ <= \Mult0~8_RESULTA_bus\(3);
\Mult0~12\ <= \Mult0~8_RESULTA_bus\(4);
\Mult0~13\ <= \Mult0~8_RESULTA_bus\(5);
\Mult0~14\ <= \Mult0~8_RESULTA_bus\(6);
\Mult0~15\ <= \Mult0~8_RESULTA_bus\(7);
\Mult0~16\ <= \Mult0~8_RESULTA_bus\(8);
\Mult0~17\ <= \Mult0~8_RESULTA_bus\(9);
\Mult0~18\ <= \Mult0~8_RESULTA_bus\(10);
\Mult0~19\ <= \Mult0~8_RESULTA_bus\(11);
\Mult0~20\ <= \Mult0~8_RESULTA_bus\(12);
\Mult0~21\ <= \Mult0~8_RESULTA_bus\(13);
\Mult0~22\ <= \Mult0~8_RESULTA_bus\(14);
\Mult0~23\ <= \Mult0~8_RESULTA_bus\(15);
\Mult0~24\ <= \Mult0~8_RESULTA_bus\(16);
\Mult0~25\ <= \Mult0~8_RESULTA_bus\(17);
\Mult0~26\ <= \Mult0~8_RESULTA_bus\(18);
\Mult0~27\ <= \Mult0~8_RESULTA_bus\(19);
\Mult0~28\ <= \Mult0~8_RESULTA_bus\(20);
\Mult0~29\ <= \Mult0~8_RESULTA_bus\(21);
\Mult0~30\ <= \Mult0~8_RESULTA_bus\(22);
\Mult0~31\ <= \Mult0~8_RESULTA_bus\(23);
\Mult0~32\ <= \Mult0~8_RESULTA_bus\(24);
\Mult0~33\ <= \Mult0~8_RESULTA_bus\(25);
\Mult0~34\ <= \Mult0~8_RESULTA_bus\(26);
\Mult0~35\ <= \Mult0~8_RESULTA_bus\(27);
\Mult0~36\ <= \Mult0~8_RESULTA_bus\(28);
\Mult0~37\ <= \Mult0~8_RESULTA_bus\(29);
\Mult0~38\ <= \Mult0~8_RESULTA_bus\(30);
\Mult0~39\ <= \Mult0~8_RESULTA_bus\(31);
\Mult0~40\ <= \Mult0~8_RESULTA_bus\(32);
\Mult0~41\ <= \Mult0~8_RESULTA_bus\(33);
\Mult0~42\ <= \Mult0~8_RESULTA_bus\(34);
\Mult0~43\ <= \Mult0~8_RESULTA_bus\(35);
\Mult0~44\ <= \Mult0~8_RESULTA_bus\(36);
\Mult0~45\ <= \Mult0~8_RESULTA_bus\(37);
\Mult0~46\ <= \Mult0~8_RESULTA_bus\(38);
\Mult0~47\ <= \Mult0~8_RESULTA_bus\(39);
\Mult0~48\ <= \Mult0~8_RESULTA_bus\(40);
\Mult0~49\ <= \Mult0~8_RESULTA_bus\(41);
\Mult0~50\ <= \Mult0~8_RESULTA_bus\(42);
\Mult0~51\ <= \Mult0~8_RESULTA_bus\(43);
\Mult0~52\ <= \Mult0~8_RESULTA_bus\(44);
\Mult0~53\ <= \Mult0~8_RESULTA_bus\(45);
\Mult0~54\ <= \Mult0~8_RESULTA_bus\(46);
\Mult0~55\ <= \Mult0~8_RESULTA_bus\(47);
\Mult0~56\ <= \Mult0~8_RESULTA_bus\(48);
\Mult0~57\ <= \Mult0~8_RESULTA_bus\(49);
\Mult0~58\ <= \Mult0~8_RESULTA_bus\(50);
\Mult0~59\ <= \Mult0~8_RESULTA_bus\(51);
\Mult0~60\ <= \Mult0~8_RESULTA_bus\(52);
\Mult0~61\ <= \Mult0~8_RESULTA_bus\(53);
\Mult0~62\ <= \Mult0~8_RESULTA_bus\(54);
\Mult0~63\ <= \Mult0~8_RESULTA_bus\(55);
\Mult0~64\ <= \Mult0~8_RESULTA_bus\(56);
\Mult0~65\ <= \Mult0~8_RESULTA_bus\(57);
\Mult0~66\ <= \Mult0~8_RESULTA_bus\(58);
\Mult0~67\ <= \Mult0~8_RESULTA_bus\(59);
\Mult0~68\ <= \Mult0~8_RESULTA_bus\(60);
\Mult0~69\ <= \Mult0~8_RESULTA_bus\(61);
\Mult0~70\ <= \Mult0~8_RESULTA_bus\(62);
\Mult0~71\ <= \Mult0~8_RESULTA_bus\(63);
\modulator|ALT_INV_Add3~101_sumout\ <= NOT \modulator|Add3~101_sumout\;
\modulator|ALT_INV_Add0~41_sumout\ <= NOT \modulator|Add0~41_sumout\;
\modulator|ALT_INV_Add3~97_sumout\ <= NOT \modulator|Add3~97_sumout\;
\modulator|ALT_INV_Add6~17_sumout\ <= NOT \modulator|Add6~17_sumout\;
\modulator|ALT_INV_Add3~93_sumout\ <= NOT \modulator|Add3~93_sumout\;
\modulator|ALT_INV_Add0~37_sumout\ <= NOT \modulator|Add0~37_sumout\;
\modulator|ALT_INV_Add6~13_sumout\ <= NOT \modulator|Add6~13_sumout\;
\modulator|ALT_INV_Add3~89_sumout\ <= NOT \modulator|Add3~89_sumout\;
\modulator|ALT_INV_Add0~33_sumout\ <= NOT \modulator|Add0~33_sumout\;
\modulator|ALT_INV_Add6~9_sumout\ <= NOT \modulator|Add6~9_sumout\;
\modulator|ALT_INV_Add3~85_sumout\ <= NOT \modulator|Add3~85_sumout\;
\modulator|ALT_INV_Add0~29_sumout\ <= NOT \modulator|Add0~29_sumout\;
\modulator|ALT_INV_Add6~5_sumout\ <= NOT \modulator|Add6~5_sumout\;
\modulator|ALT_INV_Add6~1_sumout\ <= NOT \modulator|Add6~1_sumout\;
\modulator|ALT_INV_Add3~81_sumout\ <= NOT \modulator|Add3~81_sumout\;
\modulator|ALT_INV_Add0~25_sumout\ <= NOT \modulator|Add0~25_sumout\;
\modulator|ALT_INV_Add3~77_sumout\ <= NOT \modulator|Add3~77_sumout\;
\modulator|ALT_INV_Add0~21_sumout\ <= NOT \modulator|Add0~21_sumout\;
\modulator|ALT_INV_Add3~73_sumout\ <= NOT \modulator|Add3~73_sumout\;
\modulator|ALT_INV_Add0~17_sumout\ <= NOT \modulator|Add0~17_sumout\;
\modulator|ALT_INV_Add3~69_sumout\ <= NOT \modulator|Add3~69_sumout\;
\modulator|ALT_INV_Add0~13_sumout\ <= NOT \modulator|Add0~13_sumout\;
\modulator|ALT_INV_Add3~65_sumout\ <= NOT \modulator|Add3~65_sumout\;
\modulator|ALT_INV_Add0~9_sumout\ <= NOT \modulator|Add0~9_sumout\;
\modulator|ALT_INV_Add3~61_sumout\ <= NOT \modulator|Add3~61_sumout\;
\modulator|ALT_INV_Add0~5_sumout\ <= NOT \modulator|Add0~5_sumout\;
\ALT_INV_Mult0~18\ <= NOT \Mult0~18\;
\ALT_INV_Mult0~16\ <= NOT \Mult0~16\;
\ALT_INV_Mult0~15\ <= NOT \Mult0~15\;
\ALT_INV_Mult0~14\ <= NOT \Mult0~14\;
\ALT_INV_Mult0~13\ <= NOT \Mult0~13\;
\ALT_INV_Mult0~12\ <= NOT \Mult0~12\;
\ALT_INV_Mult0~11\ <= NOT \Mult0~11\;
\ALT_INV_Mult0~9\ <= NOT \Mult0~9\;
\modulator|ALT_INV_Add3~53_sumout\ <= NOT \modulator|Add3~53_sumout\;
\modulator|ALT_INV_Add0~1_sumout\ <= NOT \modulator|Add0~1_sumout\;
\modulator|ALT_INV_Add3~49_sumout\ <= NOT \modulator|Add3~49_sumout\;
\modulator|ALT_INV_Add7~33_sumout\ <= NOT \modulator|Add7~33_sumout\;
\modulator|ALT_INV_Add3~45_sumout\ <= NOT \modulator|Add3~45_sumout\;
\modulator|ALT_INV_Add7~29_sumout\ <= NOT \modulator|Add7~29_sumout\;
\modulator|ALT_INV_Add3~41_sumout\ <= NOT \modulator|Add3~41_sumout\;
\modulator|ALT_INV_Add7~25_sumout\ <= NOT \modulator|Add7~25_sumout\;
\modulator|ALT_INV_Add3~37_sumout\ <= NOT \modulator|Add3~37_sumout\;
\modulator|ALT_INV_Add7~21_sumout\ <= NOT \modulator|Add7~21_sumout\;
\modulator|ALT_INV_Add3~33_sumout\ <= NOT \modulator|Add3~33_sumout\;
\modulator|ALT_INV_Add3~237_sumout\ <= NOT \modulator|Add3~237_sumout\;
\modulator|ALT_INV_Add0~121_sumout\ <= NOT \modulator|Add0~121_sumout\;
\modulator|ALT_INV_Add3~229_sumout\ <= NOT \modulator|Add3~229_sumout\;
\modulator|ALT_INV_Add0~117_sumout\ <= NOT \modulator|Add0~117_sumout\;
\modulator|ALT_INV_Add3~221_sumout\ <= NOT \modulator|Add3~221_sumout\;
\modulator|ALT_INV_Add0~113_sumout\ <= NOT \modulator|Add0~113_sumout\;
\modulator|ALT_INV_Add3~213_sumout\ <= NOT \modulator|Add3~213_sumout\;
\modulator|ALT_INV_Add0~109_sumout\ <= NOT \modulator|Add0~109_sumout\;
\modulator|ALT_INV_Add3~205_sumout\ <= NOT \modulator|Add3~205_sumout\;
\modulator|ALT_INV_Add0~105_sumout\ <= NOT \modulator|Add0~105_sumout\;
\modulator|ALT_INV_Add3~197_sumout\ <= NOT \modulator|Add3~197_sumout\;
\modulator|ALT_INV_Add0~101_sumout\ <= NOT \modulator|Add0~101_sumout\;
\modulator|ALT_INV_Add3~189_sumout\ <= NOT \modulator|Add3~189_sumout\;
\modulator|ALT_INV_Add0~97_sumout\ <= NOT \modulator|Add0~97_sumout\;
\modulator|ALT_INV_Add3~181_sumout\ <= NOT \modulator|Add3~181_sumout\;
\modulator|ALT_INV_Add0~93_sumout\ <= NOT \modulator|Add0~93_sumout\;
\modulator|ALT_INV_Add3~173_sumout\ <= NOT \modulator|Add3~173_sumout\;
\modulator|ALT_INV_Add0~89_sumout\ <= NOT \modulator|Add0~89_sumout\;
\modulator|ALT_INV_Add3~165_sumout\ <= NOT \modulator|Add3~165_sumout\;
\modulator|ALT_INV_Add0~85_sumout\ <= NOT \modulator|Add0~85_sumout\;
\modulator|ALT_INV_Add3~157_sumout\ <= NOT \modulator|Add3~157_sumout\;
\modulator|ALT_INV_Add0~81_sumout\ <= NOT \modulator|Add0~81_sumout\;
\modulator|ALT_INV_Add3~149_sumout\ <= NOT \modulator|Add3~149_sumout\;
\modulator|ALT_INV_Add0~77_sumout\ <= NOT \modulator|Add0~77_sumout\;
\modulator|ALT_INV_Add3~141_sumout\ <= NOT \modulator|Add3~141_sumout\;
\modulator|ALT_INV_Add0~73_sumout\ <= NOT \modulator|Add0~73_sumout\;
\modulator|ALT_INV_Add3~133_sumout\ <= NOT \modulator|Add3~133_sumout\;
\modulator|ALT_INV_Add0~69_sumout\ <= NOT \modulator|Add0~69_sumout\;
\modulator|ALT_INV_Add3~125_sumout\ <= NOT \modulator|Add3~125_sumout\;
\modulator|ALT_INV_Add0~65_sumout\ <= NOT \modulator|Add0~65_sumout\;
\modulator|ALT_INV_Add3~117_sumout\ <= NOT \modulator|Add3~117_sumout\;
\modulator|ALT_INV_Add0~61_sumout\ <= NOT \modulator|Add0~61_sumout\;
\modulator|ALT_INV_Add0~57_sumout\ <= NOT \modulator|Add0~57_sumout\;
\modulator|ALT_INV_Add3~109_sumout\ <= NOT \modulator|Add3~109_sumout\;
\modulator|ALT_INV_Add0~53_sumout\ <= NOT \modulator|Add0~53_sumout\;
\modulator|ALT_INV_Add0~49_sumout\ <= NOT \modulator|Add0~49_sumout\;
\modulator|ALT_INV_Add6~25_sumout\ <= NOT \modulator|Add6~25_sumout\;
\modulator|ALT_INV_Add3~105_sumout\ <= NOT \modulator|Add3~105_sumout\;
\modulator|ALT_INV_Add0~45_sumout\ <= NOT \modulator|Add0~45_sumout\;
\modulator|ALT_INV_Add6~21_sumout\ <= NOT \modulator|Add6~21_sumout\;
ALT_INV_s_int(14) <= NOT s_int(14);
\ALT_INV_Selector15~0_combout\ <= NOT \Selector15~0_combout\;
ALT_INV_s_int(13) <= NOT s_int(13);
\ALT_INV_Selector14~0_combout\ <= NOT \Selector14~0_combout\;
ALT_INV_s_int(12) <= NOT s_int(12);
\ALT_INV_Selector13~0_combout\ <= NOT \Selector13~0_combout\;
ALT_INV_s_int(11) <= NOT s_int(11);
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
ALT_INV_s_int(10) <= NOT s_int(10);
\ALT_INV_Selector1~0_combout\ <= NOT \Selector1~0_combout\;
ALT_INV_s_int(9) <= NOT s_int(9);
\ALT_INV_Selector2~0_combout\ <= NOT \Selector2~0_combout\;
ALT_INV_s_int(8) <= NOT s_int(8);
\ALT_INV_Selector3~0_combout\ <= NOT \Selector3~0_combout\;
ALT_INV_s_int(7) <= NOT s_int(7);
\ALT_INV_Selector4~0_combout\ <= NOT \Selector4~0_combout\;
ALT_INV_s_int(6) <= NOT s_int(6);
\ALT_INV_Selector5~0_combout\ <= NOT \Selector5~0_combout\;
ALT_INV_s_int(5) <= NOT s_int(5);
\ALT_INV_Selector6~0_combout\ <= NOT \Selector6~0_combout\;
ALT_INV_s_int(4) <= NOT s_int(4);
\ALT_INV_Selector7~0_combout\ <= NOT \Selector7~0_combout\;
ALT_INV_s_int(3) <= NOT s_int(3);
\ALT_INV_Selector8~0_combout\ <= NOT \Selector8~0_combout\;
ALT_INV_s_int(2) <= NOT s_int(2);
\ALT_INV_Selector9~0_combout\ <= NOT \Selector9~0_combout\;
ALT_INV_s_int(1) <= NOT s_int(1);
\ALT_INV_Selector11~0_combout\ <= NOT \Selector11~0_combout\;
ALT_INV_s_int(0) <= NOT s_int(0);
\ALT_INV_state.finished_state~q\ <= NOT \state.finished_state~q\;
\modulator|ALT_INV_Add3~349_sumout\ <= NOT \modulator|Add3~349_sumout\;
\modulator|ALT_INV_Add0~177_sumout\ <= NOT \modulator|Add0~177_sumout\;
\modulator|ALT_INV_Add3~341_sumout\ <= NOT \modulator|Add3~341_sumout\;
\modulator|ALT_INV_Add0~173_sumout\ <= NOT \modulator|Add0~173_sumout\;
\modulator|ALT_INV_Add3~333_sumout\ <= NOT \modulator|Add3~333_sumout\;
\modulator|ALT_INV_Add0~169_sumout\ <= NOT \modulator|Add0~169_sumout\;
\modulator|ALT_INV_Add3~325_sumout\ <= NOT \modulator|Add3~325_sumout\;
\modulator|ALT_INV_Add0~165_sumout\ <= NOT \modulator|Add0~165_sumout\;
\modulator|ALT_INV_Add3~317_sumout\ <= NOT \modulator|Add3~317_sumout\;
\modulator|ALT_INV_Add0~161_sumout\ <= NOT \modulator|Add0~161_sumout\;
\modulator|ALT_INV_Add3~309_sumout\ <= NOT \modulator|Add3~309_sumout\;
\modulator|ALT_INV_Add0~157_sumout\ <= NOT \modulator|Add0~157_sumout\;
\modulator|ALT_INV_Add3~301_sumout\ <= NOT \modulator|Add3~301_sumout\;
\modulator|ALT_INV_Add0~153_sumout\ <= NOT \modulator|Add0~153_sumout\;
\modulator|ALT_INV_Add3~293_sumout\ <= NOT \modulator|Add3~293_sumout\;
\modulator|ALT_INV_Add0~149_sumout\ <= NOT \modulator|Add0~149_sumout\;
\modulator|ALT_INV_Add3~285_sumout\ <= NOT \modulator|Add3~285_sumout\;
\modulator|ALT_INV_Add0~145_sumout\ <= NOT \modulator|Add0~145_sumout\;
\modulator|ALT_INV_Add3~277_sumout\ <= NOT \modulator|Add3~277_sumout\;
\modulator|ALT_INV_Add0~141_sumout\ <= NOT \modulator|Add0~141_sumout\;
\modulator|ALT_INV_Add3~269_sumout\ <= NOT \modulator|Add3~269_sumout\;
\modulator|ALT_INV_Add0~137_sumout\ <= NOT \modulator|Add0~137_sumout\;
\modulator|ALT_INV_Add3~261_sumout\ <= NOT \modulator|Add3~261_sumout\;
\modulator|ALT_INV_Add0~133_sumout\ <= NOT \modulator|Add0~133_sumout\;
\modulator|ALT_INV_Add3~253_sumout\ <= NOT \modulator|Add3~253_sumout\;
\modulator|ALT_INV_Add0~129_sumout\ <= NOT \modulator|Add0~129_sumout\;
\modulator|ALT_INV_Add3~245_sumout\ <= NOT \modulator|Add3~245_sumout\;
\modulator|ALT_INV_Add0~125_sumout\ <= NOT \modulator|Add0~125_sumout\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\ALT_INV_d[11]~input_o\ <= NOT \d[11]~input_o\;
\ALT_INV_d[12]~input_o\ <= NOT \d[12]~input_o\;
\ALT_INV_d[0]~input_o\ <= NOT \d[0]~input_o\;
\ALT_INV_d[1]~input_o\ <= NOT \d[1]~input_o\;
\ALT_INV_d[2]~input_o\ <= NOT \d[2]~input_o\;
\ALT_INV_d[3]~input_o\ <= NOT \d[3]~input_o\;
\ALT_INV_d[4]~input_o\ <= NOT \d[4]~input_o\;
\ALT_INV_d[5]~input_o\ <= NOT \d[5]~input_o\;
\ALT_INV_d[6]~input_o\ <= NOT \d[6]~input_o\;
\ALT_INV_d[7]~input_o\ <= NOT \d[7]~input_o\;
\ALT_INV_d[8]~input_o\ <= NOT \d[8]~input_o\;
\ALT_INV_d[9]~input_o\ <= NOT \d[9]~input_o\;
\ALT_INV_d[10]~input_o\ <= NOT \d[10]~input_o\;
\ALT_INV_d[13]~input_o\ <= NOT \d[13]~input_o\;
\ALT_INV_state.calculating_state~1_combout\ <= NOT \state.calculating_state~1_combout\;
\ALT_INV_ready$latch~combout\ <= NOT \ready$latch~combout\;
\ALT_INV_s[15]$latch~combout\ <= NOT \s[15]$latch~combout\;
\ALT_INV_s[14]$latch~combout\ <= NOT \s[14]$latch~combout\;
\ALT_INV_s[13]$latch~combout\ <= NOT \s[13]$latch~combout\;
\ALT_INV_s[12]$latch~combout\ <= NOT \s[12]$latch~combout\;
\ALT_INV_s[11]$latch~combout\ <= NOT \s[11]$latch~combout\;
\ALT_INV_s[10]$latch~combout\ <= NOT \s[10]$latch~combout\;
\ALT_INV_s[9]$latch~combout\ <= NOT \s[9]$latch~combout\;
\ALT_INV_s[8]$latch~combout\ <= NOT \s[8]$latch~combout\;
\ALT_INV_s[7]$latch~combout\ <= NOT \s[7]$latch~combout\;
\ALT_INV_s[6]$latch~combout\ <= NOT \s[6]$latch~combout\;
\ALT_INV_s[5]$latch~combout\ <= NOT \s[5]$latch~combout\;
\ALT_INV_s[4]$latch~combout\ <= NOT \s[4]$latch~combout\;
\ALT_INV_s[3]$latch~combout\ <= NOT \s[3]$latch~combout\;
\ALT_INV_s[2]$latch~combout\ <= NOT \s[2]$latch~combout\;
\ALT_INV_s[1]$latch~combout\ <= NOT \s[1]$latch~combout\;
\ALT_INV_s[0]$latch~combout\ <= NOT \s[0]$latch~combout\;
ALT_INV_A(21) <= NOT A(21);
ALT_INV_A(20) <= NOT A(20);
ALT_INV_A(19) <= NOT A(19);
ALT_INV_A(18) <= NOT A(18);
ALT_INV_A(25) <= NOT A(25);
ALT_INV_A(23) <= NOT A(23);
ALT_INV_A(17) <= NOT A(17);
ALT_INV_A(24) <= NOT A(24);
ALT_INV_A(22) <= NOT A(22);
ALT_INV_A(16) <= NOT A(16);
ALT_INV_A(15) <= NOT A(15);
ALT_INV_A(14) <= NOT A(14);
ALT_INV_A(13) <= NOT A(13);
ALT_INV_A(12) <= NOT A(12);
ALT_INV_A(11) <= NOT A(11);
ALT_INV_A(10) <= NOT A(10);
ALT_INV_A(9) <= NOT A(9);
ALT_INV_A(8) <= NOT A(8);
ALT_INV_A(7) <= NOT A(7);
ALT_INV_A(6) <= NOT A(6);
ALT_INV_A(5) <= NOT A(5);
ALT_INV_A(4) <= NOT A(4);
ALT_INV_A(3) <= NOT A(3);
ALT_INV_A(2) <= NOT A(2);
ALT_INV_A(1) <= NOT A(1);
\ALT_INV_state.calculating_state~0_combout\ <= NOT \state.calculating_state~0_combout\;
ALT_INV_A(0) <= NOT A(0);
\ALT_INV_state.calculating_state~2_combout\ <= NOT \state.calculating_state~2_combout\;
\ALT_INV_state.calculating_state~_emulated_q\ <= NOT \state.calculating_state~_emulated_q\;
\ALT_INV_s_int[0]~0_combout\ <= NOT \s_int[0]~0_combout\;
\ALT_INV_LessThan0~10_combout\ <= NOT \LessThan0~10_combout\;
\ALT_INV_LessThan0~9_combout\ <= NOT \LessThan0~9_combout\;
\ALT_INV_LessThan0~8_combout\ <= NOT \LessThan0~8_combout\;
ALT_INV_counter(11) <= NOT counter(11);
ALT_INV_counter(12) <= NOT counter(12);
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
ALT_INV_counter(0) <= NOT counter(0);
ALT_INV_counter(1) <= NOT counter(1);
ALT_INV_counter(2) <= NOT counter(2);
ALT_INV_counter(3) <= NOT counter(3);
ALT_INV_counter(4) <= NOT counter(4);
ALT_INV_counter(5) <= NOT counter(5);
ALT_INV_counter(6) <= NOT counter(6);
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
ALT_INV_counter(7) <= NOT counter(7);
ALT_INV_counter(8) <= NOT counter(8);
ALT_INV_counter(9) <= NOT counter(9);
ALT_INV_counter(10) <= NOT counter(10);
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
ALT_INV_counter(13) <= NOT counter(13);
\ALT_INV_Selector17~0_combout\ <= NOT \Selector17~0_combout\;
ALT_INV_s_int(15) <= NOT s_int(15);
\ALT_INV_Selector16~0_combout\ <= NOT \Selector16~0_combout\;
\modulator|ALT_INV_Add7~17_sumout\ <= NOT \modulator|Add7~17_sumout\;
\modulator|ALT_INV_Add3~29_sumout\ <= NOT \modulator|Add3~29_sumout\;
\modulator|ALT_INV_Add7~13_sumout\ <= NOT \modulator|Add7~13_sumout\;
\modulator|ALT_INV_Add7~9_sumout\ <= NOT \modulator|Add7~9_sumout\;
\modulator|ALT_INV_Add7~5_sumout\ <= NOT \modulator|Add7~5_sumout\;
\modulator|ALT_INV_Add7~1_sumout\ <= NOT \modulator|Add7~1_sumout\;
\modulator|ALT_INV_Add3~25_sumout\ <= NOT \modulator|Add3~25_sumout\;
\modulator|ALT_INV_Add3~21_sumout\ <= NOT \modulator|Add3~21_sumout\;
\modulator|ALT_INV_Add3~17_sumout\ <= NOT \modulator|Add3~17_sumout\;
\modulator|ALT_INV_Add3~13_sumout\ <= NOT \modulator|Add3~13_sumout\;
\modulator|ALT_INV_Add3~9_sumout\ <= NOT \modulator|Add3~9_sumout\;
\modulator|ALT_INV_Add3~5_sumout\ <= NOT \modulator|Add3~5_sumout\;
\modulator|ALT_INV_Add3~1_sumout\ <= NOT \modulator|Add3~1_sumout\;

-- Location: IOOBUF_X76_Y0_N2
\s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_s(0));

-- Location: IOOBUF_X78_Y0_N36
\s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_s(1));

-- Location: IOOBUF_X78_Y0_N2
\s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_s(2));

-- Location: IOOBUF_X84_Y0_N2
\s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_s(3));

-- Location: IOOBUF_X76_Y0_N53
\s[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_s(4));

-- Location: IOOBUF_X88_Y0_N3
\s[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_s(5));

-- Location: IOOBUF_X89_Y9_N5
\s[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_s(6));

-- Location: IOOBUF_X89_Y9_N22
\s[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[7]$latch~combout\,
	devoe => ww_devoe,
	o => ww_s(7));

-- Location: IOOBUF_X76_Y0_N19
\s[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[8]$latch~combout\,
	devoe => ww_devoe,
	o => ww_s(8));

-- Location: IOOBUF_X80_Y0_N36
\s[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[9]$latch~combout\,
	devoe => ww_devoe,
	o => ww_s(9));

-- Location: IOOBUF_X89_Y9_N56
\s[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[10]$latch~combout\,
	devoe => ww_devoe,
	o => ww_s(10));

-- Location: IOOBUF_X84_Y0_N19
\s[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[11]$latch~combout\,
	devoe => ww_devoe,
	o => ww_s(11));

-- Location: IOOBUF_X84_Y0_N36
\s[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[12]$latch~combout\,
	devoe => ww_devoe,
	o => ww_s(12));

-- Location: IOOBUF_X84_Y0_N53
\s[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[13]$latch~combout\,
	devoe => ww_devoe,
	o => ww_s(13));

-- Location: IOOBUF_X78_Y0_N53
\s[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[14]$latch~combout\,
	devoe => ww_devoe,
	o => ww_s(14));

-- Location: IOOBUF_X80_Y0_N53
\s[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[15]$latch~combout\,
	devoe => ww_devoe,
	o => ww_s(15));

-- Location: IOOBUF_X78_Y0_N19
\ready~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ready$latch~combout\,
	devoe => ww_devoe,
	o => ww_ready);

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y6_N4
\d[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(13),
	o => \d[13]~input_o\);

-- Location: LABCELL_X85_Y5_N3
\counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter[0]~0_combout\ = ( !counter(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_counter(0),
	combout => \counter[0]~0_combout\);

-- Location: IOIBUF_X89_Y8_N4
\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X85_Y6_N39
\state.calculating_state~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.calculating_state~1_combout\ = ( \start~input_o\ & ( \state.calculating_state~1_combout\ & ( !\reset~input_o\ ) ) ) # ( !\start~input_o\ & ( \state.calculating_state~1_combout\ & ( !\reset~input_o\ ) ) ) # ( \start~input_o\ & ( 
-- !\state.calculating_state~1_combout\ & ( !\reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datae => \ALT_INV_start~input_o\,
	dataf => \ALT_INV_state.calculating_state~1_combout\,
	combout => \state.calculating_state~1_combout\);

-- Location: IOIBUF_X40_Y81_N35
\d[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(10),
	o => \d[10]~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\d[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(12),
	o => \d[12]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\d[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(11),
	o => \d[11]~input_o\);

-- Location: LABCELL_X85_Y6_N48
\LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ( \d[11]~input_o\ & ( (!counter(12) & ((!counter(11)) # (\d[12]~input_o\))) # (counter(12) & (\d[12]~input_o\ & !counter(11))) ) ) # ( !\d[11]~input_o\ & ( (!counter(12) & \d[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011001111000011001100111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(12),
	datac => \ALT_INV_d[12]~input_o\,
	datad => ALT_INV_counter(11),
	dataf => \ALT_INV_d[11]~input_o\,
	combout => \LessThan0~9_combout\);

-- Location: LABCELL_X85_Y6_N24
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( counter(13) & ( !\d[13]~input_o\ ) ) # ( !counter(13) & ( \d[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_d[13]~input_o\,
	dataf => ALT_INV_counter(13),
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X85_Y6_N27
\LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ( \d[11]~input_o\ & ( (counter(11) & (!counter(12) $ (\d[12]~input_o\))) ) ) # ( !\d[11]~input_o\ & ( (!counter(11) & (!counter(12) $ (\d[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(11),
	datac => ALT_INV_counter(12),
	datad => \ALT_INV_d[12]~input_o\,
	dataf => \ALT_INV_d[11]~input_o\,
	combout => \LessThan0~8_combout\);

-- Location: IOIBUF_X89_Y6_N21
\d[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(9),
	o => \d[9]~input_o\);

-- Location: IOIBUF_X89_Y8_N21
\d[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(8),
	o => \d[8]~input_o\);

-- Location: IOIBUF_X82_Y0_N41
\d[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(5),
	o => \d[5]~input_o\);

-- Location: IOIBUF_X80_Y0_N1
\d[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(6),
	o => \d[6]~input_o\);

-- Location: IOIBUF_X88_Y0_N36
\d[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(3),
	o => \d[3]~input_o\);

-- Location: IOIBUF_X82_Y0_N75
\d[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(4),
	o => \d[4]~input_o\);

-- Location: LABCELL_X85_Y4_N0
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( counter(0) ) + ( counter(1) ) + ( !VCC ))
-- \Add0~42\ = CARRY(( counter(0) ) + ( counter(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(0),
	datac => ALT_INV_counter(1),
	cin => GND,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X85_Y4_N2
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: IOIBUF_X80_Y0_N18
\d[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(0),
	o => \d[0]~input_o\);

-- Location: IOIBUF_X82_Y0_N92
\d[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(2),
	o => \d[2]~input_o\);

-- Location: IOIBUF_X82_Y0_N58
\d[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(1),
	o => \d[1]~input_o\);

-- Location: LABCELL_X85_Y4_N54
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( counter(2) & ( counter(0) & ( (!counter(1) & (\d[2]~input_o\ & \d[1]~input_o\)) ) ) ) # ( !counter(2) & ( counter(0) & ( ((!counter(1) & \d[1]~input_o\)) # (\d[2]~input_o\) ) ) ) # ( counter(2) & ( !counter(0) & ( (\d[2]~input_o\ 
-- & ((!counter(1) & ((\d[1]~input_o\) # (\d[0]~input_o\))) # (counter(1) & (\d[0]~input_o\ & \d[1]~input_o\)))) ) ) ) # ( !counter(2) & ( !counter(0) & ( ((!counter(1) & ((\d[1]~input_o\) # (\d[0]~input_o\))) # (counter(1) & (\d[0]~input_o\ & 
-- \d[1]~input_o\))) # (\d[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111110111111000000100000101100001111101011110000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(1),
	datab => \ALT_INV_d[0]~input_o\,
	datac => \ALT_INV_d[2]~input_o\,
	datad => \ALT_INV_d[1]~input_o\,
	datae => ALT_INV_counter(2),
	dataf => ALT_INV_counter(0),
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X85_Y4_N48
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( \LessThan0~4_combout\ & ( counter(4) & ( (\d[4]~input_o\ & ((!counter(3)) # (\d[3]~input_o\))) ) ) ) # ( !\LessThan0~4_combout\ & ( counter(4) & ( (\d[3]~input_o\ & (!counter(3) & \d[4]~input_o\)) ) ) ) # ( \LessThan0~4_combout\ 
-- & ( !counter(4) & ( ((!counter(3)) # (\d[4]~input_o\)) # (\d[3]~input_o\) ) ) ) # ( !\LessThan0~4_combout\ & ( !counter(4) & ( ((\d[3]~input_o\ & !counter(3))) # (\d[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111110111111101111100000100000001000000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d[3]~input_o\,
	datab => ALT_INV_counter(3),
	datac => \ALT_INV_d[4]~input_o\,
	datae => \ALT_INV_LessThan0~4_combout\,
	dataf => ALT_INV_counter(4),
	combout => \LessThan0~5_combout\);

-- Location: IOIBUF_X89_Y8_N38
\d[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(7),
	o => \d[7]~input_o\);

-- Location: LABCELL_X85_Y6_N0
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( counter(7) & ( !\d[7]~input_o\ ) ) # ( !counter(7) & ( \d[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_d[7]~input_o\,
	dataf => ALT_INV_counter(7),
	combout => \LessThan0~3_combout\);

-- Location: LABCELL_X85_Y4_N42
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \LessThan0~5_combout\ & ( !\LessThan0~3_combout\ & ( (!\d[6]~input_o\ & (!counter(6) & ((!counter(5)) # (\d[5]~input_o\)))) # (\d[6]~input_o\ & (((!counter(5)) # (!counter(6))) # (\d[5]~input_o\))) ) ) ) # ( 
-- !\LessThan0~5_combout\ & ( !\LessThan0~3_combout\ & ( (!\d[6]~input_o\ & (\d[5]~input_o\ & (!counter(5) & !counter(6)))) # (\d[6]~input_o\ & ((!counter(6)) # ((\d[5]~input_o\ & !counter(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100000100110111110000110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d[5]~input_o\,
	datab => ALT_INV_counter(5),
	datac => \ALT_INV_d[6]~input_o\,
	datad => ALT_INV_counter(6),
	datae => \ALT_INV_LessThan0~5_combout\,
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LABCELL_X85_Y6_N15
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( !counter(7) & ( \d[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_d[7]~input_o\,
	dataf => ALT_INV_counter(7),
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X85_Y6_N42
\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ( counter(9) & ( \LessThan0~2_combout\ & ( (!\d[9]~input_o\) # ((counter(8) & !\d[8]~input_o\)) ) ) ) # ( !counter(9) & ( \LessThan0~2_combout\ & ( (!\d[9]~input_o\ & (counter(8) & !\d[8]~input_o\)) ) ) ) # ( counter(9) & ( 
-- !\LessThan0~2_combout\ & ( (!\d[9]~input_o\) # ((!counter(8) & (!\d[8]~input_o\ & !\LessThan0~6_combout\)) # (counter(8) & ((!\d[8]~input_o\) # (!\LessThan0~6_combout\)))) ) ) ) # ( !counter(9) & ( !\LessThan0~2_combout\ & ( (!\d[9]~input_o\ & 
-- ((!counter(8) & (!\d[8]~input_o\ & !\LessThan0~6_combout\)) # (counter(8) & ((!\d[8]~input_o\) # (!\LessThan0~6_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000100000111110111011101000100000001000001011101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d[9]~input_o\,
	datab => ALT_INV_counter(8),
	datac => \ALT_INV_d[8]~input_o\,
	datad => \ALT_INV_LessThan0~6_combout\,
	datae => ALT_INV_counter(9),
	dataf => \ALT_INV_LessThan0~2_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LABCELL_X85_Y6_N54
\LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = ( \LessThan0~8_combout\ & ( \LessThan0~7_combout\ & ( (!\LessThan0~1_combout\ & (((\d[10]~input_o\ & !counter(10))) # (\LessThan0~9_combout\))) ) ) ) # ( !\LessThan0~8_combout\ & ( \LessThan0~7_combout\ & ( (\LessThan0~9_combout\ 
-- & !\LessThan0~1_combout\) ) ) ) # ( \LessThan0~8_combout\ & ( !\LessThan0~7_combout\ & ( (!\LessThan0~1_combout\ & (((!counter(10)) # (\LessThan0~9_combout\)) # (\d[10]~input_o\))) ) ) ) # ( !\LessThan0~8_combout\ & ( !\LessThan0~7_combout\ & ( 
-- (\LessThan0~9_combout\ & !\LessThan0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000111100000111000000110000001100000111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d[10]~input_o\,
	datab => \ALT_INV_LessThan0~9_combout\,
	datac => \ALT_INV_LessThan0~1_combout\,
	datad => ALT_INV_counter(10),
	datae => \ALT_INV_LessThan0~8_combout\,
	dataf => \ALT_INV_LessThan0~7_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LABCELL_X85_Y6_N51
\state.calculating_state~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.calculating_state~3_combout\ = ( \state.calculating_state~2_combout\ & ( !\state.calculating_state~1_combout\ $ (((!\LessThan0~0_combout\ & !\LessThan0~10_combout\))) ) ) # ( !\state.calculating_state~2_combout\ & ( 
-- \state.calculating_state~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101011010111100000101101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_state.calculating_state~1_combout\,
	datad => \ALT_INV_LessThan0~10_combout\,
	dataf => \ALT_INV_state.calculating_state~2_combout\,
	combout => \state.calculating_state~3_combout\);

-- Location: LABCELL_X85_Y6_N12
\state.calculating_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.calculating_state~0_combout\ = ( \reset~input_o\ ) # ( !\reset~input_o\ & ( \start~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_start~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \state.calculating_state~0_combout\);

-- Location: FF_X85_Y6_N53
\state.calculating_state~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.calculating_state~3_combout\,
	clrn => \ALT_INV_state.calculating_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.calculating_state~_emulated_q\);

-- Location: MLABCELL_X84_Y5_N51
\state.calculating_state~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.calculating_state~2_combout\ = ( !\reset~input_o\ & ( (!\state.calculating_state~1_combout\ $ (!\state.calculating_state~_emulated_q\)) # (\start~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111110011001111111111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_start~input_o\,
	datac => \ALT_INV_state.calculating_state~1_combout\,
	datad => \ALT_INV_state.calculating_state~_emulated_q\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \state.calculating_state~2_combout\);

-- Location: MLABCELL_X84_Y5_N24
\s_int[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_int[0]~0_combout\ = ( \reset~input_o\ ) # ( !\reset~input_o\ & ( \start~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_start~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \s_int[0]~0_combout\);

-- Location: MLABCELL_X84_Y5_N54
\s_int[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_int[0]~1_combout\ = ( !\s_int[0]~0_combout\ & ( (\state.calculating_state~2_combout\ & ((\LessThan0~0_combout\) # (\LessThan0~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.calculating_state~2_combout\,
	datac => \ALT_INV_LessThan0~10_combout\,
	datad => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_s_int[0]~0_combout\,
	combout => \s_int[0]~1_combout\);

-- Location: FF_X85_Y5_N5
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter[0]~0_combout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LABCELL_X85_Y4_N3
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( counter(2) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~38\ = CARRY(( counter(2) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(2),
	cin => \Add0~42\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X85_Y4_N5
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LABCELL_X85_Y4_N6
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( counter(3) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( counter(3) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(3),
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X85_Y4_N8
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LABCELL_X85_Y4_N9
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( counter(4) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( counter(4) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(4),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X85_Y4_N11
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LABCELL_X85_Y4_N12
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( counter(5) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( counter(5) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(5),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X85_Y4_N14
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LABCELL_X85_Y4_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( counter(6) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( counter(6) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(6),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X85_Y4_N17
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LABCELL_X85_Y4_N18
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( counter(7) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( counter(7) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(7),
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X85_Y4_N20
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LABCELL_X85_Y4_N21
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( counter(8) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( counter(8) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(8),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X85_Y4_N23
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LABCELL_X85_Y4_N24
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( counter(9) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( counter(9) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(9),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X85_Y4_N26
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LABCELL_X85_Y4_N27
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( counter(10) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( counter(10) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(10),
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X85_Y4_N29
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LABCELL_X85_Y4_N30
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( counter(11) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~50\ = CARRY(( counter(11) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(11),
	cin => \Add0~6\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X85_Y4_N32
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LABCELL_X85_Y4_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( counter(12) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~46\ = CARRY(( counter(12) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(12),
	cin => \Add0~50\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X85_Y4_N35
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LABCELL_X85_Y4_N36
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( counter(13) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(13),
	cin => \Add0~46\,
	sumout => \Add0~1_sumout\);

-- Location: FF_X85_Y4_N38
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LABCELL_X85_Y6_N21
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !counter(13) & ( \d[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d[13]~input_o\,
	dataf => ALT_INV_counter(13),
	combout => \LessThan0~0_combout\);

-- Location: MLABCELL_X84_Y5_N42
\state.finished_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.finished_state~0_combout\ = ( \state.calculating_state~2_combout\ & ( ((!\LessThan0~0_combout\ & !\LessThan0~10_combout\)) # (\state.finished_state~q\) ) ) # ( !\state.calculating_state~2_combout\ & ( \state.finished_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111110100000111111111010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_LessThan0~10_combout\,
	datad => \ALT_INV_state.finished_state~q\,
	dataf => \ALT_INV_state.calculating_state~2_combout\,
	combout => \state.finished_state~0_combout\);

-- Location: FF_X84_Y5_N44
\state.finished_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.finished_state~0_combout\,
	clrn => \ALT_INV_s_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.finished_state~q\);

-- Location: IOIBUF_X89_Y4_N78
\c[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(0),
	o => \c[0]~input_o\);

-- Location: IOIBUF_X86_Y0_N52
\c[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(1),
	o => \c[1]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\c[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(2),
	o => \c[2]~input_o\);

-- Location: IOIBUF_X86_Y0_N1
\c[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(3),
	o => \c[3]~input_o\);

-- Location: IOIBUF_X86_Y0_N35
\c[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(4),
	o => \c[4]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\c[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(5),
	o => \c[5]~input_o\);

-- Location: IOIBUF_X86_Y0_N18
\c[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(6),
	o => \c[6]~input_o\);

-- Location: IOIBUF_X88_Y0_N19
\c[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(7),
	o => \c[7]~input_o\);

-- Location: IOIBUF_X88_Y0_N53
\c[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(8),
	o => \c[8]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\c[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(9),
	o => \c[9]~input_o\);

-- Location: LABCELL_X83_Y4_N15
\modulator|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~13_sumout\ = SUM(( GND ) + ( \modulator|Add0~11\ ) + ( \modulator|Add0~10\ ))
-- \modulator|Add0~14\ = CARRY(( GND ) + ( \modulator|Add0~11\ ) + ( \modulator|Add0~10\ ))
-- \modulator|Add0~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \modulator|Add0~10\,
	sharein => \modulator|Add0~11\,
	sumout => \modulator|Add0~13_sumout\,
	cout => \modulator|Add0~14\,
	shareout => \modulator|Add0~15\);

-- Location: LABCELL_X83_Y4_N18
\modulator|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~17_sumout\ = SUM(( GND ) + ( \modulator|Add0~15\ ) + ( \modulator|Add0~14\ ))
-- \modulator|Add0~18\ = CARRY(( GND ) + ( \modulator|Add0~15\ ) + ( \modulator|Add0~14\ ))
-- \modulator|Add0~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \modulator|Add0~14\,
	sharein => \modulator|Add0~15\,
	sumout => \modulator|Add0~17_sumout\,
	cout => \modulator|Add0~18\,
	shareout => \modulator|Add0~19\);

-- Location: LABCELL_X83_Y4_N21
\modulator|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~21_sumout\ = SUM(( GND ) + ( \modulator|Add0~19\ ) + ( \modulator|Add0~18\ ))
-- \modulator|Add0~22\ = CARRY(( GND ) + ( \modulator|Add0~19\ ) + ( \modulator|Add0~18\ ))
-- \modulator|Add0~23\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \modulator|Add0~18\,
	sharein => \modulator|Add0~19\,
	sumout => \modulator|Add0~21_sumout\,
	cout => \modulator|Add0~22\,
	shareout => \modulator|Add0~23\);

-- Location: LABCELL_X83_Y4_N24
\modulator|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~25_sumout\ = SUM(( GND ) + ( \modulator|Add0~23\ ) + ( \modulator|Add0~22\ ))
-- \modulator|Add0~26\ = CARRY(( GND ) + ( \modulator|Add0~23\ ) + ( \modulator|Add0~22\ ))
-- \modulator|Add0~27\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \modulator|Add0~22\,
	sharein => \modulator|Add0~23\,
	sumout => \modulator|Add0~25_sumout\,
	cout => \modulator|Add0~26\,
	shareout => \modulator|Add0~27\);

-- Location: LABCELL_X83_Y4_N27
\modulator|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~29_sumout\ = SUM(( GND ) + ( \modulator|Add0~27\ ) + ( \modulator|Add0~26\ ))
-- \modulator|Add0~30\ = CARRY(( GND ) + ( \modulator|Add0~27\ ) + ( \modulator|Add0~26\ ))
-- \modulator|Add0~31\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \modulator|Add0~26\,
	sharein => \modulator|Add0~27\,
	sumout => \modulator|Add0~29_sumout\,
	cout => \modulator|Add0~30\,
	shareout => \modulator|Add0~31\);

-- Location: LABCELL_X83_Y4_N30
\modulator|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~33_sumout\ = SUM(( GND ) + ( \modulator|Add0~31\ ) + ( \modulator|Add0~30\ ))
-- \modulator|Add0~34\ = CARRY(( GND ) + ( \modulator|Add0~31\ ) + ( \modulator|Add0~30\ ))
-- \modulator|Add0~35\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \modulator|Add0~30\,
	sharein => \modulator|Add0~31\,
	sumout => \modulator|Add0~33_sumout\,
	cout => \modulator|Add0~34\,
	shareout => \modulator|Add0~35\);

-- Location: LABCELL_X83_Y4_N33
\modulator|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~37_sumout\ = SUM(( GND ) + ( \modulator|Add0~35\ ) + ( \modulator|Add0~34\ ))
-- \modulator|Add0~38\ = CARRY(( GND ) + ( \modulator|Add0~35\ ) + ( \modulator|Add0~34\ ))
-- \modulator|Add0~39\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \modulator|Add0~34\,
	sharein => \modulator|Add0~35\,
	sumout => \modulator|Add0~37_sumout\,
	cout => \modulator|Add0~38\,
	shareout => \modulator|Add0~39\);

-- Location: LABCELL_X83_Y4_N36
\modulator|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~41_sumout\ = SUM(( GND ) + ( \modulator|Add0~39\ ) + ( \modulator|Add0~38\ ))
-- \modulator|Add0~42\ = CARRY(( GND ) + ( \modulator|Add0~39\ ) + ( \modulator|Add0~38\ ))
-- \modulator|Add0~43\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \modulator|Add0~38\,
	sharein => \modulator|Add0~39\,
	sumout => \modulator|Add0~41_sumout\,
	cout => \modulator|Add0~42\,
	shareout => \modulator|Add0~43\);

-- Location: LABCELL_X83_Y4_N39
\modulator|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~45_sumout\ = SUM(( GND ) + ( \modulator|Add0~43\ ) + ( \modulator|Add0~42\ ))
-- \modulator|Add0~46\ = CARRY(( GND ) + ( \modulator|Add0~43\ ) + ( \modulator|Add0~42\ ))
-- \modulator|Add0~47\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \modulator|Add0~42\,
	sharein => \modulator|Add0~43\,
	sumout => \modulator|Add0~45_sumout\,
	cout => \modulator|Add0~46\,
	shareout => \modulator|Add0~47\);

-- Location: LABCELL_X83_Y4_N42
\modulator|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~49_sumout\ = SUM(( GND ) + ( \modulator|Add0~47\ ) + ( \modulator|Add0~46\ ))
-- \modulator|Add0~50\ = CARRY(( GND ) + ( \modulator|Add0~47\ ) + ( \modulator|Add0~46\ ))
-- \modulator|Add0~51\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \modulator|Add0~46\,
	sharein => \modulator|Add0~47\,
	sumout => \modulator|Add0~49_sumout\,
	cout => \modulator|Add0~50\,
	shareout => \modulator|Add0~51\);

-- Location: DSP_X86_Y4_N0
\Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 10,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 16,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult0~8_AX_bus\,
	ay => \Mult0~8_AY_bus\,
	resulta => \Mult0~8_RESULTA_bus\);

-- Location: FF_X83_Y5_N5
\A[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~31\,
	sload => VCC,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(23));

-- Location: FF_X83_Y5_N14
\A[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~30\,
	sload => VCC,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(22));

-- Location: FF_X81_Y5_N56
\A[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~28\,
	sload => VCC,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(20));

-- Location: FF_X83_Y5_N35
\A[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~27\,
	sload => VCC,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(19));

-- Location: FF_X83_Y5_N59
\A[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~26\,
	sload => VCC,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(18));

-- Location: FF_X83_Y5_N2
\A[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~25\,
	sload => VCC,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(17));

-- Location: FF_X81_Y5_N50
\A[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~24\,
	sload => VCC,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(16));

-- Location: FF_X83_Y5_N20
\A[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~23\,
	sload => VCC,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(15));

-- Location: FF_X83_Y5_N32
\A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~19\,
	sload => VCC,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(11));

-- Location: LABCELL_X83_Y6_N12
\A[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A[8]~feeder_combout\ = ( \Mult0~16\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~16\,
	combout => \A[8]~feeder_combout\);

-- Location: FF_X83_Y6_N14
\A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A[8]~feeder_combout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(8));

-- Location: LABCELL_X83_Y6_N24
\A[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A[3]~feeder_combout\ = ( \Mult0~11\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~11\,
	combout => \A[3]~feeder_combout\);

-- Location: FF_X83_Y6_N26
\A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A[3]~feeder_combout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(3));

-- Location: LABCELL_X81_Y6_N0
\modulator|Add3~349\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~349_sumout\ = SUM(( A(0) ) + ( !VCC ) + ( !VCC ))
-- \modulator|Add3~350\ = CARRY(( A(0) ) + ( !VCC ) + ( !VCC ))
-- \modulator|Add3~351\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(0),
	cin => GND,
	sharein => GND,
	sumout => \modulator|Add3~349_sumout\,
	cout => \modulator|Add3~350\,
	shareout => \modulator|Add3~351\);

-- Location: LABCELL_X81_Y6_N3
\modulator|Add3~341\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~341_sumout\ = SUM(( A(0) ) + ( \modulator|Add3~351\ ) + ( \modulator|Add3~350\ ))
-- \modulator|Add3~342\ = CARRY(( A(0) ) + ( \modulator|Add3~351\ ) + ( \modulator|Add3~350\ ))
-- \modulator|Add3~343\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(0),
	cin => \modulator|Add3~350\,
	sharein => \modulator|Add3~351\,
	sumout => \modulator|Add3~341_sumout\,
	cout => \modulator|Add3~342\,
	shareout => \modulator|Add3~343\);

-- Location: LABCELL_X81_Y6_N6
\modulator|Add3~333\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~333_sumout\ = SUM(( A(2) ) + ( \modulator|Add3~343\ ) + ( \modulator|Add3~342\ ))
-- \modulator|Add3~334\ = CARRY(( A(2) ) + ( \modulator|Add3~343\ ) + ( \modulator|Add3~342\ ))
-- \modulator|Add3~335\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(2),
	cin => \modulator|Add3~342\,
	sharein => \modulator|Add3~343\,
	sumout => \modulator|Add3~333_sumout\,
	cout => \modulator|Add3~334\,
	shareout => \modulator|Add3~335\);

-- Location: LABCELL_X81_Y6_N9
\modulator|Add3~325\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~325_sumout\ = SUM(( A(2) ) + ( \modulator|Add3~335\ ) + ( \modulator|Add3~334\ ))
-- \modulator|Add3~326\ = CARRY(( A(2) ) + ( \modulator|Add3~335\ ) + ( \modulator|Add3~334\ ))
-- \modulator|Add3~327\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(2),
	cin => \modulator|Add3~334\,
	sharein => \modulator|Add3~335\,
	sumout => \modulator|Add3~325_sumout\,
	cout => \modulator|Add3~326\,
	shareout => \modulator|Add3~327\);

-- Location: LABCELL_X81_Y6_N12
\modulator|Add3~317\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~317_sumout\ = SUM(( A(0) ) + ( \modulator|Add3~327\ ) + ( \modulator|Add3~326\ ))
-- \modulator|Add3~318\ = CARRY(( A(0) ) + ( \modulator|Add3~327\ ) + ( \modulator|Add3~326\ ))
-- \modulator|Add3~319\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(0),
	cin => \modulator|Add3~326\,
	sharein => \modulator|Add3~327\,
	sumout => \modulator|Add3~317_sumout\,
	cout => \modulator|Add3~318\,
	shareout => \modulator|Add3~319\);

-- Location: LABCELL_X81_Y6_N15
\modulator|Add3~309\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~309_sumout\ = SUM(( A(1) ) + ( \modulator|Add3~319\ ) + ( \modulator|Add3~318\ ))
-- \modulator|Add3~310\ = CARRY(( A(1) ) + ( \modulator|Add3~319\ ) + ( \modulator|Add3~318\ ))
-- \modulator|Add3~311\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(1),
	cin => \modulator|Add3~318\,
	sharein => \modulator|Add3~319\,
	sumout => \modulator|Add3~309_sumout\,
	cout => \modulator|Add3~310\,
	shareout => \modulator|Add3~311\);

-- Location: LABCELL_X81_Y6_N18
\modulator|Add3~301\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~301_sumout\ = SUM(( A(2) ) + ( \modulator|Add3~311\ ) + ( \modulator|Add3~310\ ))
-- \modulator|Add3~302\ = CARRY(( A(2) ) + ( \modulator|Add3~311\ ) + ( \modulator|Add3~310\ ))
-- \modulator|Add3~303\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(2),
	cin => \modulator|Add3~310\,
	sharein => \modulator|Add3~311\,
	sumout => \modulator|Add3~301_sumout\,
	cout => \modulator|Add3~302\,
	shareout => \modulator|Add3~303\);

-- Location: LABCELL_X81_Y6_N21
\modulator|Add3~293\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~293_sumout\ = SUM(( !A(0) $ (!A(3)) ) + ( \modulator|Add3~303\ ) + ( \modulator|Add3~302\ ))
-- \modulator|Add3~294\ = CARRY(( !A(0) $ (!A(3)) ) + ( \modulator|Add3~303\ ) + ( \modulator|Add3~302\ ))
-- \modulator|Add3~295\ = SHARE((!A(0)) # (A(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101111111100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(0),
	datad => ALT_INV_A(3),
	cin => \modulator|Add3~302\,
	sharein => \modulator|Add3~303\,
	sumout => \modulator|Add3~293_sumout\,
	cout => \modulator|Add3~294\,
	shareout => \modulator|Add3~295\);

-- Location: LABCELL_X81_Y6_N24
\modulator|Add3~285\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~285_sumout\ = SUM(( !A(4) $ (!A(1)) ) + ( \modulator|Add3~295\ ) + ( \modulator|Add3~294\ ))
-- \modulator|Add3~286\ = CARRY(( !A(4) $ (!A(1)) ) + ( \modulator|Add3~295\ ) + ( \modulator|Add3~294\ ))
-- \modulator|Add3~287\ = SHARE((!A(1)) # (A(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(4),
	datad => ALT_INV_A(1),
	cin => \modulator|Add3~294\,
	sharein => \modulator|Add3~295\,
	sumout => \modulator|Add3~285_sumout\,
	cout => \modulator|Add3~286\,
	shareout => \modulator|Add3~287\);

-- Location: LABCELL_X81_Y6_N27
\modulator|Add3~277\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~277_sumout\ = SUM(( !A(0) $ (!A(2) $ (A(5))) ) + ( \modulator|Add3~287\ ) + ( \modulator|Add3~286\ ))
-- \modulator|Add3~278\ = CARRY(( !A(0) $ (!A(2) $ (A(5))) ) + ( \modulator|Add3~287\ ) + ( \modulator|Add3~286\ ))
-- \modulator|Add3~279\ = SHARE((!A(0) & ((!A(2)) # (A(5)))) # (A(0) & (!A(2) & A(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001110111000000000000000000110011010011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(0),
	datab => ALT_INV_A(2),
	datad => ALT_INV_A(5),
	cin => \modulator|Add3~286\,
	sharein => \modulator|Add3~287\,
	sumout => \modulator|Add3~277_sumout\,
	cout => \modulator|Add3~278\,
	shareout => \modulator|Add3~279\);

-- Location: LABCELL_X81_Y6_N30
\modulator|Add3~269\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~269_sumout\ = SUM(( !A(3) $ (!A(6) $ (A(1))) ) + ( \modulator|Add3~279\ ) + ( \modulator|Add3~278\ ))
-- \modulator|Add3~270\ = CARRY(( !A(3) $ (!A(6) $ (A(1))) ) + ( \modulator|Add3~279\ ) + ( \modulator|Add3~278\ ))
-- \modulator|Add3~271\ = SHARE((!A(3) & ((!A(1)) # (A(6)))) # (A(3) & (A(6) & !A(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011110000101000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(3),
	datac => ALT_INV_A(6),
	datad => ALT_INV_A(1),
	cin => \modulator|Add3~278\,
	sharein => \modulator|Add3~279\,
	sumout => \modulator|Add3~269_sumout\,
	cout => \modulator|Add3~270\,
	shareout => \modulator|Add3~271\);

-- Location: LABCELL_X81_Y6_N33
\modulator|Add3~261\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~261_sumout\ = SUM(( !A(2) $ (!A(7) $ (A(4))) ) + ( \modulator|Add3~271\ ) + ( \modulator|Add3~270\ ))
-- \modulator|Add3~262\ = CARRY(( !A(2) $ (!A(7) $ (A(4))) ) + ( \modulator|Add3~271\ ) + ( \modulator|Add3~270\ ))
-- \modulator|Add3~263\ = SHARE((!A(2) & ((!A(4)) # (A(7)))) # (A(2) & (A(7) & !A(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011110000110000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(2),
	datac => ALT_INV_A(7),
	datad => ALT_INV_A(4),
	cin => \modulator|Add3~270\,
	sharein => \modulator|Add3~271\,
	sumout => \modulator|Add3~261_sumout\,
	cout => \modulator|Add3~262\,
	shareout => \modulator|Add3~263\);

-- Location: LABCELL_X81_Y6_N36
\modulator|Add3~253\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~253_sumout\ = SUM(( !A(8) $ (!A(3) $ (A(5))) ) + ( \modulator|Add3~263\ ) + ( \modulator|Add3~262\ ))
-- \modulator|Add3~254\ = CARRY(( !A(8) $ (!A(3) $ (A(5))) ) + ( \modulator|Add3~263\ ) + ( \modulator|Add3~262\ ))
-- \modulator|Add3~255\ = SHARE((!A(8) & (!A(3) & !A(5))) # (A(8) & ((!A(3)) # (!A(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100110011000000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(8),
	datac => ALT_INV_A(3),
	datad => ALT_INV_A(5),
	cin => \modulator|Add3~262\,
	sharein => \modulator|Add3~263\,
	sumout => \modulator|Add3~253_sumout\,
	cout => \modulator|Add3~254\,
	shareout => \modulator|Add3~255\);

-- Location: LABCELL_X81_Y6_N39
\modulator|Add3~245\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~245_sumout\ = SUM(( !A(6) $ (!A(9) $ (A(4))) ) + ( \modulator|Add3~255\ ) + ( \modulator|Add3~254\ ))
-- \modulator|Add3~246\ = CARRY(( !A(6) $ (!A(9) $ (A(4))) ) + ( \modulator|Add3~255\ ) + ( \modulator|Add3~254\ ))
-- \modulator|Add3~247\ = SHARE((!A(6) & ((!A(4)) # (A(9)))) # (A(6) & (A(9) & !A(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011110000101000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(6),
	datac => ALT_INV_A(9),
	datad => ALT_INV_A(4),
	cin => \modulator|Add3~254\,
	sharein => \modulator|Add3~255\,
	sumout => \modulator|Add3~245_sumout\,
	cout => \modulator|Add3~246\,
	shareout => \modulator|Add3~247\);

-- Location: LABCELL_X81_Y6_N42
\modulator|Add3~237\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~237_sumout\ = SUM(( !A(7) $ (!A(10) $ (A(5))) ) + ( \modulator|Add3~247\ ) + ( \modulator|Add3~246\ ))
-- \modulator|Add3~238\ = CARRY(( !A(7) $ (!A(10) $ (A(5))) ) + ( \modulator|Add3~247\ ) + ( \modulator|Add3~246\ ))
-- \modulator|Add3~239\ = SHARE((!A(7) & ((!A(5)) # (A(10)))) # (A(7) & (A(10) & !A(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011110000110000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(7),
	datac => ALT_INV_A(10),
	datad => ALT_INV_A(5),
	cin => \modulator|Add3~246\,
	sharein => \modulator|Add3~247\,
	sumout => \modulator|Add3~237_sumout\,
	cout => \modulator|Add3~238\,
	shareout => \modulator|Add3~239\);

-- Location: LABCELL_X81_Y6_N45
\modulator|Add3~229\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~229_sumout\ = SUM(( !A(6) $ (!A(8) $ (A(0))) ) + ( \modulator|Add3~239\ ) + ( \modulator|Add3~238\ ))
-- \modulator|Add3~230\ = CARRY(( !A(6) $ (!A(8) $ (A(0))) ) + ( \modulator|Add3~239\ ) + ( \modulator|Add3~238\ ))
-- \modulator|Add3~231\ = SHARE((!A(6) & ((!A(8)) # (A(0)))) # (A(6) & (!A(8) & A(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001111101000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(6),
	datac => ALT_INV_A(8),
	datad => ALT_INV_A(0),
	cin => \modulator|Add3~238\,
	sharein => \modulator|Add3~239\,
	sumout => \modulator|Add3~229_sumout\,
	cout => \modulator|Add3~230\,
	shareout => \modulator|Add3~231\);

-- Location: LABCELL_X81_Y6_N48
\modulator|Add3~221\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~221_sumout\ = SUM(( !A(7) $ (!A(1) $ (A(9))) ) + ( \modulator|Add3~231\ ) + ( \modulator|Add3~230\ ))
-- \modulator|Add3~222\ = CARRY(( !A(7) $ (!A(1) $ (A(9))) ) + ( \modulator|Add3~231\ ) + ( \modulator|Add3~230\ ))
-- \modulator|Add3~223\ = SHARE((!A(7) & ((!A(9)) # (A(1)))) # (A(7) & (A(1) & !A(9))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011110000110000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(7),
	datac => ALT_INV_A(1),
	datad => ALT_INV_A(9),
	cin => \modulator|Add3~230\,
	sharein => \modulator|Add3~231\,
	sumout => \modulator|Add3~221_sumout\,
	cout => \modulator|Add3~222\,
	shareout => \modulator|Add3~223\);

-- Location: LABCELL_X81_Y6_N51
\modulator|Add3~213\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~213_sumout\ = SUM(( !A(10) $ (!A(8) $ (A(2))) ) + ( \modulator|Add3~223\ ) + ( \modulator|Add3~222\ ))
-- \modulator|Add3~214\ = CARRY(( !A(10) $ (!A(8) $ (A(2))) ) + ( \modulator|Add3~223\ ) + ( \modulator|Add3~222\ ))
-- \modulator|Add3~215\ = SHARE((!A(10) & ((!A(8)) # (A(2)))) # (A(10) & (!A(8) & A(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001111101000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(10),
	datac => ALT_INV_A(8),
	datad => ALT_INV_A(2),
	cin => \modulator|Add3~222\,
	sharein => \modulator|Add3~223\,
	sumout => \modulator|Add3~213_sumout\,
	cout => \modulator|Add3~214\,
	shareout => \modulator|Add3~215\);

-- Location: LABCELL_X81_Y6_N54
\modulator|Add3~205\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~205_sumout\ = SUM(( !A(11) $ (!A(3) $ (A(9))) ) + ( \modulator|Add3~215\ ) + ( \modulator|Add3~214\ ))
-- \modulator|Add3~206\ = CARRY(( !A(11) $ (!A(3) $ (A(9))) ) + ( \modulator|Add3~215\ ) + ( \modulator|Add3~214\ ))
-- \modulator|Add3~207\ = SHARE((!A(11) & ((!A(9)) # (A(3)))) # (A(11) & (A(3) & !A(9))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011110000110000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(11),
	datac => ALT_INV_A(3),
	datad => ALT_INV_A(9),
	cin => \modulator|Add3~214\,
	sharein => \modulator|Add3~215\,
	sumout => \modulator|Add3~205_sumout\,
	cout => \modulator|Add3~206\,
	shareout => \modulator|Add3~207\);

-- Location: LABCELL_X81_Y6_N57
\modulator|Add3~197\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~197_sumout\ = SUM(( !A(10) $ (!A(12) $ (A(4))) ) + ( \modulator|Add3~207\ ) + ( \modulator|Add3~206\ ))
-- \modulator|Add3~198\ = CARRY(( !A(10) $ (!A(12) $ (A(4))) ) + ( \modulator|Add3~207\ ) + ( \modulator|Add3~206\ ))
-- \modulator|Add3~199\ = SHARE((!A(10) & ((!A(12)) # (A(4)))) # (A(10) & (!A(12) & A(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001111101000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(10),
	datac => ALT_INV_A(12),
	datad => ALT_INV_A(4),
	cin => \modulator|Add3~206\,
	sharein => \modulator|Add3~207\,
	sumout => \modulator|Add3~197_sumout\,
	cout => \modulator|Add3~198\,
	shareout => \modulator|Add3~199\);

-- Location: LABCELL_X81_Y5_N0
\modulator|Add3~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~189_sumout\ = SUM(( !A(13) $ (!A(11) $ (A(5))) ) + ( \modulator|Add3~199\ ) + ( \modulator|Add3~198\ ))
-- \modulator|Add3~190\ = CARRY(( !A(13) $ (!A(11) $ (A(5))) ) + ( \modulator|Add3~199\ ) + ( \modulator|Add3~198\ ))
-- \modulator|Add3~191\ = SHARE((!A(13) & ((!A(11)) # (A(5)))) # (A(13) & (!A(11) & A(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001111110000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(13),
	datac => ALT_INV_A(11),
	datad => ALT_INV_A(5),
	cin => \modulator|Add3~198\,
	sharein => \modulator|Add3~199\,
	sumout => \modulator|Add3~189_sumout\,
	cout => \modulator|Add3~190\,
	shareout => \modulator|Add3~191\);

-- Location: LABCELL_X81_Y5_N3
\modulator|Add3~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~181_sumout\ = SUM(( !A(14) $ (!A(12) $ (A(6))) ) + ( \modulator|Add3~191\ ) + ( \modulator|Add3~190\ ))
-- \modulator|Add3~182\ = CARRY(( !A(14) $ (!A(12) $ (A(6))) ) + ( \modulator|Add3~191\ ) + ( \modulator|Add3~190\ ))
-- \modulator|Add3~183\ = SHARE((!A(14) & ((!A(12)) # (A(6)))) # (A(14) & (!A(12) & A(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001111101000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(14),
	datac => ALT_INV_A(12),
	datad => ALT_INV_A(6),
	cin => \modulator|Add3~190\,
	sharein => \modulator|Add3~191\,
	sumout => \modulator|Add3~181_sumout\,
	cout => \modulator|Add3~182\,
	shareout => \modulator|Add3~183\);

-- Location: LABCELL_X81_Y5_N6
\modulator|Add3~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~173_sumout\ = SUM(( !A(15) $ (!A(13) $ (A(7))) ) + ( \modulator|Add3~183\ ) + ( \modulator|Add3~182\ ))
-- \modulator|Add3~174\ = CARRY(( !A(15) $ (!A(13) $ (A(7))) ) + ( \modulator|Add3~183\ ) + ( \modulator|Add3~182\ ))
-- \modulator|Add3~175\ = SHARE((!A(15) & ((!A(13)) # (A(7)))) # (A(15) & (!A(13) & A(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001111110000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(15),
	datac => ALT_INV_A(13),
	datad => ALT_INV_A(7),
	cin => \modulator|Add3~182\,
	sharein => \modulator|Add3~183\,
	sumout => \modulator|Add3~173_sumout\,
	cout => \modulator|Add3~174\,
	shareout => \modulator|Add3~175\);

-- Location: LABCELL_X81_Y5_N9
\modulator|Add3~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~165_sumout\ = SUM(( !A(14) $ (!A(8) $ (A(16))) ) + ( \modulator|Add3~175\ ) + ( \modulator|Add3~174\ ))
-- \modulator|Add3~166\ = CARRY(( !A(14) $ (!A(8) $ (A(16))) ) + ( \modulator|Add3~175\ ) + ( \modulator|Add3~174\ ))
-- \modulator|Add3~167\ = SHARE((!A(14) & ((!A(16)) # (A(8)))) # (A(14) & (A(8) & !A(16))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011110000101000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(14),
	datac => ALT_INV_A(8),
	datad => ALT_INV_A(16),
	cin => \modulator|Add3~174\,
	sharein => \modulator|Add3~175\,
	sumout => \modulator|Add3~165_sumout\,
	cout => \modulator|Add3~166\,
	shareout => \modulator|Add3~167\);

-- Location: LABCELL_X81_Y5_N12
\modulator|Add3~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~157_sumout\ = SUM(( !A(15) $ (!A(9) $ (A(17))) ) + ( \modulator|Add3~167\ ) + ( \modulator|Add3~166\ ))
-- \modulator|Add3~158\ = CARRY(( !A(15) $ (!A(9) $ (A(17))) ) + ( \modulator|Add3~167\ ) + ( \modulator|Add3~166\ ))
-- \modulator|Add3~159\ = SHARE((!A(15) & ((!A(17)) # (A(9)))) # (A(15) & (A(9) & !A(17))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011110000110000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(15),
	datac => ALT_INV_A(9),
	datad => ALT_INV_A(17),
	cin => \modulator|Add3~166\,
	sharein => \modulator|Add3~167\,
	sumout => \modulator|Add3~157_sumout\,
	cout => \modulator|Add3~158\,
	shareout => \modulator|Add3~159\);

-- Location: LABCELL_X81_Y5_N15
\modulator|Add3~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~149_sumout\ = SUM(( !A(16) $ (!A(18) $ (A(10))) ) + ( \modulator|Add3~159\ ) + ( \modulator|Add3~158\ ))
-- \modulator|Add3~150\ = CARRY(( !A(16) $ (!A(18) $ (A(10))) ) + ( \modulator|Add3~159\ ) + ( \modulator|Add3~158\ ))
-- \modulator|Add3~151\ = SHARE((!A(16) & ((!A(18)) # (A(10)))) # (A(16) & (!A(18) & A(10))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001111101000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(16),
	datac => ALT_INV_A(18),
	datad => ALT_INV_A(10),
	cin => \modulator|Add3~158\,
	sharein => \modulator|Add3~159\,
	sumout => \modulator|Add3~149_sumout\,
	cout => \modulator|Add3~150\,
	shareout => \modulator|Add3~151\);

-- Location: LABCELL_X81_Y5_N18
\modulator|Add3~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~141_sumout\ = SUM(( !A(19) $ (!A(11) $ (A(17))) ) + ( \modulator|Add3~151\ ) + ( \modulator|Add3~150\ ))
-- \modulator|Add3~142\ = CARRY(( !A(19) $ (!A(11) $ (A(17))) ) + ( \modulator|Add3~151\ ) + ( \modulator|Add3~150\ ))
-- \modulator|Add3~143\ = SHARE((!A(19) & ((!A(17)) # (A(11)))) # (A(19) & (A(11) & !A(17))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011110000110000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(19),
	datac => ALT_INV_A(11),
	datad => ALT_INV_A(17),
	cin => \modulator|Add3~150\,
	sharein => \modulator|Add3~151\,
	sumout => \modulator|Add3~141_sumout\,
	cout => \modulator|Add3~142\,
	shareout => \modulator|Add3~143\);

-- Location: LABCELL_X81_Y5_N21
\modulator|Add3~133\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~133_sumout\ = SUM(( !A(18) $ (!A(12) $ (A(20))) ) + ( \modulator|Add3~143\ ) + ( \modulator|Add3~142\ ))
-- \modulator|Add3~134\ = CARRY(( !A(18) $ (!A(12) $ (A(20))) ) + ( \modulator|Add3~143\ ) + ( \modulator|Add3~142\ ))
-- \modulator|Add3~135\ = SHARE((!A(18) & ((!A(20)) # (A(12)))) # (A(18) & (A(12) & !A(20))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011110000101000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(18),
	datac => ALT_INV_A(12),
	datad => ALT_INV_A(20),
	cin => \modulator|Add3~142\,
	sharein => \modulator|Add3~143\,
	sumout => \modulator|Add3~133_sumout\,
	cout => \modulator|Add3~134\,
	shareout => \modulator|Add3~135\);

-- Location: LABCELL_X81_Y5_N24
\modulator|Add3~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~125_sumout\ = SUM(( !A(19) $ (!A(21) $ (A(13))) ) + ( \modulator|Add3~135\ ) + ( \modulator|Add3~134\ ))
-- \modulator|Add3~126\ = CARRY(( !A(19) $ (!A(21) $ (A(13))) ) + ( \modulator|Add3~135\ ) + ( \modulator|Add3~134\ ))
-- \modulator|Add3~127\ = SHARE((!A(19) & ((!A(21)) # (A(13)))) # (A(19) & (!A(21) & A(13))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001111110000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(19),
	datac => ALT_INV_A(21),
	datad => ALT_INV_A(13),
	cin => \modulator|Add3~134\,
	sharein => \modulator|Add3~135\,
	sumout => \modulator|Add3~125_sumout\,
	cout => \modulator|Add3~126\,
	shareout => \modulator|Add3~127\);

-- Location: LABCELL_X81_Y5_N27
\modulator|Add3~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~117_sumout\ = SUM(( !A(14) $ (!A(20) $ (A(22))) ) + ( \modulator|Add3~127\ ) + ( \modulator|Add3~126\ ))
-- \modulator|Add3~118\ = CARRY(( !A(14) $ (!A(20) $ (A(22))) ) + ( \modulator|Add3~127\ ) + ( \modulator|Add3~126\ ))
-- \modulator|Add3~119\ = SHARE((!A(14) & (!A(20) & !A(22))) # (A(14) & ((!A(20)) # (!A(22)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101010101000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(14),
	datac => ALT_INV_A(20),
	datad => ALT_INV_A(22),
	cin => \modulator|Add3~126\,
	sharein => \modulator|Add3~127\,
	sumout => \modulator|Add3~117_sumout\,
	cout => \modulator|Add3~118\,
	shareout => \modulator|Add3~119\);

-- Location: LABCELL_X81_Y5_N30
\modulator|Add3~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~109_sumout\ = SUM(( !A(23) $ (!A(21) $ (A(15))) ) + ( \modulator|Add3~119\ ) + ( \modulator|Add3~118\ ))
-- \modulator|Add3~110\ = CARRY(( !A(23) $ (!A(21) $ (A(15))) ) + ( \modulator|Add3~119\ ) + ( \modulator|Add3~118\ ))
-- \modulator|Add3~111\ = SHARE((!A(23) & ((!A(21)) # (A(15)))) # (A(23) & (!A(21) & A(15))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001111110000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(23),
	datac => ALT_INV_A(21),
	datad => ALT_INV_A(15),
	cin => \modulator|Add3~118\,
	sharein => \modulator|Add3~119\,
	sumout => \modulator|Add3~109_sumout\,
	cout => \modulator|Add3~110\,
	shareout => \modulator|Add3~111\);

-- Location: LABCELL_X81_Y5_N33
\modulator|Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~53_sumout\ = SUM(( !A(16) $ (!A(24) $ (A(22))) ) + ( \modulator|Add3~111\ ) + ( \modulator|Add3~110\ ))
-- \modulator|Add3~54\ = CARRY(( !A(16) $ (!A(24) $ (A(22))) ) + ( \modulator|Add3~111\ ) + ( \modulator|Add3~110\ ))
-- \modulator|Add3~55\ = SHARE((!A(16) & (!A(24) & !A(22))) # (A(16) & ((!A(24)) # (!A(22)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101010101000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(16),
	datac => ALT_INV_A(24),
	datad => ALT_INV_A(22),
	cin => \modulator|Add3~110\,
	sharein => \modulator|Add3~111\,
	sumout => \modulator|Add3~53_sumout\,
	cout => \modulator|Add3~54\,
	shareout => \modulator|Add3~55\);

-- Location: LABCELL_X81_Y5_N36
\modulator|Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~61_sumout\ = SUM(( !A(23) $ (!A(17) $ (A(25))) ) + ( \modulator|Add3~55\ ) + ( \modulator|Add3~54\ ))
-- \modulator|Add3~62\ = CARRY(( !A(23) $ (!A(17) $ (A(25))) ) + ( \modulator|Add3~55\ ) + ( \modulator|Add3~54\ ))
-- \modulator|Add3~63\ = SHARE((!A(23) & ((!A(25)) # (A(17)))) # (A(23) & (A(17) & !A(25))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011110000110000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(23),
	datac => ALT_INV_A(17),
	datad => ALT_INV_A(25),
	cin => \modulator|Add3~54\,
	sharein => \modulator|Add3~55\,
	sumout => \modulator|Add3~61_sumout\,
	cout => \modulator|Add3~62\,
	shareout => \modulator|Add3~63\);

-- Location: LABCELL_X81_Y5_N39
\modulator|Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~65_sumout\ = SUM(( !A(18) $ (!A(24)) ) + ( \modulator|Add3~63\ ) + ( \modulator|Add3~62\ ))
-- \modulator|Add3~66\ = CARRY(( !A(18) $ (!A(24)) ) + ( \modulator|Add3~63\ ) + ( \modulator|Add3~62\ ))
-- \modulator|Add3~67\ = SHARE((!A(24)) # (A(18)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(18),
	datad => ALT_INV_A(24),
	cin => \modulator|Add3~62\,
	sharein => \modulator|Add3~63\,
	sumout => \modulator|Add3~65_sumout\,
	cout => \modulator|Add3~66\,
	shareout => \modulator|Add3~67\);

-- Location: LABCELL_X81_Y5_N42
\modulator|Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~69_sumout\ = SUM(( !A(19) $ (!A(25)) ) + ( \modulator|Add3~67\ ) + ( \modulator|Add3~66\ ))
-- \modulator|Add3~70\ = CARRY(( !A(19) $ (!A(25)) ) + ( \modulator|Add3~67\ ) + ( \modulator|Add3~66\ ))
-- \modulator|Add3~71\ = SHARE((!A(25)) # (A(19)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(19),
	datac => ALT_INV_A(25),
	cin => \modulator|Add3~66\,
	sharein => \modulator|Add3~67\,
	sumout => \modulator|Add3~69_sumout\,
	cout => \modulator|Add3~70\,
	shareout => \modulator|Add3~71\);

-- Location: LABCELL_X81_Y5_N45
\modulator|Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~73_sumout\ = SUM(( A(20) ) + ( \modulator|Add3~71\ ) + ( \modulator|Add3~70\ ))
-- \modulator|Add3~74\ = CARRY(( A(20) ) + ( \modulator|Add3~71\ ) + ( \modulator|Add3~70\ ))
-- \modulator|Add3~75\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(20),
	cin => \modulator|Add3~70\,
	sharein => \modulator|Add3~71\,
	sumout => \modulator|Add3~73_sumout\,
	cout => \modulator|Add3~74\,
	shareout => \modulator|Add3~75\);

-- Location: LABCELL_X81_Y5_N48
\modulator|Add3~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~77_sumout\ = SUM(( A(21) ) + ( \modulator|Add3~75\ ) + ( \modulator|Add3~74\ ))
-- \modulator|Add3~78\ = CARRY(( A(21) ) + ( \modulator|Add3~75\ ) + ( \modulator|Add3~74\ ))
-- \modulator|Add3~79\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(21),
	cin => \modulator|Add3~74\,
	sharein => \modulator|Add3~75\,
	sumout => \modulator|Add3~77_sumout\,
	cout => \modulator|Add3~78\,
	shareout => \modulator|Add3~79\);

-- Location: LABCELL_X81_Y5_N51
\modulator|Add3~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~81_sumout\ = SUM(( A(22) ) + ( \modulator|Add3~79\ ) + ( \modulator|Add3~78\ ))
-- \modulator|Add3~82\ = CARRY(( A(22) ) + ( \modulator|Add3~79\ ) + ( \modulator|Add3~78\ ))
-- \modulator|Add3~83\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(22),
	cin => \modulator|Add3~78\,
	sharein => \modulator|Add3~79\,
	sumout => \modulator|Add3~81_sumout\,
	cout => \modulator|Add3~82\,
	shareout => \modulator|Add3~83\);

-- Location: LABCELL_X81_Y5_N54
\modulator|Add3~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~85_sumout\ = SUM(( A(23) ) + ( \modulator|Add3~83\ ) + ( \modulator|Add3~82\ ))
-- \modulator|Add3~86\ = CARRY(( A(23) ) + ( \modulator|Add3~83\ ) + ( \modulator|Add3~82\ ))
-- \modulator|Add3~87\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(23),
	cin => \modulator|Add3~82\,
	sharein => \modulator|Add3~83\,
	sumout => \modulator|Add3~85_sumout\,
	cout => \modulator|Add3~86\,
	shareout => \modulator|Add3~87\);

-- Location: LABCELL_X81_Y5_N57
\modulator|Add3~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~89_sumout\ = SUM(( A(24) ) + ( \modulator|Add3~87\ ) + ( \modulator|Add3~86\ ))
-- \modulator|Add3~90\ = CARRY(( A(24) ) + ( \modulator|Add3~87\ ) + ( \modulator|Add3~86\ ))
-- \modulator|Add3~91\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(24),
	cin => \modulator|Add3~86\,
	sharein => \modulator|Add3~87\,
	sumout => \modulator|Add3~89_sumout\,
	cout => \modulator|Add3~90\,
	shareout => \modulator|Add3~91\);

-- Location: LABCELL_X81_Y4_N0
\modulator|Add3~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~93_sumout\ = SUM(( A(25) ) + ( \modulator|Add3~91\ ) + ( \modulator|Add3~90\ ))
-- \modulator|Add3~94\ = CARRY(( A(25) ) + ( \modulator|Add3~91\ ) + ( \modulator|Add3~90\ ))
-- \modulator|Add3~95\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(25),
	cin => \modulator|Add3~90\,
	sharein => \modulator|Add3~91\,
	sumout => \modulator|Add3~93_sumout\,
	cout => \modulator|Add3~94\,
	shareout => \modulator|Add3~95\);

-- Location: LABCELL_X81_Y4_N3
\modulator|Add3~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~101_sumout\ = SUM(( GND ) + ( \modulator|Add3~95\ ) + ( \modulator|Add3~94\ ))
-- \modulator|Add3~102\ = CARRY(( GND ) + ( \modulator|Add3~95\ ) + ( \modulator|Add3~94\ ))
-- \modulator|Add3~103\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \modulator|Add3~94\,
	sharein => \modulator|Add3~95\,
	sumout => \modulator|Add3~101_sumout\,
	cout => \modulator|Add3~102\,
	shareout => \modulator|Add3~103\);

-- Location: LABCELL_X81_Y4_N6
\modulator|Add3~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~105_sumout\ = SUM(( GND ) + ( \modulator|Add3~103\ ) + ( \modulator|Add3~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \modulator|Add3~102\,
	sharein => \modulator|Add3~103\,
	sumout => \modulator|Add3~105_sumout\);

-- Location: LABCELL_X83_Y4_N12
\modulator|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~9_sumout\ = SUM(( GND ) + ( \modulator|Add0~7\ ) + ( \modulator|Add0~6\ ))
-- \modulator|Add0~10\ = CARRY(( GND ) + ( \modulator|Add0~7\ ) + ( \modulator|Add0~6\ ))
-- \modulator|Add0~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \modulator|Add0~6\,
	sharein => \modulator|Add0~7\,
	sumout => \modulator|Add0~9_sumout\,
	cout => \modulator|Add0~10\,
	shareout => \modulator|Add0~11\);

-- Location: LABCELL_X83_Y4_N9
\modulator|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~5_sumout\ = SUM(( GND ) + ( \modulator|Add0~3\ ) + ( \modulator|Add0~2\ ))
-- \modulator|Add0~6\ = CARRY(( GND ) + ( \modulator|Add0~3\ ) + ( \modulator|Add0~2\ ))
-- \modulator|Add0~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \modulator|Add0~2\,
	sharein => \modulator|Add0~3\,
	sumout => \modulator|Add0~5_sumout\,
	cout => \modulator|Add0~6\,
	shareout => \modulator|Add0~7\);

-- Location: LABCELL_X83_Y4_N6
\modulator|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~1_sumout\ = SUM(( GND ) + ( \modulator|Add0~55\ ) + ( \modulator|Add0~54\ ))
-- \modulator|Add0~2\ = CARRY(( GND ) + ( \modulator|Add0~55\ ) + ( \modulator|Add0~54\ ))
-- \modulator|Add0~3\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \modulator|Add0~54\,
	sharein => \modulator|Add0~55\,
	sumout => \modulator|Add0~1_sumout\,
	cout => \modulator|Add0~2\,
	shareout => \modulator|Add0~3\);

-- Location: LABCELL_X83_Y4_N3
\modulator|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~53_sumout\ = SUM(( GND ) + ( \modulator|Add0~63\ ) + ( \modulator|Add0~62\ ))
-- \modulator|Add0~54\ = CARRY(( GND ) + ( \modulator|Add0~63\ ) + ( \modulator|Add0~62\ ))
-- \modulator|Add0~55\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \modulator|Add0~62\,
	sharein => \modulator|Add0~63\,
	sumout => \modulator|Add0~53_sumout\,
	cout => \modulator|Add0~54\,
	shareout => \modulator|Add0~55\);

-- Location: LABCELL_X83_Y6_N30
\modulator|Add0~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~182_cout\ = CARRY(( GND ) + ( !VCC ) + ( !VCC ))
-- \modulator|Add0~183\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => GND,
	sharein => GND,
	cout => \modulator|Add0~182_cout\,
	shareout => \modulator|Add0~183\);

-- Location: LABCELL_X83_Y6_N33
\modulator|Add0~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~177_sumout\ = SUM(( GND ) + ( \modulator|Add0~183\ ) + ( \modulator|Add0~182_cout\ ))
-- \modulator|Add0~178\ = CARRY(( GND ) + ( \modulator|Add0~183\ ) + ( \modulator|Add0~182_cout\ ))
-- \modulator|Add0~179\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \modulator|Add0~182_cout\,
	sharein => \modulator|Add0~183\,
	sumout => \modulator|Add0~177_sumout\,
	cout => \modulator|Add0~178\,
	shareout => \modulator|Add0~179\);

-- Location: LABCELL_X83_Y6_N36
\modulator|Add0~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~173_sumout\ = SUM(( A(1) ) + ( \modulator|Add0~179\ ) + ( \modulator|Add0~178\ ))
-- \modulator|Add0~174\ = CARRY(( A(1) ) + ( \modulator|Add0~179\ ) + ( \modulator|Add0~178\ ))
-- \modulator|Add0~175\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(1),
	cin => \modulator|Add0~178\,
	sharein => \modulator|Add0~179\,
	sumout => \modulator|Add0~173_sumout\,
	cout => \modulator|Add0~174\,
	shareout => \modulator|Add0~175\);

-- Location: LABCELL_X83_Y6_N39
\modulator|Add0~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~169_sumout\ = SUM(( A(1) ) + ( \modulator|Add0~175\ ) + ( \modulator|Add0~174\ ))
-- \modulator|Add0~170\ = CARRY(( A(1) ) + ( \modulator|Add0~175\ ) + ( \modulator|Add0~174\ ))
-- \modulator|Add0~171\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(1),
	cin => \modulator|Add0~174\,
	sharein => \modulator|Add0~175\,
	sumout => \modulator|Add0~169_sumout\,
	cout => \modulator|Add0~170\,
	shareout => \modulator|Add0~171\);

-- Location: LABCELL_X83_Y6_N42
\modulator|Add0~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~165_sumout\ = SUM(( A(3) ) + ( \modulator|Add0~171\ ) + ( \modulator|Add0~170\ ))
-- \modulator|Add0~166\ = CARRY(( A(3) ) + ( \modulator|Add0~171\ ) + ( \modulator|Add0~170\ ))
-- \modulator|Add0~167\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(3),
	cin => \modulator|Add0~170\,
	sharein => \modulator|Add0~171\,
	sumout => \modulator|Add0~165_sumout\,
	cout => \modulator|Add0~166\,
	shareout => \modulator|Add0~167\);

-- Location: LABCELL_X83_Y6_N45
\modulator|Add0~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~161_sumout\ = SUM(( !A(3) $ (!A(4)) ) + ( \modulator|Add0~167\ ) + ( \modulator|Add0~166\ ))
-- \modulator|Add0~162\ = CARRY(( !A(3) $ (!A(4)) ) + ( \modulator|Add0~167\ ) + ( \modulator|Add0~166\ ))
-- \modulator|Add0~163\ = SHARE((A(3) & A(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(3),
	datac => ALT_INV_A(4),
	cin => \modulator|Add0~166\,
	sharein => \modulator|Add0~167\,
	sumout => \modulator|Add0~161_sumout\,
	cout => \modulator|Add0~162\,
	shareout => \modulator|Add0~163\);

-- Location: LABCELL_X83_Y6_N48
\modulator|Add0~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~157_sumout\ = SUM(( !A(4) $ (!A(5)) ) + ( \modulator|Add0~163\ ) + ( \modulator|Add0~162\ ))
-- \modulator|Add0~158\ = CARRY(( !A(4) $ (!A(5)) ) + ( \modulator|Add0~163\ ) + ( \modulator|Add0~162\ ))
-- \modulator|Add0~159\ = SHARE((A(4) & A(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(4),
	datac => ALT_INV_A(5),
	cin => \modulator|Add0~162\,
	sharein => \modulator|Add0~163\,
	sumout => \modulator|Add0~157_sumout\,
	cout => \modulator|Add0~158\,
	shareout => \modulator|Add0~159\);

-- Location: LABCELL_X83_Y6_N51
\modulator|Add0~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~153_sumout\ = SUM(( !A(5) $ (!A(6)) ) + ( \modulator|Add0~159\ ) + ( \modulator|Add0~158\ ))
-- \modulator|Add0~154\ = CARRY(( !A(5) $ (!A(6)) ) + ( \modulator|Add0~159\ ) + ( \modulator|Add0~158\ ))
-- \modulator|Add0~155\ = SHARE((A(5) & A(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(5),
	datac => ALT_INV_A(6),
	cin => \modulator|Add0~158\,
	sharein => \modulator|Add0~159\,
	sumout => \modulator|Add0~153_sumout\,
	cout => \modulator|Add0~154\,
	shareout => \modulator|Add0~155\);

-- Location: LABCELL_X83_Y6_N54
\modulator|Add0~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~149_sumout\ = SUM(( !A(6) $ (!A(7)) ) + ( \modulator|Add0~155\ ) + ( \modulator|Add0~154\ ))
-- \modulator|Add0~150\ = CARRY(( !A(6) $ (!A(7)) ) + ( \modulator|Add0~155\ ) + ( \modulator|Add0~154\ ))
-- \modulator|Add0~151\ = SHARE((A(6) & A(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(6),
	datad => ALT_INV_A(7),
	cin => \modulator|Add0~154\,
	sharein => \modulator|Add0~155\,
	sumout => \modulator|Add0~149_sumout\,
	cout => \modulator|Add0~150\,
	shareout => \modulator|Add0~151\);

-- Location: LABCELL_X83_Y6_N57
\modulator|Add0~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~145_sumout\ = SUM(( !A(8) $ (!A(7)) ) + ( \modulator|Add0~151\ ) + ( \modulator|Add0~150\ ))
-- \modulator|Add0~146\ = CARRY(( !A(8) $ (!A(7)) ) + ( \modulator|Add0~151\ ) + ( \modulator|Add0~150\ ))
-- \modulator|Add0~147\ = SHARE((A(8) & A(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(8),
	datad => ALT_INV_A(7),
	cin => \modulator|Add0~150\,
	sharein => \modulator|Add0~151\,
	sumout => \modulator|Add0~145_sumout\,
	cout => \modulator|Add0~146\,
	shareout => \modulator|Add0~147\);

-- Location: LABCELL_X83_Y5_N0
\modulator|Add0~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~141_sumout\ = SUM(( !A(8) $ (!A(9)) ) + ( \modulator|Add0~147\ ) + ( \modulator|Add0~146\ ))
-- \modulator|Add0~142\ = CARRY(( !A(8) $ (!A(9)) ) + ( \modulator|Add0~147\ ) + ( \modulator|Add0~146\ ))
-- \modulator|Add0~143\ = SHARE((A(8) & A(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(8),
	datad => ALT_INV_A(9),
	cin => \modulator|Add0~146\,
	sharein => \modulator|Add0~147\,
	sumout => \modulator|Add0~141_sumout\,
	cout => \modulator|Add0~142\,
	shareout => \modulator|Add0~143\);

-- Location: LABCELL_X83_Y5_N3
\modulator|Add0~137\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~137_sumout\ = SUM(( !A(9) $ (!A(10)) ) + ( \modulator|Add0~143\ ) + ( \modulator|Add0~142\ ))
-- \modulator|Add0~138\ = CARRY(( !A(9) $ (!A(10)) ) + ( \modulator|Add0~143\ ) + ( \modulator|Add0~142\ ))
-- \modulator|Add0~139\ = SHARE((A(9) & A(10)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(9),
	datad => ALT_INV_A(10),
	cin => \modulator|Add0~142\,
	sharein => \modulator|Add0~143\,
	sumout => \modulator|Add0~137_sumout\,
	cout => \modulator|Add0~138\,
	shareout => \modulator|Add0~139\);

-- Location: LABCELL_X83_Y5_N6
\modulator|Add0~133\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~133_sumout\ = SUM(( !A(11) $ (!A(10)) ) + ( \modulator|Add0~139\ ) + ( \modulator|Add0~138\ ))
-- \modulator|Add0~134\ = CARRY(( !A(11) $ (!A(10)) ) + ( \modulator|Add0~139\ ) + ( \modulator|Add0~138\ ))
-- \modulator|Add0~135\ = SHARE((A(11) & A(10)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(11),
	datad => ALT_INV_A(10),
	cin => \modulator|Add0~138\,
	sharein => \modulator|Add0~139\,
	sumout => \modulator|Add0~133_sumout\,
	cout => \modulator|Add0~134\,
	shareout => \modulator|Add0~135\);

-- Location: LABCELL_X83_Y5_N9
\modulator|Add0~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~129_sumout\ = SUM(( !A(11) $ (!A(12)) ) + ( \modulator|Add0~135\ ) + ( \modulator|Add0~134\ ))
-- \modulator|Add0~130\ = CARRY(( !A(11) $ (!A(12)) ) + ( \modulator|Add0~135\ ) + ( \modulator|Add0~134\ ))
-- \modulator|Add0~131\ = SHARE((A(11) & A(12)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(11),
	datad => ALT_INV_A(12),
	cin => \modulator|Add0~134\,
	sharein => \modulator|Add0~135\,
	sumout => \modulator|Add0~129_sumout\,
	cout => \modulator|Add0~130\,
	shareout => \modulator|Add0~131\);

-- Location: LABCELL_X83_Y5_N12
\modulator|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~125_sumout\ = SUM(( !A(13) $ (!A(12)) ) + ( \modulator|Add0~131\ ) + ( \modulator|Add0~130\ ))
-- \modulator|Add0~126\ = CARRY(( !A(13) $ (!A(12)) ) + ( \modulator|Add0~131\ ) + ( \modulator|Add0~130\ ))
-- \modulator|Add0~127\ = SHARE((A(13) & A(12)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(13),
	datad => ALT_INV_A(12),
	cin => \modulator|Add0~130\,
	sharein => \modulator|Add0~131\,
	sumout => \modulator|Add0~125_sumout\,
	cout => \modulator|Add0~126\,
	shareout => \modulator|Add0~127\);

-- Location: LABCELL_X83_Y5_N15
\modulator|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~121_sumout\ = SUM(( !A(13) $ (!A(14)) ) + ( \modulator|Add0~127\ ) + ( \modulator|Add0~126\ ))
-- \modulator|Add0~122\ = CARRY(( !A(13) $ (!A(14)) ) + ( \modulator|Add0~127\ ) + ( \modulator|Add0~126\ ))
-- \modulator|Add0~123\ = SHARE((A(13) & A(14)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(13),
	datad => ALT_INV_A(14),
	cin => \modulator|Add0~126\,
	sharein => \modulator|Add0~127\,
	sumout => \modulator|Add0~121_sumout\,
	cout => \modulator|Add0~122\,
	shareout => \modulator|Add0~123\);

-- Location: LABCELL_X83_Y5_N18
\modulator|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~117_sumout\ = SUM(( !A(11) $ (!A(15) $ (A(14))) ) + ( \modulator|Add0~123\ ) + ( \modulator|Add0~122\ ))
-- \modulator|Add0~118\ = CARRY(( !A(11) $ (!A(15) $ (A(14))) ) + ( \modulator|Add0~123\ ) + ( \modulator|Add0~122\ ))
-- \modulator|Add0~119\ = SHARE((!A(11) & (A(15) & A(14))) # (A(11) & ((A(14)) # (A(15)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(11),
	datac => ALT_INV_A(15),
	datad => ALT_INV_A(14),
	cin => \modulator|Add0~122\,
	sharein => \modulator|Add0~123\,
	sumout => \modulator|Add0~117_sumout\,
	cout => \modulator|Add0~118\,
	shareout => \modulator|Add0~119\);

-- Location: LABCELL_X83_Y5_N21
\modulator|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~113_sumout\ = SUM(( !A(15) $ (!A(16) $ (A(12))) ) + ( \modulator|Add0~119\ ) + ( \modulator|Add0~118\ ))
-- \modulator|Add0~114\ = CARRY(( !A(15) $ (!A(16) $ (A(12))) ) + ( \modulator|Add0~119\ ) + ( \modulator|Add0~118\ ))
-- \modulator|Add0~115\ = SHARE((!A(15) & (A(16) & A(12))) # (A(15) & ((A(12)) # (A(16)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(15),
	datac => ALT_INV_A(16),
	datad => ALT_INV_A(12),
	cin => \modulator|Add0~118\,
	sharein => \modulator|Add0~119\,
	sumout => \modulator|Add0~113_sumout\,
	cout => \modulator|Add0~114\,
	shareout => \modulator|Add0~115\);

-- Location: LABCELL_X83_Y5_N24
\modulator|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~109_sumout\ = SUM(( !A(13) $ (!A(17) $ (A(16))) ) + ( \modulator|Add0~115\ ) + ( \modulator|Add0~114\ ))
-- \modulator|Add0~110\ = CARRY(( !A(13) $ (!A(17) $ (A(16))) ) + ( \modulator|Add0~115\ ) + ( \modulator|Add0~114\ ))
-- \modulator|Add0~111\ = SHARE((!A(13) & (A(17) & A(16))) # (A(13) & ((A(16)) # (A(17)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(13),
	datac => ALT_INV_A(17),
	datad => ALT_INV_A(16),
	cin => \modulator|Add0~114\,
	sharein => \modulator|Add0~115\,
	sumout => \modulator|Add0~109_sumout\,
	cout => \modulator|Add0~110\,
	shareout => \modulator|Add0~111\);

-- Location: LABCELL_X83_Y5_N27
\modulator|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~105_sumout\ = SUM(( !A(17) $ (!A(18) $ (A(14))) ) + ( \modulator|Add0~111\ ) + ( \modulator|Add0~110\ ))
-- \modulator|Add0~106\ = CARRY(( !A(17) $ (!A(18) $ (A(14))) ) + ( \modulator|Add0~111\ ) + ( \modulator|Add0~110\ ))
-- \modulator|Add0~107\ = SHARE((!A(17) & (A(18) & A(14))) # (A(17) & ((A(14)) # (A(18)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(17),
	datac => ALT_INV_A(18),
	datad => ALT_INV_A(14),
	cin => \modulator|Add0~110\,
	sharein => \modulator|Add0~111\,
	sumout => \modulator|Add0~105_sumout\,
	cout => \modulator|Add0~106\,
	shareout => \modulator|Add0~107\);

-- Location: LABCELL_X83_Y5_N30
\modulator|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~101_sumout\ = SUM(( !A(19) $ (!A(15) $ (A(18))) ) + ( \modulator|Add0~107\ ) + ( \modulator|Add0~106\ ))
-- \modulator|Add0~102\ = CARRY(( !A(19) $ (!A(15) $ (A(18))) ) + ( \modulator|Add0~107\ ) + ( \modulator|Add0~106\ ))
-- \modulator|Add0~103\ = SHARE((!A(19) & (A(15) & A(18))) # (A(19) & ((A(18)) # (A(15)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(19),
	datac => ALT_INV_A(15),
	datad => ALT_INV_A(18),
	cin => \modulator|Add0~106\,
	sharein => \modulator|Add0~107\,
	sumout => \modulator|Add0~101_sumout\,
	cout => \modulator|Add0~102\,
	shareout => \modulator|Add0~103\);

-- Location: LABCELL_X83_Y5_N33
\modulator|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~97_sumout\ = SUM(( !A(19) $ (!A(16) $ (A(20))) ) + ( \modulator|Add0~103\ ) + ( \modulator|Add0~102\ ))
-- \modulator|Add0~98\ = CARRY(( !A(19) $ (!A(16) $ (A(20))) ) + ( \modulator|Add0~103\ ) + ( \modulator|Add0~102\ ))
-- \modulator|Add0~99\ = SHARE((!A(19) & (A(16) & A(20))) # (A(19) & ((A(20)) # (A(16)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(19),
	datac => ALT_INV_A(16),
	datad => ALT_INV_A(20),
	cin => \modulator|Add0~102\,
	sharein => \modulator|Add0~103\,
	sumout => \modulator|Add0~97_sumout\,
	cout => \modulator|Add0~98\,
	shareout => \modulator|Add0~99\);

-- Location: LABCELL_X83_Y5_N36
\modulator|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~93_sumout\ = SUM(( !A(21) $ (!A(17) $ (A(20))) ) + ( \modulator|Add0~99\ ) + ( \modulator|Add0~98\ ))
-- \modulator|Add0~94\ = CARRY(( !A(21) $ (!A(17) $ (A(20))) ) + ( \modulator|Add0~99\ ) + ( \modulator|Add0~98\ ))
-- \modulator|Add0~95\ = SHARE((!A(21) & (A(17) & A(20))) # (A(21) & ((A(20)) # (A(17)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(21),
	datac => ALT_INV_A(17),
	datad => ALT_INV_A(20),
	cin => \modulator|Add0~98\,
	sharein => \modulator|Add0~99\,
	sumout => \modulator|Add0~93_sumout\,
	cout => \modulator|Add0~94\,
	shareout => \modulator|Add0~95\);

-- Location: LABCELL_X83_Y5_N39
\modulator|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~89_sumout\ = SUM(( !A(21) $ (!A(22) $ (A(18))) ) + ( \modulator|Add0~95\ ) + ( \modulator|Add0~94\ ))
-- \modulator|Add0~90\ = CARRY(( !A(21) $ (!A(22) $ (A(18))) ) + ( \modulator|Add0~95\ ) + ( \modulator|Add0~94\ ))
-- \modulator|Add0~91\ = SHARE((!A(21) & (A(22) & A(18))) # (A(21) & ((A(18)) # (A(22)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(21),
	datac => ALT_INV_A(22),
	datad => ALT_INV_A(18),
	cin => \modulator|Add0~94\,
	sharein => \modulator|Add0~95\,
	sumout => \modulator|Add0~89_sumout\,
	cout => \modulator|Add0~90\,
	shareout => \modulator|Add0~91\);

-- Location: LABCELL_X83_Y5_N42
\modulator|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~85_sumout\ = SUM(( !A(22) $ (!A(19) $ (A(23))) ) + ( \modulator|Add0~91\ ) + ( \modulator|Add0~90\ ))
-- \modulator|Add0~86\ = CARRY(( !A(22) $ (!A(19) $ (A(23))) ) + ( \modulator|Add0~91\ ) + ( \modulator|Add0~90\ ))
-- \modulator|Add0~87\ = SHARE((!A(22) & (A(19) & A(23))) # (A(22) & ((A(23)) # (A(19)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(22),
	datac => ALT_INV_A(19),
	datad => ALT_INV_A(23),
	cin => \modulator|Add0~90\,
	sharein => \modulator|Add0~91\,
	sumout => \modulator|Add0~85_sumout\,
	cout => \modulator|Add0~86\,
	shareout => \modulator|Add0~87\);

-- Location: LABCELL_X83_Y5_N45
\modulator|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~81_sumout\ = SUM(( !A(23) $ (!A(20) $ (A(24))) ) + ( \modulator|Add0~87\ ) + ( \modulator|Add0~86\ ))
-- \modulator|Add0~82\ = CARRY(( !A(23) $ (!A(20) $ (A(24))) ) + ( \modulator|Add0~87\ ) + ( \modulator|Add0~86\ ))
-- \modulator|Add0~83\ = SHARE((!A(23) & (A(20) & A(24))) # (A(23) & ((A(24)) # (A(20)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(23),
	datac => ALT_INV_A(20),
	datad => ALT_INV_A(24),
	cin => \modulator|Add0~86\,
	sharein => \modulator|Add0~87\,
	sumout => \modulator|Add0~81_sumout\,
	cout => \modulator|Add0~82\,
	shareout => \modulator|Add0~83\);

-- Location: LABCELL_X83_Y5_N48
\modulator|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~77_sumout\ = SUM(( !A(25) $ (!A(21) $ (A(24))) ) + ( \modulator|Add0~83\ ) + ( \modulator|Add0~82\ ))
-- \modulator|Add0~78\ = CARRY(( !A(25) $ (!A(21) $ (A(24))) ) + ( \modulator|Add0~83\ ) + ( \modulator|Add0~82\ ))
-- \modulator|Add0~79\ = SHARE((!A(25) & (A(21) & A(24))) # (A(25) & ((A(24)) # (A(21)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(25),
	datac => ALT_INV_A(21),
	datad => ALT_INV_A(24),
	cin => \modulator|Add0~82\,
	sharein => \modulator|Add0~83\,
	sumout => \modulator|Add0~77_sumout\,
	cout => \modulator|Add0~78\,
	shareout => \modulator|Add0~79\);

-- Location: LABCELL_X83_Y5_N51
\modulator|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~73_sumout\ = SUM(( !A(22) $ (!A(25)) ) + ( \modulator|Add0~79\ ) + ( \modulator|Add0~78\ ))
-- \modulator|Add0~74\ = CARRY(( !A(22) $ (!A(25)) ) + ( \modulator|Add0~79\ ) + ( \modulator|Add0~78\ ))
-- \modulator|Add0~75\ = SHARE((A(22) & A(25)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(22),
	datad => ALT_INV_A(25),
	cin => \modulator|Add0~78\,
	sharein => \modulator|Add0~79\,
	sumout => \modulator|Add0~73_sumout\,
	cout => \modulator|Add0~74\,
	shareout => \modulator|Add0~75\);

-- Location: LABCELL_X83_Y5_N54
\modulator|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~69_sumout\ = SUM(( A(23) ) + ( \modulator|Add0~75\ ) + ( \modulator|Add0~74\ ))
-- \modulator|Add0~70\ = CARRY(( A(23) ) + ( \modulator|Add0~75\ ) + ( \modulator|Add0~74\ ))
-- \modulator|Add0~71\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(23),
	cin => \modulator|Add0~74\,
	sharein => \modulator|Add0~75\,
	sumout => \modulator|Add0~69_sumout\,
	cout => \modulator|Add0~70\,
	shareout => \modulator|Add0~71\);

-- Location: LABCELL_X83_Y5_N57
\modulator|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~65_sumout\ = SUM(( A(24) ) + ( \modulator|Add0~71\ ) + ( \modulator|Add0~70\ ))
-- \modulator|Add0~66\ = CARRY(( A(24) ) + ( \modulator|Add0~71\ ) + ( \modulator|Add0~70\ ))
-- \modulator|Add0~67\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(24),
	cin => \modulator|Add0~70\,
	sharein => \modulator|Add0~71\,
	sumout => \modulator|Add0~65_sumout\,
	cout => \modulator|Add0~66\,
	shareout => \modulator|Add0~67\);

-- Location: LABCELL_X83_Y4_N0
\modulator|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~61_sumout\ = SUM(( A(25) ) + ( \modulator|Add0~67\ ) + ( \modulator|Add0~66\ ))
-- \modulator|Add0~62\ = CARRY(( A(25) ) + ( \modulator|Add0~67\ ) + ( \modulator|Add0~66\ ))
-- \modulator|Add0~63\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(25),
	cin => \modulator|Add0~66\,
	sharein => \modulator|Add0~67\,
	sumout => \modulator|Add0~61_sumout\,
	cout => \modulator|Add0~62\,
	shareout => \modulator|Add0~63\);

-- Location: MLABCELL_X82_Y6_N30
\modulator|Add3~346\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~346_cout\ = CARRY(( !\modulator|Add3~349_sumout\ $ (\modulator|Add0~177_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \modulator|Add3~347\ = SHARE((\modulator|Add0~177_sumout\) # (\modulator|Add3~349_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110011111100000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \modulator|ALT_INV_Add3~349_sumout\,
	datac => \modulator|ALT_INV_Add0~177_sumout\,
	cin => GND,
	sharein => GND,
	cout => \modulator|Add3~346_cout\,
	shareout => \modulator|Add3~347\);

-- Location: MLABCELL_X82_Y6_N33
\modulator|Add3~338\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~338_cout\ = CARRY(( !\modulator|Add3~341_sumout\ $ (!\modulator|Add0~173_sumout\) ) + ( \modulator|Add3~347\ ) + ( \modulator|Add3~346_cout\ ))
-- \modulator|Add3~339\ = SHARE((\modulator|Add3~341_sumout\ & \modulator|Add0~173_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add3~341_sumout\,
	datad => \modulator|ALT_INV_Add0~173_sumout\,
	cin => \modulator|Add3~346_cout\,
	sharein => \modulator|Add3~347\,
	cout => \modulator|Add3~338_cout\,
	shareout => \modulator|Add3~339\);

-- Location: MLABCELL_X82_Y6_N36
\modulator|Add3~330\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~330_cout\ = CARRY(( !\modulator|Add0~169_sumout\ $ (!\modulator|Add3~333_sumout\) ) + ( \modulator|Add3~339\ ) + ( \modulator|Add3~338_cout\ ))
-- \modulator|Add3~331\ = SHARE((\modulator|Add0~169_sumout\ & \modulator|Add3~333_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add0~169_sumout\,
	datad => \modulator|ALT_INV_Add3~333_sumout\,
	cin => \modulator|Add3~338_cout\,
	sharein => \modulator|Add3~339\,
	cout => \modulator|Add3~330_cout\,
	shareout => \modulator|Add3~331\);

-- Location: MLABCELL_X82_Y6_N39
\modulator|Add3~322\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~322_cout\ = CARRY(( !\modulator|Add3~325_sumout\ $ (!\modulator|Add0~165_sumout\) ) + ( \modulator|Add3~331\ ) + ( \modulator|Add3~330_cout\ ))
-- \modulator|Add3~323\ = SHARE((\modulator|Add3~325_sumout\ & \modulator|Add0~165_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add3~325_sumout\,
	datad => \modulator|ALT_INV_Add0~165_sumout\,
	cin => \modulator|Add3~330_cout\,
	sharein => \modulator|Add3~331\,
	cout => \modulator|Add3~322_cout\,
	shareout => \modulator|Add3~323\);

-- Location: MLABCELL_X82_Y6_N42
\modulator|Add3~314\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~314_cout\ = CARRY(( !\modulator|Add0~161_sumout\ $ (!\modulator|Add3~317_sumout\) ) + ( \modulator|Add3~323\ ) + ( \modulator|Add3~322_cout\ ))
-- \modulator|Add3~315\ = SHARE((\modulator|Add0~161_sumout\ & \modulator|Add3~317_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add0~161_sumout\,
	datad => \modulator|ALT_INV_Add3~317_sumout\,
	cin => \modulator|Add3~322_cout\,
	sharein => \modulator|Add3~323\,
	cout => \modulator|Add3~314_cout\,
	shareout => \modulator|Add3~315\);

-- Location: MLABCELL_X82_Y6_N45
\modulator|Add3~306\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~306_cout\ = CARRY(( !\modulator|Add3~309_sumout\ $ (!\modulator|Add0~157_sumout\) ) + ( \modulator|Add3~315\ ) + ( \modulator|Add3~314_cout\ ))
-- \modulator|Add3~307\ = SHARE((\modulator|Add3~309_sumout\ & \modulator|Add0~157_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add3~309_sumout\,
	datad => \modulator|ALT_INV_Add0~157_sumout\,
	cin => \modulator|Add3~314_cout\,
	sharein => \modulator|Add3~315\,
	cout => \modulator|Add3~306_cout\,
	shareout => \modulator|Add3~307\);

-- Location: MLABCELL_X82_Y6_N48
\modulator|Add3~298\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~298_cout\ = CARRY(( !\modulator|Add3~301_sumout\ $ (!\modulator|Add0~153_sumout\) ) + ( \modulator|Add3~307\ ) + ( \modulator|Add3~306_cout\ ))
-- \modulator|Add3~299\ = SHARE((\modulator|Add3~301_sumout\ & \modulator|Add0~153_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \modulator|ALT_INV_Add3~301_sumout\,
	datac => \modulator|ALT_INV_Add0~153_sumout\,
	cin => \modulator|Add3~306_cout\,
	sharein => \modulator|Add3~307\,
	cout => \modulator|Add3~298_cout\,
	shareout => \modulator|Add3~299\);

-- Location: MLABCELL_X82_Y6_N51
\modulator|Add3~290\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~290_cout\ = CARRY(( !\modulator|Add0~149_sumout\ $ (!\modulator|Add3~293_sumout\) ) + ( \modulator|Add3~299\ ) + ( \modulator|Add3~298_cout\ ))
-- \modulator|Add3~291\ = SHARE((\modulator|Add0~149_sumout\ & \modulator|Add3~293_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add0~149_sumout\,
	datad => \modulator|ALT_INV_Add3~293_sumout\,
	cin => \modulator|Add3~298_cout\,
	sharein => \modulator|Add3~299\,
	cout => \modulator|Add3~290_cout\,
	shareout => \modulator|Add3~291\);

-- Location: MLABCELL_X82_Y6_N54
\modulator|Add3~282\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~282_cout\ = CARRY(( !\modulator|Add3~285_sumout\ $ (!\modulator|Add0~145_sumout\) ) + ( \modulator|Add3~291\ ) + ( \modulator|Add3~290_cout\ ))
-- \modulator|Add3~283\ = SHARE((\modulator|Add3~285_sumout\ & \modulator|Add0~145_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \modulator|ALT_INV_Add3~285_sumout\,
	datad => \modulator|ALT_INV_Add0~145_sumout\,
	cin => \modulator|Add3~290_cout\,
	sharein => \modulator|Add3~291\,
	cout => \modulator|Add3~282_cout\,
	shareout => \modulator|Add3~283\);

-- Location: MLABCELL_X82_Y6_N57
\modulator|Add3~274\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~274_cout\ = CARRY(( !\modulator|Add3~277_sumout\ $ (!\modulator|Add0~141_sumout\) ) + ( \modulator|Add3~283\ ) + ( \modulator|Add3~282_cout\ ))
-- \modulator|Add3~275\ = SHARE((\modulator|Add3~277_sumout\ & \modulator|Add0~141_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \modulator|ALT_INV_Add3~277_sumout\,
	datad => \modulator|ALT_INV_Add0~141_sumout\,
	cin => \modulator|Add3~282_cout\,
	sharein => \modulator|Add3~283\,
	cout => \modulator|Add3~274_cout\,
	shareout => \modulator|Add3~275\);

-- Location: MLABCELL_X82_Y5_N0
\modulator|Add3~266\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~266_cout\ = CARRY(( !\modulator|Add0~137_sumout\ $ (!\modulator|Add3~269_sumout\) ) + ( \modulator|Add3~275\ ) + ( \modulator|Add3~274_cout\ ))
-- \modulator|Add3~267\ = SHARE((\modulator|Add0~137_sumout\ & \modulator|Add3~269_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add0~137_sumout\,
	datad => \modulator|ALT_INV_Add3~269_sumout\,
	cin => \modulator|Add3~274_cout\,
	sharein => \modulator|Add3~275\,
	cout => \modulator|Add3~266_cout\,
	shareout => \modulator|Add3~267\);

-- Location: MLABCELL_X82_Y5_N3
\modulator|Add3~258\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~258_cout\ = CARRY(( !\modulator|Add0~133_sumout\ $ (!\modulator|Add3~261_sumout\) ) + ( \modulator|Add3~267\ ) + ( \modulator|Add3~266_cout\ ))
-- \modulator|Add3~259\ = SHARE((\modulator|Add0~133_sumout\ & \modulator|Add3~261_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add0~133_sumout\,
	datad => \modulator|ALT_INV_Add3~261_sumout\,
	cin => \modulator|Add3~266_cout\,
	sharein => \modulator|Add3~267\,
	cout => \modulator|Add3~258_cout\,
	shareout => \modulator|Add3~259\);

-- Location: MLABCELL_X82_Y5_N6
\modulator|Add3~250\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~250_cout\ = CARRY(( !\modulator|Add3~253_sumout\ $ (!\modulator|Add0~129_sumout\) ) + ( \modulator|Add3~259\ ) + ( \modulator|Add3~258_cout\ ))
-- \modulator|Add3~251\ = SHARE((\modulator|Add3~253_sumout\ & \modulator|Add0~129_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add3~253_sumout\,
	datad => \modulator|ALT_INV_Add0~129_sumout\,
	cin => \modulator|Add3~258_cout\,
	sharein => \modulator|Add3~259\,
	cout => \modulator|Add3~250_cout\,
	shareout => \modulator|Add3~251\);

-- Location: MLABCELL_X82_Y5_N9
\modulator|Add3~242\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~242_cout\ = CARRY(( !\modulator|Add3~245_sumout\ $ (!\modulator|Add0~125_sumout\) ) + ( \modulator|Add3~251\ ) + ( \modulator|Add3~250_cout\ ))
-- \modulator|Add3~243\ = SHARE((\modulator|Add3~245_sumout\ & \modulator|Add0~125_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add3~245_sumout\,
	datad => \modulator|ALT_INV_Add0~125_sumout\,
	cin => \modulator|Add3~250_cout\,
	sharein => \modulator|Add3~251\,
	cout => \modulator|Add3~242_cout\,
	shareout => \modulator|Add3~243\);

-- Location: MLABCELL_X82_Y5_N12
\modulator|Add3~234\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~234_cout\ = CARRY(( !\modulator|Add0~121_sumout\ $ (!\modulator|Add3~237_sumout\) ) + ( \modulator|Add3~243\ ) + ( \modulator|Add3~242_cout\ ))
-- \modulator|Add3~235\ = SHARE((\modulator|Add0~121_sumout\ & \modulator|Add3~237_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add0~121_sumout\,
	datad => \modulator|ALT_INV_Add3~237_sumout\,
	cin => \modulator|Add3~242_cout\,
	sharein => \modulator|Add3~243\,
	cout => \modulator|Add3~234_cout\,
	shareout => \modulator|Add3~235\);

-- Location: MLABCELL_X82_Y5_N15
\modulator|Add3~226\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~226_cout\ = CARRY(( !\modulator|Add0~117_sumout\ $ (!\modulator|Add3~229_sumout\) ) + ( \modulator|Add3~235\ ) + ( \modulator|Add3~234_cout\ ))
-- \modulator|Add3~227\ = SHARE((\modulator|Add0~117_sumout\ & \modulator|Add3~229_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add0~117_sumout\,
	datad => \modulator|ALT_INV_Add3~229_sumout\,
	cin => \modulator|Add3~234_cout\,
	sharein => \modulator|Add3~235\,
	cout => \modulator|Add3~226_cout\,
	shareout => \modulator|Add3~227\);

-- Location: MLABCELL_X82_Y5_N18
\modulator|Add3~218\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~218_cout\ = CARRY(( !\modulator|Add0~113_sumout\ $ (!\modulator|Add3~221_sumout\) ) + ( \modulator|Add3~227\ ) + ( \modulator|Add3~226_cout\ ))
-- \modulator|Add3~219\ = SHARE((\modulator|Add0~113_sumout\ & \modulator|Add3~221_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add0~113_sumout\,
	datad => \modulator|ALT_INV_Add3~221_sumout\,
	cin => \modulator|Add3~226_cout\,
	sharein => \modulator|Add3~227\,
	cout => \modulator|Add3~218_cout\,
	shareout => \modulator|Add3~219\);

-- Location: MLABCELL_X82_Y5_N21
\modulator|Add3~210\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~210_cout\ = CARRY(( !\modulator|Add0~109_sumout\ $ (!\modulator|Add3~213_sumout\) ) + ( \modulator|Add3~219\ ) + ( \modulator|Add3~218_cout\ ))
-- \modulator|Add3~211\ = SHARE((\modulator|Add0~109_sumout\ & \modulator|Add3~213_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add0~109_sumout\,
	datad => \modulator|ALT_INV_Add3~213_sumout\,
	cin => \modulator|Add3~218_cout\,
	sharein => \modulator|Add3~219\,
	cout => \modulator|Add3~210_cout\,
	shareout => \modulator|Add3~211\);

-- Location: MLABCELL_X82_Y5_N24
\modulator|Add3~202\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~202_cout\ = CARRY(( !\modulator|Add3~205_sumout\ $ (!\modulator|Add0~105_sumout\) ) + ( \modulator|Add3~211\ ) + ( \modulator|Add3~210_cout\ ))
-- \modulator|Add3~203\ = SHARE((\modulator|Add3~205_sumout\ & \modulator|Add0~105_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add3~205_sumout\,
	datad => \modulator|ALT_INV_Add0~105_sumout\,
	cin => \modulator|Add3~210_cout\,
	sharein => \modulator|Add3~211\,
	cout => \modulator|Add3~202_cout\,
	shareout => \modulator|Add3~203\);

-- Location: MLABCELL_X82_Y5_N27
\modulator|Add3~194\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~194_cout\ = CARRY(( !\modulator|Add3~197_sumout\ $ (!\modulator|Add0~101_sumout\) ) + ( \modulator|Add3~203\ ) + ( \modulator|Add3~202_cout\ ))
-- \modulator|Add3~195\ = SHARE((\modulator|Add3~197_sumout\ & \modulator|Add0~101_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add3~197_sumout\,
	datad => \modulator|ALT_INV_Add0~101_sumout\,
	cin => \modulator|Add3~202_cout\,
	sharein => \modulator|Add3~203\,
	cout => \modulator|Add3~194_cout\,
	shareout => \modulator|Add3~195\);

-- Location: MLABCELL_X82_Y5_N30
\modulator|Add3~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~186_cout\ = CARRY(( !\modulator|Add3~189_sumout\ $ (!\modulator|Add0~97_sumout\) ) + ( \modulator|Add3~195\ ) + ( \modulator|Add3~194_cout\ ))
-- \modulator|Add3~187\ = SHARE((\modulator|Add3~189_sumout\ & \modulator|Add0~97_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \modulator|ALT_INV_Add3~189_sumout\,
	datac => \modulator|ALT_INV_Add0~97_sumout\,
	cin => \modulator|Add3~194_cout\,
	sharein => \modulator|Add3~195\,
	cout => \modulator|Add3~186_cout\,
	shareout => \modulator|Add3~187\);

-- Location: MLABCELL_X82_Y5_N33
\modulator|Add3~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~178_cout\ = CARRY(( !\modulator|Add3~181_sumout\ $ (!\modulator|Add0~93_sumout\) ) + ( \modulator|Add3~187\ ) + ( \modulator|Add3~186_cout\ ))
-- \modulator|Add3~179\ = SHARE((\modulator|Add3~181_sumout\ & \modulator|Add0~93_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add3~181_sumout\,
	datad => \modulator|ALT_INV_Add0~93_sumout\,
	cin => \modulator|Add3~186_cout\,
	sharein => \modulator|Add3~187\,
	cout => \modulator|Add3~178_cout\,
	shareout => \modulator|Add3~179\);

-- Location: MLABCELL_X82_Y5_N36
\modulator|Add3~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~170_cout\ = CARRY(( !\modulator|Add0~89_sumout\ $ (!\modulator|Add3~173_sumout\) ) + ( \modulator|Add3~179\ ) + ( \modulator|Add3~178_cout\ ))
-- \modulator|Add3~171\ = SHARE((\modulator|Add0~89_sumout\ & \modulator|Add3~173_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add0~89_sumout\,
	datad => \modulator|ALT_INV_Add3~173_sumout\,
	cin => \modulator|Add3~178_cout\,
	sharein => \modulator|Add3~179\,
	cout => \modulator|Add3~170_cout\,
	shareout => \modulator|Add3~171\);

-- Location: MLABCELL_X82_Y5_N39
\modulator|Add3~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~162_cout\ = CARRY(( !\modulator|Add0~85_sumout\ $ (!\modulator|Add3~165_sumout\) ) + ( \modulator|Add3~171\ ) + ( \modulator|Add3~170_cout\ ))
-- \modulator|Add3~163\ = SHARE((\modulator|Add0~85_sumout\ & \modulator|Add3~165_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add0~85_sumout\,
	datad => \modulator|ALT_INV_Add3~165_sumout\,
	cin => \modulator|Add3~170_cout\,
	sharein => \modulator|Add3~171\,
	cout => \modulator|Add3~162_cout\,
	shareout => \modulator|Add3~163\);

-- Location: MLABCELL_X82_Y5_N42
\modulator|Add3~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~154_cout\ = CARRY(( !\modulator|Add0~81_sumout\ $ (!\modulator|Add3~157_sumout\) ) + ( \modulator|Add3~163\ ) + ( \modulator|Add3~162_cout\ ))
-- \modulator|Add3~155\ = SHARE((\modulator|Add0~81_sumout\ & \modulator|Add3~157_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add0~81_sumout\,
	datad => \modulator|ALT_INV_Add3~157_sumout\,
	cin => \modulator|Add3~162_cout\,
	sharein => \modulator|Add3~163\,
	cout => \modulator|Add3~154_cout\,
	shareout => \modulator|Add3~155\);

-- Location: MLABCELL_X82_Y5_N45
\modulator|Add3~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~146_cout\ = CARRY(( !\modulator|Add3~149_sumout\ $ (!\modulator|Add0~77_sumout\) ) + ( \modulator|Add3~155\ ) + ( \modulator|Add3~154_cout\ ))
-- \modulator|Add3~147\ = SHARE((\modulator|Add3~149_sumout\ & \modulator|Add0~77_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add3~149_sumout\,
	datad => \modulator|ALT_INV_Add0~77_sumout\,
	cin => \modulator|Add3~154_cout\,
	sharein => \modulator|Add3~155\,
	cout => \modulator|Add3~146_cout\,
	shareout => \modulator|Add3~147\);

-- Location: MLABCELL_X82_Y5_N48
\modulator|Add3~138\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~138_cout\ = CARRY(( !\modulator|Add3~141_sumout\ $ (!\modulator|Add0~73_sumout\) ) + ( \modulator|Add3~147\ ) + ( \modulator|Add3~146_cout\ ))
-- \modulator|Add3~139\ = SHARE((\modulator|Add3~141_sumout\ & \modulator|Add0~73_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \modulator|ALT_INV_Add3~141_sumout\,
	datac => \modulator|ALT_INV_Add0~73_sumout\,
	cin => \modulator|Add3~146_cout\,
	sharein => \modulator|Add3~147\,
	cout => \modulator|Add3~138_cout\,
	shareout => \modulator|Add3~139\);

-- Location: MLABCELL_X82_Y5_N51
\modulator|Add3~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~130_cout\ = CARRY(( !\modulator|Add3~133_sumout\ $ (!\modulator|Add0~69_sumout\) ) + ( \modulator|Add3~139\ ) + ( \modulator|Add3~138_cout\ ))
-- \modulator|Add3~131\ = SHARE((\modulator|Add3~133_sumout\ & \modulator|Add0~69_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add3~133_sumout\,
	datad => \modulator|ALT_INV_Add0~69_sumout\,
	cin => \modulator|Add3~138_cout\,
	sharein => \modulator|Add3~139\,
	cout => \modulator|Add3~130_cout\,
	shareout => \modulator|Add3~131\);

-- Location: MLABCELL_X82_Y5_N54
\modulator|Add3~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~122_cout\ = CARRY(( !\modulator|Add3~125_sumout\ $ (!\modulator|Add0~65_sumout\) ) + ( \modulator|Add3~131\ ) + ( \modulator|Add3~130_cout\ ))
-- \modulator|Add3~123\ = SHARE((\modulator|Add3~125_sumout\ & \modulator|Add0~65_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \modulator|ALT_INV_Add3~125_sumout\,
	datad => \modulator|ALT_INV_Add0~65_sumout\,
	cin => \modulator|Add3~130_cout\,
	sharein => \modulator|Add3~131\,
	cout => \modulator|Add3~122_cout\,
	shareout => \modulator|Add3~123\);

-- Location: MLABCELL_X82_Y5_N57
\modulator|Add3~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~114_cout\ = CARRY(( !\modulator|Add0~61_sumout\ $ (!\modulator|Add3~117_sumout\) ) + ( \modulator|Add3~123\ ) + ( \modulator|Add3~122_cout\ ))
-- \modulator|Add3~115\ = SHARE((\modulator|Add0~61_sumout\ & \modulator|Add3~117_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add0~61_sumout\,
	datad => \modulator|ALT_INV_Add3~117_sumout\,
	cin => \modulator|Add3~122_cout\,
	sharein => \modulator|Add3~123\,
	cout => \modulator|Add3~114_cout\,
	shareout => \modulator|Add3~115\);

-- Location: MLABCELL_X82_Y4_N0
\modulator|Add3~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~58_cout\ = CARRY(( !\modulator|Add0~53_sumout\ $ (!\modulator|Add3~109_sumout\) ) + ( \modulator|Add3~115\ ) + ( \modulator|Add3~114_cout\ ))
-- \modulator|Add3~59\ = SHARE((\modulator|Add0~53_sumout\ & \modulator|Add3~109_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add0~53_sumout\,
	datad => \modulator|ALT_INV_Add3~109_sumout\,
	cin => \modulator|Add3~114_cout\,
	sharein => \modulator|Add3~115\,
	cout => \modulator|Add3~58_cout\,
	shareout => \modulator|Add3~59\);

-- Location: MLABCELL_X82_Y4_N3
\modulator|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~1_sumout\ = SUM(( !\modulator|Add0~1_sumout\ $ (!\modulator|Add3~53_sumout\) ) + ( \modulator|Add3~59\ ) + ( \modulator|Add3~58_cout\ ))
-- \modulator|Add3~2\ = CARRY(( !\modulator|Add0~1_sumout\ $ (!\modulator|Add3~53_sumout\) ) + ( \modulator|Add3~59\ ) + ( \modulator|Add3~58_cout\ ))
-- \modulator|Add3~3\ = SHARE((\modulator|Add0~1_sumout\ & \modulator|Add3~53_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add0~1_sumout\,
	datad => \modulator|ALT_INV_Add3~53_sumout\,
	cin => \modulator|Add3~58_cout\,
	sharein => \modulator|Add3~59\,
	sumout => \modulator|Add3~1_sumout\,
	cout => \modulator|Add3~2\,
	shareout => \modulator|Add3~3\);

-- Location: MLABCELL_X82_Y4_N6
\modulator|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~5_sumout\ = SUM(( !\modulator|Add0~5_sumout\ $ (!\modulator|Add3~61_sumout\) ) + ( \modulator|Add3~3\ ) + ( \modulator|Add3~2\ ))
-- \modulator|Add3~6\ = CARRY(( !\modulator|Add0~5_sumout\ $ (!\modulator|Add3~61_sumout\) ) + ( \modulator|Add3~3\ ) + ( \modulator|Add3~2\ ))
-- \modulator|Add3~7\ = SHARE((\modulator|Add0~5_sumout\ & \modulator|Add3~61_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add0~5_sumout\,
	datad => \modulator|ALT_INV_Add3~61_sumout\,
	cin => \modulator|Add3~2\,
	sharein => \modulator|Add3~3\,
	sumout => \modulator|Add3~5_sumout\,
	cout => \modulator|Add3~6\,
	shareout => \modulator|Add3~7\);

-- Location: MLABCELL_X82_Y4_N9
\modulator|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~9_sumout\ = SUM(( !\modulator|Add0~9_sumout\ $ (!\modulator|Add3~65_sumout\) ) + ( \modulator|Add3~7\ ) + ( \modulator|Add3~6\ ))
-- \modulator|Add3~10\ = CARRY(( !\modulator|Add0~9_sumout\ $ (!\modulator|Add3~65_sumout\) ) + ( \modulator|Add3~7\ ) + ( \modulator|Add3~6\ ))
-- \modulator|Add3~11\ = SHARE((\modulator|Add0~9_sumout\ & \modulator|Add3~65_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add0~9_sumout\,
	datad => \modulator|ALT_INV_Add3~65_sumout\,
	cin => \modulator|Add3~6\,
	sharein => \modulator|Add3~7\,
	sumout => \modulator|Add3~9_sumout\,
	cout => \modulator|Add3~10\,
	shareout => \modulator|Add3~11\);

-- Location: MLABCELL_X82_Y4_N12
\modulator|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~13_sumout\ = SUM(( !\modulator|Add0~13_sumout\ $ (!\modulator|Add3~69_sumout\) ) + ( \modulator|Add3~11\ ) + ( \modulator|Add3~10\ ))
-- \modulator|Add3~14\ = CARRY(( !\modulator|Add0~13_sumout\ $ (!\modulator|Add3~69_sumout\) ) + ( \modulator|Add3~11\ ) + ( \modulator|Add3~10\ ))
-- \modulator|Add3~15\ = SHARE((\modulator|Add0~13_sumout\ & \modulator|Add3~69_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add0~13_sumout\,
	datad => \modulator|ALT_INV_Add3~69_sumout\,
	cin => \modulator|Add3~10\,
	sharein => \modulator|Add3~11\,
	sumout => \modulator|Add3~13_sumout\,
	cout => \modulator|Add3~14\,
	shareout => \modulator|Add3~15\);

-- Location: MLABCELL_X82_Y4_N15
\modulator|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~17_sumout\ = SUM(( !\modulator|Add0~17_sumout\ $ (!\modulator|Add3~73_sumout\) ) + ( \modulator|Add3~15\ ) + ( \modulator|Add3~14\ ))
-- \modulator|Add3~18\ = CARRY(( !\modulator|Add0~17_sumout\ $ (!\modulator|Add3~73_sumout\) ) + ( \modulator|Add3~15\ ) + ( \modulator|Add3~14\ ))
-- \modulator|Add3~19\ = SHARE((\modulator|Add0~17_sumout\ & \modulator|Add3~73_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add0~17_sumout\,
	datad => \modulator|ALT_INV_Add3~73_sumout\,
	cin => \modulator|Add3~14\,
	sharein => \modulator|Add3~15\,
	sumout => \modulator|Add3~17_sumout\,
	cout => \modulator|Add3~18\,
	shareout => \modulator|Add3~19\);

-- Location: MLABCELL_X82_Y4_N18
\modulator|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~21_sumout\ = SUM(( !\modulator|Add3~77_sumout\ $ (!\modulator|Add0~21_sumout\) ) + ( \modulator|Add3~19\ ) + ( \modulator|Add3~18\ ))
-- \modulator|Add3~22\ = CARRY(( !\modulator|Add3~77_sumout\ $ (!\modulator|Add0~21_sumout\) ) + ( \modulator|Add3~19\ ) + ( \modulator|Add3~18\ ))
-- \modulator|Add3~23\ = SHARE((\modulator|Add3~77_sumout\ & \modulator|Add0~21_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add3~77_sumout\,
	datad => \modulator|ALT_INV_Add0~21_sumout\,
	cin => \modulator|Add3~18\,
	sharein => \modulator|Add3~19\,
	sumout => \modulator|Add3~21_sumout\,
	cout => \modulator|Add3~22\,
	shareout => \modulator|Add3~23\);

-- Location: MLABCELL_X82_Y4_N21
\modulator|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~25_sumout\ = SUM(( !\modulator|Add0~25_sumout\ $ (!\modulator|Add3~81_sumout\) ) + ( \modulator|Add3~23\ ) + ( \modulator|Add3~22\ ))
-- \modulator|Add3~26\ = CARRY(( !\modulator|Add0~25_sumout\ $ (!\modulator|Add3~81_sumout\) ) + ( \modulator|Add3~23\ ) + ( \modulator|Add3~22\ ))
-- \modulator|Add3~27\ = SHARE((\modulator|Add0~25_sumout\ & \modulator|Add3~81_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \modulator|ALT_INV_Add0~25_sumout\,
	datac => \modulator|ALT_INV_Add3~81_sumout\,
	cin => \modulator|Add3~22\,
	sharein => \modulator|Add3~23\,
	sumout => \modulator|Add3~25_sumout\,
	cout => \modulator|Add3~26\,
	shareout => \modulator|Add3~27\);

-- Location: MLABCELL_X82_Y4_N24
\modulator|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~29_sumout\ = SUM(( !\modulator|Add3~85_sumout\ $ (!\modulator|Add0~29_sumout\) ) + ( \modulator|Add3~27\ ) + ( \modulator|Add3~26\ ))
-- \modulator|Add3~30\ = CARRY(( !\modulator|Add3~85_sumout\ $ (!\modulator|Add0~29_sumout\) ) + ( \modulator|Add3~27\ ) + ( \modulator|Add3~26\ ))
-- \modulator|Add3~31\ = SHARE((\modulator|Add3~85_sumout\ & \modulator|Add0~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add3~85_sumout\,
	datad => \modulator|ALT_INV_Add0~29_sumout\,
	cin => \modulator|Add3~26\,
	sharein => \modulator|Add3~27\,
	sumout => \modulator|Add3~29_sumout\,
	cout => \modulator|Add3~30\,
	shareout => \modulator|Add3~31\);

-- Location: MLABCELL_X82_Y4_N27
\modulator|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~33_sumout\ = SUM(( !\modulator|Add0~33_sumout\ $ (!\modulator|Add3~89_sumout\) ) + ( \modulator|Add3~31\ ) + ( \modulator|Add3~30\ ))
-- \modulator|Add3~34\ = CARRY(( !\modulator|Add0~33_sumout\ $ (!\modulator|Add3~89_sumout\) ) + ( \modulator|Add3~31\ ) + ( \modulator|Add3~30\ ))
-- \modulator|Add3~35\ = SHARE((\modulator|Add0~33_sumout\ & \modulator|Add3~89_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \modulator|ALT_INV_Add0~33_sumout\,
	datac => \modulator|ALT_INV_Add3~89_sumout\,
	cin => \modulator|Add3~30\,
	sharein => \modulator|Add3~31\,
	sumout => \modulator|Add3~33_sumout\,
	cout => \modulator|Add3~34\,
	shareout => \modulator|Add3~35\);

-- Location: MLABCELL_X82_Y4_N30
\modulator|Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~37_sumout\ = SUM(( !\modulator|Add3~93_sumout\ $ (!\modulator|Add0~37_sumout\) ) + ( \modulator|Add3~35\ ) + ( \modulator|Add3~34\ ))
-- \modulator|Add3~38\ = CARRY(( !\modulator|Add3~93_sumout\ $ (!\modulator|Add0~37_sumout\) ) + ( \modulator|Add3~35\ ) + ( \modulator|Add3~34\ ))
-- \modulator|Add3~39\ = SHARE((\modulator|Add3~93_sumout\ & \modulator|Add0~37_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \modulator|ALT_INV_Add3~93_sumout\,
	datac => \modulator|ALT_INV_Add0~37_sumout\,
	cin => \modulator|Add3~34\,
	sharein => \modulator|Add3~35\,
	sumout => \modulator|Add3~37_sumout\,
	cout => \modulator|Add3~38\,
	shareout => \modulator|Add3~39\);

-- Location: MLABCELL_X82_Y4_N33
\modulator|Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~41_sumout\ = SUM(( !\modulator|Add3~101_sumout\ $ (!\modulator|Add0~41_sumout\) ) + ( \modulator|Add3~39\ ) + ( \modulator|Add3~38\ ))
-- \modulator|Add3~42\ = CARRY(( !\modulator|Add3~101_sumout\ $ (!\modulator|Add0~41_sumout\) ) + ( \modulator|Add3~39\ ) + ( \modulator|Add3~38\ ))
-- \modulator|Add3~43\ = SHARE((\modulator|Add3~101_sumout\ & \modulator|Add0~41_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add3~101_sumout\,
	datad => \modulator|ALT_INV_Add0~41_sumout\,
	cin => \modulator|Add3~38\,
	sharein => \modulator|Add3~39\,
	sumout => \modulator|Add3~41_sumout\,
	cout => \modulator|Add3~42\,
	shareout => \modulator|Add3~43\);

-- Location: MLABCELL_X82_Y4_N36
\modulator|Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~45_sumout\ = SUM(( !\modulator|Add0~45_sumout\ $ (!\modulator|Add3~105_sumout\) ) + ( \modulator|Add3~43\ ) + ( \modulator|Add3~42\ ))
-- \modulator|Add3~46\ = CARRY(( !\modulator|Add0~45_sumout\ $ (!\modulator|Add3~105_sumout\) ) + ( \modulator|Add3~43\ ) + ( \modulator|Add3~42\ ))
-- \modulator|Add3~47\ = SHARE((\modulator|Add0~45_sumout\ & \modulator|Add3~105_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add0~45_sumout\,
	datad => \modulator|ALT_INV_Add3~105_sumout\,
	cin => \modulator|Add3~42\,
	sharein => \modulator|Add3~43\,
	sumout => \modulator|Add3~45_sumout\,
	cout => \modulator|Add3~46\,
	shareout => \modulator|Add3~47\);

-- Location: MLABCELL_X82_Y4_N39
\modulator|Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~49_sumout\ = SUM(( !\modulator|Add0~49_sumout\ $ (!\modulator|Add3~105_sumout\) ) + ( \modulator|Add3~47\ ) + ( \modulator|Add3~46\ ))
-- \modulator|Add3~50\ = CARRY(( !\modulator|Add0~49_sumout\ $ (!\modulator|Add3~105_sumout\) ) + ( \modulator|Add3~47\ ) + ( \modulator|Add3~46\ ))
-- \modulator|Add3~51\ = SHARE((\modulator|Add0~49_sumout\ & \modulator|Add3~105_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add0~49_sumout\,
	datad => \modulator|ALT_INV_Add3~105_sumout\,
	cin => \modulator|Add3~46\,
	sharein => \modulator|Add3~47\,
	sumout => \modulator|Add3~49_sumout\,
	cout => \modulator|Add3~50\,
	shareout => \modulator|Add3~51\);

-- Location: LABCELL_X83_Y4_N45
\modulator|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add0~57_sumout\ = SUM(( GND ) + ( \modulator|Add0~51\ ) + ( \modulator|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \modulator|Add0~50\,
	sharein => \modulator|Add0~51\,
	sumout => \modulator|Add0~57_sumout\);

-- Location: MLABCELL_X82_Y4_N42
\modulator|Add3~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add3~97_sumout\ = SUM(( !\modulator|Add0~57_sumout\ $ (!\modulator|Add3~105_sumout\) ) + ( \modulator|Add3~51\ ) + ( \modulator|Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add0~57_sumout\,
	datad => \modulator|ALT_INV_Add3~105_sumout\,
	cin => \modulator|Add3~50\,
	sharein => \modulator|Add3~51\,
	sumout => \modulator|Add3~97_sumout\);

-- Location: LABCELL_X81_Y4_N30
\modulator|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add6~1_sumout\ = SUM(( \modulator|Add3~9_sumout\ ) + ( \modulator|Add3~1_sumout\ ) + ( !VCC ))
-- \modulator|Add6~2\ = CARRY(( \modulator|Add3~9_sumout\ ) + ( \modulator|Add3~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add3~1_sumout\,
	datad => \modulator|ALT_INV_Add3~9_sumout\,
	cin => GND,
	sumout => \modulator|Add6~1_sumout\,
	cout => \modulator|Add6~2\);

-- Location: LABCELL_X81_Y4_N33
\modulator|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add6~5_sumout\ = SUM(( \modulator|Add3~5_sumout\ ) + ( \modulator|Add3~13_sumout\ ) + ( \modulator|Add6~2\ ))
-- \modulator|Add6~6\ = CARRY(( \modulator|Add3~5_sumout\ ) + ( \modulator|Add3~13_sumout\ ) + ( \modulator|Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add3~13_sumout\,
	datad => \modulator|ALT_INV_Add3~5_sumout\,
	cin => \modulator|Add6~2\,
	sumout => \modulator|Add6~5_sumout\,
	cout => \modulator|Add6~6\);

-- Location: LABCELL_X81_Y4_N36
\modulator|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add6~9_sumout\ = SUM(( \modulator|Add3~17_sumout\ ) + ( \modulator|Add3~9_sumout\ ) + ( \modulator|Add6~6\ ))
-- \modulator|Add6~10\ = CARRY(( \modulator|Add3~17_sumout\ ) + ( \modulator|Add3~9_sumout\ ) + ( \modulator|Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add3~9_sumout\,
	datad => \modulator|ALT_INV_Add3~17_sumout\,
	cin => \modulator|Add6~6\,
	sumout => \modulator|Add6~9_sumout\,
	cout => \modulator|Add6~10\);

-- Location: LABCELL_X81_Y4_N39
\modulator|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add6~13_sumout\ = SUM(( \modulator|Add3~13_sumout\ ) + ( \modulator|Add3~21_sumout\ ) + ( \modulator|Add6~10\ ))
-- \modulator|Add6~14\ = CARRY(( \modulator|Add3~13_sumout\ ) + ( \modulator|Add3~21_sumout\ ) + ( \modulator|Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \modulator|ALT_INV_Add3~13_sumout\,
	datac => \modulator|ALT_INV_Add3~21_sumout\,
	cin => \modulator|Add6~10\,
	sumout => \modulator|Add6~13_sumout\,
	cout => \modulator|Add6~14\);

-- Location: LABCELL_X81_Y4_N42
\modulator|Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add6~17_sumout\ = SUM(( \modulator|Add3~25_sumout\ ) + ( \modulator|Add3~17_sumout\ ) + ( \modulator|Add6~14\ ))
-- \modulator|Add6~18\ = CARRY(( \modulator|Add3~25_sumout\ ) + ( \modulator|Add3~17_sumout\ ) + ( \modulator|Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add3~17_sumout\,
	datad => \modulator|ALT_INV_Add3~25_sumout\,
	cin => \modulator|Add6~14\,
	sumout => \modulator|Add6~17_sumout\,
	cout => \modulator|Add6~18\);

-- Location: LABCELL_X81_Y4_N45
\modulator|Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add6~21_sumout\ = SUM(( \modulator|Add3~21_sumout\ ) + ( \modulator|Add3~29_sumout\ ) + ( \modulator|Add6~18\ ))
-- \modulator|Add6~22\ = CARRY(( \modulator|Add3~21_sumout\ ) + ( \modulator|Add3~29_sumout\ ) + ( \modulator|Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \modulator|ALT_INV_Add3~29_sumout\,
	datac => \modulator|ALT_INV_Add3~21_sumout\,
	cin => \modulator|Add6~18\,
	sumout => \modulator|Add6~21_sumout\,
	cout => \modulator|Add6~22\);

-- Location: LABCELL_X81_Y4_N48
\modulator|Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add6~25_sumout\ = SUM(( !\modulator|Add3~1_sumout\ $ (!\modulator|Add3~25_sumout\) ) + ( \modulator|Add3~33_sumout\ ) + ( \modulator|Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \modulator|ALT_INV_Add3~1_sumout\,
	datac => \modulator|ALT_INV_Add3~33_sumout\,
	datad => \modulator|ALT_INV_Add3~25_sumout\,
	cin => \modulator|Add6~22\,
	sumout => \modulator|Add6~25_sumout\);

-- Location: LABCELL_X80_Y4_N30
\modulator|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add7~1_sumout\ = SUM(( \modulator|Add3~29_sumout\ ) + ( \modulator|Add3~1_sumout\ ) + ( !VCC ))
-- \modulator|Add7~2\ = CARRY(( \modulator|Add3~29_sumout\ ) + ( \modulator|Add3~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add3~1_sumout\,
	datad => \modulator|ALT_INV_Add3~29_sumout\,
	cin => GND,
	sumout => \modulator|Add7~1_sumout\,
	cout => \modulator|Add7~2\);

-- Location: LABCELL_X80_Y4_N33
\modulator|Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add7~5_sumout\ = SUM(( \modulator|Add3~5_sumout\ ) + ( \modulator|Add3~33_sumout\ ) + ( \modulator|Add7~2\ ))
-- \modulator|Add7~6\ = CARRY(( \modulator|Add3~5_sumout\ ) + ( \modulator|Add3~33_sumout\ ) + ( \modulator|Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add3~33_sumout\,
	datad => \modulator|ALT_INV_Add3~5_sumout\,
	cin => \modulator|Add7~2\,
	sumout => \modulator|Add7~5_sumout\,
	cout => \modulator|Add7~6\);

-- Location: LABCELL_X80_Y4_N36
\modulator|Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add7~9_sumout\ = SUM(( \modulator|Add3~37_sumout\ ) + ( \modulator|Add6~1_sumout\ ) + ( \modulator|Add7~6\ ))
-- \modulator|Add7~10\ = CARRY(( \modulator|Add3~37_sumout\ ) + ( \modulator|Add6~1_sumout\ ) + ( \modulator|Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add6~1_sumout\,
	datad => \modulator|ALT_INV_Add3~37_sumout\,
	cin => \modulator|Add7~6\,
	sumout => \modulator|Add7~9_sumout\,
	cout => \modulator|Add7~10\);

-- Location: LABCELL_X80_Y4_N39
\modulator|Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add7~13_sumout\ = SUM(( \modulator|Add3~41_sumout\ ) + ( \modulator|Add6~5_sumout\ ) + ( \modulator|Add7~10\ ))
-- \modulator|Add7~14\ = CARRY(( \modulator|Add3~41_sumout\ ) + ( \modulator|Add6~5_sumout\ ) + ( \modulator|Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \modulator|ALT_INV_Add6~5_sumout\,
	datad => \modulator|ALT_INV_Add3~41_sumout\,
	cin => \modulator|Add7~10\,
	sumout => \modulator|Add7~13_sumout\,
	cout => \modulator|Add7~14\);

-- Location: LABCELL_X80_Y4_N42
\modulator|Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add7~17_sumout\ = SUM(( \modulator|Add6~9_sumout\ ) + ( \modulator|Add3~45_sumout\ ) + ( \modulator|Add7~14\ ))
-- \modulator|Add7~18\ = CARRY(( \modulator|Add6~9_sumout\ ) + ( \modulator|Add3~45_sumout\ ) + ( \modulator|Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add3~45_sumout\,
	datad => \modulator|ALT_INV_Add6~9_sumout\,
	cin => \modulator|Add7~14\,
	sumout => \modulator|Add7~17_sumout\,
	cout => \modulator|Add7~18\);

-- Location: LABCELL_X80_Y4_N45
\modulator|Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add7~21_sumout\ = SUM(( \modulator|Add6~13_sumout\ ) + ( \modulator|Add3~49_sumout\ ) + ( \modulator|Add7~18\ ))
-- \modulator|Add7~22\ = CARRY(( \modulator|Add6~13_sumout\ ) + ( \modulator|Add3~49_sumout\ ) + ( \modulator|Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \modulator|ALT_INV_Add6~13_sumout\,
	datac => \modulator|ALT_INV_Add3~49_sumout\,
	cin => \modulator|Add7~18\,
	sumout => \modulator|Add7~21_sumout\,
	cout => \modulator|Add7~22\);

-- Location: LABCELL_X80_Y4_N48
\modulator|Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add7~25_sumout\ = SUM(( \modulator|Add6~17_sumout\ ) + ( \modulator|Add3~97_sumout\ ) + ( \modulator|Add7~22\ ))
-- \modulator|Add7~26\ = CARRY(( \modulator|Add6~17_sumout\ ) + ( \modulator|Add3~97_sumout\ ) + ( \modulator|Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add3~97_sumout\,
	datad => \modulator|ALT_INV_Add6~17_sumout\,
	cin => \modulator|Add7~22\,
	sumout => \modulator|Add7~25_sumout\,
	cout => \modulator|Add7~26\);

-- Location: LABCELL_X80_Y4_N51
\modulator|Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add7~29_sumout\ = SUM(( \modulator|Add6~21_sumout\ ) + ( \modulator|Add3~97_sumout\ ) + ( \modulator|Add7~26\ ))
-- \modulator|Add7~30\ = CARRY(( \modulator|Add6~21_sumout\ ) + ( \modulator|Add3~97_sumout\ ) + ( \modulator|Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \modulator|ALT_INV_Add6~21_sumout\,
	dataf => \modulator|ALT_INV_Add3~97_sumout\,
	cin => \modulator|Add7~26\,
	sumout => \modulator|Add7~29_sumout\,
	cout => \modulator|Add7~30\);

-- Location: LABCELL_X80_Y4_N54
\modulator|Add7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add7~33_sumout\ = SUM(( \modulator|Add6~25_sumout\ ) + ( \modulator|Add3~97_sumout\ ) + ( \modulator|Add7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \modulator|ALT_INV_Add3~97_sumout\,
	datad => \modulator|ALT_INV_Add6~25_sumout\,
	cin => \modulator|Add7~30\,
	sumout => \modulator|Add7~33_sumout\);

-- Location: LABCELL_X80_Y5_N30
\modulator|Add9~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add9~66_cout\ = CARRY(( GND ) + ( !VCC ) + ( !VCC ))
-- \modulator|Add9~67\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => GND,
	sharein => GND,
	cout => \modulator|Add9~66_cout\,
	shareout => \modulator|Add9~67\);

-- Location: LABCELL_X80_Y5_N33
\modulator|Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add9~1_sumout\ = SUM(( !A(0) $ (\modulator|Add3~1_sumout\) ) + ( \modulator|Add9~67\ ) + ( \modulator|Add9~66_cout\ ))
-- \modulator|Add9~2\ = CARRY(( !A(0) $ (\modulator|Add3~1_sumout\) ) + ( \modulator|Add9~67\ ) + ( \modulator|Add9~66_cout\ ))
-- \modulator|Add9~3\ = SHARE((A(0) & !\modulator|Add3~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(0),
	datac => \modulator|ALT_INV_Add3~1_sumout\,
	cin => \modulator|Add9~66_cout\,
	sharein => \modulator|Add9~67\,
	sumout => \modulator|Add9~1_sumout\,
	cout => \modulator|Add9~2\,
	shareout => \modulator|Add9~3\);

-- Location: LABCELL_X80_Y5_N36
\modulator|Add9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add9~5_sumout\ = SUM(( !A(1) $ (\modulator|Add3~5_sumout\) ) + ( \modulator|Add9~3\ ) + ( \modulator|Add9~2\ ))
-- \modulator|Add9~6\ = CARRY(( !A(1) $ (\modulator|Add3~5_sumout\) ) + ( \modulator|Add9~3\ ) + ( \modulator|Add9~2\ ))
-- \modulator|Add9~7\ = SHARE((A(1) & !\modulator|Add3~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(1),
	datad => \modulator|ALT_INV_Add3~5_sumout\,
	cin => \modulator|Add9~2\,
	sharein => \modulator|Add9~3\,
	sumout => \modulator|Add9~5_sumout\,
	cout => \modulator|Add9~6\,
	shareout => \modulator|Add9~7\);

-- Location: LABCELL_X80_Y5_N39
\modulator|Add9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add9~9_sumout\ = SUM(( !A(2) $ (\modulator|Add3~9_sumout\) ) + ( \modulator|Add9~7\ ) + ( \modulator|Add9~6\ ))
-- \modulator|Add9~10\ = CARRY(( !A(2) $ (\modulator|Add3~9_sumout\) ) + ( \modulator|Add9~7\ ) + ( \modulator|Add9~6\ ))
-- \modulator|Add9~11\ = SHARE((A(2) & !\modulator|Add3~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(2),
	datac => \modulator|ALT_INV_Add3~9_sumout\,
	cin => \modulator|Add9~6\,
	sharein => \modulator|Add9~7\,
	sumout => \modulator|Add9~9_sumout\,
	cout => \modulator|Add9~10\,
	shareout => \modulator|Add9~11\);

-- Location: LABCELL_X80_Y5_N42
\modulator|Add9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add9~13_sumout\ = SUM(( !\modulator|Add3~13_sumout\ $ (!A(3) $ (!\modulator|Add3~1_sumout\)) ) + ( \modulator|Add9~11\ ) + ( \modulator|Add9~10\ ))
-- \modulator|Add9~14\ = CARRY(( !\modulator|Add3~13_sumout\ $ (!A(3) $ (!\modulator|Add3~1_sumout\)) ) + ( \modulator|Add9~11\ ) + ( \modulator|Add9~10\ ))
-- \modulator|Add9~15\ = SHARE((!\modulator|Add3~13_sumout\ & ((\modulator|Add3~1_sumout\) # (A(3)))) # (\modulator|Add3~13_sumout\ & (A(3) & \modulator|Add3~1_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011001100111100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \modulator|ALT_INV_Add3~13_sumout\,
	datac => ALT_INV_A(3),
	datad => \modulator|ALT_INV_Add3~1_sumout\,
	cin => \modulator|Add9~10\,
	sharein => \modulator|Add9~11\,
	sumout => \modulator|Add9~13_sumout\,
	cout => \modulator|Add9~14\,
	shareout => \modulator|Add9~15\);

-- Location: LABCELL_X80_Y5_N45
\modulator|Add9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add9~17_sumout\ = SUM(( !A(4) $ (!\modulator|Add3~17_sumout\ $ (!\modulator|Add3~5_sumout\)) ) + ( \modulator|Add9~15\ ) + ( \modulator|Add9~14\ ))
-- \modulator|Add9~18\ = CARRY(( !A(4) $ (!\modulator|Add3~17_sumout\ $ (!\modulator|Add3~5_sumout\)) ) + ( \modulator|Add9~15\ ) + ( \modulator|Add9~14\ ))
-- \modulator|Add9~19\ = SHARE((!A(4) & (!\modulator|Add3~17_sumout\ & \modulator|Add3~5_sumout\)) # (A(4) & ((!\modulator|Add3~17_sumout\) # (\modulator|Add3~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001111010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(4),
	datac => \modulator|ALT_INV_Add3~17_sumout\,
	datad => \modulator|ALT_INV_Add3~5_sumout\,
	cin => \modulator|Add9~14\,
	sharein => \modulator|Add9~15\,
	sumout => \modulator|Add9~17_sumout\,
	cout => \modulator|Add9~18\,
	shareout => \modulator|Add9~19\);

-- Location: LABCELL_X80_Y5_N48
\modulator|Add9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add9~21_sumout\ = SUM(( !A(5) $ (!\modulator|Add3~21_sumout\ $ (!\modulator|Add3~9_sumout\)) ) + ( \modulator|Add9~19\ ) + ( \modulator|Add9~18\ ))
-- \modulator|Add9~22\ = CARRY(( !A(5) $ (!\modulator|Add3~21_sumout\ $ (!\modulator|Add3~9_sumout\)) ) + ( \modulator|Add9~19\ ) + ( \modulator|Add9~18\ ))
-- \modulator|Add9~23\ = SHARE((!A(5) & (!\modulator|Add3~21_sumout\ & \modulator|Add3~9_sumout\)) # (A(5) & ((!\modulator|Add3~21_sumout\) # (\modulator|Add3~9_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100001111001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(5),
	datac => \modulator|ALT_INV_Add3~21_sumout\,
	datad => \modulator|ALT_INV_Add3~9_sumout\,
	cin => \modulator|Add9~18\,
	sharein => \modulator|Add9~19\,
	sumout => \modulator|Add9~21_sumout\,
	cout => \modulator|Add9~22\,
	shareout => \modulator|Add9~23\);

-- Location: LABCELL_X80_Y5_N51
\modulator|Add9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add9~25_sumout\ = SUM(( !A(6) $ (!\modulator|Add3~13_sumout\ $ (!\modulator|Add3~25_sumout\)) ) + ( \modulator|Add9~23\ ) + ( \modulator|Add9~22\ ))
-- \modulator|Add9~26\ = CARRY(( !A(6) $ (!\modulator|Add3~13_sumout\ $ (!\modulator|Add3~25_sumout\)) ) + ( \modulator|Add9~23\ ) + ( \modulator|Add9~22\ ))
-- \modulator|Add9~27\ = SHARE((!A(6) & (\modulator|Add3~13_sumout\ & !\modulator|Add3~25_sumout\)) # (A(6) & ((!\modulator|Add3~25_sumout\) # (\modulator|Add3~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110000010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(6),
	datac => \modulator|ALT_INV_Add3~13_sumout\,
	datad => \modulator|ALT_INV_Add3~25_sumout\,
	cin => \modulator|Add9~22\,
	sharein => \modulator|Add9~23\,
	sumout => \modulator|Add9~25_sumout\,
	cout => \modulator|Add9~26\,
	shareout => \modulator|Add9~27\);

-- Location: LABCELL_X80_Y5_N54
\modulator|Add9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add9~29_sumout\ = SUM(( !A(7) $ (!\modulator|Add7~1_sumout\ $ (!\modulator|Add3~17_sumout\)) ) + ( \modulator|Add9~27\ ) + ( \modulator|Add9~26\ ))
-- \modulator|Add9~30\ = CARRY(( !A(7) $ (!\modulator|Add7~1_sumout\ $ (!\modulator|Add3~17_sumout\)) ) + ( \modulator|Add9~27\ ) + ( \modulator|Add9~26\ ))
-- \modulator|Add9~31\ = SHARE((!A(7) & (!\modulator|Add7~1_sumout\ & \modulator|Add3~17_sumout\)) # (A(7) & ((!\modulator|Add7~1_sumout\) # (\modulator|Add3~17_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100001111001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(7),
	datac => \modulator|ALT_INV_Add7~1_sumout\,
	datad => \modulator|ALT_INV_Add3~17_sumout\,
	cin => \modulator|Add9~26\,
	sharein => \modulator|Add9~27\,
	sumout => \modulator|Add9~29_sumout\,
	cout => \modulator|Add9~30\,
	shareout => \modulator|Add9~31\);

-- Location: LABCELL_X80_Y5_N57
\modulator|Add9~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add9~33_sumout\ = SUM(( !\modulator|Add3~21_sumout\ $ (!A(8) $ (!\modulator|Add7~5_sumout\)) ) + ( \modulator|Add9~31\ ) + ( \modulator|Add9~30\ ))
-- \modulator|Add9~34\ = CARRY(( !\modulator|Add3~21_sumout\ $ (!A(8) $ (!\modulator|Add7~5_sumout\)) ) + ( \modulator|Add9~31\ ) + ( \modulator|Add9~30\ ))
-- \modulator|Add9~35\ = SHARE((!\modulator|Add3~21_sumout\ & (A(8) & !\modulator|Add7~5_sumout\)) # (\modulator|Add3~21_sumout\ & ((!\modulator|Add7~5_sumout\) # (A(8)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110000010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \modulator|ALT_INV_Add3~21_sumout\,
	datac => ALT_INV_A(8),
	datad => \modulator|ALT_INV_Add7~5_sumout\,
	cin => \modulator|Add9~30\,
	sharein => \modulator|Add9~31\,
	sumout => \modulator|Add9~33_sumout\,
	cout => \modulator|Add9~34\,
	shareout => \modulator|Add9~35\);

-- Location: LABCELL_X80_Y4_N0
\modulator|Add9~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add9~37_sumout\ = SUM(( !A(9) $ (!\modulator|Add3~25_sumout\ $ (!\modulator|Add7~9_sumout\)) ) + ( \modulator|Add9~35\ ) + ( \modulator|Add9~34\ ))
-- \modulator|Add9~38\ = CARRY(( !A(9) $ (!\modulator|Add3~25_sumout\ $ (!\modulator|Add7~9_sumout\)) ) + ( \modulator|Add9~35\ ) + ( \modulator|Add9~34\ ))
-- \modulator|Add9~39\ = SHARE((!A(9) & (\modulator|Add3~25_sumout\ & !\modulator|Add7~9_sumout\)) # (A(9) & ((!\modulator|Add7~9_sumout\) # (\modulator|Add3~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110000010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(9),
	datac => \modulator|ALT_INV_Add3~25_sumout\,
	datad => \modulator|ALT_INV_Add7~9_sumout\,
	cin => \modulator|Add9~34\,
	sharein => \modulator|Add9~35\,
	sumout => \modulator|Add9~37_sumout\,
	cout => \modulator|Add9~38\,
	shareout => \modulator|Add9~39\);

-- Location: LABCELL_X80_Y4_N3
\modulator|Add9~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add9~41_sumout\ = SUM(( !A(10) $ (!\modulator|Add7~13_sumout\ $ (!\modulator|Add3~29_sumout\)) ) + ( \modulator|Add9~39\ ) + ( \modulator|Add9~38\ ))
-- \modulator|Add9~42\ = CARRY(( !A(10) $ (!\modulator|Add7~13_sumout\ $ (!\modulator|Add3~29_sumout\)) ) + ( \modulator|Add9~39\ ) + ( \modulator|Add9~38\ ))
-- \modulator|Add9~43\ = SHARE((!A(10) & (!\modulator|Add7~13_sumout\ & \modulator|Add3~29_sumout\)) # (A(10) & ((!\modulator|Add7~13_sumout\) # (\modulator|Add3~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100001111001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(10),
	datac => \modulator|ALT_INV_Add7~13_sumout\,
	datad => \modulator|ALT_INV_Add3~29_sumout\,
	cin => \modulator|Add9~38\,
	sharein => \modulator|Add9~39\,
	sumout => \modulator|Add9~41_sumout\,
	cout => \modulator|Add9~42\,
	shareout => \modulator|Add9~43\);

-- Location: LABCELL_X80_Y4_N6
\modulator|Add9~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add9~45_sumout\ = SUM(( !\modulator|Add7~17_sumout\ $ (!A(11) $ (!\modulator|Add3~33_sumout\)) ) + ( \modulator|Add9~43\ ) + ( \modulator|Add9~42\ ))
-- \modulator|Add9~46\ = CARRY(( !\modulator|Add7~17_sumout\ $ (!A(11) $ (!\modulator|Add3~33_sumout\)) ) + ( \modulator|Add9~43\ ) + ( \modulator|Add9~42\ ))
-- \modulator|Add9~47\ = SHARE((!\modulator|Add7~17_sumout\ & ((\modulator|Add3~33_sumout\) # (A(11)))) # (\modulator|Add7~17_sumout\ & (A(11) & \modulator|Add3~33_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011001100111100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \modulator|ALT_INV_Add7~17_sumout\,
	datac => ALT_INV_A(11),
	datad => \modulator|ALT_INV_Add3~33_sumout\,
	cin => \modulator|Add9~42\,
	sharein => \modulator|Add9~43\,
	sumout => \modulator|Add9~45_sumout\,
	cout => \modulator|Add9~46\,
	shareout => \modulator|Add9~47\);

-- Location: LABCELL_X80_Y4_N9
\modulator|Add9~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add9~49_sumout\ = SUM(( !A(12) $ (!\modulator|Add3~37_sumout\ $ (!\modulator|Add7~21_sumout\)) ) + ( \modulator|Add9~47\ ) + ( \modulator|Add9~46\ ))
-- \modulator|Add9~50\ = CARRY(( !A(12) $ (!\modulator|Add3~37_sumout\ $ (!\modulator|Add7~21_sumout\)) ) + ( \modulator|Add9~47\ ) + ( \modulator|Add9~46\ ))
-- \modulator|Add9~51\ = SHARE((!A(12) & (\modulator|Add3~37_sumout\ & !\modulator|Add7~21_sumout\)) # (A(12) & ((!\modulator|Add7~21_sumout\) # (\modulator|Add3~37_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110000010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(12),
	datac => \modulator|ALT_INV_Add3~37_sumout\,
	datad => \modulator|ALT_INV_Add7~21_sumout\,
	cin => \modulator|Add9~46\,
	sharein => \modulator|Add9~47\,
	sumout => \modulator|Add9~49_sumout\,
	cout => \modulator|Add9~50\,
	shareout => \modulator|Add9~51\);

-- Location: LABCELL_X80_Y4_N12
\modulator|Add9~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add9~53_sumout\ = SUM(( !A(13) $ (!\modulator|Add7~25_sumout\ $ (!\modulator|Add3~41_sumout\)) ) + ( \modulator|Add9~51\ ) + ( \modulator|Add9~50\ ))
-- \modulator|Add9~54\ = CARRY(( !A(13) $ (!\modulator|Add7~25_sumout\ $ (!\modulator|Add3~41_sumout\)) ) + ( \modulator|Add9~51\ ) + ( \modulator|Add9~50\ ))
-- \modulator|Add9~55\ = SHARE((!A(13) & (!\modulator|Add7~25_sumout\ & \modulator|Add3~41_sumout\)) # (A(13) & ((!\modulator|Add7~25_sumout\) # (\modulator|Add3~41_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100001111001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(13),
	datac => \modulator|ALT_INV_Add7~25_sumout\,
	datad => \modulator|ALT_INV_Add3~41_sumout\,
	cin => \modulator|Add9~50\,
	sharein => \modulator|Add9~51\,
	sumout => \modulator|Add9~53_sumout\,
	cout => \modulator|Add9~54\,
	shareout => \modulator|Add9~55\);

-- Location: LABCELL_X80_Y4_N15
\modulator|Add9~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add9~57_sumout\ = SUM(( !\modulator|Add3~45_sumout\ $ (!A(14) $ (!\modulator|Add7~29_sumout\)) ) + ( \modulator|Add9~55\ ) + ( \modulator|Add9~54\ ))
-- \modulator|Add9~58\ = CARRY(( !\modulator|Add3~45_sumout\ $ (!A(14) $ (!\modulator|Add7~29_sumout\)) ) + ( \modulator|Add9~55\ ) + ( \modulator|Add9~54\ ))
-- \modulator|Add9~59\ = SHARE((!\modulator|Add3~45_sumout\ & (A(14) & !\modulator|Add7~29_sumout\)) # (\modulator|Add3~45_sumout\ & ((!\modulator|Add7~29_sumout\) # (A(14)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110000010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \modulator|ALT_INV_Add3~45_sumout\,
	datac => ALT_INV_A(14),
	datad => \modulator|ALT_INV_Add7~29_sumout\,
	cin => \modulator|Add9~54\,
	sharein => \modulator|Add9~55\,
	sumout => \modulator|Add9~57_sumout\,
	cout => \modulator|Add9~58\,
	shareout => \modulator|Add9~59\);

-- Location: LABCELL_X80_Y4_N18
\modulator|Add9~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Add9~61_sumout\ = SUM(( !\modulator|Add3~49_sumout\ $ (!A(15) $ (!\modulator|Add7~33_sumout\)) ) + ( \modulator|Add9~59\ ) + ( \modulator|Add9~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \modulator|ALT_INV_Add3~49_sumout\,
	datac => ALT_INV_A(15),
	datad => \modulator|ALT_INV_Add7~33_sumout\,
	cin => \modulator|Add9~58\,
	sharein => \modulator|Add9~59\,
	sumout => \modulator|Add9~61_sumout\);

-- Location: FF_X80_Y4_N20
\s_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \modulator|Add9~61_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(15));

-- Location: FF_X81_Y5_N35
\A[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~22\,
	sload => VCC,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(14));

-- Location: FF_X80_Y4_N17
\s_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \modulator|Add9~57_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(14));

-- Location: FF_X83_Y5_N8
\A[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~21\,
	sload => VCC,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(13));

-- Location: FF_X80_Y4_N14
\s_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \modulator|Add9~53_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(13));

-- Location: FF_X84_Y5_N5
\A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~20\,
	sload => VCC,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(12));

-- Location: FF_X80_Y4_N11
\s_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \modulator|Add9~49_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(12));

-- Location: FF_X83_Y5_N38
\A[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~32\,
	sload => VCC,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(24));

-- Location: FF_X80_Y4_N8
\s_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \modulator|Add9~45_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(11));

-- Location: MLABCELL_X82_Y6_N0
\A[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A[10]~feeder_combout\ = ( \Mult0~18\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~18\,
	combout => \A[10]~feeder_combout\);

-- Location: FF_X82_Y6_N2
\A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A[10]~feeder_combout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(10));

-- Location: FF_X80_Y4_N5
\s_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \modulator|Add9~41_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(10));

-- Location: FF_X82_Y5_N50
\A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~17\,
	sload => VCC,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(9));

-- Location: FF_X80_Y4_N2
\s_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \modulator|Add9~37_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(9));

-- Location: FF_X83_Y5_N29
\A[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~29\,
	sload => VCC,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(21));

-- Location: FF_X80_Y5_N59
\s_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \modulator|Add9~33_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(8));

-- Location: LABCELL_X83_Y6_N6
\A[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A[7]~feeder_combout\ = ( \Mult0~15\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~15\,
	combout => \A[7]~feeder_combout\);

-- Location: FF_X83_Y6_N8
\A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A[7]~feeder_combout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(7));

-- Location: FF_X80_Y5_N56
\s_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \modulator|Add9~29_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(7));

-- Location: LABCELL_X83_Y6_N9
\A[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A[6]~feeder_combout\ = ( \Mult0~14\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~14\,
	combout => \A[6]~feeder_combout\);

-- Location: FF_X83_Y6_N11
\A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A[6]~feeder_combout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(6));

-- Location: FF_X80_Y5_N53
\s_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \modulator|Add9~25_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(6));

-- Location: LABCELL_X83_Y6_N18
\A[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A[5]~feeder_combout\ = ( \Mult0~13\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~13\,
	combout => \A[5]~feeder_combout\);

-- Location: FF_X83_Y6_N20
\A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A[5]~feeder_combout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(5));

-- Location: FF_X80_Y5_N50
\s_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \modulator|Add9~21_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(5));

-- Location: LABCELL_X83_Y6_N15
\A[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A[4]~feeder_combout\ = ( \Mult0~12\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~12\,
	combout => \A[4]~feeder_combout\);

-- Location: FF_X83_Y6_N17
\A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A[4]~feeder_combout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(4));

-- Location: FF_X80_Y5_N47
\s_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \modulator|Add9~17_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(4));

-- Location: FF_X83_Y4_N56
\A[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~33\,
	sload => VCC,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(25));

-- Location: FF_X80_Y5_N44
\s_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \modulator|Add9~13_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(3));

-- Location: FF_X81_Y6_N8
\A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~10\,
	sload => VCC,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(2));

-- Location: FF_X80_Y5_N41
\s_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \modulator|Add9~9_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(2));

-- Location: LABCELL_X83_Y6_N0
\A[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A[1]~feeder_combout\ = ( \Mult0~9\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~9\,
	combout => \A[1]~feeder_combout\);

-- Location: FF_X83_Y6_N2
\A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A[1]~feeder_combout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(1));

-- Location: FF_X80_Y5_N38
\s_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \modulator|Add9~5_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(1));

-- Location: FF_X81_Y6_N5
\A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~8_resulta\,
	sload => VCC,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(0));

-- Location: FF_X80_Y5_N35
\s_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \modulator|Add9~1_sumout\,
	ena => \s_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(0));

-- Location: LABCELL_X79_Y5_N24
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( s_int(0) ) # ( !s_int(0) & ( !\state.finished_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.finished_state~q\,
	dataf => ALT_INV_s_int(0),
	combout => \Selector11~0_combout\);

-- Location: LABCELL_X80_Y5_N9
\s[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[0]$latch~combout\ = ( \state.calculating_state~2_combout\ & ( \s[0]$latch~combout\ ) ) # ( !\state.calculating_state~2_combout\ & ( \s[0]$latch~combout\ & ( \Selector11~0_combout\ ) ) ) # ( !\state.calculating_state~2_combout\ & ( !\s[0]$latch~combout\ 
-- & ( \Selector11~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector11~0_combout\,
	datae => \ALT_INV_state.calculating_state~2_combout\,
	dataf => \ALT_INV_s[0]$latch~combout\,
	combout => \s[0]$latch~combout\);

-- Location: LABCELL_X80_Y5_N27
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( s_int(1) & ( \state.finished_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_state.finished_state~q\,
	dataf => ALT_INV_s_int(1),
	combout => \Selector9~0_combout\);

-- Location: LABCELL_X80_Y5_N24
\s[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[1]$latch~combout\ = ( \s[1]$latch~combout\ & ( (\state.calculating_state~2_combout\) # (\Selector9~0_combout\) ) ) # ( !\s[1]$latch~combout\ & ( (\Selector9~0_combout\ & !\state.calculating_state~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector9~0_combout\,
	datad => \ALT_INV_state.calculating_state~2_combout\,
	dataf => \ALT_INV_s[1]$latch~combout\,
	combout => \s[1]$latch~combout\);

-- Location: LABCELL_X80_Y5_N21
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( s_int(2) & ( \state.finished_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_state.finished_state~q\,
	dataf => ALT_INV_s_int(2),
	combout => \Selector8~0_combout\);

-- Location: LABCELL_X80_Y5_N18
\s[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[2]$latch~combout\ = ( \s[2]$latch~combout\ & ( (\state.calculating_state~2_combout\) # (\Selector8~0_combout\) ) ) # ( !\s[2]$latch~combout\ & ( (\Selector8~0_combout\ & !\state.calculating_state~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector8~0_combout\,
	datad => \ALT_INV_state.calculating_state~2_combout\,
	dataf => \ALT_INV_s[2]$latch~combout\,
	combout => \s[2]$latch~combout\);

-- Location: MLABCELL_X84_Y5_N30
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \state.finished_state~q\ & ( s_int(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_s_int(3),
	dataf => \ALT_INV_state.finished_state~q\,
	combout => \Selector7~0_combout\);

-- Location: MLABCELL_X84_Y5_N48
\s[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[3]$latch~combout\ = ( \s[3]$latch~combout\ & ( (\state.calculating_state~2_combout\) # (\Selector7~0_combout\) ) ) # ( !\s[3]$latch~combout\ & ( (\Selector7~0_combout\ & !\state.calculating_state~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector7~0_combout\,
	datac => \ALT_INV_state.calculating_state~2_combout\,
	dataf => \ALT_INV_s[3]$latch~combout\,
	combout => \s[3]$latch~combout\);

-- Location: MLABCELL_X84_Y5_N39
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \state.finished_state~q\ & ( s_int(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s_int(4),
	dataf => \ALT_INV_state.finished_state~q\,
	combout => \Selector6~0_combout\);

-- Location: MLABCELL_X84_Y5_N12
\s[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[4]$latch~combout\ = ( \s[4]$latch~combout\ & ( (\state.calculating_state~2_combout\) # (\Selector6~0_combout\) ) ) # ( !\s[4]$latch~combout\ & ( (\Selector6~0_combout\ & !\state.calculating_state~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector6~0_combout\,
	datac => \ALT_INV_state.calculating_state~2_combout\,
	dataf => \ALT_INV_s[4]$latch~combout\,
	combout => \s[4]$latch~combout\);

-- Location: MLABCELL_X84_Y5_N15
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \state.finished_state~q\ & ( s_int(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s_int(5),
	dataf => \ALT_INV_state.finished_state~q\,
	combout => \Selector5~0_combout\);

-- Location: MLABCELL_X84_Y5_N0
\s[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[5]$latch~combout\ = ( \s[5]$latch~combout\ & ( \Selector5~0_combout\ ) ) # ( !\s[5]$latch~combout\ & ( \Selector5~0_combout\ & ( !\state.calculating_state~2_combout\ ) ) ) # ( \s[5]$latch~combout\ & ( !\Selector5~0_combout\ & ( 
-- \state.calculating_state~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.calculating_state~2_combout\,
	datae => \ALT_INV_s[5]$latch~combout\,
	dataf => \ALT_INV_Selector5~0_combout\,
	combout => \s[5]$latch~combout\);

-- Location: MLABCELL_X84_Y5_N21
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \state.finished_state~q\ & ( s_int(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_s_int(6),
	dataf => \ALT_INV_state.finished_state~q\,
	combout => \Selector4~0_combout\);

-- Location: MLABCELL_X84_Y5_N36
\s[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[6]$latch~combout\ = ( \state.calculating_state~2_combout\ & ( \s[6]$latch~combout\ ) ) # ( !\state.calculating_state~2_combout\ & ( \Selector4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector4~0_combout\,
	datad => \ALT_INV_s[6]$latch~combout\,
	dataf => \ALT_INV_state.calculating_state~2_combout\,
	combout => \s[6]$latch~combout\);

-- Location: MLABCELL_X84_Y5_N18
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \state.finished_state~q\ & ( s_int(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s_int(7),
	dataf => \ALT_INV_state.finished_state~q\,
	combout => \Selector3~0_combout\);

-- Location: MLABCELL_X84_Y5_N57
\s[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[7]$latch~combout\ = ( \Selector3~0_combout\ & ( (!\state.calculating_state~2_combout\) # (\s[7]$latch~combout\) ) ) # ( !\Selector3~0_combout\ & ( (\state.calculating_state~2_combout\ & \s[7]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.calculating_state~2_combout\,
	datad => \ALT_INV_s[7]$latch~combout\,
	dataf => \ALT_INV_Selector3~0_combout\,
	combout => \s[7]$latch~combout\);

-- Location: LABCELL_X80_Y5_N0
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \state.finished_state~q\ & ( s_int(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state.finished_state~q\,
	dataf => ALT_INV_s_int(8),
	combout => \Selector2~0_combout\);

-- Location: LABCELL_X80_Y5_N15
\s[8]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[8]$latch~combout\ = ( \state.calculating_state~2_combout\ & ( \s[8]$latch~combout\ ) ) # ( !\state.calculating_state~2_combout\ & ( \s[8]$latch~combout\ & ( \Selector2~0_combout\ ) ) ) # ( !\state.calculating_state~2_combout\ & ( !\s[8]$latch~combout\ 
-- & ( \Selector2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector2~0_combout\,
	datae => \ALT_INV_state.calculating_state~2_combout\,
	dataf => \ALT_INV_s[8]$latch~combout\,
	combout => \s[8]$latch~combout\);

-- Location: MLABCELL_X84_Y4_N24
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \state.finished_state~q\ & ( s_int(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state.finished_state~q\,
	dataf => ALT_INV_s_int(9),
	combout => \Selector1~0_combout\);

-- Location: MLABCELL_X84_Y4_N51
\s[9]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[9]$latch~combout\ = ( \state.calculating_state~2_combout\ & ( \s[9]$latch~combout\ ) ) # ( !\state.calculating_state~2_combout\ & ( \s[9]$latch~combout\ & ( \Selector1~0_combout\ ) ) ) # ( !\state.calculating_state~2_combout\ & ( !\s[9]$latch~combout\ 
-- & ( \Selector1~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector1~0_combout\,
	datae => \ALT_INV_state.calculating_state~2_combout\,
	dataf => \ALT_INV_s[9]$latch~combout\,
	combout => \s[9]$latch~combout\);

-- Location: MLABCELL_X84_Y5_N45
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \state.finished_state~q\ & ( s_int(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_s_int(10),
	dataf => \ALT_INV_state.finished_state~q\,
	combout => \Selector0~0_combout\);

-- Location: MLABCELL_X84_Y5_N6
\s[10]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[10]$latch~combout\ = ( \Selector0~0_combout\ & ( (!\state.calculating_state~2_combout\) # (\s[10]$latch~combout\) ) ) # ( !\Selector0~0_combout\ & ( (\state.calculating_state~2_combout\ & \s[10]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.calculating_state~2_combout\,
	datab => \ALT_INV_s[10]$latch~combout\,
	dataf => \ALT_INV_Selector0~0_combout\,
	combout => \s[10]$latch~combout\);

-- Location: MLABCELL_X84_Y4_N30
\Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ( s_int(11) & ( \state.finished_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.finished_state~q\,
	dataf => ALT_INV_s_int(11),
	combout => \Selector13~0_combout\);

-- Location: MLABCELL_X84_Y4_N9
\s[11]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[11]$latch~combout\ = ( \state.calculating_state~2_combout\ & ( \s[11]$latch~combout\ ) ) # ( !\state.calculating_state~2_combout\ & ( \s[11]$latch~combout\ & ( \Selector13~0_combout\ ) ) ) # ( !\state.calculating_state~2_combout\ & ( 
-- !\s[11]$latch~combout\ & ( \Selector13~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector13~0_combout\,
	datae => \ALT_INV_state.calculating_state~2_combout\,
	dataf => \ALT_INV_s[11]$latch~combout\,
	combout => \s[11]$latch~combout\);

-- Location: MLABCELL_X84_Y4_N36
\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = ( \state.finished_state~q\ & ( s_int(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state.finished_state~q\,
	dataf => ALT_INV_s_int(12),
	combout => \Selector14~0_combout\);

-- Location: MLABCELL_X84_Y4_N15
\s[12]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[12]$latch~combout\ = ( \state.calculating_state~2_combout\ & ( \s[12]$latch~combout\ ) ) # ( !\state.calculating_state~2_combout\ & ( \s[12]$latch~combout\ & ( \Selector14~0_combout\ ) ) ) # ( !\state.calculating_state~2_combout\ & ( 
-- !\s[12]$latch~combout\ & ( \Selector14~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector14~0_combout\,
	datae => \ALT_INV_state.calculating_state~2_combout\,
	dataf => \ALT_INV_s[12]$latch~combout\,
	combout => \s[12]$latch~combout\);

-- Location: MLABCELL_X84_Y4_N18
\Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = ( s_int(13) & ( \state.finished_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.finished_state~q\,
	dataf => ALT_INV_s_int(13),
	combout => \Selector15~0_combout\);

-- Location: MLABCELL_X84_Y4_N57
\s[13]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[13]$latch~combout\ = ( \state.calculating_state~2_combout\ & ( \s[13]$latch~combout\ ) ) # ( !\state.calculating_state~2_combout\ & ( \s[13]$latch~combout\ & ( \Selector15~0_combout\ ) ) ) # ( !\state.calculating_state~2_combout\ & ( 
-- !\s[13]$latch~combout\ & ( \Selector15~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector15~0_combout\,
	datae => \ALT_INV_state.calculating_state~2_combout\,
	dataf => \ALT_INV_s[13]$latch~combout\,
	combout => \s[13]$latch~combout\);

-- Location: LABCELL_X83_Y4_N51
\Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ( s_int(14) & ( \state.finished_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.finished_state~q\,
	dataf => ALT_INV_s_int(14),
	combout => \Selector16~0_combout\);

-- Location: LABCELL_X83_Y4_N48
\s[14]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[14]$latch~combout\ = ( \s[14]$latch~combout\ & ( (\state.calculating_state~2_combout\) # (\Selector16~0_combout\) ) ) # ( !\s[14]$latch~combout\ & ( (\Selector16~0_combout\ & !\state.calculating_state~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector16~0_combout\,
	datad => \ALT_INV_state.calculating_state~2_combout\,
	dataf => \ALT_INV_s[14]$latch~combout\,
	combout => \s[14]$latch~combout\);

-- Location: MLABCELL_X84_Y5_N9
\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ( s_int(15) & ( \state.finished_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.finished_state~q\,
	dataf => ALT_INV_s_int(15),
	combout => \Selector17~0_combout\);

-- Location: MLABCELL_X84_Y5_N27
\s[15]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[15]$latch~combout\ = (!\state.calculating_state~2_combout\ & (\Selector17~0_combout\)) # (\state.calculating_state~2_combout\ & ((\s[15]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.calculating_state~2_combout\,
	datab => \ALT_INV_Selector17~0_combout\,
	datad => \ALT_INV_s[15]$latch~combout\,
	combout => \s[15]$latch~combout\);

-- Location: MLABCELL_X84_Y5_N33
\ready$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ready$latch~combout\ = ( \state.calculating_state~2_combout\ & ( \ready$latch~combout\ ) ) # ( !\state.calculating_state~2_combout\ & ( \state.finished_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ready$latch~combout\,
	datac => \ALT_INV_state.finished_state~q\,
	dataf => \ALT_INV_state.calculating_state~2_combout\,
	combout => \ready$latch~combout\);

-- Location: LABCELL_X51_Y36_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


