-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "03/17/2022 15:58:04"

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
	s : BUFFER std_logic_vector(15 DOWNTO 0);
	ready : BUFFER std_logic
	);
END g40_mod_exp;

-- Design Ports Information
-- s[0]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[8]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[9]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[10]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[11]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[12]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[13]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[14]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[15]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ready	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[13]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[12]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[11]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[10]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[9]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[8]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[7]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[5]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[4]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[0]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[0]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[1]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[2]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[3]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[4]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[5]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[6]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[8]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[9]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
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
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \d[13]~input_o\ : std_logic;
SIGNAL \k[0]~1_combout\ : std_logic;
SIGNAL \d[12]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \d[11]~input_o\ : std_logic;
SIGNAL \d[10]~input_o\ : std_logic;
SIGNAL \d[8]~input_o\ : std_logic;
SIGNAL \d[6]~input_o\ : std_logic;
SIGNAL \d[4]~input_o\ : std_logic;
SIGNAL \d[0]~input_o\ : std_logic;
SIGNAL \d[2]~input_o\ : std_logic;
SIGNAL \d[1]~input_o\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \d[3]~input_o\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \d[7]~input_o\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \d[5]~input_o\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \d[9]~input_o\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \started~0_combout\ : std_logic;
SIGNAL \started~combout\ : std_logic;
SIGNAL \k[13]~0_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
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
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \A[0]~0_combout\ : std_logic;
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
SIGNAL \i1|Add0~11\ : std_logic;
SIGNAL \i1|Add0~14\ : std_logic;
SIGNAL \i1|Add0~15\ : std_logic;
SIGNAL \i1|Add0~18\ : std_logic;
SIGNAL \i1|Add0~19\ : std_logic;
SIGNAL \i1|Add0~22\ : std_logic;
SIGNAL \i1|Add0~23\ : std_logic;
SIGNAL \i1|Add0~26\ : std_logic;
SIGNAL \i1|Add0~27\ : std_logic;
SIGNAL \i1|Add0~30\ : std_logic;
SIGNAL \i1|Add0~31\ : std_logic;
SIGNAL \i1|Add0~34\ : std_logic;
SIGNAL \i1|Add0~35\ : std_logic;
SIGNAL \i1|Add0~38\ : std_logic;
SIGNAL \i1|Add0~39\ : std_logic;
SIGNAL \i1|Add0~42\ : std_logic;
SIGNAL \i1|Add0~43\ : std_logic;
SIGNAL \i1|Add0~46\ : std_logic;
SIGNAL \i1|Add0~47\ : std_logic;
SIGNAL \i1|Add0~49_sumout\ : std_logic;
SIGNAL \i1|Add3~91\ : std_logic;
SIGNAL \i1|Add3~94\ : std_logic;
SIGNAL \i1|Add3~95\ : std_logic;
SIGNAL \i1|Add3~102\ : std_logic;
SIGNAL \i1|Add3~103\ : std_logic;
SIGNAL \i1|Add3~105_sumout\ : std_logic;
SIGNAL \i1|Add0~45_sumout\ : std_logic;
SIGNAL \i1|Add3~101_sumout\ : std_logic;
SIGNAL \i1|Add0~41_sumout\ : std_logic;
SIGNAL \i1|Add0~37_sumout\ : std_logic;
SIGNAL \i1|Add0~33_sumout\ : std_logic;
SIGNAL \i1|Add3~350\ : std_logic;
SIGNAL \i1|Add3~351\ : std_logic;
SIGNAL \i1|Add3~342\ : std_logic;
SIGNAL \i1|Add3~343\ : std_logic;
SIGNAL \i1|Add3~334\ : std_logic;
SIGNAL \i1|Add3~335\ : std_logic;
SIGNAL \i1|Add3~326\ : std_logic;
SIGNAL \i1|Add3~327\ : std_logic;
SIGNAL \i1|Add3~318\ : std_logic;
SIGNAL \i1|Add3~319\ : std_logic;
SIGNAL \i1|Add3~310\ : std_logic;
SIGNAL \i1|Add3~311\ : std_logic;
SIGNAL \i1|Add3~302\ : std_logic;
SIGNAL \i1|Add3~303\ : std_logic;
SIGNAL \i1|Add3~294\ : std_logic;
SIGNAL \i1|Add3~295\ : std_logic;
SIGNAL \i1|Add3~286\ : std_logic;
SIGNAL \i1|Add3~287\ : std_logic;
SIGNAL \i1|Add3~278\ : std_logic;
SIGNAL \i1|Add3~279\ : std_logic;
SIGNAL \i1|Add3~270\ : std_logic;
SIGNAL \i1|Add3~271\ : std_logic;
SIGNAL \i1|Add3~262\ : std_logic;
SIGNAL \i1|Add3~263\ : std_logic;
SIGNAL \i1|Add3~254\ : std_logic;
SIGNAL \i1|Add3~255\ : std_logic;
SIGNAL \i1|Add3~246\ : std_logic;
SIGNAL \i1|Add3~247\ : std_logic;
SIGNAL \i1|Add3~238\ : std_logic;
SIGNAL \i1|Add3~239\ : std_logic;
SIGNAL \i1|Add3~230\ : std_logic;
SIGNAL \i1|Add3~231\ : std_logic;
SIGNAL \i1|Add3~222\ : std_logic;
SIGNAL \i1|Add3~223\ : std_logic;
SIGNAL \i1|Add3~214\ : std_logic;
SIGNAL \i1|Add3~215\ : std_logic;
SIGNAL \i1|Add3~206\ : std_logic;
SIGNAL \i1|Add3~207\ : std_logic;
SIGNAL \i1|Add3~198\ : std_logic;
SIGNAL \i1|Add3~199\ : std_logic;
SIGNAL \i1|Add3~190\ : std_logic;
SIGNAL \i1|Add3~191\ : std_logic;
SIGNAL \i1|Add3~182\ : std_logic;
SIGNAL \i1|Add3~183\ : std_logic;
SIGNAL \i1|Add3~174\ : std_logic;
SIGNAL \i1|Add3~175\ : std_logic;
SIGNAL \i1|Add3~166\ : std_logic;
SIGNAL \i1|Add3~167\ : std_logic;
SIGNAL \i1|Add3~158\ : std_logic;
SIGNAL \i1|Add3~159\ : std_logic;
SIGNAL \i1|Add3~150\ : std_logic;
SIGNAL \i1|Add3~151\ : std_logic;
SIGNAL \i1|Add3~142\ : std_logic;
SIGNAL \i1|Add3~143\ : std_logic;
SIGNAL \i1|Add3~134\ : std_logic;
SIGNAL \i1|Add3~135\ : std_logic;
SIGNAL \i1|Add3~126\ : std_logic;
SIGNAL \i1|Add3~127\ : std_logic;
SIGNAL \i1|Add3~118\ : std_logic;
SIGNAL \i1|Add3~119\ : std_logic;
SIGNAL \i1|Add3~110\ : std_logic;
SIGNAL \i1|Add3~111\ : std_logic;
SIGNAL \i1|Add3~54\ : std_logic;
SIGNAL \i1|Add3~55\ : std_logic;
SIGNAL \i1|Add3~62\ : std_logic;
SIGNAL \i1|Add3~63\ : std_logic;
SIGNAL \i1|Add3~66\ : std_logic;
SIGNAL \i1|Add3~67\ : std_logic;
SIGNAL \i1|Add3~70\ : std_logic;
SIGNAL \i1|Add3~71\ : std_logic;
SIGNAL \i1|Add3~74\ : std_logic;
SIGNAL \i1|Add3~75\ : std_logic;
SIGNAL \i1|Add3~78\ : std_logic;
SIGNAL \i1|Add3~79\ : std_logic;
SIGNAL \i1|Add3~83\ : std_logic;
SIGNAL \i1|Add3~85_sumout\ : std_logic;
SIGNAL \i1|Add0~29_sumout\ : std_logic;
SIGNAL \i1|Add3~81_sumout\ : std_logic;
SIGNAL \i1|Add0~25_sumout\ : std_logic;
SIGNAL \i1|Add0~21_sumout\ : std_logic;
SIGNAL \i1|Add3~77_sumout\ : std_logic;
SIGNAL \i1|Add0~17_sumout\ : std_logic;
SIGNAL \i1|Add3~69_sumout\ : std_logic;
SIGNAL \i1|Add3~65_sumout\ : std_logic;
SIGNAL \i1|Add3~61_sumout\ : std_logic;
SIGNAL \i1|Add0~5_sumout\ : std_logic;
SIGNAL \i1|Add0~1_sumout\ : std_logic;
SIGNAL \i1|Add3~53_sumout\ : std_logic;
SIGNAL \i1|Add0~53_sumout\ : std_logic;
SIGNAL \i1|Add3~109_sumout\ : std_logic;
SIGNAL \i1|Add3~117_sumout\ : std_logic;
SIGNAL \i1|Add0~182_cout\ : std_logic;
SIGNAL \i1|Add0~183\ : std_logic;
SIGNAL \i1|Add0~178\ : std_logic;
SIGNAL \i1|Add0~179\ : std_logic;
SIGNAL \i1|Add0~174\ : std_logic;
SIGNAL \i1|Add0~175\ : std_logic;
SIGNAL \i1|Add0~170\ : std_logic;
SIGNAL \i1|Add0~171\ : std_logic;
SIGNAL \i1|Add0~166\ : std_logic;
SIGNAL \i1|Add0~167\ : std_logic;
SIGNAL \i1|Add0~162\ : std_logic;
SIGNAL \i1|Add0~163\ : std_logic;
SIGNAL \i1|Add0~158\ : std_logic;
SIGNAL \i1|Add0~159\ : std_logic;
SIGNAL \i1|Add0~154\ : std_logic;
SIGNAL \i1|Add0~155\ : std_logic;
SIGNAL \i1|Add0~150\ : std_logic;
SIGNAL \i1|Add0~151\ : std_logic;
SIGNAL \i1|Add0~146\ : std_logic;
SIGNAL \i1|Add0~147\ : std_logic;
SIGNAL \i1|Add0~142\ : std_logic;
SIGNAL \i1|Add0~143\ : std_logic;
SIGNAL \i1|Add0~138\ : std_logic;
SIGNAL \i1|Add0~139\ : std_logic;
SIGNAL \i1|Add0~134\ : std_logic;
SIGNAL \i1|Add0~135\ : std_logic;
SIGNAL \i1|Add0~130\ : std_logic;
SIGNAL \i1|Add0~131\ : std_logic;
SIGNAL \i1|Add0~126\ : std_logic;
SIGNAL \i1|Add0~127\ : std_logic;
SIGNAL \i1|Add0~122\ : std_logic;
SIGNAL \i1|Add0~123\ : std_logic;
SIGNAL \i1|Add0~118\ : std_logic;
SIGNAL \i1|Add0~119\ : std_logic;
SIGNAL \i1|Add0~114\ : std_logic;
SIGNAL \i1|Add0~115\ : std_logic;
SIGNAL \i1|Add0~110\ : std_logic;
SIGNAL \i1|Add0~111\ : std_logic;
SIGNAL \i1|Add0~106\ : std_logic;
SIGNAL \i1|Add0~107\ : std_logic;
SIGNAL \i1|Add0~102\ : std_logic;
SIGNAL \i1|Add0~103\ : std_logic;
SIGNAL \i1|Add0~98\ : std_logic;
SIGNAL \i1|Add0~99\ : std_logic;
SIGNAL \i1|Add0~94\ : std_logic;
SIGNAL \i1|Add0~95\ : std_logic;
SIGNAL \i1|Add0~90\ : std_logic;
SIGNAL \i1|Add0~91\ : std_logic;
SIGNAL \i1|Add0~86\ : std_logic;
SIGNAL \i1|Add0~87\ : std_logic;
SIGNAL \i1|Add0~82\ : std_logic;
SIGNAL \i1|Add0~83\ : std_logic;
SIGNAL \i1|Add0~78\ : std_logic;
SIGNAL \i1|Add0~79\ : std_logic;
SIGNAL \i1|Add0~74\ : std_logic;
SIGNAL \i1|Add0~75\ : std_logic;
SIGNAL \i1|Add0~70\ : std_logic;
SIGNAL \i1|Add0~71\ : std_logic;
SIGNAL \i1|Add0~67\ : std_logic;
SIGNAL \i1|Add0~61_sumout\ : std_logic;
SIGNAL \i1|Add0~65_sumout\ : std_logic;
SIGNAL \i1|Add3~125_sumout\ : std_logic;
SIGNAL \i1|Add0~69_sumout\ : std_logic;
SIGNAL \i1|Add3~133_sumout\ : std_logic;
SIGNAL \i1|Add3~141_sumout\ : std_logic;
SIGNAL \i1|Add0~73_sumout\ : std_logic;
SIGNAL \i1|Add0~77_sumout\ : std_logic;
SIGNAL \i1|Add3~149_sumout\ : std_logic;
SIGNAL \i1|Add3~157_sumout\ : std_logic;
SIGNAL \i1|Add0~81_sumout\ : std_logic;
SIGNAL \i1|Add3~165_sumout\ : std_logic;
SIGNAL \i1|Add0~85_sumout\ : std_logic;
SIGNAL \i1|Add0~89_sumout\ : std_logic;
SIGNAL \i1|Add3~173_sumout\ : std_logic;
SIGNAL \i1|Add0~93_sumout\ : std_logic;
SIGNAL \i1|Add3~181_sumout\ : std_logic;
SIGNAL \i1|Add0~97_sumout\ : std_logic;
SIGNAL \i1|Add3~189_sumout\ : std_logic;
SIGNAL \i1|Add3~197_sumout\ : std_logic;
SIGNAL \i1|Add0~101_sumout\ : std_logic;
SIGNAL \i1|Add0~105_sumout\ : std_logic;
SIGNAL \i1|Add3~205_sumout\ : std_logic;
SIGNAL \i1|Add0~109_sumout\ : std_logic;
SIGNAL \i1|Add3~213_sumout\ : std_logic;
SIGNAL \i1|Add3~221_sumout\ : std_logic;
SIGNAL \i1|Add0~113_sumout\ : std_logic;
SIGNAL \i1|Add0~117_sumout\ : std_logic;
SIGNAL \i1|Add3~229_sumout\ : std_logic;
SIGNAL \i1|Add0~121_sumout\ : std_logic;
SIGNAL \i1|Add3~237_sumout\ : std_logic;
SIGNAL \i1|Add0~125_sumout\ : std_logic;
SIGNAL \i1|Add3~245_sumout\ : std_logic;
SIGNAL \i1|Add3~253_sumout\ : std_logic;
SIGNAL \i1|Add0~129_sumout\ : std_logic;
SIGNAL \i1|Add0~133_sumout\ : std_logic;
SIGNAL \i1|Add3~261_sumout\ : std_logic;
SIGNAL \i1|Add0~137_sumout\ : std_logic;
SIGNAL \i1|Add3~269_sumout\ : std_logic;
SIGNAL \i1|Add3~277_sumout\ : std_logic;
SIGNAL \i1|Add0~141_sumout\ : std_logic;
SIGNAL \i1|Add3~285_sumout\ : std_logic;
SIGNAL \i1|Add0~145_sumout\ : std_logic;
SIGNAL \i1|Add0~149_sumout\ : std_logic;
SIGNAL \i1|Add3~293_sumout\ : std_logic;
SIGNAL \i1|Add3~301_sumout\ : std_logic;
SIGNAL \i1|Add0~153_sumout\ : std_logic;
SIGNAL \i1|Add0~157_sumout\ : std_logic;
SIGNAL \i1|Add3~309_sumout\ : std_logic;
SIGNAL \i1|Add3~317_sumout\ : std_logic;
SIGNAL \i1|Add0~161_sumout\ : std_logic;
SIGNAL \i1|Add0~165_sumout\ : std_logic;
SIGNAL \i1|Add3~325_sumout\ : std_logic;
SIGNAL \i1|Add3~333_sumout\ : std_logic;
SIGNAL \i1|Add0~169_sumout\ : std_logic;
SIGNAL \i1|Add3~341_sumout\ : std_logic;
SIGNAL \i1|Add0~173_sumout\ : std_logic;
SIGNAL \i1|Add0~177_sumout\ : std_logic;
SIGNAL \i1|Add3~349_sumout\ : std_logic;
SIGNAL \i1|Add3~346_cout\ : std_logic;
SIGNAL \i1|Add3~347\ : std_logic;
SIGNAL \i1|Add3~338_cout\ : std_logic;
SIGNAL \i1|Add3~339\ : std_logic;
SIGNAL \i1|Add3~330_cout\ : std_logic;
SIGNAL \i1|Add3~331\ : std_logic;
SIGNAL \i1|Add3~322_cout\ : std_logic;
SIGNAL \i1|Add3~323\ : std_logic;
SIGNAL \i1|Add3~314_cout\ : std_logic;
SIGNAL \i1|Add3~315\ : std_logic;
SIGNAL \i1|Add3~306_cout\ : std_logic;
SIGNAL \i1|Add3~307\ : std_logic;
SIGNAL \i1|Add3~298_cout\ : std_logic;
SIGNAL \i1|Add3~299\ : std_logic;
SIGNAL \i1|Add3~290_cout\ : std_logic;
SIGNAL \i1|Add3~291\ : std_logic;
SIGNAL \i1|Add3~282_cout\ : std_logic;
SIGNAL \i1|Add3~283\ : std_logic;
SIGNAL \i1|Add3~274_cout\ : std_logic;
SIGNAL \i1|Add3~275\ : std_logic;
SIGNAL \i1|Add3~266_cout\ : std_logic;
SIGNAL \i1|Add3~267\ : std_logic;
SIGNAL \i1|Add3~258_cout\ : std_logic;
SIGNAL \i1|Add3~259\ : std_logic;
SIGNAL \i1|Add3~250_cout\ : std_logic;
SIGNAL \i1|Add3~251\ : std_logic;
SIGNAL \i1|Add3~242_cout\ : std_logic;
SIGNAL \i1|Add3~243\ : std_logic;
SIGNAL \i1|Add3~234_cout\ : std_logic;
SIGNAL \i1|Add3~235\ : std_logic;
SIGNAL \i1|Add3~226_cout\ : std_logic;
SIGNAL \i1|Add3~227\ : std_logic;
SIGNAL \i1|Add3~218_cout\ : std_logic;
SIGNAL \i1|Add3~219\ : std_logic;
SIGNAL \i1|Add3~210_cout\ : std_logic;
SIGNAL \i1|Add3~211\ : std_logic;
SIGNAL \i1|Add3~202_cout\ : std_logic;
SIGNAL \i1|Add3~203\ : std_logic;
SIGNAL \i1|Add3~194_cout\ : std_logic;
SIGNAL \i1|Add3~195\ : std_logic;
SIGNAL \i1|Add3~186_cout\ : std_logic;
SIGNAL \i1|Add3~187\ : std_logic;
SIGNAL \i1|Add3~178_cout\ : std_logic;
SIGNAL \i1|Add3~179\ : std_logic;
SIGNAL \i1|Add3~170_cout\ : std_logic;
SIGNAL \i1|Add3~171\ : std_logic;
SIGNAL \i1|Add3~162_cout\ : std_logic;
SIGNAL \i1|Add3~163\ : std_logic;
SIGNAL \i1|Add3~154_cout\ : std_logic;
SIGNAL \i1|Add3~155\ : std_logic;
SIGNAL \i1|Add3~146_cout\ : std_logic;
SIGNAL \i1|Add3~147\ : std_logic;
SIGNAL \i1|Add3~138_cout\ : std_logic;
SIGNAL \i1|Add3~139\ : std_logic;
SIGNAL \i1|Add3~130_cout\ : std_logic;
SIGNAL \i1|Add3~131\ : std_logic;
SIGNAL \i1|Add3~122_cout\ : std_logic;
SIGNAL \i1|Add3~123\ : std_logic;
SIGNAL \i1|Add3~114_cout\ : std_logic;
SIGNAL \i1|Add3~115\ : std_logic;
SIGNAL \i1|Add3~58_cout\ : std_logic;
SIGNAL \i1|Add3~59\ : std_logic;
SIGNAL \i1|Add3~2\ : std_logic;
SIGNAL \i1|Add3~3\ : std_logic;
SIGNAL \i1|Add3~6\ : std_logic;
SIGNAL \i1|Add3~7\ : std_logic;
SIGNAL \i1|Add3~10\ : std_logic;
SIGNAL \i1|Add3~11\ : std_logic;
SIGNAL \i1|Add3~14\ : std_logic;
SIGNAL \i1|Add3~15\ : std_logic;
SIGNAL \i1|Add3~18\ : std_logic;
SIGNAL \i1|Add3~19\ : std_logic;
SIGNAL \i1|Add3~22\ : std_logic;
SIGNAL \i1|Add3~23\ : std_logic;
SIGNAL \i1|Add3~26\ : std_logic;
SIGNAL \i1|Add3~27\ : std_logic;
SIGNAL \i1|Add3~30\ : std_logic;
SIGNAL \i1|Add3~31\ : std_logic;
SIGNAL \i1|Add3~34\ : std_logic;
SIGNAL \i1|Add3~35\ : std_logic;
SIGNAL \i1|Add3~38\ : std_logic;
SIGNAL \i1|Add3~39\ : std_logic;
SIGNAL \i1|Add3~42\ : std_logic;
SIGNAL \i1|Add3~43\ : std_logic;
SIGNAL \i1|Add3~46\ : std_logic;
SIGNAL \i1|Add3~47\ : std_logic;
SIGNAL \i1|Add3~49_sumout\ : std_logic;
SIGNAL \i1|Add3~1_sumout\ : std_logic;
SIGNAL \i1|Add3~25_sumout\ : std_logic;
SIGNAL \i1|Add3~21_sumout\ : std_logic;
SIGNAL \i1|Add3~29_sumout\ : std_logic;
SIGNAL \i1|Add3~5_sumout\ : std_logic;
SIGNAL \i1|Add6~2\ : std_logic;
SIGNAL \i1|Add6~6\ : std_logic;
SIGNAL \i1|Add6~10\ : std_logic;
SIGNAL \i1|Add6~14\ : std_logic;
SIGNAL \i1|Add6~18\ : std_logic;
SIGNAL \i1|Add6~22\ : std_logic;
SIGNAL \i1|Add6~25_sumout\ : std_logic;
SIGNAL \i1|Add0~50\ : std_logic;
SIGNAL \i1|Add0~51\ : std_logic;
SIGNAL \i1|Add0~57_sumout\ : std_logic;
SIGNAL \i1|Add3~50\ : std_logic;
SIGNAL \i1|Add3~51\ : std_logic;
SIGNAL \i1|Add3~97_sumout\ : std_logic;
SIGNAL \i1|Add6~21_sumout\ : std_logic;
SIGNAL \i1|Add6~17_sumout\ : std_logic;
SIGNAL \i1|Add6~13_sumout\ : std_logic;
SIGNAL \i1|Add3~45_sumout\ : std_logic;
SIGNAL \i1|Add6~9_sumout\ : std_logic;
SIGNAL \i1|Add3~41_sumout\ : std_logic;
SIGNAL \i1|Add6~5_sumout\ : std_logic;
SIGNAL \i1|Add6~1_sumout\ : std_logic;
SIGNAL \i1|Add7~2\ : std_logic;
SIGNAL \i1|Add7~6\ : std_logic;
SIGNAL \i1|Add7~10\ : std_logic;
SIGNAL \i1|Add7~14\ : std_logic;
SIGNAL \i1|Add7~18\ : std_logic;
SIGNAL \i1|Add7~22\ : std_logic;
SIGNAL \i1|Add7~26\ : std_logic;
SIGNAL \i1|Add7~30\ : std_logic;
SIGNAL \i1|Add7~33_sumout\ : std_logic;
SIGNAL \i1|Add7~29_sumout\ : std_logic;
SIGNAL \i1|Add7~25_sumout\ : std_logic;
SIGNAL \i1|Add7~21_sumout\ : std_logic;
SIGNAL \i1|Add7~17_sumout\ : std_logic;
SIGNAL \i1|Add7~13_sumout\ : std_logic;
SIGNAL \i1|Add7~9_sumout\ : std_logic;
SIGNAL \i1|Add7~5_sumout\ : std_logic;
SIGNAL \i1|Add7~1_sumout\ : std_logic;
SIGNAL \i1|Add9~66_cout\ : std_logic;
SIGNAL \i1|Add9~67\ : std_logic;
SIGNAL \i1|Add9~2\ : std_logic;
SIGNAL \i1|Add9~3\ : std_logic;
SIGNAL \i1|Add9~6\ : std_logic;
SIGNAL \i1|Add9~7\ : std_logic;
SIGNAL \i1|Add9~10\ : std_logic;
SIGNAL \i1|Add9~11\ : std_logic;
SIGNAL \i1|Add9~14\ : std_logic;
SIGNAL \i1|Add9~15\ : std_logic;
SIGNAL \i1|Add9~18\ : std_logic;
SIGNAL \i1|Add9~19\ : std_logic;
SIGNAL \i1|Add9~22\ : std_logic;
SIGNAL \i1|Add9~23\ : std_logic;
SIGNAL \i1|Add9~26\ : std_logic;
SIGNAL \i1|Add9~27\ : std_logic;
SIGNAL \i1|Add9~30\ : std_logic;
SIGNAL \i1|Add9~31\ : std_logic;
SIGNAL \i1|Add9~34\ : std_logic;
SIGNAL \i1|Add9~35\ : std_logic;
SIGNAL \i1|Add9~38\ : std_logic;
SIGNAL \i1|Add9~39\ : std_logic;
SIGNAL \i1|Add9~42\ : std_logic;
SIGNAL \i1|Add9~43\ : std_logic;
SIGNAL \i1|Add9~46\ : std_logic;
SIGNAL \i1|Add9~47\ : std_logic;
SIGNAL \i1|Add9~50\ : std_logic;
SIGNAL \i1|Add9~51\ : std_logic;
SIGNAL \i1|Add9~54\ : std_logic;
SIGNAL \i1|Add9~55\ : std_logic;
SIGNAL \i1|Add9~58\ : std_logic;
SIGNAL \i1|Add9~59\ : std_logic;
SIGNAL \i1|Add9~61_sumout\ : std_logic;
SIGNAL \i1|Add9~57_sumout\ : std_logic;
SIGNAL \i1|Add9~53_sumout\ : std_logic;
SIGNAL \i1|Add3~82\ : std_logic;
SIGNAL \i1|Add3~87\ : std_logic;
SIGNAL \i1|Add3~90\ : std_logic;
SIGNAL \i1|Add3~93_sumout\ : std_logic;
SIGNAL \i1|Add3~37_sumout\ : std_logic;
SIGNAL \i1|Add9~49_sumout\ : std_logic;
SIGNAL \i1|Add3~86\ : std_logic;
SIGNAL \i1|Add3~89_sumout\ : std_logic;
SIGNAL \i1|Add3~33_sumout\ : std_logic;
SIGNAL \i1|Add9~45_sumout\ : std_logic;
SIGNAL \i1|Add9~41_sumout\ : std_logic;
SIGNAL \i1|Add9~37_sumout\ : std_logic;
SIGNAL \i1|Add9~33_sumout\ : std_logic;
SIGNAL \i1|Add9~29_sumout\ : std_logic;
SIGNAL \i1|Add9~25_sumout\ : std_logic;
SIGNAL \i1|Add0~66\ : std_logic;
SIGNAL \i1|Add0~63\ : std_logic;
SIGNAL \i1|Add0~55\ : std_logic;
SIGNAL \i1|Add0~3\ : std_logic;
SIGNAL \i1|Add0~7\ : std_logic;
SIGNAL \i1|Add0~9_sumout\ : std_logic;
SIGNAL \i1|Add3~9_sumout\ : std_logic;
SIGNAL \i1|Add9~21_sumout\ : std_logic;
SIGNAL \i1|Add3~73_sumout\ : std_logic;
SIGNAL \i1|Add3~17_sumout\ : std_logic;
SIGNAL \i1|Add9~17_sumout\ : std_logic;
SIGNAL \A[25]~feeder_combout\ : std_logic;
SIGNAL \i1|Add0~62\ : std_logic;
SIGNAL \i1|Add0~54\ : std_logic;
SIGNAL \i1|Add0~2\ : std_logic;
SIGNAL \i1|Add0~6\ : std_logic;
SIGNAL \i1|Add0~10\ : std_logic;
SIGNAL \i1|Add0~13_sumout\ : std_logic;
SIGNAL \i1|Add3~13_sumout\ : std_logic;
SIGNAL \i1|Add9~13_sumout\ : std_logic;
SIGNAL \i1|Add9~9_sumout\ : std_logic;
SIGNAL \A[1]~feeder_combout\ : std_logic;
SIGNAL \i1|Add9~5_sumout\ : std_logic;
SIGNAL \i1|Add9~1_sumout\ : std_logic;
SIGNAL \s_int[0]~0_combout\ : std_logic;
SIGNAL \s[0]~1_combout\ : std_logic;
SIGNAL \s[0]~3_combout\ : std_logic;
SIGNAL \s[0]~reg0_emulated_q\ : std_logic;
SIGNAL \s[0]~2_combout\ : std_logic;
SIGNAL \s[1]~5_combout\ : std_logic;
SIGNAL \s[1]~7_combout\ : std_logic;
SIGNAL \s[1]~reg0_emulated_q\ : std_logic;
SIGNAL \s[1]~6_combout\ : std_logic;
SIGNAL \s[2]~9_combout\ : std_logic;
SIGNAL \s[2]~11_combout\ : std_logic;
SIGNAL \s[2]~reg0_emulated_q\ : std_logic;
SIGNAL \s[2]~10_combout\ : std_logic;
SIGNAL \s[3]~13_combout\ : std_logic;
SIGNAL \s[3]~15_combout\ : std_logic;
SIGNAL \s[3]~reg0_emulated_q\ : std_logic;
SIGNAL \s[3]~14_combout\ : std_logic;
SIGNAL \s[4]~17_combout\ : std_logic;
SIGNAL \s[4]~19_combout\ : std_logic;
SIGNAL \s[4]~reg0_emulated_q\ : std_logic;
SIGNAL \s[4]~18_combout\ : std_logic;
SIGNAL \s[5]~21_combout\ : std_logic;
SIGNAL \s[5]~23_combout\ : std_logic;
SIGNAL \s[5]~reg0_emulated_q\ : std_logic;
SIGNAL \s[5]~22_combout\ : std_logic;
SIGNAL \s[6]~25_combout\ : std_logic;
SIGNAL \s[6]~27_combout\ : std_logic;
SIGNAL \s[6]~reg0_emulated_q\ : std_logic;
SIGNAL \s[6]~26_combout\ : std_logic;
SIGNAL \s[7]~29_combout\ : std_logic;
SIGNAL \s[7]~31_combout\ : std_logic;
SIGNAL \s[7]~reg0_emulated_q\ : std_logic;
SIGNAL \s[7]~30_combout\ : std_logic;
SIGNAL \s[8]~33_combout\ : std_logic;
SIGNAL \s[8]~35_combout\ : std_logic;
SIGNAL \s[8]~reg0_emulated_q\ : std_logic;
SIGNAL \s[8]~34_combout\ : std_logic;
SIGNAL \s[9]~37_combout\ : std_logic;
SIGNAL \s[9]~39_combout\ : std_logic;
SIGNAL \s[9]~reg0_emulated_q\ : std_logic;
SIGNAL \s[9]~38_combout\ : std_logic;
SIGNAL \s[10]~41_combout\ : std_logic;
SIGNAL \s[10]~43_combout\ : std_logic;
SIGNAL \s[10]~reg0_emulated_q\ : std_logic;
SIGNAL \s[10]~42_combout\ : std_logic;
SIGNAL \s[11]~45_combout\ : std_logic;
SIGNAL \s[11]~47_combout\ : std_logic;
SIGNAL \s[11]~reg0_emulated_q\ : std_logic;
SIGNAL \s[11]~46_combout\ : std_logic;
SIGNAL \s[12]~49_combout\ : std_logic;
SIGNAL \s[12]~51_combout\ : std_logic;
SIGNAL \s[12]~reg0_emulated_q\ : std_logic;
SIGNAL \s[12]~50_combout\ : std_logic;
SIGNAL \s[13]~53_combout\ : std_logic;
SIGNAL \s[13]~55_combout\ : std_logic;
SIGNAL \s[13]~reg0_emulated_q\ : std_logic;
SIGNAL \s[13]~54_combout\ : std_logic;
SIGNAL \s[14]~57_combout\ : std_logic;
SIGNAL \s[14]~59_combout\ : std_logic;
SIGNAL \s[14]~reg0_emulated_q\ : std_logic;
SIGNAL \s[14]~58_combout\ : std_logic;
SIGNAL \s[15]~61_combout\ : std_logic;
SIGNAL \s[15]~63_combout\ : std_logic;
SIGNAL \s[15]~reg0_emulated_q\ : std_logic;
SIGNAL \s[15]~62_combout\ : std_logic;
SIGNAL \ready~0_combout\ : std_logic;
SIGNAL \ready~reg0_q\ : std_logic;
SIGNAL cs : std_logic_vector(25 DOWNTO 0);
SIGNAL s_int : std_logic_vector(15 DOWNTO 0);
SIGNAL k : std_logic_vector(13 DOWNTO 0);
SIGNAL A : std_logic_vector(31 DOWNTO 0);
SIGNAL \i1|ALT_INV_Add3~33_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add7~17_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add7~13_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add7~9_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add7~5_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add7~1_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add9~1_sumout\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
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
SIGNAL \ALT_INV_d[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_started~combout\ : std_logic;
SIGNAL \ALT_INV_s[15]~61_combout\ : std_logic;
SIGNAL \ALT_INV_s[14]~57_combout\ : std_logic;
SIGNAL \ALT_INV_s[13]~53_combout\ : std_logic;
SIGNAL \ALT_INV_s[12]~49_combout\ : std_logic;
SIGNAL \ALT_INV_s[11]~45_combout\ : std_logic;
SIGNAL \ALT_INV_s[10]~41_combout\ : std_logic;
SIGNAL \ALT_INV_s[9]~37_combout\ : std_logic;
SIGNAL \ALT_INV_s[8]~33_combout\ : std_logic;
SIGNAL \ALT_INV_s[7]~29_combout\ : std_logic;
SIGNAL \ALT_INV_s[6]~25_combout\ : std_logic;
SIGNAL \ALT_INV_s[5]~21_combout\ : std_logic;
SIGNAL \ALT_INV_s[4]~17_combout\ : std_logic;
SIGNAL \ALT_INV_s[3]~13_combout\ : std_logic;
SIGNAL \ALT_INV_s[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_s[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_s[0]~1_combout\ : std_logic;
SIGNAL ALT_INV_A : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_started~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL ALT_INV_k : std_logic_vector(13 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_ready~reg0_q\ : std_logic;
SIGNAL ALT_INV_s_int : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_s[15]~reg0_emulated_q\ : std_logic;
SIGNAL \ALT_INV_s[14]~reg0_emulated_q\ : std_logic;
SIGNAL \ALT_INV_s[13]~reg0_emulated_q\ : std_logic;
SIGNAL \ALT_INV_s[12]~reg0_emulated_q\ : std_logic;
SIGNAL \ALT_INV_s[11]~reg0_emulated_q\ : std_logic;
SIGNAL \ALT_INV_s[10]~reg0_emulated_q\ : std_logic;
SIGNAL \ALT_INV_s[9]~reg0_emulated_q\ : std_logic;
SIGNAL \ALT_INV_s[8]~reg0_emulated_q\ : std_logic;
SIGNAL \ALT_INV_s[7]~reg0_emulated_q\ : std_logic;
SIGNAL \ALT_INV_s[6]~reg0_emulated_q\ : std_logic;
SIGNAL \ALT_INV_s[5]~reg0_emulated_q\ : std_logic;
SIGNAL \ALT_INV_s[4]~reg0_emulated_q\ : std_logic;
SIGNAL \ALT_INV_s[3]~reg0_emulated_q\ : std_logic;
SIGNAL \ALT_INV_s[2]~reg0_emulated_q\ : std_logic;
SIGNAL \ALT_INV_s[1]~reg0_emulated_q\ : std_logic;
SIGNAL \ALT_INV_s[0]~reg0_emulated_q\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~349_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~177_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~341_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~173_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~333_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~169_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~325_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~165_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~317_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~161_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~309_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~157_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~301_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~153_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~293_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~149_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~285_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~145_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~277_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~141_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~269_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~137_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~261_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~133_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~253_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~129_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~245_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~237_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~229_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~221_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~213_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~205_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~197_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~189_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~181_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~173_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~165_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~157_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~149_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~141_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~133_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~125_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~117_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL ALT_INV_cs : std_logic_vector(25 DOWNTO 1);
SIGNAL \i1|ALT_INV_Add3~109_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add6~25_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~105_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add6~21_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~101_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~97_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add6~17_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~93_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add6~13_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~89_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~85_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~81_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~77_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~73_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~69_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~65_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~61_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~53_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~49_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add7~33_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~45_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add7~29_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~41_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add7~25_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add3~37_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add7~21_sumout\ : std_logic;

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

\Mult0~8_ACLR_bus\ <= (gnd & gnd);

\Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Mult0~8_ENA_bus\ <= (vcc & vcc & \A[0]~0_combout\);

\Mult0~8_AX_bus\ <= (\c[9]~input_o\ & \c[8]~input_o\ & \c[7]~input_o\ & \c[6]~input_o\ & \c[5]~input_o\ & \c[4]~input_o\ & \c[3]~input_o\ & \c[2]~input_o\ & \c[1]~input_o\ & \c[0]~input_o\);

\Mult0~8_AY_bus\ <= (s_int(15) & s_int(14) & s_int(13) & s_int(12) & s_int(11) & s_int(10) & s_int(9) & s_int(8) & s_int(7) & s_int(6) & s_int(5) & s_int(4) & s_int(3) & s_int(2) & s_int(1) & NOT s_int(0));

cs(0) <= \Mult0~8_RESULTA_bus\(0);
cs(1) <= \Mult0~8_RESULTA_bus\(1);
cs(2) <= \Mult0~8_RESULTA_bus\(2);
cs(3) <= \Mult0~8_RESULTA_bus\(3);
cs(4) <= \Mult0~8_RESULTA_bus\(4);
cs(5) <= \Mult0~8_RESULTA_bus\(5);
cs(6) <= \Mult0~8_RESULTA_bus\(6);
cs(7) <= \Mult0~8_RESULTA_bus\(7);
cs(8) <= \Mult0~8_RESULTA_bus\(8);
cs(9) <= \Mult0~8_RESULTA_bus\(9);
cs(10) <= \Mult0~8_RESULTA_bus\(10);
cs(11) <= \Mult0~8_RESULTA_bus\(11);
cs(12) <= \Mult0~8_RESULTA_bus\(12);
cs(13) <= \Mult0~8_RESULTA_bus\(13);
cs(14) <= \Mult0~8_RESULTA_bus\(14);
cs(15) <= \Mult0~8_RESULTA_bus\(15);
cs(16) <= \Mult0~8_RESULTA_bus\(16);
cs(17) <= \Mult0~8_RESULTA_bus\(17);
cs(18) <= \Mult0~8_RESULTA_bus\(18);
cs(19) <= \Mult0~8_RESULTA_bus\(19);
cs(20) <= \Mult0~8_RESULTA_bus\(20);
cs(21) <= \Mult0~8_RESULTA_bus\(21);
cs(22) <= \Mult0~8_RESULTA_bus\(22);
cs(23) <= \Mult0~8_RESULTA_bus\(23);
cs(24) <= \Mult0~8_RESULTA_bus\(24);
cs(25) <= \Mult0~8_RESULTA_bus\(25);
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
\i1|ALT_INV_Add3~33_sumout\ <= NOT \i1|Add3~33_sumout\;
\i1|ALT_INV_Add7~17_sumout\ <= NOT \i1|Add7~17_sumout\;
\i1|ALT_INV_Add3~29_sumout\ <= NOT \i1|Add3~29_sumout\;
\i1|ALT_INV_Add7~13_sumout\ <= NOT \i1|Add7~13_sumout\;
\i1|ALT_INV_Add7~9_sumout\ <= NOT \i1|Add7~9_sumout\;
\i1|ALT_INV_Add7~5_sumout\ <= NOT \i1|Add7~5_sumout\;
\i1|ALT_INV_Add7~1_sumout\ <= NOT \i1|Add7~1_sumout\;
\i1|ALT_INV_Add3~25_sumout\ <= NOT \i1|Add3~25_sumout\;
\i1|ALT_INV_Add3~21_sumout\ <= NOT \i1|Add3~21_sumout\;
\i1|ALT_INV_Add3~17_sumout\ <= NOT \i1|Add3~17_sumout\;
\i1|ALT_INV_Add3~13_sumout\ <= NOT \i1|Add3~13_sumout\;
\i1|ALT_INV_Add3~9_sumout\ <= NOT \i1|Add3~9_sumout\;
\i1|ALT_INV_Add3~5_sumout\ <= NOT \i1|Add3~5_sumout\;
\i1|ALT_INV_Add3~1_sumout\ <= NOT \i1|Add3~1_sumout\;
\i1|ALT_INV_Add9~1_sumout\ <= NOT \i1|Add9~1_sumout\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
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
\ALT_INV_d[11]~input_o\ <= NOT \d[11]~input_o\;
\ALT_INV_d[12]~input_o\ <= NOT \d[12]~input_o\;
\ALT_INV_d[13]~input_o\ <= NOT \d[13]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_started~combout\ <= NOT \started~combout\;
\ALT_INV_s[15]~61_combout\ <= NOT \s[15]~61_combout\;
\ALT_INV_s[14]~57_combout\ <= NOT \s[14]~57_combout\;
\ALT_INV_s[13]~53_combout\ <= NOT \s[13]~53_combout\;
\ALT_INV_s[12]~49_combout\ <= NOT \s[12]~49_combout\;
\ALT_INV_s[11]~45_combout\ <= NOT \s[11]~45_combout\;
\ALT_INV_s[10]~41_combout\ <= NOT \s[10]~41_combout\;
\ALT_INV_s[9]~37_combout\ <= NOT \s[9]~37_combout\;
\ALT_INV_s[8]~33_combout\ <= NOT \s[8]~33_combout\;
\ALT_INV_s[7]~29_combout\ <= NOT \s[7]~29_combout\;
\ALT_INV_s[6]~25_combout\ <= NOT \s[6]~25_combout\;
\ALT_INV_s[5]~21_combout\ <= NOT \s[5]~21_combout\;
\ALT_INV_s[4]~17_combout\ <= NOT \s[4]~17_combout\;
\ALT_INV_s[3]~13_combout\ <= NOT \s[3]~13_combout\;
\ALT_INV_s[2]~9_combout\ <= NOT \s[2]~9_combout\;
\ALT_INV_s[1]~5_combout\ <= NOT \s[1]~5_combout\;
\ALT_INV_s[0]~1_combout\ <= NOT \s[0]~1_combout\;
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
ALT_INV_A(0) <= NOT A(0);
\ALT_INV_started~0_combout\ <= NOT \started~0_combout\;
\ALT_INV_LessThan0~8_combout\ <= NOT \LessThan0~8_combout\;
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
ALT_INV_k(0) <= NOT k(0);
ALT_INV_k(1) <= NOT k(1);
ALT_INV_k(2) <= NOT k(2);
ALT_INV_k(3) <= NOT k(3);
ALT_INV_k(4) <= NOT k(4);
ALT_INV_k(5) <= NOT k(5);
ALT_INV_k(6) <= NOT k(6);
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
ALT_INV_k(7) <= NOT k(7);
ALT_INV_k(8) <= NOT k(8);
ALT_INV_k(9) <= NOT k(9);
ALT_INV_k(10) <= NOT k(10);
ALT_INV_k(11) <= NOT k(11);
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
ALT_INV_k(12) <= NOT k(12);
ALT_INV_k(13) <= NOT k(13);
\ALT_INV_ready~reg0_q\ <= NOT \ready~reg0_q\;
ALT_INV_s_int(15) <= NOT s_int(15);
\ALT_INV_s[15]~reg0_emulated_q\ <= NOT \s[15]~reg0_emulated_q\;
ALT_INV_s_int(14) <= NOT s_int(14);
\ALT_INV_s[14]~reg0_emulated_q\ <= NOT \s[14]~reg0_emulated_q\;
ALT_INV_s_int(13) <= NOT s_int(13);
\ALT_INV_s[13]~reg0_emulated_q\ <= NOT \s[13]~reg0_emulated_q\;
ALT_INV_s_int(12) <= NOT s_int(12);
\ALT_INV_s[12]~reg0_emulated_q\ <= NOT \s[12]~reg0_emulated_q\;
ALT_INV_s_int(11) <= NOT s_int(11);
\ALT_INV_s[11]~reg0_emulated_q\ <= NOT \s[11]~reg0_emulated_q\;
ALT_INV_s_int(10) <= NOT s_int(10);
\ALT_INV_s[10]~reg0_emulated_q\ <= NOT \s[10]~reg0_emulated_q\;
ALT_INV_s_int(9) <= NOT s_int(9);
\ALT_INV_s[9]~reg0_emulated_q\ <= NOT \s[9]~reg0_emulated_q\;
ALT_INV_s_int(8) <= NOT s_int(8);
\ALT_INV_s[8]~reg0_emulated_q\ <= NOT \s[8]~reg0_emulated_q\;
ALT_INV_s_int(7) <= NOT s_int(7);
\ALT_INV_s[7]~reg0_emulated_q\ <= NOT \s[7]~reg0_emulated_q\;
ALT_INV_s_int(6) <= NOT s_int(6);
\ALT_INV_s[6]~reg0_emulated_q\ <= NOT \s[6]~reg0_emulated_q\;
ALT_INV_s_int(5) <= NOT s_int(5);
\ALT_INV_s[5]~reg0_emulated_q\ <= NOT \s[5]~reg0_emulated_q\;
ALT_INV_s_int(4) <= NOT s_int(4);
\ALT_INV_s[4]~reg0_emulated_q\ <= NOT \s[4]~reg0_emulated_q\;
ALT_INV_s_int(3) <= NOT s_int(3);
\ALT_INV_s[3]~reg0_emulated_q\ <= NOT \s[3]~reg0_emulated_q\;
ALT_INV_s_int(2) <= NOT s_int(2);
\ALT_INV_s[2]~reg0_emulated_q\ <= NOT \s[2]~reg0_emulated_q\;
ALT_INV_s_int(1) <= NOT s_int(1);
\ALT_INV_s[1]~reg0_emulated_q\ <= NOT \s[1]~reg0_emulated_q\;
ALT_INV_s_int(0) <= NOT s_int(0);
\ALT_INV_s[0]~reg0_emulated_q\ <= NOT \s[0]~reg0_emulated_q\;
\i1|ALT_INV_Add3~349_sumout\ <= NOT \i1|Add3~349_sumout\;
\i1|ALT_INV_Add0~177_sumout\ <= NOT \i1|Add0~177_sumout\;
\i1|ALT_INV_Add3~341_sumout\ <= NOT \i1|Add3~341_sumout\;
\i1|ALT_INV_Add0~173_sumout\ <= NOT \i1|Add0~173_sumout\;
\i1|ALT_INV_Add3~333_sumout\ <= NOT \i1|Add3~333_sumout\;
\i1|ALT_INV_Add0~169_sumout\ <= NOT \i1|Add0~169_sumout\;
\i1|ALT_INV_Add3~325_sumout\ <= NOT \i1|Add3~325_sumout\;
\i1|ALT_INV_Add0~165_sumout\ <= NOT \i1|Add0~165_sumout\;
\i1|ALT_INV_Add3~317_sumout\ <= NOT \i1|Add3~317_sumout\;
\i1|ALT_INV_Add0~161_sumout\ <= NOT \i1|Add0~161_sumout\;
\i1|ALT_INV_Add3~309_sumout\ <= NOT \i1|Add3~309_sumout\;
\i1|ALT_INV_Add0~157_sumout\ <= NOT \i1|Add0~157_sumout\;
\i1|ALT_INV_Add3~301_sumout\ <= NOT \i1|Add3~301_sumout\;
\i1|ALT_INV_Add0~153_sumout\ <= NOT \i1|Add0~153_sumout\;
\i1|ALT_INV_Add3~293_sumout\ <= NOT \i1|Add3~293_sumout\;
\i1|ALT_INV_Add0~149_sumout\ <= NOT \i1|Add0~149_sumout\;
\i1|ALT_INV_Add3~285_sumout\ <= NOT \i1|Add3~285_sumout\;
\i1|ALT_INV_Add0~145_sumout\ <= NOT \i1|Add0~145_sumout\;
\i1|ALT_INV_Add3~277_sumout\ <= NOT \i1|Add3~277_sumout\;
\i1|ALT_INV_Add0~141_sumout\ <= NOT \i1|Add0~141_sumout\;
\i1|ALT_INV_Add3~269_sumout\ <= NOT \i1|Add3~269_sumout\;
\i1|ALT_INV_Add0~137_sumout\ <= NOT \i1|Add0~137_sumout\;
\i1|ALT_INV_Add3~261_sumout\ <= NOT \i1|Add3~261_sumout\;
\i1|ALT_INV_Add0~133_sumout\ <= NOT \i1|Add0~133_sumout\;
\i1|ALT_INV_Add3~253_sumout\ <= NOT \i1|Add3~253_sumout\;
\i1|ALT_INV_Add0~129_sumout\ <= NOT \i1|Add0~129_sumout\;
\i1|ALT_INV_Add3~245_sumout\ <= NOT \i1|Add3~245_sumout\;
\i1|ALT_INV_Add0~125_sumout\ <= NOT \i1|Add0~125_sumout\;
\i1|ALT_INV_Add3~237_sumout\ <= NOT \i1|Add3~237_sumout\;
\i1|ALT_INV_Add0~121_sumout\ <= NOT \i1|Add0~121_sumout\;
\i1|ALT_INV_Add3~229_sumout\ <= NOT \i1|Add3~229_sumout\;
\i1|ALT_INV_Add0~117_sumout\ <= NOT \i1|Add0~117_sumout\;
\i1|ALT_INV_Add3~221_sumout\ <= NOT \i1|Add3~221_sumout\;
\i1|ALT_INV_Add0~113_sumout\ <= NOT \i1|Add0~113_sumout\;
\i1|ALT_INV_Add3~213_sumout\ <= NOT \i1|Add3~213_sumout\;
\i1|ALT_INV_Add0~109_sumout\ <= NOT \i1|Add0~109_sumout\;
\i1|ALT_INV_Add3~205_sumout\ <= NOT \i1|Add3~205_sumout\;
\i1|ALT_INV_Add0~105_sumout\ <= NOT \i1|Add0~105_sumout\;
\i1|ALT_INV_Add3~197_sumout\ <= NOT \i1|Add3~197_sumout\;
\i1|ALT_INV_Add0~101_sumout\ <= NOT \i1|Add0~101_sumout\;
\i1|ALT_INV_Add3~189_sumout\ <= NOT \i1|Add3~189_sumout\;
\i1|ALT_INV_Add0~97_sumout\ <= NOT \i1|Add0~97_sumout\;
\i1|ALT_INV_Add3~181_sumout\ <= NOT \i1|Add3~181_sumout\;
\i1|ALT_INV_Add0~93_sumout\ <= NOT \i1|Add0~93_sumout\;
\i1|ALT_INV_Add3~173_sumout\ <= NOT \i1|Add3~173_sumout\;
\i1|ALT_INV_Add0~89_sumout\ <= NOT \i1|Add0~89_sumout\;
\i1|ALT_INV_Add3~165_sumout\ <= NOT \i1|Add3~165_sumout\;
\i1|ALT_INV_Add0~85_sumout\ <= NOT \i1|Add0~85_sumout\;
\i1|ALT_INV_Add3~157_sumout\ <= NOT \i1|Add3~157_sumout\;
\i1|ALT_INV_Add0~81_sumout\ <= NOT \i1|Add0~81_sumout\;
\i1|ALT_INV_Add3~149_sumout\ <= NOT \i1|Add3~149_sumout\;
\i1|ALT_INV_Add0~77_sumout\ <= NOT \i1|Add0~77_sumout\;
\i1|ALT_INV_Add3~141_sumout\ <= NOT \i1|Add3~141_sumout\;
\i1|ALT_INV_Add0~73_sumout\ <= NOT \i1|Add0~73_sumout\;
\i1|ALT_INV_Add3~133_sumout\ <= NOT \i1|Add3~133_sumout\;
\i1|ALT_INV_Add0~69_sumout\ <= NOT \i1|Add0~69_sumout\;
\i1|ALT_INV_Add3~125_sumout\ <= NOT \i1|Add3~125_sumout\;
\i1|ALT_INV_Add0~65_sumout\ <= NOT \i1|Add0~65_sumout\;
\i1|ALT_INV_Add3~117_sumout\ <= NOT \i1|Add3~117_sumout\;
\i1|ALT_INV_Add0~61_sumout\ <= NOT \i1|Add0~61_sumout\;
\i1|ALT_INV_Add0~57_sumout\ <= NOT \i1|Add0~57_sumout\;
ALT_INV_cs(25) <= NOT cs(25);
ALT_INV_cs(1) <= NOT cs(1);
\i1|ALT_INV_Add3~109_sumout\ <= NOT \i1|Add3~109_sumout\;
\i1|ALT_INV_Add0~53_sumout\ <= NOT \i1|Add0~53_sumout\;
\i1|ALT_INV_Add0~49_sumout\ <= NOT \i1|Add0~49_sumout\;
\i1|ALT_INV_Add6~25_sumout\ <= NOT \i1|Add6~25_sumout\;
\i1|ALT_INV_Add3~105_sumout\ <= NOT \i1|Add3~105_sumout\;
\i1|ALT_INV_Add0~45_sumout\ <= NOT \i1|Add0~45_sumout\;
\i1|ALT_INV_Add6~21_sumout\ <= NOT \i1|Add6~21_sumout\;
\i1|ALT_INV_Add3~101_sumout\ <= NOT \i1|Add3~101_sumout\;
\i1|ALT_INV_Add0~41_sumout\ <= NOT \i1|Add0~41_sumout\;
\i1|ALT_INV_Add3~97_sumout\ <= NOT \i1|Add3~97_sumout\;
\i1|ALT_INV_Add6~17_sumout\ <= NOT \i1|Add6~17_sumout\;
\i1|ALT_INV_Add3~93_sumout\ <= NOT \i1|Add3~93_sumout\;
\i1|ALT_INV_Add0~37_sumout\ <= NOT \i1|Add0~37_sumout\;
\i1|ALT_INV_Add6~13_sumout\ <= NOT \i1|Add6~13_sumout\;
\i1|ALT_INV_Add3~89_sumout\ <= NOT \i1|Add3~89_sumout\;
\i1|ALT_INV_Add0~33_sumout\ <= NOT \i1|Add0~33_sumout\;
\i1|ALT_INV_Add6~9_sumout\ <= NOT \i1|Add6~9_sumout\;
\i1|ALT_INV_Add3~85_sumout\ <= NOT \i1|Add3~85_sumout\;
\i1|ALT_INV_Add0~29_sumout\ <= NOT \i1|Add0~29_sumout\;
\i1|ALT_INV_Add6~5_sumout\ <= NOT \i1|Add6~5_sumout\;
\i1|ALT_INV_Add6~1_sumout\ <= NOT \i1|Add6~1_sumout\;
\i1|ALT_INV_Add3~81_sumout\ <= NOT \i1|Add3~81_sumout\;
\i1|ALT_INV_Add0~25_sumout\ <= NOT \i1|Add0~25_sumout\;
\i1|ALT_INV_Add3~77_sumout\ <= NOT \i1|Add3~77_sumout\;
\i1|ALT_INV_Add0~21_sumout\ <= NOT \i1|Add0~21_sumout\;
\i1|ALT_INV_Add3~73_sumout\ <= NOT \i1|Add3~73_sumout\;
\i1|ALT_INV_Add0~17_sumout\ <= NOT \i1|Add0~17_sumout\;
\i1|ALT_INV_Add3~69_sumout\ <= NOT \i1|Add3~69_sumout\;
\i1|ALT_INV_Add0~13_sumout\ <= NOT \i1|Add0~13_sumout\;
\i1|ALT_INV_Add3~65_sumout\ <= NOT \i1|Add3~65_sumout\;
\i1|ALT_INV_Add0~9_sumout\ <= NOT \i1|Add0~9_sumout\;
\i1|ALT_INV_Add3~61_sumout\ <= NOT \i1|Add3~61_sumout\;
\i1|ALT_INV_Add0~5_sumout\ <= NOT \i1|Add0~5_sumout\;
\i1|ALT_INV_Add3~53_sumout\ <= NOT \i1|Add3~53_sumout\;
\i1|ALT_INV_Add0~1_sumout\ <= NOT \i1|Add0~1_sumout\;
\i1|ALT_INV_Add3~49_sumout\ <= NOT \i1|Add3~49_sumout\;
\i1|ALT_INV_Add7~33_sumout\ <= NOT \i1|Add7~33_sumout\;
\i1|ALT_INV_Add3~45_sumout\ <= NOT \i1|Add3~45_sumout\;
\i1|ALT_INV_Add7~29_sumout\ <= NOT \i1|Add7~29_sumout\;
\i1|ALT_INV_Add3~41_sumout\ <= NOT \i1|Add3~41_sumout\;
\i1|ALT_INV_Add7~25_sumout\ <= NOT \i1|Add7~25_sumout\;
\i1|ALT_INV_Add3~37_sumout\ <= NOT \i1|Add3~37_sumout\;
\i1|ALT_INV_Add7~21_sumout\ <= NOT \i1|Add7~21_sumout\;

-- Location: IOOBUF_X89_Y16_N22
\s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_s(0));

-- Location: IOOBUF_X89_Y4_N79
\s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[1]~6_combout\,
	devoe => ww_devoe,
	o => ww_s(1));

-- Location: IOOBUF_X89_Y15_N5
\s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[2]~10_combout\,
	devoe => ww_devoe,
	o => ww_s(2));

-- Location: IOOBUF_X89_Y13_N22
\s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[3]~14_combout\,
	devoe => ww_devoe,
	o => ww_s(3));

-- Location: IOOBUF_X89_Y13_N5
\s[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[4]~18_combout\,
	devoe => ww_devoe,
	o => ww_s(4));

-- Location: IOOBUF_X89_Y15_N39
\s[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[5]~22_combout\,
	devoe => ww_devoe,
	o => ww_s(5));

-- Location: IOOBUF_X89_Y8_N5
\s[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[6]~26_combout\,
	devoe => ww_devoe,
	o => ww_s(6));

-- Location: IOOBUF_X89_Y15_N22
\s[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[7]~30_combout\,
	devoe => ww_devoe,
	o => ww_s(7));

-- Location: IOOBUF_X89_Y16_N56
\s[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[8]~34_combout\,
	devoe => ww_devoe,
	o => ww_s(8));

-- Location: IOOBUF_X89_Y16_N39
\s[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[9]~38_combout\,
	devoe => ww_devoe,
	o => ww_s(9));

-- Location: IOOBUF_X89_Y20_N45
\s[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[10]~42_combout\,
	devoe => ww_devoe,
	o => ww_s(10));

-- Location: IOOBUF_X89_Y13_N56
\s[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[11]~46_combout\,
	devoe => ww_devoe,
	o => ww_s(11));

-- Location: IOOBUF_X89_Y9_N5
\s[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[12]~50_combout\,
	devoe => ww_devoe,
	o => ww_s(12));

-- Location: IOOBUF_X88_Y0_N20
\s[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[13]~54_combout\,
	devoe => ww_devoe,
	o => ww_s(13));

-- Location: IOOBUF_X89_Y16_N5
\s[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[14]~58_combout\,
	devoe => ww_devoe,
	o => ww_s(14));

-- Location: IOOBUF_X89_Y20_N62
\s[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[15]~62_combout\,
	devoe => ww_devoe,
	o => ww_s(15));

-- Location: IOOBUF_X89_Y6_N39
\ready~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ready~reg0_q\,
	devoe => ww_devoe,
	o => ww_ready);

-- Location: IOIBUF_X89_Y11_N95
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

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

-- Location: IOIBUF_X89_Y4_N44
\d[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(13),
	o => \d[13]~input_o\);

-- Location: LABCELL_X88_Y11_N51
\k[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \k[0]~1_combout\ = !k(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_k(0),
	combout => \k[0]~1_combout\);

-- Location: IOIBUF_X89_Y11_N44
\d[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(12),
	o => \d[12]~input_o\);

-- Location: LABCELL_X88_Y10_N9
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \d[12]~input_o\ & ( !k(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k(12),
	datae => \ALT_INV_d[12]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: IOIBUF_X89_Y6_N4
\d[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(11),
	o => \d[11]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\d[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(10),
	o => \d[10]~input_o\);

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

-- Location: IOIBUF_X89_Y4_N95
\d[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(6),
	o => \d[6]~input_o\);

-- Location: IOIBUF_X89_Y11_N78
\d[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(4),
	o => \d[4]~input_o\);

-- Location: IOIBUF_X88_Y0_N36
\d[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(0),
	o => \d[0]~input_o\);

-- Location: IOIBUF_X89_Y15_N55
\d[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(2),
	o => \d[2]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\d[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(1),
	o => \d[1]~input_o\);

-- Location: LABCELL_X88_Y11_N0
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( k(1) ) + ( k(0) ) + ( !VCC ))
-- \Add0~50\ = CARRY(( k(1) ) + ( k(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k(0),
	datad => ALT_INV_k(1),
	cin => GND,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X88_Y11_N2
\k[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => k(1));

-- Location: MLABCELL_X87_Y11_N39
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( k(2) & ( k(0) & ( (\d[2]~input_o\ & (\d[1]~input_o\ & !k(1))) ) ) ) # ( !k(2) & ( k(0) & ( ((\d[1]~input_o\ & !k(1))) # (\d[2]~input_o\) ) ) ) # ( k(2) & ( !k(0) & ( (\d[2]~input_o\ & ((!\d[0]~input_o\ & (\d[1]~input_o\ & !k(1))) 
-- # (\d[0]~input_o\ & ((!k(1)) # (\d[1]~input_o\))))) ) ) ) # ( !k(2) & ( !k(0) & ( ((!\d[0]~input_o\ & (\d[1]~input_o\ & !k(1))) # (\d[0]~input_o\ & ((!k(1)) # (\d[1]~input_o\)))) # (\d[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100110111000100110000000100111111001100110000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d[0]~input_o\,
	datab => \ALT_INV_d[2]~input_o\,
	datac => \ALT_INV_d[1]~input_o\,
	datad => ALT_INV_k(1),
	datae => ALT_INV_k(2),
	dataf => ALT_INV_k(0),
	combout => \LessThan0~4_combout\);

-- Location: IOIBUF_X89_Y13_N38
\d[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(3),
	o => \d[3]~input_o\);

-- Location: LABCELL_X88_Y11_N48
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( k(4) & ( (\d[4]~input_o\ & ((!k(3) & ((\d[3]~input_o\) # (\LessThan0~4_combout\))) # (k(3) & (\LessThan0~4_combout\ & \d[3]~input_o\)))) ) ) # ( !k(4) & ( ((!k(3) & ((\d[3]~input_o\) # (\LessThan0~4_combout\))) # (k(3) & 
-- (\LessThan0~4_combout\ & \d[3]~input_o\))) # (\d[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110111011111010111011101111100000100010001010000010001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d[4]~input_o\,
	datab => ALT_INV_k(3),
	datac => \ALT_INV_LessThan0~4_combout\,
	datad => \ALT_INV_d[3]~input_o\,
	dataf => ALT_INV_k(4),
	combout => \LessThan0~5_combout\);

-- Location: IOIBUF_X89_Y11_N61
\d[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(7),
	o => \d[7]~input_o\);

-- Location: LABCELL_X88_Y11_N57
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = !k(7) $ (!\d[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k(7),
	datab => \ALT_INV_d[7]~input_o\,
	combout => \LessThan0~3_combout\);

-- Location: IOIBUF_X89_Y9_N21
\d[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(5),
	o => \d[5]~input_o\);

-- Location: LABCELL_X88_Y11_N42
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \d[5]~input_o\ & ( k(6) & ( (\d[6]~input_o\ & (!\LessThan0~3_combout\ & ((!k(5)) # (\LessThan0~5_combout\)))) ) ) ) # ( !\d[5]~input_o\ & ( k(6) & ( (\d[6]~input_o\ & (!k(5) & (\LessThan0~5_combout\ & !\LessThan0~3_combout\))) ) 
-- ) ) # ( \d[5]~input_o\ & ( !k(6) & ( (!\LessThan0~3_combout\ & (((!k(5)) # (\LessThan0~5_combout\)) # (\d[6]~input_o\))) ) ) ) # ( !\d[5]~input_o\ & ( !k(6) & ( (!\LessThan0~3_combout\ & (((!k(5) & \LessThan0~5_combout\)) # (\d[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110100000000110111110000000000000100000000000100010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d[6]~input_o\,
	datab => ALT_INV_k(5),
	datac => \ALT_INV_LessThan0~5_combout\,
	datad => \ALT_INV_LessThan0~3_combout\,
	datae => \ALT_INV_d[5]~input_o\,
	dataf => ALT_INV_k(6),
	combout => \LessThan0~6_combout\);

-- Location: LABCELL_X88_Y11_N54
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!k(7) & \d[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k(7),
	datab => \ALT_INV_d[7]~input_o\,
	combout => \LessThan0~2_combout\);

-- Location: IOIBUF_X89_Y9_N38
\d[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(9),
	o => \d[9]~input_o\);

-- Location: MLABCELL_X87_Y11_N18
\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ( \LessThan0~2_combout\ & ( \d[9]~input_o\ & ( (!\d[8]~input_o\ & (k(9) & k(8))) ) ) ) # ( !\LessThan0~2_combout\ & ( \d[9]~input_o\ & ( (k(9) & ((!\d[8]~input_o\ & ((!\LessThan0~6_combout\) # (k(8)))) # (\d[8]~input_o\ & (k(8) & 
-- !\LessThan0~6_combout\)))) ) ) ) # ( \LessThan0~2_combout\ & ( !\d[9]~input_o\ & ( ((!\d[8]~input_o\ & k(8))) # (k(9)) ) ) ) # ( !\LessThan0~2_combout\ & ( !\d[9]~input_o\ & ( ((!\d[8]~input_o\ & ((!\LessThan0~6_combout\) # (k(8)))) # (\d[8]~input_o\ & 
-- (k(8) & !\LessThan0~6_combout\))) # (k(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111100111011001110110011101100100011000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d[8]~input_o\,
	datab => ALT_INV_k(9),
	datac => ALT_INV_k(8),
	datad => \ALT_INV_LessThan0~6_combout\,
	datae => \ALT_INV_LessThan0~2_combout\,
	dataf => \ALT_INV_d[9]~input_o\,
	combout => \LessThan0~7_combout\);

-- Location: LABCELL_X88_Y10_N15
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \d[12]~input_o\ & ( !k(12) ) ) # ( !\d[12]~input_o\ & ( k(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101001010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k(12),
	datae => \ALT_INV_d[12]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X88_Y10_N18
\LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ( k(10) & ( k(11) & ( (\d[11]~input_o\ & (\d[10]~input_o\ & (!\LessThan0~7_combout\ & !\LessThan0~1_combout\))) ) ) ) # ( !k(10) & ( k(11) & ( (\d[11]~input_o\ & (!\LessThan0~1_combout\ & ((!\LessThan0~7_combout\) # 
-- (\d[10]~input_o\)))) ) ) ) # ( k(10) & ( !k(11) & ( (!\LessThan0~1_combout\ & (((\d[10]~input_o\ & !\LessThan0~7_combout\)) # (\d[11]~input_o\))) ) ) ) # ( !k(10) & ( !k(11) & ( (!\LessThan0~1_combout\ & (((!\LessThan0~7_combout\) # (\d[10]~input_o\)) # 
-- (\d[11]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000011101010000000001010001000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d[11]~input_o\,
	datab => \ALT_INV_d[10]~input_o\,
	datac => \ALT_INV_LessThan0~7_combout\,
	datad => \ALT_INV_LessThan0~1_combout\,
	datae => ALT_INV_k(10),
	dataf => ALT_INV_k(11),
	combout => \LessThan0~8_combout\);

-- Location: IOIBUF_X89_Y9_N55
\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LABCELL_X88_Y9_N24
\started~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \started~0_combout\ = ( \start~input_o\ & ( !\started~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_started~combout\,
	datae => \ALT_INV_start~input_o\,
	combout => \started~0_combout\);

-- Location: LABCELL_X88_Y9_N9
started : cyclonev_lcell_comb
-- Equation(s):
-- \started~combout\ = ( !\reset~input_o\ & ( \started~combout\ ) ) # ( !\reset~input_o\ & ( !\started~combout\ & ( \started~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_started~0_combout\,
	datae => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_started~combout\,
	combout => \started~combout\);

-- Location: LABCELL_X88_Y10_N0
\k[13]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \k[13]~0_combout\ = ( k(13) & ( \started~combout\ & ( (\d[13]~input_o\ & ((\LessThan0~8_combout\) # (\LessThan0~0_combout\))) ) ) ) # ( !k(13) & ( \started~combout\ & ( ((\LessThan0~8_combout\) # (\LessThan0~0_combout\)) # (\d[13]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111011111110001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d[13]~input_o\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_LessThan0~8_combout\,
	datae => ALT_INV_k(13),
	dataf => \ALT_INV_started~combout\,
	combout => \k[13]~0_combout\);

-- Location: FF_X88_Y11_N53
\k[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \k[0]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => k(0));

-- Location: LABCELL_X88_Y11_N3
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( k(2) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~46\ = CARRY(( k(2) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k(2),
	cin => \Add0~50\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X88_Y11_N5
\k[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => k(2));

-- Location: LABCELL_X88_Y11_N6
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( k(3) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( k(3) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_k(3),
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X88_Y11_N8
\k[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => k(3));

-- Location: LABCELL_X88_Y11_N9
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( k(4) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~38\ = CARRY(( k(4) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k(4),
	cin => \Add0~42\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X88_Y11_N11
\k[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => k(4));

-- Location: LABCELL_X88_Y11_N12
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( k(5) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( k(5) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_k(5),
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X88_Y11_N14
\k[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => k(5));

-- Location: LABCELL_X88_Y11_N15
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( k(6) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( k(6) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k(6),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X88_Y11_N17
\k[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => k(6));

-- Location: LABCELL_X88_Y11_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( k(7) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( k(7) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k(7),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X88_Y11_N20
\k[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => k(7));

-- Location: LABCELL_X88_Y11_N21
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( k(8) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( k(8) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k(8),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X88_Y11_N23
\k[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => k(8));

-- Location: LABCELL_X88_Y11_N24
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( k(9) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( k(9) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k(9),
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X88_Y11_N26
\k[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => k(9));

-- Location: LABCELL_X88_Y11_N27
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( k(10) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( k(10) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k(10),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X88_Y11_N29
\k[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => k(10));

-- Location: LABCELL_X88_Y11_N30
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( k(11) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( k(11) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_k(11),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X88_Y11_N32
\k[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => k(11));

-- Location: LABCELL_X88_Y11_N33
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( k(12) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( k(12) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k(12),
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X88_Y11_N35
\k[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => k(12));

-- Location: LABCELL_X88_Y11_N36
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( k(13) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k(13),
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\);

-- Location: FF_X88_Y11_N38
\k[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => k(13));

-- Location: LABCELL_X85_Y11_N15
\A[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A[0]~0_combout\ = ( \LessThan0~0_combout\ & ( !\reset~input_o\ & ( (\started~combout\ & ((!k(13)) # (\d[13]~input_o\))) ) ) ) # ( !\LessThan0~0_combout\ & ( !\reset~input_o\ & ( (\started~combout\ & ((!\d[13]~input_o\ & (!k(13) & \LessThan0~8_combout\)) 
-- # (\d[13]~input_o\ & ((!k(13)) # (\LessThan0~8_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001101000000001101110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d[13]~input_o\,
	datab => ALT_INV_k(13),
	datac => \ALT_INV_LessThan0~8_combout\,
	datad => \ALT_INV_started~combout\,
	datae => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \A[0]~0_combout\);

-- Location: IOIBUF_X86_Y0_N35
\c[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(0),
	o => \c[0]~input_o\);

-- Location: IOIBUF_X88_Y0_N2
\c[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(1),
	o => \c[1]~input_o\);

-- Location: IOIBUF_X89_Y6_N21
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

-- Location: IOIBUF_X86_Y0_N18
\c[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(4),
	o => \c[4]~input_o\);

-- Location: IOIBUF_X40_Y81_N1
\c[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(5),
	o => \c[5]~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\c[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(6),
	o => \c[6]~input_o\);

-- Location: IOIBUF_X40_Y81_N52
\c[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(7),
	o => \c[7]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\c[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(8),
	o => \c[8]~input_o\);

-- Location: IOIBUF_X86_Y0_N52
\c[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(9),
	o => \c[9]~input_o\);

-- Location: DSP_X86_Y10_N0
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
	output_clock => "0",
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
	aclr => \Mult0~8_ACLR_bus\,
	clk => \Mult0~8_CLK_bus\,
	ena => \Mult0~8_ENA_bus\,
	ax => \Mult0~8_AX_bus\,
	ay => \Mult0~8_AY_bus\,
	resulta => \Mult0~8_RESULTA_bus\);

-- Location: FF_X85_Y10_N38
\A[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(15),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(15));

-- Location: LABCELL_X85_Y9_N12
\i1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~9_sumout\ = SUM(( GND ) + ( \i1|Add0~7\ ) + ( \i1|Add0~6\ ))
-- \i1|Add0~10\ = CARRY(( GND ) + ( \i1|Add0~7\ ) + ( \i1|Add0~6\ ))
-- \i1|Add0~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \i1|Add0~6\,
	sharein => \i1|Add0~7\,
	sumout => \i1|Add0~9_sumout\,
	cout => \i1|Add0~10\,
	shareout => \i1|Add0~11\);

-- Location: LABCELL_X85_Y9_N15
\i1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~13_sumout\ = SUM(( GND ) + ( \i1|Add0~11\ ) + ( \i1|Add0~10\ ))
-- \i1|Add0~14\ = CARRY(( GND ) + ( \i1|Add0~11\ ) + ( \i1|Add0~10\ ))
-- \i1|Add0~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \i1|Add0~10\,
	sharein => \i1|Add0~11\,
	sumout => \i1|Add0~13_sumout\,
	cout => \i1|Add0~14\,
	shareout => \i1|Add0~15\);

-- Location: LABCELL_X85_Y9_N18
\i1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~17_sumout\ = SUM(( GND ) + ( \i1|Add0~15\ ) + ( \i1|Add0~14\ ))
-- \i1|Add0~18\ = CARRY(( GND ) + ( \i1|Add0~15\ ) + ( \i1|Add0~14\ ))
-- \i1|Add0~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \i1|Add0~14\,
	sharein => \i1|Add0~15\,
	sumout => \i1|Add0~17_sumout\,
	cout => \i1|Add0~18\,
	shareout => \i1|Add0~19\);

-- Location: LABCELL_X85_Y9_N21
\i1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~21_sumout\ = SUM(( GND ) + ( \i1|Add0~19\ ) + ( \i1|Add0~18\ ))
-- \i1|Add0~22\ = CARRY(( GND ) + ( \i1|Add0~19\ ) + ( \i1|Add0~18\ ))
-- \i1|Add0~23\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \i1|Add0~18\,
	sharein => \i1|Add0~19\,
	sumout => \i1|Add0~21_sumout\,
	cout => \i1|Add0~22\,
	shareout => \i1|Add0~23\);

-- Location: LABCELL_X85_Y9_N24
\i1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~25_sumout\ = SUM(( GND ) + ( \i1|Add0~23\ ) + ( \i1|Add0~22\ ))
-- \i1|Add0~26\ = CARRY(( GND ) + ( \i1|Add0~23\ ) + ( \i1|Add0~22\ ))
-- \i1|Add0~27\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \i1|Add0~22\,
	sharein => \i1|Add0~23\,
	sumout => \i1|Add0~25_sumout\,
	cout => \i1|Add0~26\,
	shareout => \i1|Add0~27\);

-- Location: LABCELL_X85_Y9_N27
\i1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~29_sumout\ = SUM(( GND ) + ( \i1|Add0~27\ ) + ( \i1|Add0~26\ ))
-- \i1|Add0~30\ = CARRY(( GND ) + ( \i1|Add0~27\ ) + ( \i1|Add0~26\ ))
-- \i1|Add0~31\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \i1|Add0~26\,
	sharein => \i1|Add0~27\,
	sumout => \i1|Add0~29_sumout\,
	cout => \i1|Add0~30\,
	shareout => \i1|Add0~31\);

-- Location: LABCELL_X85_Y9_N30
\i1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~33_sumout\ = SUM(( GND ) + ( \i1|Add0~31\ ) + ( \i1|Add0~30\ ))
-- \i1|Add0~34\ = CARRY(( GND ) + ( \i1|Add0~31\ ) + ( \i1|Add0~30\ ))
-- \i1|Add0~35\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \i1|Add0~30\,
	sharein => \i1|Add0~31\,
	sumout => \i1|Add0~33_sumout\,
	cout => \i1|Add0~34\,
	shareout => \i1|Add0~35\);

-- Location: LABCELL_X85_Y9_N33
\i1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~37_sumout\ = SUM(( GND ) + ( \i1|Add0~35\ ) + ( \i1|Add0~34\ ))
-- \i1|Add0~38\ = CARRY(( GND ) + ( \i1|Add0~35\ ) + ( \i1|Add0~34\ ))
-- \i1|Add0~39\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \i1|Add0~34\,
	sharein => \i1|Add0~35\,
	sumout => \i1|Add0~37_sumout\,
	cout => \i1|Add0~38\,
	shareout => \i1|Add0~39\);

-- Location: LABCELL_X85_Y9_N36
\i1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~41_sumout\ = SUM(( GND ) + ( \i1|Add0~39\ ) + ( \i1|Add0~38\ ))
-- \i1|Add0~42\ = CARRY(( GND ) + ( \i1|Add0~39\ ) + ( \i1|Add0~38\ ))
-- \i1|Add0~43\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \i1|Add0~38\,
	sharein => \i1|Add0~39\,
	sumout => \i1|Add0~41_sumout\,
	cout => \i1|Add0~42\,
	shareout => \i1|Add0~43\);

-- Location: LABCELL_X85_Y9_N39
\i1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~45_sumout\ = SUM(( GND ) + ( \i1|Add0~43\ ) + ( \i1|Add0~42\ ))
-- \i1|Add0~46\ = CARRY(( GND ) + ( \i1|Add0~43\ ) + ( \i1|Add0~42\ ))
-- \i1|Add0~47\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \i1|Add0~42\,
	sharein => \i1|Add0~43\,
	sumout => \i1|Add0~45_sumout\,
	cout => \i1|Add0~46\,
	shareout => \i1|Add0~47\);

-- Location: LABCELL_X85_Y9_N42
\i1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~49_sumout\ = SUM(( GND ) + ( \i1|Add0~47\ ) + ( \i1|Add0~46\ ))
-- \i1|Add0~50\ = CARRY(( GND ) + ( \i1|Add0~47\ ) + ( \i1|Add0~46\ ))
-- \i1|Add0~51\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \i1|Add0~46\,
	sharein => \i1|Add0~47\,
	sumout => \i1|Add0~49_sumout\,
	cout => \i1|Add0~50\,
	shareout => \i1|Add0~51\);

-- Location: MLABCELL_X84_Y10_N57
\i1|Add3~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~89_sumout\ = SUM(( A(24) ) + ( \i1|Add3~87\ ) + ( \i1|Add3~86\ ))
-- \i1|Add3~90\ = CARRY(( A(24) ) + ( \i1|Add3~87\ ) + ( \i1|Add3~86\ ))
-- \i1|Add3~91\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(24),
	cin => \i1|Add3~86\,
	sharein => \i1|Add3~87\,
	sumout => \i1|Add3~89_sumout\,
	cout => \i1|Add3~90\,
	shareout => \i1|Add3~91\);

-- Location: MLABCELL_X84_Y9_N0
\i1|Add3~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~93_sumout\ = SUM(( A(25) ) + ( \i1|Add3~91\ ) + ( \i1|Add3~90\ ))
-- \i1|Add3~94\ = CARRY(( A(25) ) + ( \i1|Add3~91\ ) + ( \i1|Add3~90\ ))
-- \i1|Add3~95\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(25),
	cin => \i1|Add3~90\,
	sharein => \i1|Add3~91\,
	sumout => \i1|Add3~93_sumout\,
	cout => \i1|Add3~94\,
	shareout => \i1|Add3~95\);

-- Location: MLABCELL_X84_Y9_N3
\i1|Add3~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~101_sumout\ = SUM(( GND ) + ( \i1|Add3~95\ ) + ( \i1|Add3~94\ ))
-- \i1|Add3~102\ = CARRY(( GND ) + ( \i1|Add3~95\ ) + ( \i1|Add3~94\ ))
-- \i1|Add3~103\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \i1|Add3~94\,
	sharein => \i1|Add3~95\,
	sumout => \i1|Add3~101_sumout\,
	cout => \i1|Add3~102\,
	shareout => \i1|Add3~103\);

-- Location: MLABCELL_X84_Y9_N6
\i1|Add3~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~105_sumout\ = SUM(( GND ) + ( \i1|Add3~103\ ) + ( \i1|Add3~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \i1|Add3~102\,
	sharein => \i1|Add3~103\,
	sumout => \i1|Add3~105_sumout\);

-- Location: FF_X84_Y10_N32
\A[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(21),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(21));

-- Location: FF_X85_Y10_N32
\A[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(19),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(19));

-- Location: FF_X85_Y10_N56
\A[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(18),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(18));

-- Location: FF_X85_Y10_N44
\A[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(17),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(17));

-- Location: FF_X84_Y10_N26
\A[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(16),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(16));

-- Location: FF_X85_Y10_N41
\A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(12),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(12));

-- Location: FF_X85_Y10_N11
\A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(11),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(11));

-- Location: FF_X85_Y11_N17
\A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(5),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(5));

-- Location: FF_X85_Y11_N14
\A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(4),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(4));

-- Location: FF_X85_Y11_N47
\A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(3),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(3));

-- Location: MLABCELL_X84_Y11_N0
\i1|Add3~349\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~349_sumout\ = SUM(( A(0) ) + ( !VCC ) + ( !VCC ))
-- \i1|Add3~350\ = CARRY(( A(0) ) + ( !VCC ) + ( !VCC ))
-- \i1|Add3~351\ = SHARE(VCC)

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
	sumout => \i1|Add3~349_sumout\,
	cout => \i1|Add3~350\,
	shareout => \i1|Add3~351\);

-- Location: MLABCELL_X84_Y11_N3
\i1|Add3~341\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~341_sumout\ = SUM(( A(0) ) + ( \i1|Add3~351\ ) + ( \i1|Add3~350\ ))
-- \i1|Add3~342\ = CARRY(( A(0) ) + ( \i1|Add3~351\ ) + ( \i1|Add3~350\ ))
-- \i1|Add3~343\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(0),
	cin => \i1|Add3~350\,
	sharein => \i1|Add3~351\,
	sumout => \i1|Add3~341_sumout\,
	cout => \i1|Add3~342\,
	shareout => \i1|Add3~343\);

-- Location: MLABCELL_X84_Y11_N6
\i1|Add3~333\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~333_sumout\ = SUM(( A(2) ) + ( \i1|Add3~343\ ) + ( \i1|Add3~342\ ))
-- \i1|Add3~334\ = CARRY(( A(2) ) + ( \i1|Add3~343\ ) + ( \i1|Add3~342\ ))
-- \i1|Add3~335\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(2),
	cin => \i1|Add3~342\,
	sharein => \i1|Add3~343\,
	sumout => \i1|Add3~333_sumout\,
	cout => \i1|Add3~334\,
	shareout => \i1|Add3~335\);

-- Location: MLABCELL_X84_Y11_N9
\i1|Add3~325\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~325_sumout\ = SUM(( A(2) ) + ( \i1|Add3~335\ ) + ( \i1|Add3~334\ ))
-- \i1|Add3~326\ = CARRY(( A(2) ) + ( \i1|Add3~335\ ) + ( \i1|Add3~334\ ))
-- \i1|Add3~327\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(2),
	cin => \i1|Add3~334\,
	sharein => \i1|Add3~335\,
	sumout => \i1|Add3~325_sumout\,
	cout => \i1|Add3~326\,
	shareout => \i1|Add3~327\);

-- Location: MLABCELL_X84_Y11_N12
\i1|Add3~317\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~317_sumout\ = SUM(( A(0) ) + ( \i1|Add3~327\ ) + ( \i1|Add3~326\ ))
-- \i1|Add3~318\ = CARRY(( A(0) ) + ( \i1|Add3~327\ ) + ( \i1|Add3~326\ ))
-- \i1|Add3~319\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(0),
	cin => \i1|Add3~326\,
	sharein => \i1|Add3~327\,
	sumout => \i1|Add3~317_sumout\,
	cout => \i1|Add3~318\,
	shareout => \i1|Add3~319\);

-- Location: MLABCELL_X84_Y11_N15
\i1|Add3~309\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~309_sumout\ = SUM(( A(1) ) + ( \i1|Add3~319\ ) + ( \i1|Add3~318\ ))
-- \i1|Add3~310\ = CARRY(( A(1) ) + ( \i1|Add3~319\ ) + ( \i1|Add3~318\ ))
-- \i1|Add3~311\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(1),
	cin => \i1|Add3~318\,
	sharein => \i1|Add3~319\,
	sumout => \i1|Add3~309_sumout\,
	cout => \i1|Add3~310\,
	shareout => \i1|Add3~311\);

-- Location: MLABCELL_X84_Y11_N18
\i1|Add3~301\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~301_sumout\ = SUM(( A(2) ) + ( \i1|Add3~311\ ) + ( \i1|Add3~310\ ))
-- \i1|Add3~302\ = CARRY(( A(2) ) + ( \i1|Add3~311\ ) + ( \i1|Add3~310\ ))
-- \i1|Add3~303\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(2),
	cin => \i1|Add3~310\,
	sharein => \i1|Add3~311\,
	sumout => \i1|Add3~301_sumout\,
	cout => \i1|Add3~302\,
	shareout => \i1|Add3~303\);

-- Location: MLABCELL_X84_Y11_N21
\i1|Add3~293\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~293_sumout\ = SUM(( !A(3) $ (!A(0)) ) + ( \i1|Add3~303\ ) + ( \i1|Add3~302\ ))
-- \i1|Add3~294\ = CARRY(( !A(3) $ (!A(0)) ) + ( \i1|Add3~303\ ) + ( \i1|Add3~302\ ))
-- \i1|Add3~295\ = SHARE((!A(0)) # (A(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(3),
	datad => ALT_INV_A(0),
	cin => \i1|Add3~302\,
	sharein => \i1|Add3~303\,
	sumout => \i1|Add3~293_sumout\,
	cout => \i1|Add3~294\,
	shareout => \i1|Add3~295\);

-- Location: MLABCELL_X84_Y11_N24
\i1|Add3~285\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~285_sumout\ = SUM(( !A(4) $ (!A(1)) ) + ( \i1|Add3~295\ ) + ( \i1|Add3~294\ ))
-- \i1|Add3~286\ = CARRY(( !A(4) $ (!A(1)) ) + ( \i1|Add3~295\ ) + ( \i1|Add3~294\ ))
-- \i1|Add3~287\ = SHARE((!A(1)) # (A(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(4),
	datad => ALT_INV_A(1),
	cin => \i1|Add3~294\,
	sharein => \i1|Add3~295\,
	sumout => \i1|Add3~285_sumout\,
	cout => \i1|Add3~286\,
	shareout => \i1|Add3~287\);

-- Location: MLABCELL_X84_Y11_N27
\i1|Add3~277\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~277_sumout\ = SUM(( !A(5) $ (!A(2) $ (A(0))) ) + ( \i1|Add3~287\ ) + ( \i1|Add3~286\ ))
-- \i1|Add3~278\ = CARRY(( !A(5) $ (!A(2) $ (A(0))) ) + ( \i1|Add3~287\ ) + ( \i1|Add3~286\ ))
-- \i1|Add3~279\ = SHARE((!A(5) & (!A(2) & !A(0))) # (A(5) & ((!A(2)) # (!A(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101010101000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(5),
	datac => ALT_INV_A(2),
	datad => ALT_INV_A(0),
	cin => \i1|Add3~286\,
	sharein => \i1|Add3~287\,
	sumout => \i1|Add3~277_sumout\,
	cout => \i1|Add3~278\,
	shareout => \i1|Add3~279\);

-- Location: MLABCELL_X84_Y11_N30
\i1|Add3~269\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~269_sumout\ = SUM(( !A(3) $ (!A(6) $ (A(1))) ) + ( \i1|Add3~279\ ) + ( \i1|Add3~278\ ))
-- \i1|Add3~270\ = CARRY(( !A(3) $ (!A(6) $ (A(1))) ) + ( \i1|Add3~279\ ) + ( \i1|Add3~278\ ))
-- \i1|Add3~271\ = SHARE((!A(3) & ((!A(1)) # (A(6)))) # (A(3) & (A(6) & !A(1))))

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
	cin => \i1|Add3~278\,
	sharein => \i1|Add3~279\,
	sumout => \i1|Add3~269_sumout\,
	cout => \i1|Add3~270\,
	shareout => \i1|Add3~271\);

-- Location: MLABCELL_X84_Y11_N33
\i1|Add3~261\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~261_sumout\ = SUM(( !A(4) $ (!A(2) $ (A(7))) ) + ( \i1|Add3~271\ ) + ( \i1|Add3~270\ ))
-- \i1|Add3~262\ = CARRY(( !A(4) $ (!A(2) $ (A(7))) ) + ( \i1|Add3~271\ ) + ( \i1|Add3~270\ ))
-- \i1|Add3~263\ = SHARE((!A(4) & ((!A(2)) # (A(7)))) # (A(4) & (!A(2) & A(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001111110000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(4),
	datac => ALT_INV_A(2),
	datad => ALT_INV_A(7),
	cin => \i1|Add3~270\,
	sharein => \i1|Add3~271\,
	sumout => \i1|Add3~261_sumout\,
	cout => \i1|Add3~262\,
	shareout => \i1|Add3~263\);

-- Location: MLABCELL_X84_Y11_N36
\i1|Add3~253\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~253_sumout\ = SUM(( !A(3) $ (!A(5) $ (A(8))) ) + ( \i1|Add3~263\ ) + ( \i1|Add3~262\ ))
-- \i1|Add3~254\ = CARRY(( !A(3) $ (!A(5) $ (A(8))) ) + ( \i1|Add3~263\ ) + ( \i1|Add3~262\ ))
-- \i1|Add3~255\ = SHARE((!A(3) & ((!A(5)) # (A(8)))) # (A(3) & (!A(5) & A(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001111101000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(3),
	datac => ALT_INV_A(5),
	datad => ALT_INV_A(8),
	cin => \i1|Add3~262\,
	sharein => \i1|Add3~263\,
	sumout => \i1|Add3~253_sumout\,
	cout => \i1|Add3~254\,
	shareout => \i1|Add3~255\);

-- Location: MLABCELL_X84_Y11_N39
\i1|Add3~245\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~245_sumout\ = SUM(( !A(4) $ (!A(9) $ (A(6))) ) + ( \i1|Add3~255\ ) + ( \i1|Add3~254\ ))
-- \i1|Add3~246\ = CARRY(( !A(4) $ (!A(9) $ (A(6))) ) + ( \i1|Add3~255\ ) + ( \i1|Add3~254\ ))
-- \i1|Add3~247\ = SHARE((!A(4) & ((!A(6)) # (A(9)))) # (A(4) & (A(9) & !A(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011110000110000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(4),
	datac => ALT_INV_A(9),
	datad => ALT_INV_A(6),
	cin => \i1|Add3~254\,
	sharein => \i1|Add3~255\,
	sumout => \i1|Add3~245_sumout\,
	cout => \i1|Add3~246\,
	shareout => \i1|Add3~247\);

-- Location: MLABCELL_X84_Y11_N42
\i1|Add3~237\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~237_sumout\ = SUM(( !A(10) $ (!A(7) $ (A(5))) ) + ( \i1|Add3~247\ ) + ( \i1|Add3~246\ ))
-- \i1|Add3~238\ = CARRY(( !A(10) $ (!A(7) $ (A(5))) ) + ( \i1|Add3~247\ ) + ( \i1|Add3~246\ ))
-- \i1|Add3~239\ = SHARE((!A(10) & (!A(7) & !A(5))) # (A(10) & ((!A(7)) # (!A(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101010101000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(10),
	datac => ALT_INV_A(7),
	datad => ALT_INV_A(5),
	cin => \i1|Add3~246\,
	sharein => \i1|Add3~247\,
	sumout => \i1|Add3~237_sumout\,
	cout => \i1|Add3~238\,
	shareout => \i1|Add3~239\);

-- Location: MLABCELL_X84_Y11_N45
\i1|Add3~229\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~229_sumout\ = SUM(( !A(8) $ (!A(0) $ (A(6))) ) + ( \i1|Add3~239\ ) + ( \i1|Add3~238\ ))
-- \i1|Add3~230\ = CARRY(( !A(8) $ (!A(0) $ (A(6))) ) + ( \i1|Add3~239\ ) + ( \i1|Add3~238\ ))
-- \i1|Add3~231\ = SHARE((!A(8) & ((!A(6)) # (A(0)))) # (A(8) & (A(0) & !A(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011110000110000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(8),
	datac => ALT_INV_A(0),
	datad => ALT_INV_A(6),
	cin => \i1|Add3~238\,
	sharein => \i1|Add3~239\,
	sumout => \i1|Add3~229_sumout\,
	cout => \i1|Add3~230\,
	shareout => \i1|Add3~231\);

-- Location: MLABCELL_X84_Y11_N48
\i1|Add3~221\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~221_sumout\ = SUM(( !A(9) $ (!A(7) $ (A(1))) ) + ( \i1|Add3~231\ ) + ( \i1|Add3~230\ ))
-- \i1|Add3~222\ = CARRY(( !A(9) $ (!A(7) $ (A(1))) ) + ( \i1|Add3~231\ ) + ( \i1|Add3~230\ ))
-- \i1|Add3~223\ = SHARE((!A(9) & ((!A(7)) # (A(1)))) # (A(9) & (!A(7) & A(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001111110000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(9),
	datac => ALT_INV_A(7),
	datad => ALT_INV_A(1),
	cin => \i1|Add3~230\,
	sharein => \i1|Add3~231\,
	sumout => \i1|Add3~221_sumout\,
	cout => \i1|Add3~222\,
	shareout => \i1|Add3~223\);

-- Location: MLABCELL_X84_Y11_N51
\i1|Add3~213\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~213_sumout\ = SUM(( !A(10) $ (!A(2) $ (A(8))) ) + ( \i1|Add3~223\ ) + ( \i1|Add3~222\ ))
-- \i1|Add3~214\ = CARRY(( !A(10) $ (!A(2) $ (A(8))) ) + ( \i1|Add3~223\ ) + ( \i1|Add3~222\ ))
-- \i1|Add3~215\ = SHARE((!A(10) & ((!A(8)) # (A(2)))) # (A(10) & (A(2) & !A(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011110000101000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(10),
	datac => ALT_INV_A(2),
	datad => ALT_INV_A(8),
	cin => \i1|Add3~222\,
	sharein => \i1|Add3~223\,
	sumout => \i1|Add3~213_sumout\,
	cout => \i1|Add3~214\,
	shareout => \i1|Add3~215\);

-- Location: MLABCELL_X84_Y11_N54
\i1|Add3~205\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~205_sumout\ = SUM(( !A(9) $ (!A(3) $ (A(11))) ) + ( \i1|Add3~215\ ) + ( \i1|Add3~214\ ))
-- \i1|Add3~206\ = CARRY(( !A(9) $ (!A(3) $ (A(11))) ) + ( \i1|Add3~215\ ) + ( \i1|Add3~214\ ))
-- \i1|Add3~207\ = SHARE((!A(9) & ((!A(11)) # (A(3)))) # (A(9) & (A(3) & !A(11))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011110000110000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(9),
	datac => ALT_INV_A(3),
	datad => ALT_INV_A(11),
	cin => \i1|Add3~214\,
	sharein => \i1|Add3~215\,
	sumout => \i1|Add3~205_sumout\,
	cout => \i1|Add3~206\,
	shareout => \i1|Add3~207\);

-- Location: MLABCELL_X84_Y11_N57
\i1|Add3~197\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~197_sumout\ = SUM(( !A(10) $ (!A(4) $ (A(12))) ) + ( \i1|Add3~207\ ) + ( \i1|Add3~206\ ))
-- \i1|Add3~198\ = CARRY(( !A(10) $ (!A(4) $ (A(12))) ) + ( \i1|Add3~207\ ) + ( \i1|Add3~206\ ))
-- \i1|Add3~199\ = SHARE((!A(10) & ((!A(12)) # (A(4)))) # (A(10) & (A(4) & !A(12))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011110000101000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(10),
	datac => ALT_INV_A(4),
	datad => ALT_INV_A(12),
	cin => \i1|Add3~206\,
	sharein => \i1|Add3~207\,
	sumout => \i1|Add3~197_sumout\,
	cout => \i1|Add3~198\,
	shareout => \i1|Add3~199\);

-- Location: MLABCELL_X84_Y10_N0
\i1|Add3~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~189_sumout\ = SUM(( !A(13) $ (!A(5) $ (A(11))) ) + ( \i1|Add3~199\ ) + ( \i1|Add3~198\ ))
-- \i1|Add3~190\ = CARRY(( !A(13) $ (!A(5) $ (A(11))) ) + ( \i1|Add3~199\ ) + ( \i1|Add3~198\ ))
-- \i1|Add3~191\ = SHARE((!A(13) & ((!A(11)) # (A(5)))) # (A(13) & (A(5) & !A(11))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011110000110000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(13),
	datac => ALT_INV_A(5),
	datad => ALT_INV_A(11),
	cin => \i1|Add3~198\,
	sharein => \i1|Add3~199\,
	sumout => \i1|Add3~189_sumout\,
	cout => \i1|Add3~190\,
	shareout => \i1|Add3~191\);

-- Location: MLABCELL_X84_Y10_N3
\i1|Add3~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~181_sumout\ = SUM(( !A(12) $ (!A(6) $ (A(14))) ) + ( \i1|Add3~191\ ) + ( \i1|Add3~190\ ))
-- \i1|Add3~182\ = CARRY(( !A(12) $ (!A(6) $ (A(14))) ) + ( \i1|Add3~191\ ) + ( \i1|Add3~190\ ))
-- \i1|Add3~183\ = SHARE((!A(12) & ((!A(14)) # (A(6)))) # (A(12) & (A(6) & !A(14))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011110000101000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(12),
	datac => ALT_INV_A(6),
	datad => ALT_INV_A(14),
	cin => \i1|Add3~190\,
	sharein => \i1|Add3~191\,
	sumout => \i1|Add3~181_sumout\,
	cout => \i1|Add3~182\,
	shareout => \i1|Add3~183\);

-- Location: MLABCELL_X84_Y10_N6
\i1|Add3~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~173_sumout\ = SUM(( !A(13) $ (!A(15) $ (A(7))) ) + ( \i1|Add3~183\ ) + ( \i1|Add3~182\ ))
-- \i1|Add3~174\ = CARRY(( !A(13) $ (!A(15) $ (A(7))) ) + ( \i1|Add3~183\ ) + ( \i1|Add3~182\ ))
-- \i1|Add3~175\ = SHARE((!A(13) & ((!A(15)) # (A(7)))) # (A(13) & (!A(15) & A(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001111110000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(13),
	datac => ALT_INV_A(15),
	datad => ALT_INV_A(7),
	cin => \i1|Add3~182\,
	sharein => \i1|Add3~183\,
	sumout => \i1|Add3~173_sumout\,
	cout => \i1|Add3~174\,
	shareout => \i1|Add3~175\);

-- Location: MLABCELL_X84_Y10_N9
\i1|Add3~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~165_sumout\ = SUM(( !A(16) $ (!A(8) $ (A(14))) ) + ( \i1|Add3~175\ ) + ( \i1|Add3~174\ ))
-- \i1|Add3~166\ = CARRY(( !A(16) $ (!A(8) $ (A(14))) ) + ( \i1|Add3~175\ ) + ( \i1|Add3~174\ ))
-- \i1|Add3~167\ = SHARE((!A(16) & ((!A(14)) # (A(8)))) # (A(16) & (A(8) & !A(14))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011110000101000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(16),
	datac => ALT_INV_A(8),
	datad => ALT_INV_A(14),
	cin => \i1|Add3~174\,
	sharein => \i1|Add3~175\,
	sumout => \i1|Add3~165_sumout\,
	cout => \i1|Add3~166\,
	shareout => \i1|Add3~167\);

-- Location: MLABCELL_X84_Y10_N12
\i1|Add3~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~157_sumout\ = SUM(( !A(9) $ (!A(15) $ (A(17))) ) + ( \i1|Add3~167\ ) + ( \i1|Add3~166\ ))
-- \i1|Add3~158\ = CARRY(( !A(9) $ (!A(15) $ (A(17))) ) + ( \i1|Add3~167\ ) + ( \i1|Add3~166\ ))
-- \i1|Add3~159\ = SHARE((!A(9) & (!A(15) & !A(17))) # (A(9) & ((!A(15)) # (!A(17)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100110011000000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(9),
	datac => ALT_INV_A(15),
	datad => ALT_INV_A(17),
	cin => \i1|Add3~166\,
	sharein => \i1|Add3~167\,
	sumout => \i1|Add3~157_sumout\,
	cout => \i1|Add3~158\,
	shareout => \i1|Add3~159\);

-- Location: MLABCELL_X84_Y10_N15
\i1|Add3~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~149_sumout\ = SUM(( !A(16) $ (!A(10) $ (A(18))) ) + ( \i1|Add3~159\ ) + ( \i1|Add3~158\ ))
-- \i1|Add3~150\ = CARRY(( !A(16) $ (!A(10) $ (A(18))) ) + ( \i1|Add3~159\ ) + ( \i1|Add3~158\ ))
-- \i1|Add3~151\ = SHARE((!A(16) & ((!A(18)) # (A(10)))) # (A(16) & (A(10) & !A(18))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011110000101000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(16),
	datac => ALT_INV_A(10),
	datad => ALT_INV_A(18),
	cin => \i1|Add3~158\,
	sharein => \i1|Add3~159\,
	sumout => \i1|Add3~149_sumout\,
	cout => \i1|Add3~150\,
	shareout => \i1|Add3~151\);

-- Location: MLABCELL_X84_Y10_N18
\i1|Add3~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~141_sumout\ = SUM(( !A(17) $ (!A(19) $ (A(11))) ) + ( \i1|Add3~151\ ) + ( \i1|Add3~150\ ))
-- \i1|Add3~142\ = CARRY(( !A(17) $ (!A(19) $ (A(11))) ) + ( \i1|Add3~151\ ) + ( \i1|Add3~150\ ))
-- \i1|Add3~143\ = SHARE((!A(17) & ((!A(19)) # (A(11)))) # (A(17) & (!A(19) & A(11))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001111110000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(17),
	datac => ALT_INV_A(19),
	datad => ALT_INV_A(11),
	cin => \i1|Add3~150\,
	sharein => \i1|Add3~151\,
	sumout => \i1|Add3~141_sumout\,
	cout => \i1|Add3~142\,
	shareout => \i1|Add3~143\);

-- Location: MLABCELL_X84_Y10_N21
\i1|Add3~133\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~133_sumout\ = SUM(( !A(12) $ (!A(18) $ (A(20))) ) + ( \i1|Add3~143\ ) + ( \i1|Add3~142\ ))
-- \i1|Add3~134\ = CARRY(( !A(12) $ (!A(18) $ (A(20))) ) + ( \i1|Add3~143\ ) + ( \i1|Add3~142\ ))
-- \i1|Add3~135\ = SHARE((!A(12) & (!A(18) & !A(20))) # (A(12) & ((!A(18)) # (!A(20)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101010101000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(12),
	datac => ALT_INV_A(18),
	datad => ALT_INV_A(20),
	cin => \i1|Add3~142\,
	sharein => \i1|Add3~143\,
	sumout => \i1|Add3~133_sumout\,
	cout => \i1|Add3~134\,
	shareout => \i1|Add3~135\);

-- Location: MLABCELL_X84_Y10_N24
\i1|Add3~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~125_sumout\ = SUM(( !A(13) $ (!A(19) $ (A(21))) ) + ( \i1|Add3~135\ ) + ( \i1|Add3~134\ ))
-- \i1|Add3~126\ = CARRY(( !A(13) $ (!A(19) $ (A(21))) ) + ( \i1|Add3~135\ ) + ( \i1|Add3~134\ ))
-- \i1|Add3~127\ = SHARE((!A(13) & (!A(19) & !A(21))) # (A(13) & ((!A(19)) # (!A(21)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100110011000000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(13),
	datac => ALT_INV_A(19),
	datad => ALT_INV_A(21),
	cin => \i1|Add3~134\,
	sharein => \i1|Add3~135\,
	sumout => \i1|Add3~125_sumout\,
	cout => \i1|Add3~126\,
	shareout => \i1|Add3~127\);

-- Location: MLABCELL_X84_Y10_N27
\i1|Add3~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~117_sumout\ = SUM(( !A(14) $ (!A(22) $ (A(20))) ) + ( \i1|Add3~127\ ) + ( \i1|Add3~126\ ))
-- \i1|Add3~118\ = CARRY(( !A(14) $ (!A(22) $ (A(20))) ) + ( \i1|Add3~127\ ) + ( \i1|Add3~126\ ))
-- \i1|Add3~119\ = SHARE((!A(14) & (!A(22) & !A(20))) # (A(14) & ((!A(22)) # (!A(20)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101010101000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(14),
	datac => ALT_INV_A(22),
	datad => ALT_INV_A(20),
	cin => \i1|Add3~126\,
	sharein => \i1|Add3~127\,
	sumout => \i1|Add3~117_sumout\,
	cout => \i1|Add3~118\,
	shareout => \i1|Add3~119\);

-- Location: MLABCELL_X84_Y10_N30
\i1|Add3~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~109_sumout\ = SUM(( !A(23) $ (!A(15) $ (A(21))) ) + ( \i1|Add3~119\ ) + ( \i1|Add3~118\ ))
-- \i1|Add3~110\ = CARRY(( !A(23) $ (!A(15) $ (A(21))) ) + ( \i1|Add3~119\ ) + ( \i1|Add3~118\ ))
-- \i1|Add3~111\ = SHARE((!A(23) & ((!A(21)) # (A(15)))) # (A(23) & (A(15) & !A(21))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011110000110000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(23),
	datac => ALT_INV_A(15),
	datad => ALT_INV_A(21),
	cin => \i1|Add3~118\,
	sharein => \i1|Add3~119\,
	sumout => \i1|Add3~109_sumout\,
	cout => \i1|Add3~110\,
	shareout => \i1|Add3~111\);

-- Location: MLABCELL_X84_Y10_N33
\i1|Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~53_sumout\ = SUM(( !A(16) $ (!A(22) $ (A(24))) ) + ( \i1|Add3~111\ ) + ( \i1|Add3~110\ ))
-- \i1|Add3~54\ = CARRY(( !A(16) $ (!A(22) $ (A(24))) ) + ( \i1|Add3~111\ ) + ( \i1|Add3~110\ ))
-- \i1|Add3~55\ = SHARE((!A(16) & (!A(22) & !A(24))) # (A(16) & ((!A(22)) # (!A(24)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101010101000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(16),
	datac => ALT_INV_A(22),
	datad => ALT_INV_A(24),
	cin => \i1|Add3~110\,
	sharein => \i1|Add3~111\,
	sumout => \i1|Add3~53_sumout\,
	cout => \i1|Add3~54\,
	shareout => \i1|Add3~55\);

-- Location: MLABCELL_X84_Y10_N36
\i1|Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~61_sumout\ = SUM(( !A(23) $ (!A(25) $ (A(17))) ) + ( \i1|Add3~55\ ) + ( \i1|Add3~54\ ))
-- \i1|Add3~62\ = CARRY(( !A(23) $ (!A(25) $ (A(17))) ) + ( \i1|Add3~55\ ) + ( \i1|Add3~54\ ))
-- \i1|Add3~63\ = SHARE((!A(23) & ((!A(25)) # (A(17)))) # (A(23) & (!A(25) & A(17))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001111110000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(23),
	datac => ALT_INV_A(25),
	datad => ALT_INV_A(17),
	cin => \i1|Add3~54\,
	sharein => \i1|Add3~55\,
	sumout => \i1|Add3~61_sumout\,
	cout => \i1|Add3~62\,
	shareout => \i1|Add3~63\);

-- Location: MLABCELL_X84_Y10_N39
\i1|Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~65_sumout\ = SUM(( !A(18) $ (!A(24)) ) + ( \i1|Add3~63\ ) + ( \i1|Add3~62\ ))
-- \i1|Add3~66\ = CARRY(( !A(18) $ (!A(24)) ) + ( \i1|Add3~63\ ) + ( \i1|Add3~62\ ))
-- \i1|Add3~67\ = SHARE((!A(24)) # (A(18)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(18),
	datad => ALT_INV_A(24),
	cin => \i1|Add3~62\,
	sharein => \i1|Add3~63\,
	sumout => \i1|Add3~65_sumout\,
	cout => \i1|Add3~66\,
	shareout => \i1|Add3~67\);

-- Location: MLABCELL_X84_Y10_N42
\i1|Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~69_sumout\ = SUM(( !A(19) $ (!A(25)) ) + ( \i1|Add3~67\ ) + ( \i1|Add3~66\ ))
-- \i1|Add3~70\ = CARRY(( !A(19) $ (!A(25)) ) + ( \i1|Add3~67\ ) + ( \i1|Add3~66\ ))
-- \i1|Add3~71\ = SHARE((!A(25)) # (A(19)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(19),
	datad => ALT_INV_A(25),
	cin => \i1|Add3~66\,
	sharein => \i1|Add3~67\,
	sumout => \i1|Add3~69_sumout\,
	cout => \i1|Add3~70\,
	shareout => \i1|Add3~71\);

-- Location: MLABCELL_X84_Y10_N45
\i1|Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~73_sumout\ = SUM(( A(20) ) + ( \i1|Add3~71\ ) + ( \i1|Add3~70\ ))
-- \i1|Add3~74\ = CARRY(( A(20) ) + ( \i1|Add3~71\ ) + ( \i1|Add3~70\ ))
-- \i1|Add3~75\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(20),
	cin => \i1|Add3~70\,
	sharein => \i1|Add3~71\,
	sumout => \i1|Add3~73_sumout\,
	cout => \i1|Add3~74\,
	shareout => \i1|Add3~75\);

-- Location: MLABCELL_X84_Y10_N48
\i1|Add3~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~77_sumout\ = SUM(( A(21) ) + ( \i1|Add3~75\ ) + ( \i1|Add3~74\ ))
-- \i1|Add3~78\ = CARRY(( A(21) ) + ( \i1|Add3~75\ ) + ( \i1|Add3~74\ ))
-- \i1|Add3~79\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(21),
	cin => \i1|Add3~74\,
	sharein => \i1|Add3~75\,
	sumout => \i1|Add3~77_sumout\,
	cout => \i1|Add3~78\,
	shareout => \i1|Add3~79\);

-- Location: MLABCELL_X84_Y10_N51
\i1|Add3~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~81_sumout\ = SUM(( A(22) ) + ( \i1|Add3~79\ ) + ( \i1|Add3~78\ ))
-- \i1|Add3~82\ = CARRY(( A(22) ) + ( \i1|Add3~79\ ) + ( \i1|Add3~78\ ))
-- \i1|Add3~83\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(22),
	cin => \i1|Add3~78\,
	sharein => \i1|Add3~79\,
	sumout => \i1|Add3~81_sumout\,
	cout => \i1|Add3~82\,
	shareout => \i1|Add3~83\);

-- Location: MLABCELL_X84_Y10_N54
\i1|Add3~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~85_sumout\ = SUM(( A(23) ) + ( \i1|Add3~83\ ) + ( \i1|Add3~82\ ))
-- \i1|Add3~86\ = CARRY(( A(23) ) + ( \i1|Add3~83\ ) + ( \i1|Add3~82\ ))
-- \i1|Add3~87\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(23),
	cin => \i1|Add3~82\,
	sharein => \i1|Add3~83\,
	sumout => \i1|Add3~85_sumout\,
	cout => \i1|Add3~86\,
	shareout => \i1|Add3~87\);

-- Location: LABCELL_X85_Y9_N9
\i1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~5_sumout\ = SUM(( GND ) + ( \i1|Add0~3\ ) + ( \i1|Add0~2\ ))
-- \i1|Add0~6\ = CARRY(( GND ) + ( \i1|Add0~3\ ) + ( \i1|Add0~2\ ))
-- \i1|Add0~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \i1|Add0~2\,
	sharein => \i1|Add0~3\,
	sumout => \i1|Add0~5_sumout\,
	cout => \i1|Add0~6\,
	shareout => \i1|Add0~7\);

-- Location: LABCELL_X85_Y9_N6
\i1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~1_sumout\ = SUM(( GND ) + ( \i1|Add0~55\ ) + ( \i1|Add0~54\ ))
-- \i1|Add0~2\ = CARRY(( GND ) + ( \i1|Add0~55\ ) + ( \i1|Add0~54\ ))
-- \i1|Add0~3\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \i1|Add0~54\,
	sharein => \i1|Add0~55\,
	sumout => \i1|Add0~1_sumout\,
	cout => \i1|Add0~2\,
	shareout => \i1|Add0~3\);

-- Location: LABCELL_X85_Y9_N3
\i1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~53_sumout\ = SUM(( GND ) + ( \i1|Add0~63\ ) + ( \i1|Add0~62\ ))
-- \i1|Add0~54\ = CARRY(( GND ) + ( \i1|Add0~63\ ) + ( \i1|Add0~62\ ))
-- \i1|Add0~55\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \i1|Add0~62\,
	sharein => \i1|Add0~63\,
	sumout => \i1|Add0~53_sumout\,
	cout => \i1|Add0~54\,
	shareout => \i1|Add0~55\);

-- Location: LABCELL_X85_Y11_N30
\i1|Add0~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~182_cout\ = CARRY(( GND ) + ( !VCC ) + ( !VCC ))
-- \i1|Add0~183\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => GND,
	sharein => GND,
	cout => \i1|Add0~182_cout\,
	shareout => \i1|Add0~183\);

-- Location: LABCELL_X85_Y11_N33
\i1|Add0~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~177_sumout\ = SUM(( GND ) + ( \i1|Add0~183\ ) + ( \i1|Add0~182_cout\ ))
-- \i1|Add0~178\ = CARRY(( GND ) + ( \i1|Add0~183\ ) + ( \i1|Add0~182_cout\ ))
-- \i1|Add0~179\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \i1|Add0~182_cout\,
	sharein => \i1|Add0~183\,
	sumout => \i1|Add0~177_sumout\,
	cout => \i1|Add0~178\,
	shareout => \i1|Add0~179\);

-- Location: LABCELL_X85_Y11_N36
\i1|Add0~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~173_sumout\ = SUM(( A(1) ) + ( \i1|Add0~179\ ) + ( \i1|Add0~178\ ))
-- \i1|Add0~174\ = CARRY(( A(1) ) + ( \i1|Add0~179\ ) + ( \i1|Add0~178\ ))
-- \i1|Add0~175\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(1),
	cin => \i1|Add0~178\,
	sharein => \i1|Add0~179\,
	sumout => \i1|Add0~173_sumout\,
	cout => \i1|Add0~174\,
	shareout => \i1|Add0~175\);

-- Location: LABCELL_X85_Y11_N39
\i1|Add0~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~169_sumout\ = SUM(( A(1) ) + ( \i1|Add0~175\ ) + ( \i1|Add0~174\ ))
-- \i1|Add0~170\ = CARRY(( A(1) ) + ( \i1|Add0~175\ ) + ( \i1|Add0~174\ ))
-- \i1|Add0~171\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(1),
	cin => \i1|Add0~174\,
	sharein => \i1|Add0~175\,
	sumout => \i1|Add0~169_sumout\,
	cout => \i1|Add0~170\,
	shareout => \i1|Add0~171\);

-- Location: LABCELL_X85_Y11_N42
\i1|Add0~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~165_sumout\ = SUM(( A(3) ) + ( \i1|Add0~171\ ) + ( \i1|Add0~170\ ))
-- \i1|Add0~166\ = CARRY(( A(3) ) + ( \i1|Add0~171\ ) + ( \i1|Add0~170\ ))
-- \i1|Add0~167\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(3),
	cin => \i1|Add0~170\,
	sharein => \i1|Add0~171\,
	sumout => \i1|Add0~165_sumout\,
	cout => \i1|Add0~166\,
	shareout => \i1|Add0~167\);

-- Location: LABCELL_X85_Y11_N45
\i1|Add0~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~161_sumout\ = SUM(( !A(4) $ (!A(3)) ) + ( \i1|Add0~167\ ) + ( \i1|Add0~166\ ))
-- \i1|Add0~162\ = CARRY(( !A(4) $ (!A(3)) ) + ( \i1|Add0~167\ ) + ( \i1|Add0~166\ ))
-- \i1|Add0~163\ = SHARE((A(4) & A(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(4),
	datad => ALT_INV_A(3),
	cin => \i1|Add0~166\,
	sharein => \i1|Add0~167\,
	sumout => \i1|Add0~161_sumout\,
	cout => \i1|Add0~162\,
	shareout => \i1|Add0~163\);

-- Location: LABCELL_X85_Y11_N48
\i1|Add0~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~157_sumout\ = SUM(( !A(5) $ (!A(4)) ) + ( \i1|Add0~163\ ) + ( \i1|Add0~162\ ))
-- \i1|Add0~158\ = CARRY(( !A(5) $ (!A(4)) ) + ( \i1|Add0~163\ ) + ( \i1|Add0~162\ ))
-- \i1|Add0~159\ = SHARE((A(5) & A(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(5),
	datad => ALT_INV_A(4),
	cin => \i1|Add0~162\,
	sharein => \i1|Add0~163\,
	sumout => \i1|Add0~157_sumout\,
	cout => \i1|Add0~158\,
	shareout => \i1|Add0~159\);

-- Location: LABCELL_X85_Y11_N51
\i1|Add0~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~153_sumout\ = SUM(( !A(5) $ (!A(6)) ) + ( \i1|Add0~159\ ) + ( \i1|Add0~158\ ))
-- \i1|Add0~154\ = CARRY(( !A(5) $ (!A(6)) ) + ( \i1|Add0~159\ ) + ( \i1|Add0~158\ ))
-- \i1|Add0~155\ = SHARE((A(5) & A(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(5),
	datad => ALT_INV_A(6),
	cin => \i1|Add0~158\,
	sharein => \i1|Add0~159\,
	sumout => \i1|Add0~153_sumout\,
	cout => \i1|Add0~154\,
	shareout => \i1|Add0~155\);

-- Location: LABCELL_X85_Y11_N54
\i1|Add0~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~149_sumout\ = SUM(( !A(7) $ (!A(6)) ) + ( \i1|Add0~155\ ) + ( \i1|Add0~154\ ))
-- \i1|Add0~150\ = CARRY(( !A(7) $ (!A(6)) ) + ( \i1|Add0~155\ ) + ( \i1|Add0~154\ ))
-- \i1|Add0~151\ = SHARE((A(7) & A(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(7),
	datad => ALT_INV_A(6),
	cin => \i1|Add0~154\,
	sharein => \i1|Add0~155\,
	sumout => \i1|Add0~149_sumout\,
	cout => \i1|Add0~150\,
	shareout => \i1|Add0~151\);

-- Location: LABCELL_X85_Y11_N57
\i1|Add0~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~145_sumout\ = SUM(( !A(7) $ (!A(8)) ) + ( \i1|Add0~151\ ) + ( \i1|Add0~150\ ))
-- \i1|Add0~146\ = CARRY(( !A(7) $ (!A(8)) ) + ( \i1|Add0~151\ ) + ( \i1|Add0~150\ ))
-- \i1|Add0~147\ = SHARE((A(7) & A(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(7),
	datad => ALT_INV_A(8),
	cin => \i1|Add0~150\,
	sharein => \i1|Add0~151\,
	sumout => \i1|Add0~145_sumout\,
	cout => \i1|Add0~146\,
	shareout => \i1|Add0~147\);

-- Location: LABCELL_X85_Y10_N0
\i1|Add0~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~141_sumout\ = SUM(( !A(8) $ (!A(9)) ) + ( \i1|Add0~147\ ) + ( \i1|Add0~146\ ))
-- \i1|Add0~142\ = CARRY(( !A(8) $ (!A(9)) ) + ( \i1|Add0~147\ ) + ( \i1|Add0~146\ ))
-- \i1|Add0~143\ = SHARE((A(8) & A(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(8),
	datac => ALT_INV_A(9),
	cin => \i1|Add0~146\,
	sharein => \i1|Add0~147\,
	sumout => \i1|Add0~141_sumout\,
	cout => \i1|Add0~142\,
	shareout => \i1|Add0~143\);

-- Location: LABCELL_X85_Y10_N3
\i1|Add0~137\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~137_sumout\ = SUM(( !A(9) $ (!A(10)) ) + ( \i1|Add0~143\ ) + ( \i1|Add0~142\ ))
-- \i1|Add0~138\ = CARRY(( !A(9) $ (!A(10)) ) + ( \i1|Add0~143\ ) + ( \i1|Add0~142\ ))
-- \i1|Add0~139\ = SHARE((A(9) & A(10)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(9),
	datac => ALT_INV_A(10),
	cin => \i1|Add0~142\,
	sharein => \i1|Add0~143\,
	sumout => \i1|Add0~137_sumout\,
	cout => \i1|Add0~138\,
	shareout => \i1|Add0~139\);

-- Location: LABCELL_X85_Y10_N6
\i1|Add0~133\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~133_sumout\ = SUM(( !A(11) $ (!A(10)) ) + ( \i1|Add0~139\ ) + ( \i1|Add0~138\ ))
-- \i1|Add0~134\ = CARRY(( !A(11) $ (!A(10)) ) + ( \i1|Add0~139\ ) + ( \i1|Add0~138\ ))
-- \i1|Add0~135\ = SHARE((A(11) & A(10)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(11),
	datac => ALT_INV_A(10),
	cin => \i1|Add0~138\,
	sharein => \i1|Add0~139\,
	sumout => \i1|Add0~133_sumout\,
	cout => \i1|Add0~134\,
	shareout => \i1|Add0~135\);

-- Location: LABCELL_X85_Y10_N9
\i1|Add0~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~129_sumout\ = SUM(( !A(11) $ (!A(12)) ) + ( \i1|Add0~135\ ) + ( \i1|Add0~134\ ))
-- \i1|Add0~130\ = CARRY(( !A(11) $ (!A(12)) ) + ( \i1|Add0~135\ ) + ( \i1|Add0~134\ ))
-- \i1|Add0~131\ = SHARE((A(11) & A(12)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(11),
	datac => ALT_INV_A(12),
	cin => \i1|Add0~134\,
	sharein => \i1|Add0~135\,
	sumout => \i1|Add0~129_sumout\,
	cout => \i1|Add0~130\,
	shareout => \i1|Add0~131\);

-- Location: LABCELL_X85_Y10_N12
\i1|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~125_sumout\ = SUM(( !A(12) $ (!A(13)) ) + ( \i1|Add0~131\ ) + ( \i1|Add0~130\ ))
-- \i1|Add0~126\ = CARRY(( !A(12) $ (!A(13)) ) + ( \i1|Add0~131\ ) + ( \i1|Add0~130\ ))
-- \i1|Add0~127\ = SHARE((A(12) & A(13)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(12),
	datac => ALT_INV_A(13),
	cin => \i1|Add0~130\,
	sharein => \i1|Add0~131\,
	sumout => \i1|Add0~125_sumout\,
	cout => \i1|Add0~126\,
	shareout => \i1|Add0~127\);

-- Location: LABCELL_X85_Y10_N15
\i1|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~121_sumout\ = SUM(( !A(13) $ (!A(14)) ) + ( \i1|Add0~127\ ) + ( \i1|Add0~126\ ))
-- \i1|Add0~122\ = CARRY(( !A(13) $ (!A(14)) ) + ( \i1|Add0~127\ ) + ( \i1|Add0~126\ ))
-- \i1|Add0~123\ = SHARE((A(13) & A(14)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(13),
	datad => ALT_INV_A(14),
	cin => \i1|Add0~126\,
	sharein => \i1|Add0~127\,
	sumout => \i1|Add0~121_sumout\,
	cout => \i1|Add0~122\,
	shareout => \i1|Add0~123\);

-- Location: LABCELL_X85_Y10_N18
\i1|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~117_sumout\ = SUM(( !A(11) $ (!A(15) $ (A(14))) ) + ( \i1|Add0~123\ ) + ( \i1|Add0~122\ ))
-- \i1|Add0~118\ = CARRY(( !A(11) $ (!A(15) $ (A(14))) ) + ( \i1|Add0~123\ ) + ( \i1|Add0~122\ ))
-- \i1|Add0~119\ = SHARE((!A(11) & (A(15) & A(14))) # (A(11) & ((A(14)) # (A(15)))))

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
	cin => \i1|Add0~122\,
	sharein => \i1|Add0~123\,
	sumout => \i1|Add0~117_sumout\,
	cout => \i1|Add0~118\,
	shareout => \i1|Add0~119\);

-- Location: LABCELL_X85_Y10_N21
\i1|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~113_sumout\ = SUM(( !A(15) $ (!A(12) $ (A(16))) ) + ( \i1|Add0~119\ ) + ( \i1|Add0~118\ ))
-- \i1|Add0~114\ = CARRY(( !A(15) $ (!A(12) $ (A(16))) ) + ( \i1|Add0~119\ ) + ( \i1|Add0~118\ ))
-- \i1|Add0~115\ = SHARE((!A(15) & (A(12) & A(16))) # (A(15) & ((A(16)) # (A(12)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(15),
	datac => ALT_INV_A(12),
	datad => ALT_INV_A(16),
	cin => \i1|Add0~118\,
	sharein => \i1|Add0~119\,
	sumout => \i1|Add0~113_sumout\,
	cout => \i1|Add0~114\,
	shareout => \i1|Add0~115\);

-- Location: LABCELL_X85_Y10_N24
\i1|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~109_sumout\ = SUM(( !A(17) $ (!A(13) $ (A(16))) ) + ( \i1|Add0~115\ ) + ( \i1|Add0~114\ ))
-- \i1|Add0~110\ = CARRY(( !A(17) $ (!A(13) $ (A(16))) ) + ( \i1|Add0~115\ ) + ( \i1|Add0~114\ ))
-- \i1|Add0~111\ = SHARE((!A(17) & (A(13) & A(16))) # (A(17) & ((A(16)) # (A(13)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(17),
	datac => ALT_INV_A(13),
	datad => ALT_INV_A(16),
	cin => \i1|Add0~114\,
	sharein => \i1|Add0~115\,
	sumout => \i1|Add0~109_sumout\,
	cout => \i1|Add0~110\,
	shareout => \i1|Add0~111\);

-- Location: LABCELL_X85_Y10_N27
\i1|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~105_sumout\ = SUM(( !A(18) $ (!A(17) $ (A(14))) ) + ( \i1|Add0~111\ ) + ( \i1|Add0~110\ ))
-- \i1|Add0~106\ = CARRY(( !A(18) $ (!A(17) $ (A(14))) ) + ( \i1|Add0~111\ ) + ( \i1|Add0~110\ ))
-- \i1|Add0~107\ = SHARE((!A(18) & (A(17) & A(14))) # (A(18) & ((A(14)) # (A(17)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110001011100000000000000000110100101101001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(18),
	datab => ALT_INV_A(17),
	datac => ALT_INV_A(14),
	cin => \i1|Add0~110\,
	sharein => \i1|Add0~111\,
	sumout => \i1|Add0~105_sumout\,
	cout => \i1|Add0~106\,
	shareout => \i1|Add0~107\);

-- Location: LABCELL_X85_Y10_N30
\i1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~101_sumout\ = SUM(( !A(19) $ (!A(18) $ (A(15))) ) + ( \i1|Add0~107\ ) + ( \i1|Add0~106\ ))
-- \i1|Add0~102\ = CARRY(( !A(19) $ (!A(18) $ (A(15))) ) + ( \i1|Add0~107\ ) + ( \i1|Add0~106\ ))
-- \i1|Add0~103\ = SHARE((!A(19) & (A(18) & A(15))) # (A(19) & ((A(15)) # (A(18)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(19),
	datac => ALT_INV_A(18),
	datad => ALT_INV_A(15),
	cin => \i1|Add0~106\,
	sharein => \i1|Add0~107\,
	sumout => \i1|Add0~101_sumout\,
	cout => \i1|Add0~102\,
	shareout => \i1|Add0~103\);

-- Location: LABCELL_X85_Y10_N33
\i1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~97_sumout\ = SUM(( !A(20) $ (!A(19) $ (A(16))) ) + ( \i1|Add0~103\ ) + ( \i1|Add0~102\ ))
-- \i1|Add0~98\ = CARRY(( !A(20) $ (!A(19) $ (A(16))) ) + ( \i1|Add0~103\ ) + ( \i1|Add0~102\ ))
-- \i1|Add0~99\ = SHARE((!A(20) & (A(19) & A(16))) # (A(20) & ((A(16)) # (A(19)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110001011100000000000000000110100101101001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(20),
	datab => ALT_INV_A(19),
	datac => ALT_INV_A(16),
	cin => \i1|Add0~102\,
	sharein => \i1|Add0~103\,
	sumout => \i1|Add0~97_sumout\,
	cout => \i1|Add0~98\,
	shareout => \i1|Add0~99\);

-- Location: LABCELL_X85_Y10_N36
\i1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~93_sumout\ = SUM(( !A(21) $ (!A(20) $ (A(17))) ) + ( \i1|Add0~99\ ) + ( \i1|Add0~98\ ))
-- \i1|Add0~94\ = CARRY(( !A(21) $ (!A(20) $ (A(17))) ) + ( \i1|Add0~99\ ) + ( \i1|Add0~98\ ))
-- \i1|Add0~95\ = SHARE((!A(21) & (A(20) & A(17))) # (A(21) & ((A(17)) # (A(20)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(21),
	datac => ALT_INV_A(20),
	datad => ALT_INV_A(17),
	cin => \i1|Add0~98\,
	sharein => \i1|Add0~99\,
	sumout => \i1|Add0~93_sumout\,
	cout => \i1|Add0~94\,
	shareout => \i1|Add0~95\);

-- Location: LABCELL_X85_Y10_N39
\i1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~89_sumout\ = SUM(( !A(21) $ (!A(22) $ (A(18))) ) + ( \i1|Add0~95\ ) + ( \i1|Add0~94\ ))
-- \i1|Add0~90\ = CARRY(( !A(21) $ (!A(22) $ (A(18))) ) + ( \i1|Add0~95\ ) + ( \i1|Add0~94\ ))
-- \i1|Add0~91\ = SHARE((!A(21) & (A(22) & A(18))) # (A(21) & ((A(18)) # (A(22)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(21),
	datac => ALT_INV_A(22),
	datad => ALT_INV_A(18),
	cin => \i1|Add0~94\,
	sharein => \i1|Add0~95\,
	sumout => \i1|Add0~89_sumout\,
	cout => \i1|Add0~90\,
	shareout => \i1|Add0~91\);

-- Location: LABCELL_X85_Y10_N42
\i1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~85_sumout\ = SUM(( !A(19) $ (!A(23) $ (A(22))) ) + ( \i1|Add0~91\ ) + ( \i1|Add0~90\ ))
-- \i1|Add0~86\ = CARRY(( !A(19) $ (!A(23) $ (A(22))) ) + ( \i1|Add0~91\ ) + ( \i1|Add0~90\ ))
-- \i1|Add0~87\ = SHARE((!A(19) & (A(23) & A(22))) # (A(19) & ((A(22)) # (A(23)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(19),
	datac => ALT_INV_A(23),
	datad => ALT_INV_A(22),
	cin => \i1|Add0~90\,
	sharein => \i1|Add0~91\,
	sumout => \i1|Add0~85_sumout\,
	cout => \i1|Add0~86\,
	shareout => \i1|Add0~87\);

-- Location: LABCELL_X85_Y10_N45
\i1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~81_sumout\ = SUM(( !A(23) $ (!A(24) $ (A(20))) ) + ( \i1|Add0~87\ ) + ( \i1|Add0~86\ ))
-- \i1|Add0~82\ = CARRY(( !A(23) $ (!A(24) $ (A(20))) ) + ( \i1|Add0~87\ ) + ( \i1|Add0~86\ ))
-- \i1|Add0~83\ = SHARE((!A(23) & (A(24) & A(20))) # (A(23) & ((A(20)) # (A(24)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(23),
	datac => ALT_INV_A(24),
	datad => ALT_INV_A(20),
	cin => \i1|Add0~86\,
	sharein => \i1|Add0~87\,
	sumout => \i1|Add0~81_sumout\,
	cout => \i1|Add0~82\,
	shareout => \i1|Add0~83\);

-- Location: LABCELL_X85_Y10_N48
\i1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~77_sumout\ = SUM(( !A(25) $ (!A(24) $ (A(21))) ) + ( \i1|Add0~83\ ) + ( \i1|Add0~82\ ))
-- \i1|Add0~78\ = CARRY(( !A(25) $ (!A(24) $ (A(21))) ) + ( \i1|Add0~83\ ) + ( \i1|Add0~82\ ))
-- \i1|Add0~79\ = SHARE((!A(25) & (A(24) & A(21))) # (A(25) & ((A(21)) # (A(24)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010111011100000000000000000110011010011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(25),
	datab => ALT_INV_A(24),
	datad => ALT_INV_A(21),
	cin => \i1|Add0~82\,
	sharein => \i1|Add0~83\,
	sumout => \i1|Add0~77_sumout\,
	cout => \i1|Add0~78\,
	shareout => \i1|Add0~79\);

-- Location: LABCELL_X85_Y10_N51
\i1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~73_sumout\ = SUM(( !A(22) $ (!A(25)) ) + ( \i1|Add0~79\ ) + ( \i1|Add0~78\ ))
-- \i1|Add0~74\ = CARRY(( !A(22) $ (!A(25)) ) + ( \i1|Add0~79\ ) + ( \i1|Add0~78\ ))
-- \i1|Add0~75\ = SHARE((A(22) & A(25)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(22),
	datad => ALT_INV_A(25),
	cin => \i1|Add0~78\,
	sharein => \i1|Add0~79\,
	sumout => \i1|Add0~73_sumout\,
	cout => \i1|Add0~74\,
	shareout => \i1|Add0~75\);

-- Location: LABCELL_X85_Y10_N54
\i1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~69_sumout\ = SUM(( A(23) ) + ( \i1|Add0~75\ ) + ( \i1|Add0~74\ ))
-- \i1|Add0~70\ = CARRY(( A(23) ) + ( \i1|Add0~75\ ) + ( \i1|Add0~74\ ))
-- \i1|Add0~71\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(23),
	cin => \i1|Add0~74\,
	sharein => \i1|Add0~75\,
	sumout => \i1|Add0~69_sumout\,
	cout => \i1|Add0~70\,
	shareout => \i1|Add0~71\);

-- Location: LABCELL_X85_Y10_N57
\i1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~65_sumout\ = SUM(( A(24) ) + ( \i1|Add0~71\ ) + ( \i1|Add0~70\ ))
-- \i1|Add0~66\ = CARRY(( A(24) ) + ( \i1|Add0~71\ ) + ( \i1|Add0~70\ ))
-- \i1|Add0~67\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(24),
	cin => \i1|Add0~70\,
	sharein => \i1|Add0~71\,
	sumout => \i1|Add0~65_sumout\,
	cout => \i1|Add0~66\,
	shareout => \i1|Add0~67\);

-- Location: LABCELL_X85_Y9_N0
\i1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~61_sumout\ = SUM(( A(25) ) + ( \i1|Add0~67\ ) + ( \i1|Add0~66\ ))
-- \i1|Add0~62\ = CARRY(( A(25) ) + ( \i1|Add0~67\ ) + ( \i1|Add0~66\ ))
-- \i1|Add0~63\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(25),
	cin => \i1|Add0~66\,
	sharein => \i1|Add0~67\,
	sumout => \i1|Add0~61_sumout\,
	cout => \i1|Add0~62\,
	shareout => \i1|Add0~63\);

-- Location: LABCELL_X83_Y11_N30
\i1|Add3~346\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~346_cout\ = CARRY(( !\i1|Add0~177_sumout\ $ (\i1|Add3~349_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \i1|Add3~347\ = SHARE((\i1|Add3~349_sumout\) # (\i1|Add0~177_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111111100000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add0~177_sumout\,
	datad => \i1|ALT_INV_Add3~349_sumout\,
	cin => GND,
	sharein => GND,
	cout => \i1|Add3~346_cout\,
	shareout => \i1|Add3~347\);

-- Location: LABCELL_X83_Y11_N33
\i1|Add3~338\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~338_cout\ = CARRY(( !\i1|Add3~341_sumout\ $ (!\i1|Add0~173_sumout\) ) + ( \i1|Add3~347\ ) + ( \i1|Add3~346_cout\ ))
-- \i1|Add3~339\ = SHARE((\i1|Add3~341_sumout\ & \i1|Add0~173_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~341_sumout\,
	datad => \i1|ALT_INV_Add0~173_sumout\,
	cin => \i1|Add3~346_cout\,
	sharein => \i1|Add3~347\,
	cout => \i1|Add3~338_cout\,
	shareout => \i1|Add3~339\);

-- Location: LABCELL_X83_Y11_N36
\i1|Add3~330\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~330_cout\ = CARRY(( !\i1|Add3~333_sumout\ $ (!\i1|Add0~169_sumout\) ) + ( \i1|Add3~339\ ) + ( \i1|Add3~338_cout\ ))
-- \i1|Add3~331\ = SHARE((\i1|Add3~333_sumout\ & \i1|Add0~169_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \i1|ALT_INV_Add3~333_sumout\,
	datac => \i1|ALT_INV_Add0~169_sumout\,
	cin => \i1|Add3~338_cout\,
	sharein => \i1|Add3~339\,
	cout => \i1|Add3~330_cout\,
	shareout => \i1|Add3~331\);

-- Location: LABCELL_X83_Y11_N39
\i1|Add3~322\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~322_cout\ = CARRY(( !\i1|Add0~165_sumout\ $ (!\i1|Add3~325_sumout\) ) + ( \i1|Add3~331\ ) + ( \i1|Add3~330_cout\ ))
-- \i1|Add3~323\ = SHARE((\i1|Add0~165_sumout\ & \i1|Add3~325_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add0~165_sumout\,
	datad => \i1|ALT_INV_Add3~325_sumout\,
	cin => \i1|Add3~330_cout\,
	sharein => \i1|Add3~331\,
	cout => \i1|Add3~322_cout\,
	shareout => \i1|Add3~323\);

-- Location: LABCELL_X83_Y11_N42
\i1|Add3~314\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~314_cout\ = CARRY(( !\i1|Add3~317_sumout\ $ (!\i1|Add0~161_sumout\) ) + ( \i1|Add3~323\ ) + ( \i1|Add3~322_cout\ ))
-- \i1|Add3~315\ = SHARE((\i1|Add3~317_sumout\ & \i1|Add0~161_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \i1|ALT_INV_Add3~317_sumout\,
	datad => \i1|ALT_INV_Add0~161_sumout\,
	cin => \i1|Add3~322_cout\,
	sharein => \i1|Add3~323\,
	cout => \i1|Add3~314_cout\,
	shareout => \i1|Add3~315\);

-- Location: LABCELL_X83_Y11_N45
\i1|Add3~306\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~306_cout\ = CARRY(( !\i1|Add0~157_sumout\ $ (!\i1|Add3~309_sumout\) ) + ( \i1|Add3~315\ ) + ( \i1|Add3~314_cout\ ))
-- \i1|Add3~307\ = SHARE((\i1|Add0~157_sumout\ & \i1|Add3~309_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add0~157_sumout\,
	datad => \i1|ALT_INV_Add3~309_sumout\,
	cin => \i1|Add3~314_cout\,
	sharein => \i1|Add3~315\,
	cout => \i1|Add3~306_cout\,
	shareout => \i1|Add3~307\);

-- Location: LABCELL_X83_Y11_N48
\i1|Add3~298\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~298_cout\ = CARRY(( !\i1|Add3~301_sumout\ $ (!\i1|Add0~153_sumout\) ) + ( \i1|Add3~307\ ) + ( \i1|Add3~306_cout\ ))
-- \i1|Add3~299\ = SHARE((\i1|Add3~301_sumout\ & \i1|Add0~153_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~301_sumout\,
	datad => \i1|ALT_INV_Add0~153_sumout\,
	cin => \i1|Add3~306_cout\,
	sharein => \i1|Add3~307\,
	cout => \i1|Add3~298_cout\,
	shareout => \i1|Add3~299\);

-- Location: LABCELL_X83_Y11_N51
\i1|Add3~290\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~290_cout\ = CARRY(( !\i1|Add0~149_sumout\ $ (!\i1|Add3~293_sumout\) ) + ( \i1|Add3~299\ ) + ( \i1|Add3~298_cout\ ))
-- \i1|Add3~291\ = SHARE((\i1|Add0~149_sumout\ & \i1|Add3~293_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add0~149_sumout\,
	datad => \i1|ALT_INV_Add3~293_sumout\,
	cin => \i1|Add3~298_cout\,
	sharein => \i1|Add3~299\,
	cout => \i1|Add3~290_cout\,
	shareout => \i1|Add3~291\);

-- Location: LABCELL_X83_Y11_N54
\i1|Add3~282\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~282_cout\ = CARRY(( !\i1|Add3~285_sumout\ $ (!\i1|Add0~145_sumout\) ) + ( \i1|Add3~291\ ) + ( \i1|Add3~290_cout\ ))
-- \i1|Add3~283\ = SHARE((\i1|Add3~285_sumout\ & \i1|Add0~145_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~285_sumout\,
	datad => \i1|ALT_INV_Add0~145_sumout\,
	cin => \i1|Add3~290_cout\,
	sharein => \i1|Add3~291\,
	cout => \i1|Add3~282_cout\,
	shareout => \i1|Add3~283\);

-- Location: LABCELL_X83_Y11_N57
\i1|Add3~274\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~274_cout\ = CARRY(( !\i1|Add3~277_sumout\ $ (!\i1|Add0~141_sumout\) ) + ( \i1|Add3~283\ ) + ( \i1|Add3~282_cout\ ))
-- \i1|Add3~275\ = SHARE((\i1|Add3~277_sumout\ & \i1|Add0~141_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~277_sumout\,
	datad => \i1|ALT_INV_Add0~141_sumout\,
	cin => \i1|Add3~282_cout\,
	sharein => \i1|Add3~283\,
	cout => \i1|Add3~274_cout\,
	shareout => \i1|Add3~275\);

-- Location: LABCELL_X83_Y10_N0
\i1|Add3~266\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~266_cout\ = CARRY(( !\i1|Add0~137_sumout\ $ (!\i1|Add3~269_sumout\) ) + ( \i1|Add3~275\ ) + ( \i1|Add3~274_cout\ ))
-- \i1|Add3~267\ = SHARE((\i1|Add0~137_sumout\ & \i1|Add3~269_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add0~137_sumout\,
	datad => \i1|ALT_INV_Add3~269_sumout\,
	cin => \i1|Add3~274_cout\,
	sharein => \i1|Add3~275\,
	cout => \i1|Add3~266_cout\,
	shareout => \i1|Add3~267\);

-- Location: LABCELL_X83_Y10_N3
\i1|Add3~258\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~258_cout\ = CARRY(( !\i1|Add0~133_sumout\ $ (!\i1|Add3~261_sumout\) ) + ( \i1|Add3~267\ ) + ( \i1|Add3~266_cout\ ))
-- \i1|Add3~259\ = SHARE((\i1|Add0~133_sumout\ & \i1|Add3~261_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add0~133_sumout\,
	datad => \i1|ALT_INV_Add3~261_sumout\,
	cin => \i1|Add3~266_cout\,
	sharein => \i1|Add3~267\,
	cout => \i1|Add3~258_cout\,
	shareout => \i1|Add3~259\);

-- Location: LABCELL_X83_Y10_N6
\i1|Add3~250\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~250_cout\ = CARRY(( !\i1|Add3~253_sumout\ $ (!\i1|Add0~129_sumout\) ) + ( \i1|Add3~259\ ) + ( \i1|Add3~258_cout\ ))
-- \i1|Add3~251\ = SHARE((\i1|Add3~253_sumout\ & \i1|Add0~129_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~253_sumout\,
	datad => \i1|ALT_INV_Add0~129_sumout\,
	cin => \i1|Add3~258_cout\,
	sharein => \i1|Add3~259\,
	cout => \i1|Add3~250_cout\,
	shareout => \i1|Add3~251\);

-- Location: LABCELL_X83_Y10_N9
\i1|Add3~242\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~242_cout\ = CARRY(( !\i1|Add0~125_sumout\ $ (!\i1|Add3~245_sumout\) ) + ( \i1|Add3~251\ ) + ( \i1|Add3~250_cout\ ))
-- \i1|Add3~243\ = SHARE((\i1|Add0~125_sumout\ & \i1|Add3~245_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add0~125_sumout\,
	datad => \i1|ALT_INV_Add3~245_sumout\,
	cin => \i1|Add3~250_cout\,
	sharein => \i1|Add3~251\,
	cout => \i1|Add3~242_cout\,
	shareout => \i1|Add3~243\);

-- Location: LABCELL_X83_Y10_N12
\i1|Add3~234\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~234_cout\ = CARRY(( !\i1|Add0~121_sumout\ $ (!\i1|Add3~237_sumout\) ) + ( \i1|Add3~243\ ) + ( \i1|Add3~242_cout\ ))
-- \i1|Add3~235\ = SHARE((\i1|Add0~121_sumout\ & \i1|Add3~237_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \i1|ALT_INV_Add0~121_sumout\,
	datac => \i1|ALT_INV_Add3~237_sumout\,
	cin => \i1|Add3~242_cout\,
	sharein => \i1|Add3~243\,
	cout => \i1|Add3~234_cout\,
	shareout => \i1|Add3~235\);

-- Location: LABCELL_X83_Y10_N15
\i1|Add3~226\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~226_cout\ = CARRY(( !\i1|Add0~117_sumout\ $ (!\i1|Add3~229_sumout\) ) + ( \i1|Add3~235\ ) + ( \i1|Add3~234_cout\ ))
-- \i1|Add3~227\ = SHARE((\i1|Add0~117_sumout\ & \i1|Add3~229_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add0~117_sumout\,
	datad => \i1|ALT_INV_Add3~229_sumout\,
	cin => \i1|Add3~234_cout\,
	sharein => \i1|Add3~235\,
	cout => \i1|Add3~226_cout\,
	shareout => \i1|Add3~227\);

-- Location: LABCELL_X83_Y10_N18
\i1|Add3~218\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~218_cout\ = CARRY(( !\i1|Add3~221_sumout\ $ (!\i1|Add0~113_sumout\) ) + ( \i1|Add3~227\ ) + ( \i1|Add3~226_cout\ ))
-- \i1|Add3~219\ = SHARE((\i1|Add3~221_sumout\ & \i1|Add0~113_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~221_sumout\,
	datad => \i1|ALT_INV_Add0~113_sumout\,
	cin => \i1|Add3~226_cout\,
	sharein => \i1|Add3~227\,
	cout => \i1|Add3~218_cout\,
	shareout => \i1|Add3~219\);

-- Location: LABCELL_X83_Y10_N21
\i1|Add3~210\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~210_cout\ = CARRY(( !\i1|Add0~109_sumout\ $ (!\i1|Add3~213_sumout\) ) + ( \i1|Add3~219\ ) + ( \i1|Add3~218_cout\ ))
-- \i1|Add3~211\ = SHARE((\i1|Add0~109_sumout\ & \i1|Add3~213_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add0~109_sumout\,
	datad => \i1|ALT_INV_Add3~213_sumout\,
	cin => \i1|Add3~218_cout\,
	sharein => \i1|Add3~219\,
	cout => \i1|Add3~210_cout\,
	shareout => \i1|Add3~211\);

-- Location: LABCELL_X83_Y10_N24
\i1|Add3~202\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~202_cout\ = CARRY(( !\i1|Add0~105_sumout\ $ (!\i1|Add3~205_sumout\) ) + ( \i1|Add3~211\ ) + ( \i1|Add3~210_cout\ ))
-- \i1|Add3~203\ = SHARE((\i1|Add0~105_sumout\ & \i1|Add3~205_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \i1|ALT_INV_Add0~105_sumout\,
	datac => \i1|ALT_INV_Add3~205_sumout\,
	cin => \i1|Add3~210_cout\,
	sharein => \i1|Add3~211\,
	cout => \i1|Add3~202_cout\,
	shareout => \i1|Add3~203\);

-- Location: LABCELL_X83_Y10_N27
\i1|Add3~194\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~194_cout\ = CARRY(( !\i1|Add3~197_sumout\ $ (!\i1|Add0~101_sumout\) ) + ( \i1|Add3~203\ ) + ( \i1|Add3~202_cout\ ))
-- \i1|Add3~195\ = SHARE((\i1|Add3~197_sumout\ & \i1|Add0~101_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~197_sumout\,
	datad => \i1|ALT_INV_Add0~101_sumout\,
	cin => \i1|Add3~202_cout\,
	sharein => \i1|Add3~203\,
	cout => \i1|Add3~194_cout\,
	shareout => \i1|Add3~195\);

-- Location: LABCELL_X83_Y10_N30
\i1|Add3~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~186_cout\ = CARRY(( !\i1|Add0~97_sumout\ $ (!\i1|Add3~189_sumout\) ) + ( \i1|Add3~195\ ) + ( \i1|Add3~194_cout\ ))
-- \i1|Add3~187\ = SHARE((\i1|Add0~97_sumout\ & \i1|Add3~189_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add0~97_sumout\,
	datad => \i1|ALT_INV_Add3~189_sumout\,
	cin => \i1|Add3~194_cout\,
	sharein => \i1|Add3~195\,
	cout => \i1|Add3~186_cout\,
	shareout => \i1|Add3~187\);

-- Location: LABCELL_X83_Y10_N33
\i1|Add3~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~178_cout\ = CARRY(( !\i1|Add0~93_sumout\ $ (!\i1|Add3~181_sumout\) ) + ( \i1|Add3~187\ ) + ( \i1|Add3~186_cout\ ))
-- \i1|Add3~179\ = SHARE((\i1|Add0~93_sumout\ & \i1|Add3~181_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add0~93_sumout\,
	datad => \i1|ALT_INV_Add3~181_sumout\,
	cin => \i1|Add3~186_cout\,
	sharein => \i1|Add3~187\,
	cout => \i1|Add3~178_cout\,
	shareout => \i1|Add3~179\);

-- Location: LABCELL_X83_Y10_N36
\i1|Add3~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~170_cout\ = CARRY(( !\i1|Add0~89_sumout\ $ (!\i1|Add3~173_sumout\) ) + ( \i1|Add3~179\ ) + ( \i1|Add3~178_cout\ ))
-- \i1|Add3~171\ = SHARE((\i1|Add0~89_sumout\ & \i1|Add3~173_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add0~89_sumout\,
	datad => \i1|ALT_INV_Add3~173_sumout\,
	cin => \i1|Add3~178_cout\,
	sharein => \i1|Add3~179\,
	cout => \i1|Add3~170_cout\,
	shareout => \i1|Add3~171\);

-- Location: LABCELL_X83_Y10_N39
\i1|Add3~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~162_cout\ = CARRY(( !\i1|Add3~165_sumout\ $ (!\i1|Add0~85_sumout\) ) + ( \i1|Add3~171\ ) + ( \i1|Add3~170_cout\ ))
-- \i1|Add3~163\ = SHARE((\i1|Add3~165_sumout\ & \i1|Add0~85_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~165_sumout\,
	datad => \i1|ALT_INV_Add0~85_sumout\,
	cin => \i1|Add3~170_cout\,
	sharein => \i1|Add3~171\,
	cout => \i1|Add3~162_cout\,
	shareout => \i1|Add3~163\);

-- Location: LABCELL_X83_Y10_N42
\i1|Add3~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~154_cout\ = CARRY(( !\i1|Add3~157_sumout\ $ (!\i1|Add0~81_sumout\) ) + ( \i1|Add3~163\ ) + ( \i1|Add3~162_cout\ ))
-- \i1|Add3~155\ = SHARE((\i1|Add3~157_sumout\ & \i1|Add0~81_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~157_sumout\,
	datad => \i1|ALT_INV_Add0~81_sumout\,
	cin => \i1|Add3~162_cout\,
	sharein => \i1|Add3~163\,
	cout => \i1|Add3~154_cout\,
	shareout => \i1|Add3~155\);

-- Location: LABCELL_X83_Y10_N45
\i1|Add3~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~146_cout\ = CARRY(( !\i1|Add0~77_sumout\ $ (!\i1|Add3~149_sumout\) ) + ( \i1|Add3~155\ ) + ( \i1|Add3~154_cout\ ))
-- \i1|Add3~147\ = SHARE((\i1|Add0~77_sumout\ & \i1|Add3~149_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add0~77_sumout\,
	datad => \i1|ALT_INV_Add3~149_sumout\,
	cin => \i1|Add3~154_cout\,
	sharein => \i1|Add3~155\,
	cout => \i1|Add3~146_cout\,
	shareout => \i1|Add3~147\);

-- Location: LABCELL_X83_Y10_N48
\i1|Add3~138\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~138_cout\ = CARRY(( !\i1|Add3~141_sumout\ $ (!\i1|Add0~73_sumout\) ) + ( \i1|Add3~147\ ) + ( \i1|Add3~146_cout\ ))
-- \i1|Add3~139\ = SHARE((\i1|Add3~141_sumout\ & \i1|Add0~73_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \i1|ALT_INV_Add3~141_sumout\,
	datac => \i1|ALT_INV_Add0~73_sumout\,
	cin => \i1|Add3~146_cout\,
	sharein => \i1|Add3~147\,
	cout => \i1|Add3~138_cout\,
	shareout => \i1|Add3~139\);

-- Location: LABCELL_X83_Y10_N51
\i1|Add3~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~130_cout\ = CARRY(( !\i1|Add0~69_sumout\ $ (!\i1|Add3~133_sumout\) ) + ( \i1|Add3~139\ ) + ( \i1|Add3~138_cout\ ))
-- \i1|Add3~131\ = SHARE((\i1|Add0~69_sumout\ & \i1|Add3~133_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add0~69_sumout\,
	datad => \i1|ALT_INV_Add3~133_sumout\,
	cin => \i1|Add3~138_cout\,
	sharein => \i1|Add3~139\,
	cout => \i1|Add3~130_cout\,
	shareout => \i1|Add3~131\);

-- Location: LABCELL_X83_Y10_N54
\i1|Add3~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~122_cout\ = CARRY(( !\i1|Add0~65_sumout\ $ (!\i1|Add3~125_sumout\) ) + ( \i1|Add3~131\ ) + ( \i1|Add3~130_cout\ ))
-- \i1|Add3~123\ = SHARE((\i1|Add0~65_sumout\ & \i1|Add3~125_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add0~65_sumout\,
	datad => \i1|ALT_INV_Add3~125_sumout\,
	cin => \i1|Add3~130_cout\,
	sharein => \i1|Add3~131\,
	cout => \i1|Add3~122_cout\,
	shareout => \i1|Add3~123\);

-- Location: LABCELL_X83_Y10_N57
\i1|Add3~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~114_cout\ = CARRY(( !\i1|Add3~117_sumout\ $ (!\i1|Add0~61_sumout\) ) + ( \i1|Add3~123\ ) + ( \i1|Add3~122_cout\ ))
-- \i1|Add3~115\ = SHARE((\i1|Add3~117_sumout\ & \i1|Add0~61_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_Add3~117_sumout\,
	datad => \i1|ALT_INV_Add0~61_sumout\,
	cin => \i1|Add3~122_cout\,
	sharein => \i1|Add3~123\,
	cout => \i1|Add3~114_cout\,
	shareout => \i1|Add3~115\);

-- Location: LABCELL_X83_Y9_N0
\i1|Add3~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~58_cout\ = CARRY(( !\i1|Add0~53_sumout\ $ (!\i1|Add3~109_sumout\) ) + ( \i1|Add3~115\ ) + ( \i1|Add3~114_cout\ ))
-- \i1|Add3~59\ = SHARE((\i1|Add0~53_sumout\ & \i1|Add3~109_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add0~53_sumout\,
	datad => \i1|ALT_INV_Add3~109_sumout\,
	cin => \i1|Add3~114_cout\,
	sharein => \i1|Add3~115\,
	cout => \i1|Add3~58_cout\,
	shareout => \i1|Add3~59\);

-- Location: LABCELL_X83_Y9_N3
\i1|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~1_sumout\ = SUM(( !\i1|Add0~1_sumout\ $ (!\i1|Add3~53_sumout\) ) + ( \i1|Add3~59\ ) + ( \i1|Add3~58_cout\ ))
-- \i1|Add3~2\ = CARRY(( !\i1|Add0~1_sumout\ $ (!\i1|Add3~53_sumout\) ) + ( \i1|Add3~59\ ) + ( \i1|Add3~58_cout\ ))
-- \i1|Add3~3\ = SHARE((\i1|Add0~1_sumout\ & \i1|Add3~53_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add0~1_sumout\,
	datad => \i1|ALT_INV_Add3~53_sumout\,
	cin => \i1|Add3~58_cout\,
	sharein => \i1|Add3~59\,
	sumout => \i1|Add3~1_sumout\,
	cout => \i1|Add3~2\,
	shareout => \i1|Add3~3\);

-- Location: LABCELL_X83_Y9_N6
\i1|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~5_sumout\ = SUM(( !\i1|Add3~61_sumout\ $ (!\i1|Add0~5_sumout\) ) + ( \i1|Add3~3\ ) + ( \i1|Add3~2\ ))
-- \i1|Add3~6\ = CARRY(( !\i1|Add3~61_sumout\ $ (!\i1|Add0~5_sumout\) ) + ( \i1|Add3~3\ ) + ( \i1|Add3~2\ ))
-- \i1|Add3~7\ = SHARE((\i1|Add3~61_sumout\ & \i1|Add0~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~61_sumout\,
	datad => \i1|ALT_INV_Add0~5_sumout\,
	cin => \i1|Add3~2\,
	sharein => \i1|Add3~3\,
	sumout => \i1|Add3~5_sumout\,
	cout => \i1|Add3~6\,
	shareout => \i1|Add3~7\);

-- Location: LABCELL_X83_Y9_N9
\i1|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~9_sumout\ = SUM(( !\i1|Add0~9_sumout\ $ (!\i1|Add3~65_sumout\) ) + ( \i1|Add3~7\ ) + ( \i1|Add3~6\ ))
-- \i1|Add3~10\ = CARRY(( !\i1|Add0~9_sumout\ $ (!\i1|Add3~65_sumout\) ) + ( \i1|Add3~7\ ) + ( \i1|Add3~6\ ))
-- \i1|Add3~11\ = SHARE((\i1|Add0~9_sumout\ & \i1|Add3~65_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add0~9_sumout\,
	datad => \i1|ALT_INV_Add3~65_sumout\,
	cin => \i1|Add3~6\,
	sharein => \i1|Add3~7\,
	sumout => \i1|Add3~9_sumout\,
	cout => \i1|Add3~10\,
	shareout => \i1|Add3~11\);

-- Location: LABCELL_X83_Y9_N12
\i1|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~13_sumout\ = SUM(( !\i1|Add0~13_sumout\ $ (!\i1|Add3~69_sumout\) ) + ( \i1|Add3~11\ ) + ( \i1|Add3~10\ ))
-- \i1|Add3~14\ = CARRY(( !\i1|Add0~13_sumout\ $ (!\i1|Add3~69_sumout\) ) + ( \i1|Add3~11\ ) + ( \i1|Add3~10\ ))
-- \i1|Add3~15\ = SHARE((\i1|Add0~13_sumout\ & \i1|Add3~69_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add0~13_sumout\,
	datad => \i1|ALT_INV_Add3~69_sumout\,
	cin => \i1|Add3~10\,
	sharein => \i1|Add3~11\,
	sumout => \i1|Add3~13_sumout\,
	cout => \i1|Add3~14\,
	shareout => \i1|Add3~15\);

-- Location: LABCELL_X83_Y9_N15
\i1|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~17_sumout\ = SUM(( !\i1|Add3~73_sumout\ $ (!\i1|Add0~17_sumout\) ) + ( \i1|Add3~15\ ) + ( \i1|Add3~14\ ))
-- \i1|Add3~18\ = CARRY(( !\i1|Add3~73_sumout\ $ (!\i1|Add0~17_sumout\) ) + ( \i1|Add3~15\ ) + ( \i1|Add3~14\ ))
-- \i1|Add3~19\ = SHARE((\i1|Add3~73_sumout\ & \i1|Add0~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~73_sumout\,
	datad => \i1|ALT_INV_Add0~17_sumout\,
	cin => \i1|Add3~14\,
	sharein => \i1|Add3~15\,
	sumout => \i1|Add3~17_sumout\,
	cout => \i1|Add3~18\,
	shareout => \i1|Add3~19\);

-- Location: LABCELL_X83_Y9_N18
\i1|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~21_sumout\ = SUM(( !\i1|Add0~21_sumout\ $ (!\i1|Add3~77_sumout\) ) + ( \i1|Add3~19\ ) + ( \i1|Add3~18\ ))
-- \i1|Add3~22\ = CARRY(( !\i1|Add0~21_sumout\ $ (!\i1|Add3~77_sumout\) ) + ( \i1|Add3~19\ ) + ( \i1|Add3~18\ ))
-- \i1|Add3~23\ = SHARE((\i1|Add0~21_sumout\ & \i1|Add3~77_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add0~21_sumout\,
	datad => \i1|ALT_INV_Add3~77_sumout\,
	cin => \i1|Add3~18\,
	sharein => \i1|Add3~19\,
	sumout => \i1|Add3~21_sumout\,
	cout => \i1|Add3~22\,
	shareout => \i1|Add3~23\);

-- Location: LABCELL_X83_Y9_N21
\i1|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~25_sumout\ = SUM(( !\i1|Add3~81_sumout\ $ (!\i1|Add0~25_sumout\) ) + ( \i1|Add3~23\ ) + ( \i1|Add3~22\ ))
-- \i1|Add3~26\ = CARRY(( !\i1|Add3~81_sumout\ $ (!\i1|Add0~25_sumout\) ) + ( \i1|Add3~23\ ) + ( \i1|Add3~22\ ))
-- \i1|Add3~27\ = SHARE((\i1|Add3~81_sumout\ & \i1|Add0~25_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~81_sumout\,
	datad => \i1|ALT_INV_Add0~25_sumout\,
	cin => \i1|Add3~22\,
	sharein => \i1|Add3~23\,
	sumout => \i1|Add3~25_sumout\,
	cout => \i1|Add3~26\,
	shareout => \i1|Add3~27\);

-- Location: LABCELL_X83_Y9_N24
\i1|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~29_sumout\ = SUM(( !\i1|Add3~85_sumout\ $ (!\i1|Add0~29_sumout\) ) + ( \i1|Add3~27\ ) + ( \i1|Add3~26\ ))
-- \i1|Add3~30\ = CARRY(( !\i1|Add3~85_sumout\ $ (!\i1|Add0~29_sumout\) ) + ( \i1|Add3~27\ ) + ( \i1|Add3~26\ ))
-- \i1|Add3~31\ = SHARE((\i1|Add3~85_sumout\ & \i1|Add0~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~85_sumout\,
	datad => \i1|ALT_INV_Add0~29_sumout\,
	cin => \i1|Add3~26\,
	sharein => \i1|Add3~27\,
	sumout => \i1|Add3~29_sumout\,
	cout => \i1|Add3~30\,
	shareout => \i1|Add3~31\);

-- Location: LABCELL_X83_Y9_N27
\i1|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~33_sumout\ = SUM(( !\i1|Add3~89_sumout\ $ (!\i1|Add0~33_sumout\) ) + ( \i1|Add3~31\ ) + ( \i1|Add3~30\ ))
-- \i1|Add3~34\ = CARRY(( !\i1|Add3~89_sumout\ $ (!\i1|Add0~33_sumout\) ) + ( \i1|Add3~31\ ) + ( \i1|Add3~30\ ))
-- \i1|Add3~35\ = SHARE((\i1|Add3~89_sumout\ & \i1|Add0~33_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~89_sumout\,
	datad => \i1|ALT_INV_Add0~33_sumout\,
	cin => \i1|Add3~30\,
	sharein => \i1|Add3~31\,
	sumout => \i1|Add3~33_sumout\,
	cout => \i1|Add3~34\,
	shareout => \i1|Add3~35\);

-- Location: LABCELL_X83_Y9_N30
\i1|Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~37_sumout\ = SUM(( !\i1|Add3~93_sumout\ $ (!\i1|Add0~37_sumout\) ) + ( \i1|Add3~35\ ) + ( \i1|Add3~34\ ))
-- \i1|Add3~38\ = CARRY(( !\i1|Add3~93_sumout\ $ (!\i1|Add0~37_sumout\) ) + ( \i1|Add3~35\ ) + ( \i1|Add3~34\ ))
-- \i1|Add3~39\ = SHARE((\i1|Add3~93_sumout\ & \i1|Add0~37_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \i1|ALT_INV_Add3~93_sumout\,
	datac => \i1|ALT_INV_Add0~37_sumout\,
	cin => \i1|Add3~34\,
	sharein => \i1|Add3~35\,
	sumout => \i1|Add3~37_sumout\,
	cout => \i1|Add3~38\,
	shareout => \i1|Add3~39\);

-- Location: LABCELL_X83_Y9_N33
\i1|Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~41_sumout\ = SUM(( !\i1|Add3~101_sumout\ $ (!\i1|Add0~41_sumout\) ) + ( \i1|Add3~39\ ) + ( \i1|Add3~38\ ))
-- \i1|Add3~42\ = CARRY(( !\i1|Add3~101_sumout\ $ (!\i1|Add0~41_sumout\) ) + ( \i1|Add3~39\ ) + ( \i1|Add3~38\ ))
-- \i1|Add3~43\ = SHARE((\i1|Add3~101_sumout\ & \i1|Add0~41_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~101_sumout\,
	datad => \i1|ALT_INV_Add0~41_sumout\,
	cin => \i1|Add3~38\,
	sharein => \i1|Add3~39\,
	sumout => \i1|Add3~41_sumout\,
	cout => \i1|Add3~42\,
	shareout => \i1|Add3~43\);

-- Location: LABCELL_X83_Y9_N36
\i1|Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~45_sumout\ = SUM(( !\i1|Add0~45_sumout\ $ (!\i1|Add3~105_sumout\) ) + ( \i1|Add3~43\ ) + ( \i1|Add3~42\ ))
-- \i1|Add3~46\ = CARRY(( !\i1|Add0~45_sumout\ $ (!\i1|Add3~105_sumout\) ) + ( \i1|Add3~43\ ) + ( \i1|Add3~42\ ))
-- \i1|Add3~47\ = SHARE((\i1|Add0~45_sumout\ & \i1|Add3~105_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add0~45_sumout\,
	datad => \i1|ALT_INV_Add3~105_sumout\,
	cin => \i1|Add3~42\,
	sharein => \i1|Add3~43\,
	sumout => \i1|Add3~45_sumout\,
	cout => \i1|Add3~46\,
	shareout => \i1|Add3~47\);

-- Location: LABCELL_X83_Y9_N39
\i1|Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~49_sumout\ = SUM(( !\i1|Add0~49_sumout\ $ (!\i1|Add3~105_sumout\) ) + ( \i1|Add3~47\ ) + ( \i1|Add3~46\ ))
-- \i1|Add3~50\ = CARRY(( !\i1|Add0~49_sumout\ $ (!\i1|Add3~105_sumout\) ) + ( \i1|Add3~47\ ) + ( \i1|Add3~46\ ))
-- \i1|Add3~51\ = SHARE((\i1|Add0~49_sumout\ & \i1|Add3~105_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add0~49_sumout\,
	datad => \i1|ALT_INV_Add3~105_sumout\,
	cin => \i1|Add3~46\,
	sharein => \i1|Add3~47\,
	sumout => \i1|Add3~49_sumout\,
	cout => \i1|Add3~50\,
	shareout => \i1|Add3~51\);

-- Location: LABCELL_X83_Y11_N0
\i1|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add6~1_sumout\ = SUM(( \i1|Add3~9_sumout\ ) + ( \i1|Add3~1_sumout\ ) + ( !VCC ))
-- \i1|Add6~2\ = CARRY(( \i1|Add3~9_sumout\ ) + ( \i1|Add3~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i1|ALT_INV_Add3~1_sumout\,
	datad => \i1|ALT_INV_Add3~9_sumout\,
	cin => GND,
	sumout => \i1|Add6~1_sumout\,
	cout => \i1|Add6~2\);

-- Location: LABCELL_X83_Y11_N3
\i1|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add6~5_sumout\ = SUM(( \i1|Add3~5_sumout\ ) + ( \i1|Add3~13_sumout\ ) + ( \i1|Add6~2\ ))
-- \i1|Add6~6\ = CARRY(( \i1|Add3~5_sumout\ ) + ( \i1|Add3~13_sumout\ ) + ( \i1|Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~13_sumout\,
	datad => \i1|ALT_INV_Add3~5_sumout\,
	cin => \i1|Add6~2\,
	sumout => \i1|Add6~5_sumout\,
	cout => \i1|Add6~6\);

-- Location: LABCELL_X83_Y11_N6
\i1|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add6~9_sumout\ = SUM(( \i1|Add3~9_sumout\ ) + ( \i1|Add3~17_sumout\ ) + ( \i1|Add6~6\ ))
-- \i1|Add6~10\ = CARRY(( \i1|Add3~9_sumout\ ) + ( \i1|Add3~17_sumout\ ) + ( \i1|Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~17_sumout\,
	datad => \i1|ALT_INV_Add3~9_sumout\,
	cin => \i1|Add6~6\,
	sumout => \i1|Add6~9_sumout\,
	cout => \i1|Add6~10\);

-- Location: LABCELL_X83_Y11_N9
\i1|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add6~13_sumout\ = SUM(( \i1|Add3~13_sumout\ ) + ( \i1|Add3~21_sumout\ ) + ( \i1|Add6~10\ ))
-- \i1|Add6~14\ = CARRY(( \i1|Add3~13_sumout\ ) + ( \i1|Add3~21_sumout\ ) + ( \i1|Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~21_sumout\,
	datad => \i1|ALT_INV_Add3~13_sumout\,
	cin => \i1|Add6~10\,
	sumout => \i1|Add6~13_sumout\,
	cout => \i1|Add6~14\);

-- Location: LABCELL_X83_Y11_N12
\i1|Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add6~17_sumout\ = SUM(( \i1|Add3~25_sumout\ ) + ( \i1|Add3~17_sumout\ ) + ( \i1|Add6~14\ ))
-- \i1|Add6~18\ = CARRY(( \i1|Add3~25_sumout\ ) + ( \i1|Add3~17_sumout\ ) + ( \i1|Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~17_sumout\,
	datad => \i1|ALT_INV_Add3~25_sumout\,
	cin => \i1|Add6~14\,
	sumout => \i1|Add6~17_sumout\,
	cout => \i1|Add6~18\);

-- Location: LABCELL_X83_Y11_N15
\i1|Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add6~21_sumout\ = SUM(( \i1|Add3~29_sumout\ ) + ( \i1|Add3~21_sumout\ ) + ( \i1|Add6~18\ ))
-- \i1|Add6~22\ = CARRY(( \i1|Add3~29_sumout\ ) + ( \i1|Add3~21_sumout\ ) + ( \i1|Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~21_sumout\,
	datad => \i1|ALT_INV_Add3~29_sumout\,
	cin => \i1|Add6~18\,
	sumout => \i1|Add6~21_sumout\,
	cout => \i1|Add6~22\);

-- Location: LABCELL_X83_Y11_N18
\i1|Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add6~25_sumout\ = SUM(( !\i1|Add3~1_sumout\ $ (!\i1|Add3~25_sumout\) ) + ( \i1|Add3~33_sumout\ ) + ( \i1|Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i1|ALT_INV_Add3~1_sumout\,
	datac => \i1|ALT_INV_Add3~25_sumout\,
	dataf => \i1|ALT_INV_Add3~33_sumout\,
	cin => \i1|Add6~22\,
	sumout => \i1|Add6~25_sumout\);

-- Location: LABCELL_X85_Y9_N45
\i1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~57_sumout\ = SUM(( GND ) + ( \i1|Add0~51\ ) + ( \i1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \i1|Add0~50\,
	sharein => \i1|Add0~51\,
	sumout => \i1|Add0~57_sumout\);

-- Location: LABCELL_X83_Y9_N42
\i1|Add3~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add3~97_sumout\ = SUM(( !\i1|Add3~105_sumout\ $ (!\i1|Add0~57_sumout\) ) + ( \i1|Add3~51\ ) + ( \i1|Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~105_sumout\,
	datad => \i1|ALT_INV_Add0~57_sumout\,
	cin => \i1|Add3~50\,
	sharein => \i1|Add3~51\,
	sumout => \i1|Add3~97_sumout\);

-- Location: MLABCELL_X82_Y11_N30
\i1|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add7~1_sumout\ = SUM(( \i1|Add3~1_sumout\ ) + ( \i1|Add3~29_sumout\ ) + ( !VCC ))
-- \i1|Add7~2\ = CARRY(( \i1|Add3~1_sumout\ ) + ( \i1|Add3~29_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~29_sumout\,
	datad => \i1|ALT_INV_Add3~1_sumout\,
	cin => GND,
	sumout => \i1|Add7~1_sumout\,
	cout => \i1|Add7~2\);

-- Location: MLABCELL_X82_Y11_N33
\i1|Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add7~5_sumout\ = SUM(( \i1|Add3~5_sumout\ ) + ( \i1|Add3~33_sumout\ ) + ( \i1|Add7~2\ ))
-- \i1|Add7~6\ = CARRY(( \i1|Add3~5_sumout\ ) + ( \i1|Add3~33_sumout\ ) + ( \i1|Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~33_sumout\,
	datad => \i1|ALT_INV_Add3~5_sumout\,
	cin => \i1|Add7~2\,
	sumout => \i1|Add7~5_sumout\,
	cout => \i1|Add7~6\);

-- Location: MLABCELL_X82_Y11_N36
\i1|Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add7~9_sumout\ = SUM(( \i1|Add6~1_sumout\ ) + ( \i1|Add3~37_sumout\ ) + ( \i1|Add7~6\ ))
-- \i1|Add7~10\ = CARRY(( \i1|Add6~1_sumout\ ) + ( \i1|Add3~37_sumout\ ) + ( \i1|Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~37_sumout\,
	datad => \i1|ALT_INV_Add6~1_sumout\,
	cin => \i1|Add7~6\,
	sumout => \i1|Add7~9_sumout\,
	cout => \i1|Add7~10\);

-- Location: MLABCELL_X82_Y11_N39
\i1|Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add7~13_sumout\ = SUM(( \i1|Add6~5_sumout\ ) + ( \i1|Add3~41_sumout\ ) + ( \i1|Add7~10\ ))
-- \i1|Add7~14\ = CARRY(( \i1|Add6~5_sumout\ ) + ( \i1|Add3~41_sumout\ ) + ( \i1|Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~41_sumout\,
	datad => \i1|ALT_INV_Add6~5_sumout\,
	cin => \i1|Add7~10\,
	sumout => \i1|Add7~13_sumout\,
	cout => \i1|Add7~14\);

-- Location: MLABCELL_X82_Y11_N42
\i1|Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add7~17_sumout\ = SUM(( \i1|Add6~9_sumout\ ) + ( \i1|Add3~45_sumout\ ) + ( \i1|Add7~14\ ))
-- \i1|Add7~18\ = CARRY(( \i1|Add6~9_sumout\ ) + ( \i1|Add3~45_sumout\ ) + ( \i1|Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Add3~45_sumout\,
	datad => \i1|ALT_INV_Add6~9_sumout\,
	cin => \i1|Add7~14\,
	sumout => \i1|Add7~17_sumout\,
	cout => \i1|Add7~18\);

-- Location: MLABCELL_X82_Y11_N45
\i1|Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add7~21_sumout\ = SUM(( \i1|Add6~13_sumout\ ) + ( \i1|Add3~49_sumout\ ) + ( \i1|Add7~18\ ))
-- \i1|Add7~22\ = CARRY(( \i1|Add6~13_sumout\ ) + ( \i1|Add3~49_sumout\ ) + ( \i1|Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_Add3~49_sumout\,
	datad => \i1|ALT_INV_Add6~13_sumout\,
	cin => \i1|Add7~18\,
	sumout => \i1|Add7~21_sumout\,
	cout => \i1|Add7~22\);

-- Location: MLABCELL_X82_Y11_N48
\i1|Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add7~25_sumout\ = SUM(( \i1|Add6~17_sumout\ ) + ( \i1|Add3~97_sumout\ ) + ( \i1|Add7~22\ ))
-- \i1|Add7~26\ = CARRY(( \i1|Add6~17_sumout\ ) + ( \i1|Add3~97_sumout\ ) + ( \i1|Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i1|ALT_INV_Add6~17_sumout\,
	datac => \i1|ALT_INV_Add3~97_sumout\,
	cin => \i1|Add7~22\,
	sumout => \i1|Add7~25_sumout\,
	cout => \i1|Add7~26\);

-- Location: MLABCELL_X82_Y11_N51
\i1|Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add7~29_sumout\ = SUM(( \i1|Add6~21_sumout\ ) + ( \i1|Add3~97_sumout\ ) + ( \i1|Add7~26\ ))
-- \i1|Add7~30\ = CARRY(( \i1|Add6~21_sumout\ ) + ( \i1|Add3~97_sumout\ ) + ( \i1|Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_Add3~97_sumout\,
	datad => \i1|ALT_INV_Add6~21_sumout\,
	cin => \i1|Add7~26\,
	sumout => \i1|Add7~29_sumout\,
	cout => \i1|Add7~30\);

-- Location: MLABCELL_X82_Y11_N54
\i1|Add7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add7~33_sumout\ = SUM(( \i1|Add6~25_sumout\ ) + ( \i1|Add3~97_sumout\ ) + ( \i1|Add7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i1|ALT_INV_Add6~25_sumout\,
	datac => \i1|ALT_INV_Add3~97_sumout\,
	cin => \i1|Add7~30\,
	sumout => \i1|Add7~33_sumout\);

-- Location: MLABCELL_X82_Y12_N0
\i1|Add9~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add9~66_cout\ = CARRY(( GND ) + ( !VCC ) + ( !VCC ))
-- \i1|Add9~67\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => GND,
	sharein => GND,
	cout => \i1|Add9~66_cout\,
	shareout => \i1|Add9~67\);

-- Location: MLABCELL_X82_Y12_N3
\i1|Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add9~1_sumout\ = SUM(( !A(0) $ (\i1|Add3~1_sumout\) ) + ( \i1|Add9~67\ ) + ( \i1|Add9~66_cout\ ))
-- \i1|Add9~2\ = CARRY(( !A(0) $ (\i1|Add3~1_sumout\) ) + ( \i1|Add9~67\ ) + ( \i1|Add9~66_cout\ ))
-- \i1|Add9~3\ = SHARE((A(0) & !\i1|Add3~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(0),
	datad => \i1|ALT_INV_Add3~1_sumout\,
	cin => \i1|Add9~66_cout\,
	sharein => \i1|Add9~67\,
	sumout => \i1|Add9~1_sumout\,
	cout => \i1|Add9~2\,
	shareout => \i1|Add9~3\);

-- Location: MLABCELL_X82_Y12_N6
\i1|Add9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add9~5_sumout\ = SUM(( !A(1) $ (\i1|Add3~5_sumout\) ) + ( \i1|Add9~3\ ) + ( \i1|Add9~2\ ))
-- \i1|Add9~6\ = CARRY(( !A(1) $ (\i1|Add3~5_sumout\) ) + ( \i1|Add9~3\ ) + ( \i1|Add9~2\ ))
-- \i1|Add9~7\ = SHARE((A(1) & !\i1|Add3~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(1),
	datad => \i1|ALT_INV_Add3~5_sumout\,
	cin => \i1|Add9~2\,
	sharein => \i1|Add9~3\,
	sumout => \i1|Add9~5_sumout\,
	cout => \i1|Add9~6\,
	shareout => \i1|Add9~7\);

-- Location: MLABCELL_X82_Y12_N9
\i1|Add9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add9~9_sumout\ = SUM(( !A(2) $ (\i1|Add3~9_sumout\) ) + ( \i1|Add9~7\ ) + ( \i1|Add9~6\ ))
-- \i1|Add9~10\ = CARRY(( !A(2) $ (\i1|Add3~9_sumout\) ) + ( \i1|Add9~7\ ) + ( \i1|Add9~6\ ))
-- \i1|Add9~11\ = SHARE((A(2) & !\i1|Add3~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(2),
	datad => \i1|ALT_INV_Add3~9_sumout\,
	cin => \i1|Add9~6\,
	sharein => \i1|Add9~7\,
	sumout => \i1|Add9~9_sumout\,
	cout => \i1|Add9~10\,
	shareout => \i1|Add9~11\);

-- Location: MLABCELL_X82_Y12_N12
\i1|Add9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add9~13_sumout\ = SUM(( !\i1|Add3~13_sumout\ $ (!A(3) $ (!\i1|Add3~1_sumout\)) ) + ( \i1|Add9~11\ ) + ( \i1|Add9~10\ ))
-- \i1|Add9~14\ = CARRY(( !\i1|Add3~13_sumout\ $ (!A(3) $ (!\i1|Add3~1_sumout\)) ) + ( \i1|Add9~11\ ) + ( \i1|Add9~10\ ))
-- \i1|Add9~15\ = SHARE((!\i1|Add3~13_sumout\ & ((\i1|Add3~1_sumout\) # (A(3)))) # (\i1|Add3~13_sumout\ & (A(3) & \i1|Add3~1_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011001100111100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \i1|ALT_INV_Add3~13_sumout\,
	datac => ALT_INV_A(3),
	datad => \i1|ALT_INV_Add3~1_sumout\,
	cin => \i1|Add9~10\,
	sharein => \i1|Add9~11\,
	sumout => \i1|Add9~13_sumout\,
	cout => \i1|Add9~14\,
	shareout => \i1|Add9~15\);

-- Location: MLABCELL_X82_Y12_N15
\i1|Add9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add9~17_sumout\ = SUM(( !\i1|Add3~17_sumout\ $ (!A(4) $ (!\i1|Add3~5_sumout\)) ) + ( \i1|Add9~15\ ) + ( \i1|Add9~14\ ))
-- \i1|Add9~18\ = CARRY(( !\i1|Add3~17_sumout\ $ (!A(4) $ (!\i1|Add3~5_sumout\)) ) + ( \i1|Add9~15\ ) + ( \i1|Add9~14\ ))
-- \i1|Add9~19\ = SHARE((!\i1|Add3~17_sumout\ & ((\i1|Add3~5_sumout\) # (A(4)))) # (\i1|Add3~17_sumout\ & (A(4) & \i1|Add3~5_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010101010111100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_Add3~17_sumout\,
	datac => ALT_INV_A(4),
	datad => \i1|ALT_INV_Add3~5_sumout\,
	cin => \i1|Add9~14\,
	sharein => \i1|Add9~15\,
	sumout => \i1|Add9~17_sumout\,
	cout => \i1|Add9~18\,
	shareout => \i1|Add9~19\);

-- Location: MLABCELL_X82_Y12_N18
\i1|Add9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add9~21_sumout\ = SUM(( !\i1|Add3~9_sumout\ $ (!A(5) $ (!\i1|Add3~21_sumout\)) ) + ( \i1|Add9~19\ ) + ( \i1|Add9~18\ ))
-- \i1|Add9~22\ = CARRY(( !\i1|Add3~9_sumout\ $ (!A(5) $ (!\i1|Add3~21_sumout\)) ) + ( \i1|Add9~19\ ) + ( \i1|Add9~18\ ))
-- \i1|Add9~23\ = SHARE((!\i1|Add3~9_sumout\ & (A(5) & !\i1|Add3~21_sumout\)) # (\i1|Add3~9_sumout\ & ((!\i1|Add3~21_sumout\) # (A(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110000001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \i1|ALT_INV_Add3~9_sumout\,
	datac => ALT_INV_A(5),
	datad => \i1|ALT_INV_Add3~21_sumout\,
	cin => \i1|Add9~18\,
	sharein => \i1|Add9~19\,
	sumout => \i1|Add9~21_sumout\,
	cout => \i1|Add9~22\,
	shareout => \i1|Add9~23\);

-- Location: MLABCELL_X82_Y12_N21
\i1|Add9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add9~25_sumout\ = SUM(( !A(6) $ (!\i1|Add3~13_sumout\ $ (!\i1|Add3~25_sumout\)) ) + ( \i1|Add9~23\ ) + ( \i1|Add9~22\ ))
-- \i1|Add9~26\ = CARRY(( !A(6) $ (!\i1|Add3~13_sumout\ $ (!\i1|Add3~25_sumout\)) ) + ( \i1|Add9~23\ ) + ( \i1|Add9~22\ ))
-- \i1|Add9~27\ = SHARE((!A(6) & (\i1|Add3~13_sumout\ & !\i1|Add3~25_sumout\)) # (A(6) & ((!\i1|Add3~25_sumout\) # (\i1|Add3~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110000010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(6),
	datac => \i1|ALT_INV_Add3~13_sumout\,
	datad => \i1|ALT_INV_Add3~25_sumout\,
	cin => \i1|Add9~22\,
	sharein => \i1|Add9~23\,
	sumout => \i1|Add9~25_sumout\,
	cout => \i1|Add9~26\,
	shareout => \i1|Add9~27\);

-- Location: MLABCELL_X82_Y12_N24
\i1|Add9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add9~29_sumout\ = SUM(( !A(7) $ (!\i1|Add7~1_sumout\ $ (!\i1|Add3~17_sumout\)) ) + ( \i1|Add9~27\ ) + ( \i1|Add9~26\ ))
-- \i1|Add9~30\ = CARRY(( !A(7) $ (!\i1|Add7~1_sumout\ $ (!\i1|Add3~17_sumout\)) ) + ( \i1|Add9~27\ ) + ( \i1|Add9~26\ ))
-- \i1|Add9~31\ = SHARE((!A(7) & (!\i1|Add7~1_sumout\ & \i1|Add3~17_sumout\)) # (A(7) & ((!\i1|Add7~1_sumout\) # (\i1|Add3~17_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100001111001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(7),
	datac => \i1|ALT_INV_Add7~1_sumout\,
	datad => \i1|ALT_INV_Add3~17_sumout\,
	cin => \i1|Add9~26\,
	sharein => \i1|Add9~27\,
	sumout => \i1|Add9~29_sumout\,
	cout => \i1|Add9~30\,
	shareout => \i1|Add9~31\);

-- Location: MLABCELL_X82_Y12_N27
\i1|Add9~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add9~33_sumout\ = SUM(( !A(8) $ (!\i1|Add7~5_sumout\ $ (!\i1|Add3~21_sumout\)) ) + ( \i1|Add9~31\ ) + ( \i1|Add9~30\ ))
-- \i1|Add9~34\ = CARRY(( !A(8) $ (!\i1|Add7~5_sumout\ $ (!\i1|Add3~21_sumout\)) ) + ( \i1|Add9~31\ ) + ( \i1|Add9~30\ ))
-- \i1|Add9~35\ = SHARE((!A(8) & (!\i1|Add7~5_sumout\ & \i1|Add3~21_sumout\)) # (A(8) & ((!\i1|Add7~5_sumout\) # (\i1|Add3~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001111010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(8),
	datac => \i1|ALT_INV_Add7~5_sumout\,
	datad => \i1|ALT_INV_Add3~21_sumout\,
	cin => \i1|Add9~30\,
	sharein => \i1|Add9~31\,
	sumout => \i1|Add9~33_sumout\,
	cout => \i1|Add9~34\,
	shareout => \i1|Add9~35\);

-- Location: MLABCELL_X82_Y11_N0
\i1|Add9~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add9~37_sumout\ = SUM(( !A(9) $ (!\i1|Add3~25_sumout\ $ (!\i1|Add7~9_sumout\)) ) + ( \i1|Add9~35\ ) + ( \i1|Add9~34\ ))
-- \i1|Add9~38\ = CARRY(( !A(9) $ (!\i1|Add3~25_sumout\ $ (!\i1|Add7~9_sumout\)) ) + ( \i1|Add9~35\ ) + ( \i1|Add9~34\ ))
-- \i1|Add9~39\ = SHARE((!A(9) & (\i1|Add3~25_sumout\ & !\i1|Add7~9_sumout\)) # (A(9) & ((!\i1|Add7~9_sumout\) # (\i1|Add3~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110000010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(9),
	datac => \i1|ALT_INV_Add3~25_sumout\,
	datad => \i1|ALT_INV_Add7~9_sumout\,
	cin => \i1|Add9~34\,
	sharein => \i1|Add9~35\,
	sumout => \i1|Add9~37_sumout\,
	cout => \i1|Add9~38\,
	shareout => \i1|Add9~39\);

-- Location: MLABCELL_X82_Y11_N3
\i1|Add9~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add9~41_sumout\ = SUM(( !A(10) $ (!\i1|Add7~13_sumout\ $ (!\i1|Add3~29_sumout\)) ) + ( \i1|Add9~39\ ) + ( \i1|Add9~38\ ))
-- \i1|Add9~42\ = CARRY(( !A(10) $ (!\i1|Add7~13_sumout\ $ (!\i1|Add3~29_sumout\)) ) + ( \i1|Add9~39\ ) + ( \i1|Add9~38\ ))
-- \i1|Add9~43\ = SHARE((!A(10) & (!\i1|Add7~13_sumout\ & \i1|Add3~29_sumout\)) # (A(10) & ((!\i1|Add7~13_sumout\) # (\i1|Add3~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100001111001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(10),
	datac => \i1|ALT_INV_Add7~13_sumout\,
	datad => \i1|ALT_INV_Add3~29_sumout\,
	cin => \i1|Add9~38\,
	sharein => \i1|Add9~39\,
	sumout => \i1|Add9~41_sumout\,
	cout => \i1|Add9~42\,
	shareout => \i1|Add9~43\);

-- Location: MLABCELL_X82_Y11_N6
\i1|Add9~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add9~45_sumout\ = SUM(( !\i1|Add3~33_sumout\ $ (!A(11) $ (!\i1|Add7~17_sumout\)) ) + ( \i1|Add9~43\ ) + ( \i1|Add9~42\ ))
-- \i1|Add9~46\ = CARRY(( !\i1|Add3~33_sumout\ $ (!A(11) $ (!\i1|Add7~17_sumout\)) ) + ( \i1|Add9~43\ ) + ( \i1|Add9~42\ ))
-- \i1|Add9~47\ = SHARE((!\i1|Add3~33_sumout\ & (A(11) & !\i1|Add7~17_sumout\)) # (\i1|Add3~33_sumout\ & ((!\i1|Add7~17_sumout\) # (A(11)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110000001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \i1|ALT_INV_Add3~33_sumout\,
	datac => ALT_INV_A(11),
	datad => \i1|ALT_INV_Add7~17_sumout\,
	cin => \i1|Add9~42\,
	sharein => \i1|Add9~43\,
	sumout => \i1|Add9~45_sumout\,
	cout => \i1|Add9~46\,
	shareout => \i1|Add9~47\);

-- Location: MLABCELL_X82_Y11_N9
\i1|Add9~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add9~49_sumout\ = SUM(( !\i1|Add3~37_sumout\ $ (!A(12) $ (!\i1|Add7~21_sumout\)) ) + ( \i1|Add9~47\ ) + ( \i1|Add9~46\ ))
-- \i1|Add9~50\ = CARRY(( !\i1|Add3~37_sumout\ $ (!A(12) $ (!\i1|Add7~21_sumout\)) ) + ( \i1|Add9~47\ ) + ( \i1|Add9~46\ ))
-- \i1|Add9~51\ = SHARE((!\i1|Add3~37_sumout\ & (A(12) & !\i1|Add7~21_sumout\)) # (\i1|Add3~37_sumout\ & ((!\i1|Add7~21_sumout\) # (A(12)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110000010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_Add3~37_sumout\,
	datac => ALT_INV_A(12),
	datad => \i1|ALT_INV_Add7~21_sumout\,
	cin => \i1|Add9~46\,
	sharein => \i1|Add9~47\,
	sumout => \i1|Add9~49_sumout\,
	cout => \i1|Add9~50\,
	shareout => \i1|Add9~51\);

-- Location: MLABCELL_X82_Y11_N12
\i1|Add9~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add9~53_sumout\ = SUM(( !A(13) $ (!\i1|Add7~25_sumout\ $ (!\i1|Add3~41_sumout\)) ) + ( \i1|Add9~51\ ) + ( \i1|Add9~50\ ))
-- \i1|Add9~54\ = CARRY(( !A(13) $ (!\i1|Add7~25_sumout\ $ (!\i1|Add3~41_sumout\)) ) + ( \i1|Add9~51\ ) + ( \i1|Add9~50\ ))
-- \i1|Add9~55\ = SHARE((!A(13) & (!\i1|Add7~25_sumout\ & \i1|Add3~41_sumout\)) # (A(13) & ((!\i1|Add7~25_sumout\) # (\i1|Add3~41_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100001111001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(13),
	datac => \i1|ALT_INV_Add7~25_sumout\,
	datad => \i1|ALT_INV_Add3~41_sumout\,
	cin => \i1|Add9~50\,
	sharein => \i1|Add9~51\,
	sumout => \i1|Add9~53_sumout\,
	cout => \i1|Add9~54\,
	shareout => \i1|Add9~55\);

-- Location: MLABCELL_X82_Y11_N15
\i1|Add9~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add9~57_sumout\ = SUM(( !A(14) $ (!\i1|Add3~45_sumout\ $ (!\i1|Add7~29_sumout\)) ) + ( \i1|Add9~55\ ) + ( \i1|Add9~54\ ))
-- \i1|Add9~58\ = CARRY(( !A(14) $ (!\i1|Add3~45_sumout\ $ (!\i1|Add7~29_sumout\)) ) + ( \i1|Add9~55\ ) + ( \i1|Add9~54\ ))
-- \i1|Add9~59\ = SHARE((!A(14) & (\i1|Add3~45_sumout\ & !\i1|Add7~29_sumout\)) # (A(14) & ((!\i1|Add7~29_sumout\) # (\i1|Add3~45_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110000010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(14),
	datac => \i1|ALT_INV_Add3~45_sumout\,
	datad => \i1|ALT_INV_Add7~29_sumout\,
	cin => \i1|Add9~54\,
	sharein => \i1|Add9~55\,
	sumout => \i1|Add9~57_sumout\,
	cout => \i1|Add9~58\,
	shareout => \i1|Add9~59\);

-- Location: MLABCELL_X82_Y11_N18
\i1|Add9~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add9~61_sumout\ = SUM(( !A(15) $ (!\i1|Add3~49_sumout\ $ (!\i1|Add7~33_sumout\)) ) + ( \i1|Add9~59\ ) + ( \i1|Add9~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(15),
	datac => \i1|ALT_INV_Add3~49_sumout\,
	datad => \i1|ALT_INV_Add7~33_sumout\,
	cin => \i1|Add9~58\,
	sharein => \i1|Add9~59\,
	sumout => \i1|Add9~61_sumout\);

-- Location: FF_X82_Y11_N20
\s_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add9~61_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(15));

-- Location: FF_X84_Y10_N29
\A[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(14),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(14));

-- Location: FF_X82_Y11_N17
\s_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add9~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(14));

-- Location: FF_X84_Y10_N41
\A[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(13),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(13));

-- Location: FF_X82_Y11_N14
\s_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add9~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(13));

-- Location: FF_X85_Y10_N47
\A[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(22),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(22));

-- Location: FF_X82_Y11_N11
\s_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add9~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(12));

-- Location: FF_X84_Y10_N11
\A[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(23),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(23));

-- Location: FF_X82_Y11_N8
\s_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add9~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(11));

-- Location: FF_X84_Y11_N20
\A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(10),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(10));

-- Location: FF_X82_Y11_N5
\s_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add9~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(10));

-- Location: FF_X85_Y10_N26
\A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(9),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(9));

-- Location: FF_X82_Y11_N2
\s_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add9~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(9));

-- Location: FF_X85_Y11_N59
\A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(8),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(8));

-- Location: FF_X82_Y12_N29
\s_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add9~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(8));

-- Location: FF_X85_Y11_N53
\A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(7),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(7));

-- Location: FF_X82_Y12_N26
\s_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add9~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(7));

-- Location: FF_X85_Y11_N5
\A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(6),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(6));

-- Location: FF_X82_Y12_N23
\s_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add9~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(6));

-- Location: FF_X84_Y10_N56
\A[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(24),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(24));

-- Location: FF_X82_Y12_N20
\s_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add9~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(5));

-- Location: FF_X85_Y10_N5
\A[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(20),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(20));

-- Location: FF_X82_Y12_N17
\s_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add9~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(4));

-- Location: LABCELL_X85_Y9_N54
\A[25]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A[25]~feeder_combout\ = ( cs(25) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_cs(25),
	combout => \A[25]~feeder_combout\);

-- Location: FF_X85_Y9_N56
\A[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A[25]~feeder_combout\,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(25));

-- Location: FF_X82_Y12_N14
\s_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add9~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(3));

-- Location: FF_X84_Y11_N8
\A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(2),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(2));

-- Location: FF_X82_Y12_N11
\s_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add9~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(2));

-- Location: LABCELL_X85_Y11_N0
\A[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A[1]~feeder_combout\ = ( cs(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_cs(1),
	combout => \A[1]~feeder_combout\);

-- Location: FF_X85_Y11_N2
\A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A[1]~feeder_combout\,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(1));

-- Location: FF_X82_Y12_N8
\s_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add9~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(1));

-- Location: FF_X84_Y11_N5
\A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cs(0),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(0));

-- Location: LABCELL_X83_Y12_N24
\s_int[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_int[0]~0_combout\ = !\i1|Add9~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i1|ALT_INV_Add9~1_sumout\,
	combout => \s_int[0]~0_combout\);

-- Location: FF_X83_Y12_N26
\s_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s_int[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_int(0));

-- Location: LABCELL_X83_Y12_N9
\s[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[0]~1_combout\ = ( s_int(0) & ( (!\reset~input_o\ & \s[0]~1_combout\) ) ) # ( !s_int(0) & ( (\s[0]~1_combout\) # (\reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_s[0]~1_combout\,
	dataf => ALT_INV_s_int(0),
	combout => \s[0]~1_combout\);

-- Location: LABCELL_X83_Y12_N6
\s[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[0]~3_combout\ = ( \s[0]~1_combout\ & ( s_int(0) ) ) # ( !\s[0]~1_combout\ & ( !s_int(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_s_int(0),
	dataf => \ALT_INV_s[0]~1_combout\,
	combout => \s[0]~3_combout\);

-- Location: FF_X83_Y12_N8
\s[0]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s[0]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s[0]~reg0_emulated_q\);

-- Location: LABCELL_X83_Y12_N27
\s[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[0]~2_combout\ = ( s_int(0) & ( (!\reset~input_o\ & (!\s[0]~reg0_emulated_q\ $ (!\s[0]~1_combout\))) ) ) # ( !s_int(0) & ( (!\s[0]~reg0_emulated_q\ $ (!\s[0]~1_combout\)) # (\reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111110101111101011111010111110100101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_s[0]~reg0_emulated_q\,
	datac => \ALT_INV_s[0]~1_combout\,
	dataf => ALT_INV_s_int(0),
	combout => \s[0]~2_combout\);

-- Location: MLABCELL_X82_Y12_N30
\s[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[1]~5_combout\ = ( \s[1]~5_combout\ & ( (!\reset~input_o\) # (s_int(1)) ) ) # ( !\s[1]~5_combout\ & ( (s_int(1) & \reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_s_int(1),
	datac => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_s[1]~5_combout\,
	combout => \s[1]~5_combout\);

-- Location: LABCELL_X83_Y12_N0
\s[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[1]~7_combout\ = ( \s[1]~5_combout\ & ( !s_int(1) ) ) # ( !\s[1]~5_combout\ & ( s_int(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_s_int(1),
	dataf => \ALT_INV_s[1]~5_combout\,
	combout => \s[1]~7_combout\);

-- Location: FF_X83_Y12_N1
\s[1]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s[1]~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s[1]~reg0_emulated_q\);

-- Location: LABCELL_X81_Y12_N0
\s[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[1]~6_combout\ = ( \s[1]~5_combout\ & ( \s[1]~reg0_emulated_q\ & ( (\reset~input_o\ & s_int(1)) ) ) ) # ( !\s[1]~5_combout\ & ( \s[1]~reg0_emulated_q\ & ( (!\reset~input_o\) # (s_int(1)) ) ) ) # ( \s[1]~5_combout\ & ( !\s[1]~reg0_emulated_q\ & ( 
-- (!\reset~input_o\) # (s_int(1)) ) ) ) # ( !\s[1]~5_combout\ & ( !\s[1]~reg0_emulated_q\ & ( (\reset~input_o\ & s_int(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111110101111101011110000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => ALT_INV_s_int(1),
	datae => \ALT_INV_s[1]~5_combout\,
	dataf => \ALT_INV_s[1]~reg0_emulated_q\,
	combout => \s[1]~6_combout\);

-- Location: MLABCELL_X82_Y12_N51
\s[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[2]~9_combout\ = ( \s[2]~9_combout\ & ( (!\reset~input_o\) # (s_int(2)) ) ) # ( !\s[2]~9_combout\ & ( (s_int(2) & \reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_s_int(2),
	datad => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_s[2]~9_combout\,
	combout => \s[2]~9_combout\);

-- Location: LABCELL_X83_Y12_N18
\s[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[2]~11_combout\ = ( \s[2]~9_combout\ & ( !s_int(2) ) ) # ( !\s[2]~9_combout\ & ( s_int(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s_int(2),
	dataf => \ALT_INV_s[2]~9_combout\,
	combout => \s[2]~11_combout\);

-- Location: FF_X83_Y12_N20
\s[2]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s[2]~11_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s[2]~reg0_emulated_q\);

-- Location: LABCELL_X83_Y12_N21
\s[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[2]~10_combout\ = ( \s[2]~reg0_emulated_q\ & ( (!\reset~input_o\ & ((!\s[2]~9_combout\))) # (\reset~input_o\ & (s_int(2))) ) ) # ( !\s[2]~reg0_emulated_q\ & ( (!\reset~input_o\ & ((\s[2]~9_combout\))) # (\reset~input_o\ & (s_int(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010111001100010101011100110001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s_int(2),
	datab => \ALT_INV_s[2]~9_combout\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_s[2]~reg0_emulated_q\,
	combout => \s[2]~10_combout\);

-- Location: MLABCELL_X82_Y12_N33
\s[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[3]~13_combout\ = ( s_int(3) & ( (\reset~input_o\) # (\s[3]~13_combout\) ) ) # ( !s_int(3) & ( (\s[3]~13_combout\ & !\reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s[3]~13_combout\,
	datad => \ALT_INV_reset~input_o\,
	dataf => ALT_INV_s_int(3),
	combout => \s[3]~13_combout\);

-- Location: LABCELL_X85_Y12_N12
\s[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[3]~15_combout\ = ( !s_int(3) & ( \s[3]~13_combout\ ) ) # ( s_int(3) & ( !\s[3]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_s_int(3),
	dataf => \ALT_INV_s[3]~13_combout\,
	combout => \s[3]~15_combout\);

-- Location: FF_X85_Y12_N14
\s[3]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s[3]~15_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s[3]~reg0_emulated_q\);

-- Location: LABCELL_X85_Y12_N30
\s[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[3]~14_combout\ = ( s_int(3) & ( \s[3]~reg0_emulated_q\ & ( (!\s[3]~13_combout\) # (\reset~input_o\) ) ) ) # ( !s_int(3) & ( \s[3]~reg0_emulated_q\ & ( (!\s[3]~13_combout\ & !\reset~input_o\) ) ) ) # ( s_int(3) & ( !\s[3]~reg0_emulated_q\ & ( 
-- (\reset~input_o\) # (\s[3]~13_combout\) ) ) ) # ( !s_int(3) & ( !\s[3]~reg0_emulated_q\ & ( (\s[3]~13_combout\ & !\reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111110101010000000001010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s[3]~13_combout\,
	datad => \ALT_INV_reset~input_o\,
	datae => ALT_INV_s_int(3),
	dataf => \ALT_INV_s[3]~reg0_emulated_q\,
	combout => \s[3]~14_combout\);

-- Location: MLABCELL_X82_Y12_N45
\s[4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[4]~17_combout\ = ( s_int(4) & ( (\reset~input_o\) # (\s[4]~17_combout\) ) ) # ( !s_int(4) & ( (\s[4]~17_combout\ & !\reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_s[4]~17_combout\,
	datad => \ALT_INV_reset~input_o\,
	dataf => ALT_INV_s_int(4),
	combout => \s[4]~17_combout\);

-- Location: LABCELL_X83_Y12_N3
\s[4]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[4]~19_combout\ = ( \s[4]~17_combout\ & ( !s_int(4) ) ) # ( !\s[4]~17_combout\ & ( s_int(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s_int(4),
	dataf => \ALT_INV_s[4]~17_combout\,
	combout => \s[4]~19_combout\);

-- Location: FF_X83_Y12_N4
\s[4]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s[4]~19_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s[4]~reg0_emulated_q\);

-- Location: LABCELL_X85_Y12_N48
\s[4]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[4]~18_combout\ = ( \s[4]~reg0_emulated_q\ & ( s_int(4) & ( (!\s[4]~17_combout\) # (\reset~input_o\) ) ) ) # ( !\s[4]~reg0_emulated_q\ & ( s_int(4) & ( (\reset~input_o\) # (\s[4]~17_combout\) ) ) ) # ( \s[4]~reg0_emulated_q\ & ( !s_int(4) & ( 
-- (!\s[4]~17_combout\ & !\reset~input_o\) ) ) ) # ( !\s[4]~reg0_emulated_q\ & ( !s_int(4) & ( (\s[4]~17_combout\ & !\reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000111100000000000000001111111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_s[4]~17_combout\,
	datad => \ALT_INV_reset~input_o\,
	datae => \ALT_INV_s[4]~reg0_emulated_q\,
	dataf => ALT_INV_s_int(4),
	combout => \s[4]~18_combout\);

-- Location: MLABCELL_X82_Y12_N57
\s[5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[5]~21_combout\ = ( \s[5]~21_combout\ & ( (!\reset~input_o\) # (s_int(5)) ) ) # ( !\s[5]~21_combout\ & ( (\reset~input_o\ & s_int(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => ALT_INV_s_int(5),
	dataf => \ALT_INV_s[5]~21_combout\,
	combout => \s[5]~21_combout\);

-- Location: LABCELL_X83_Y12_N57
\s[5]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[5]~23_combout\ = !s_int(5) $ (!\s[5]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s_int(5),
	datab => \ALT_INV_s[5]~21_combout\,
	combout => \s[5]~23_combout\);

-- Location: FF_X83_Y12_N59
\s[5]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s[5]~23_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s[5]~reg0_emulated_q\);

-- Location: LABCELL_X83_Y12_N54
\s[5]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[5]~22_combout\ = (!\reset~input_o\ & ((!\s[5]~21_combout\ $ (!\s[5]~reg0_emulated_q\)))) # (\reset~input_o\ & (s_int(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010111000101001101011100010100110101110001010011010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s_int(5),
	datab => \ALT_INV_s[5]~21_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_s[5]~reg0_emulated_q\,
	combout => \s[5]~22_combout\);

-- Location: MLABCELL_X82_Y12_N36
\s[6]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[6]~25_combout\ = ( \s[6]~25_combout\ & ( s_int(6) ) ) # ( !\s[6]~25_combout\ & ( s_int(6) & ( \reset~input_o\ ) ) ) # ( \s[6]~25_combout\ & ( !s_int(6) & ( !\reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datae => \ALT_INV_s[6]~25_combout\,
	dataf => ALT_INV_s_int(6),
	combout => \s[6]~25_combout\);

-- Location: LABCELL_X83_Y12_N48
\s[6]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[6]~27_combout\ = ( \s[6]~25_combout\ & ( !s_int(6) ) ) # ( !\s[6]~25_combout\ & ( s_int(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_s_int(6),
	dataf => \ALT_INV_s[6]~25_combout\,
	combout => \s[6]~27_combout\);

-- Location: FF_X83_Y12_N49
\s[6]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s[6]~27_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s[6]~reg0_emulated_q\);

-- Location: MLABCELL_X84_Y12_N24
\s[6]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[6]~26_combout\ = ( \reset~input_o\ & ( \s[6]~25_combout\ & ( s_int(6) ) ) ) # ( !\reset~input_o\ & ( \s[6]~25_combout\ & ( !\s[6]~reg0_emulated_q\ ) ) ) # ( \reset~input_o\ & ( !\s[6]~25_combout\ & ( s_int(6) ) ) ) # ( !\reset~input_o\ & ( 
-- !\s[6]~25_combout\ & ( \s[6]~reg0_emulated_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111111001100110011000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s[6]~reg0_emulated_q\,
	datac => ALT_INV_s_int(6),
	datae => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_s[6]~25_combout\,
	combout => \s[6]~26_combout\);

-- Location: MLABCELL_X82_Y12_N48
\s[7]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[7]~29_combout\ = ( \s[7]~29_combout\ & ( (!\reset~input_o\) # (s_int(7)) ) ) # ( !\s[7]~29_combout\ & ( (s_int(7) & \reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s_int(7),
	datac => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_s[7]~29_combout\,
	combout => \s[7]~29_combout\);

-- Location: MLABCELL_X84_Y12_N6
\s[7]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[7]~31_combout\ = !\s[7]~29_combout\ $ (!s_int(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s[7]~29_combout\,
	datac => ALT_INV_s_int(7),
	combout => \s[7]~31_combout\);

-- Location: FF_X84_Y12_N7
\s[7]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s[7]~31_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s[7]~reg0_emulated_q\);

-- Location: MLABCELL_X84_Y12_N36
\s[7]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[7]~30_combout\ = ( \s[7]~reg0_emulated_q\ & ( \s[7]~29_combout\ & ( (s_int(7) & \reset~input_o\) ) ) ) # ( !\s[7]~reg0_emulated_q\ & ( \s[7]~29_combout\ & ( (!\reset~input_o\) # (s_int(7)) ) ) ) # ( \s[7]~reg0_emulated_q\ & ( !\s[7]~29_combout\ & ( 
-- (!\reset~input_o\) # (s_int(7)) ) ) ) # ( !\s[7]~reg0_emulated_q\ & ( !\s[7]~29_combout\ & ( (s_int(7) & \reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111111111111000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_s_int(7),
	datad => \ALT_INV_reset~input_o\,
	datae => \ALT_INV_s[7]~reg0_emulated_q\,
	dataf => \ALT_INV_s[7]~29_combout\,
	combout => \s[7]~30_combout\);

-- Location: MLABCELL_X82_Y12_N54
\s[8]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[8]~33_combout\ = ( s_int(8) & ( (\s[8]~33_combout\) # (\reset~input_o\) ) ) # ( !s_int(8) & ( (!\reset~input_o\ & \s[8]~33_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_s[8]~33_combout\,
	dataf => ALT_INV_s_int(8),
	combout => \s[8]~33_combout\);

-- Location: LABCELL_X83_Y12_N36
\s[8]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[8]~35_combout\ = ( \s[8]~33_combout\ & ( !s_int(8) ) ) # ( !\s[8]~33_combout\ & ( s_int(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_s_int(8),
	dataf => \ALT_INV_s[8]~33_combout\,
	combout => \s[8]~35_combout\);

-- Location: FF_X83_Y12_N37
\s[8]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s[8]~35_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s[8]~reg0_emulated_q\);

-- Location: LABCELL_X83_Y12_N39
\s[8]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[8]~34_combout\ = (!\reset~input_o\ & (!\s[8]~33_combout\ $ ((!\s[8]~reg0_emulated_q\)))) # (\reset~input_o\ & (((s_int(8)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100001111101001010000111110100101000011111010010100001111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_s[8]~33_combout\,
	datac => \ALT_INV_s[8]~reg0_emulated_q\,
	datad => ALT_INV_s_int(8),
	combout => \s[8]~34_combout\);

-- Location: LABCELL_X81_Y11_N24
\s[9]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[9]~37_combout\ = (!\reset~input_o\ & ((\s[9]~37_combout\))) # (\reset~input_o\ & (s_int(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s_int(9),
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_s[9]~37_combout\,
	combout => \s[9]~37_combout\);

-- Location: LABCELL_X85_Y11_N24
\s[9]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[9]~39_combout\ = ( \s[9]~37_combout\ & ( !s_int(9) ) ) # ( !\s[9]~37_combout\ & ( s_int(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_s_int(9),
	dataf => \ALT_INV_s[9]~37_combout\,
	combout => \s[9]~39_combout\);

-- Location: FF_X85_Y11_N25
\s[9]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s[9]~39_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s[9]~reg0_emulated_q\);

-- Location: LABCELL_X83_Y12_N15
\s[9]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[9]~38_combout\ = ( \s[9]~37_combout\ & ( \s[9]~reg0_emulated_q\ & ( (s_int(9) & \reset~input_o\) ) ) ) # ( !\s[9]~37_combout\ & ( \s[9]~reg0_emulated_q\ & ( (!\reset~input_o\) # (s_int(9)) ) ) ) # ( \s[9]~37_combout\ & ( !\s[9]~reg0_emulated_q\ & ( 
-- (!\reset~input_o\) # (s_int(9)) ) ) ) # ( !\s[9]~37_combout\ & ( !\s[9]~reg0_emulated_q\ & ( (s_int(9) & \reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010111111111010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s_int(9),
	datad => \ALT_INV_reset~input_o\,
	datae => \ALT_INV_s[9]~37_combout\,
	dataf => \ALT_INV_s[9]~reg0_emulated_q\,
	combout => \s[9]~38_combout\);

-- Location: MLABCELL_X82_Y11_N27
\s[10]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[10]~41_combout\ = (!\reset~input_o\ & ((\s[10]~41_combout\))) # (\reset~input_o\ & (s_int(10)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s_int(10),
	datab => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_s[10]~41_combout\,
	combout => \s[10]~41_combout\);

-- Location: LABCELL_X85_Y11_N21
\s[10]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[10]~43_combout\ = ( !s_int(10) & ( \s[10]~41_combout\ ) ) # ( s_int(10) & ( !\s[10]~41_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_s_int(10),
	dataf => \ALT_INV_s[10]~41_combout\,
	combout => \s[10]~43_combout\);

-- Location: FF_X85_Y11_N22
\s[10]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s[10]~43_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s[10]~reg0_emulated_q\);

-- Location: LABCELL_X83_Y12_N45
\s[10]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[10]~42_combout\ = ( \s[10]~reg0_emulated_q\ & ( s_int(10) & ( (!\s[10]~41_combout\) # (\reset~input_o\) ) ) ) # ( !\s[10]~reg0_emulated_q\ & ( s_int(10) & ( (\s[10]~41_combout\) # (\reset~input_o\) ) ) ) # ( \s[10]~reg0_emulated_q\ & ( !s_int(10) & ( 
-- (!\reset~input_o\ & !\s[10]~41_combout\) ) ) ) # ( !\s[10]~reg0_emulated_q\ & ( !s_int(10) & ( (!\reset~input_o\ & \s[10]~41_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101000001010000001011111010111111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_s[10]~41_combout\,
	datae => \ALT_INV_s[10]~reg0_emulated_q\,
	dataf => ALT_INV_s_int(10),
	combout => \s[10]~42_combout\);

-- Location: LABCELL_X81_Y11_N45
\s[11]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[11]~45_combout\ = ( \s[11]~45_combout\ & ( s_int(11) ) ) # ( !\s[11]~45_combout\ & ( s_int(11) & ( \reset~input_o\ ) ) ) # ( \s[11]~45_combout\ & ( !s_int(11) & ( !\reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datae => \ALT_INV_s[11]~45_combout\,
	dataf => ALT_INV_s_int(11),
	combout => \s[11]~45_combout\);

-- Location: LABCELL_X80_Y11_N0
\s[11]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[11]~47_combout\ = ( \s[11]~45_combout\ & ( !s_int(11) ) ) # ( !\s[11]~45_combout\ & ( s_int(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_s_int(11),
	dataf => \ALT_INV_s[11]~45_combout\,
	combout => \s[11]~47_combout\);

-- Location: FF_X80_Y11_N1
\s[11]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s[11]~47_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s[11]~reg0_emulated_q\);

-- Location: LABCELL_X80_Y10_N12
\s[11]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[11]~46_combout\ = ( s_int(11) & ( \s[11]~reg0_emulated_q\ & ( (!\s[11]~45_combout\) # (\reset~input_o\) ) ) ) # ( !s_int(11) & ( \s[11]~reg0_emulated_q\ & ( (!\reset~input_o\ & !\s[11]~45_combout\) ) ) ) # ( s_int(11) & ( !\s[11]~reg0_emulated_q\ & ( 
-- (\s[11]~45_combout\) # (\reset~input_o\) ) ) ) # ( !s_int(11) & ( !\s[11]~reg0_emulated_q\ & ( (!\reset~input_o\ & \s[11]~45_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111110100000101000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_s[11]~45_combout\,
	datae => ALT_INV_s_int(11),
	dataf => \ALT_INV_s[11]~reg0_emulated_q\,
	combout => \s[11]~46_combout\);

-- Location: LABCELL_X83_Y11_N24
\s[12]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[12]~49_combout\ = ( s_int(12) & ( (\s[12]~49_combout\) # (\reset~input_o\) ) ) # ( !s_int(12) & ( (!\reset~input_o\ & \s[12]~49_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_s[12]~49_combout\,
	dataf => ALT_INV_s_int(12),
	combout => \s[12]~49_combout\);

-- Location: LABCELL_X85_Y11_N6
\s[12]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[12]~51_combout\ = ( \s[12]~49_combout\ & ( !s_int(12) ) ) # ( !\s[12]~49_combout\ & ( s_int(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_s_int(12),
	dataf => \ALT_INV_s[12]~49_combout\,
	combout => \s[12]~51_combout\);

-- Location: FF_X85_Y11_N7
\s[12]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s[12]~51_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s[12]~reg0_emulated_q\);

-- Location: LABCELL_X85_Y9_N51
\s[12]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[12]~50_combout\ = ( \reset~input_o\ & ( s_int(12) ) ) # ( !\reset~input_o\ & ( !\s[12]~49_combout\ $ (!\s[12]~reg0_emulated_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s[12]~49_combout\,
	datab => \ALT_INV_s[12]~reg0_emulated_q\,
	datac => ALT_INV_s_int(12),
	dataf => \ALT_INV_reset~input_o\,
	combout => \s[12]~50_combout\);

-- Location: LABCELL_X83_Y11_N27
\s[13]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[13]~53_combout\ = ( s_int(13) & ( (\s[13]~53_combout\) # (\reset~input_o\) ) ) # ( !s_int(13) & ( (!\reset~input_o\ & \s[13]~53_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_s[13]~53_combout\,
	dataf => ALT_INV_s_int(13),
	combout => \s[13]~53_combout\);

-- Location: MLABCELL_X87_Y11_N3
\s[13]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[13]~55_combout\ = ( !s_int(13) & ( \s[13]~53_combout\ ) ) # ( s_int(13) & ( !\s[13]~53_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_s_int(13),
	dataf => \ALT_INV_s[13]~53_combout\,
	combout => \s[13]~55_combout\);

-- Location: FF_X87_Y11_N5
\s[13]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s[13]~55_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s[13]~reg0_emulated_q\);

-- Location: MLABCELL_X87_Y10_N48
\s[13]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[13]~54_combout\ = ( s_int(13) & ( \s[13]~reg0_emulated_q\ & ( (!\s[13]~53_combout\) # (\reset~input_o\) ) ) ) # ( !s_int(13) & ( \s[13]~reg0_emulated_q\ & ( (!\s[13]~53_combout\ & !\reset~input_o\) ) ) ) # ( s_int(13) & ( !\s[13]~reg0_emulated_q\ & ( 
-- (\reset~input_o\) # (\s[13]~53_combout\) ) ) ) # ( !s_int(13) & ( !\s[13]~reg0_emulated_q\ & ( (\s[13]~53_combout\ & !\reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111111000000110000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s[13]~53_combout\,
	datac => \ALT_INV_reset~input_o\,
	datae => ALT_INV_s_int(13),
	dataf => \ALT_INV_s[13]~reg0_emulated_q\,
	combout => \s[13]~54_combout\);

-- Location: LABCELL_X81_Y11_N33
\s[14]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[14]~57_combout\ = ( s_int(14) & ( (\s[14]~57_combout\) # (\reset~input_o\) ) ) # ( !s_int(14) & ( (!\reset~input_o\ & \s[14]~57_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_s[14]~57_combout\,
	dataf => ALT_INV_s_int(14),
	combout => \s[14]~57_combout\);

-- Location: MLABCELL_X87_Y11_N54
\s[14]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[14]~59_combout\ = ( \s[14]~57_combout\ & ( !s_int(14) ) ) # ( !\s[14]~57_combout\ & ( s_int(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_s_int(14),
	dataf => \ALT_INV_s[14]~57_combout\,
	combout => \s[14]~59_combout\);

-- Location: FF_X87_Y11_N55
\s[14]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s[14]~59_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s[14]~reg0_emulated_q\);

-- Location: LABCELL_X83_Y12_N33
\s[14]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[14]~58_combout\ = ( \reset~input_o\ & ( \s[14]~57_combout\ & ( s_int(14) ) ) ) # ( !\reset~input_o\ & ( \s[14]~57_combout\ & ( !\s[14]~reg0_emulated_q\ ) ) ) # ( \reset~input_o\ & ( !\s[14]~57_combout\ & ( s_int(14) ) ) ) # ( !\reset~input_o\ & ( 
-- !\s[14]~57_combout\ & ( \s[14]~reg0_emulated_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111110101010101010100000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s[14]~reg0_emulated_q\,
	datad => ALT_INV_s_int(14),
	datae => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_s[14]~57_combout\,
	combout => \s[14]~58_combout\);

-- Location: MLABCELL_X82_Y11_N24
\s[15]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[15]~61_combout\ = ( s_int(15) & ( (\s[15]~61_combout\) # (\reset~input_o\) ) ) # ( !s_int(15) & ( (!\reset~input_o\ & \s[15]~61_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_s[15]~61_combout\,
	dataf => ALT_INV_s_int(15),
	combout => \s[15]~61_combout\);

-- Location: LABCELL_X81_Y11_N54
\s[15]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[15]~63_combout\ = ( \s[15]~61_combout\ & ( !s_int(15) ) ) # ( !\s[15]~61_combout\ & ( s_int(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_s_int(15),
	dataf => \ALT_INV_s[15]~61_combout\,
	combout => \s[15]~63_combout\);

-- Location: FF_X81_Y11_N55
\s[15]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s[15]~63_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \k[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s[15]~reg0_emulated_q\);

-- Location: LABCELL_X81_Y11_N57
\s[15]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[15]~62_combout\ = ( \s[15]~61_combout\ & ( (!\reset~input_o\ & ((!\s[15]~reg0_emulated_q\))) # (\reset~input_o\ & (s_int(15))) ) ) # ( !\s[15]~61_combout\ & ( (!\reset~input_o\ & ((\s[15]~reg0_emulated_q\))) # (\reset~input_o\ & (s_int(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010111110000010101011111000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s_int(15),
	datac => \ALT_INV_s[15]~reg0_emulated_q\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_s[15]~61_combout\,
	combout => \s[15]~62_combout\);

-- Location: LABCELL_X88_Y10_N27
\ready~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ready~0_combout\ = ( \ready~reg0_q\ & ( \LessThan0~8_combout\ & ( (!\started~combout\) # ((!\d[13]~input_o\ & k(13))) ) ) ) # ( !\ready~reg0_q\ & ( \LessThan0~8_combout\ & ( (!\d[13]~input_o\ & (k(13) & \started~combout\)) ) ) ) # ( \ready~reg0_q\ & ( 
-- !\LessThan0~8_combout\ & ( (!\started~combout\) # ((!\d[13]~input_o\ & ((!\LessThan0~0_combout\) # (k(13)))) # (\d[13]~input_o\ & (!\LessThan0~0_combout\ & k(13)))) ) ) ) # ( !\ready~reg0_q\ & ( !\LessThan0~8_combout\ & ( (\started~combout\ & 
-- ((!\d[13]~input_o\ & ((!\LessThan0~0_combout\) # (k(13)))) # (\d[13]~input_o\ & (!\LessThan0~0_combout\ & k(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001110111111111000111000000000000010101111111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d[13]~input_o\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => ALT_INV_k(13),
	datad => \ALT_INV_started~combout\,
	datae => \ALT_INV_ready~reg0_q\,
	dataf => \ALT_INV_LessThan0~8_combout\,
	combout => \ready~0_combout\);

-- Location: FF_X88_Y10_N28
\ready~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ready~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready~reg0_q\);

-- Location: MLABCELL_X28_Y34_N3
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


