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

-- DATE "03/26/2022 09:50:11"

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

ENTITY 	g40_modulo33401_pipelined IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	clk : IN std_logic;
	Amod33401 : BUFFER std_logic_vector(15 DOWNTO 0);
	Afloor33401 : BUFFER std_logic_vector(16 DOWNTO 0)
	);
END g40_modulo33401_pipelined;

-- Design Ports Information
-- Amod33401[0]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amod33401[1]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amod33401[2]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amod33401[3]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amod33401[4]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amod33401[5]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amod33401[6]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amod33401[7]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amod33401[8]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amod33401[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amod33401[10]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amod33401[11]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amod33401[12]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amod33401[13]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amod33401[14]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amod33401[15]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Afloor33401[0]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Afloor33401[1]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Afloor33401[2]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Afloor33401[3]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Afloor33401[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Afloor33401[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Afloor33401[6]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Afloor33401[7]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Afloor33401[8]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Afloor33401[9]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Afloor33401[10]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Afloor33401[11]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Afloor33401[12]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Afloor33401[13]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Afloor33401[14]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Afloor33401[15]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Afloor33401[16]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF g40_modulo33401_pipelined IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_Amod33401 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Afloor33401 : std_logic_vector(16 DOWNTO 0);
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A1[30]~feeder_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \A1[28]~feeder_combout\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \A1[27]~feeder_combout\ : std_logic;
SIGNAL \A1[26]~feeder_combout\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \B1[27]~feeder_combout\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \A1[24]~feeder_combout\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \A1[22]~feeder_combout\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \A1[20]~feeder_combout\ : std_logic;
SIGNAL \A1[19]~feeder_combout\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \B1[20]~feeder_combout\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \A1[14]~feeder_combout\ : std_logic;
SIGNAL \A1[12]~feeder_combout\ : std_logic;
SIGNAL \A1[7]~feeder_combout\ : std_logic;
SIGNAL \A1[6]~feeder_combout\ : std_logic;
SIGNAL \A1[5]~feeder_combout\ : std_logic;
SIGNAL \A1[4]~feeder_combout\ : std_logic;
SIGNAL \A1[3]~feeder_combout\ : std_logic;
SIGNAL \A1[1]~feeder_combout\ : std_logic;
SIGNAL \Add2~170\ : std_logic;
SIGNAL \Add2~166\ : std_logic;
SIGNAL \Add2~162\ : std_logic;
SIGNAL \Add2~158\ : std_logic;
SIGNAL \Add2~154\ : std_logic;
SIGNAL \Add2~150\ : std_logic;
SIGNAL \Add2~146\ : std_logic;
SIGNAL \Add2~142\ : std_logic;
SIGNAL \Add2~138\ : std_logic;
SIGNAL \Add2~134\ : std_logic;
SIGNAL \Add2~130\ : std_logic;
SIGNAL \Add2~126\ : std_logic;
SIGNAL \Add2~122\ : std_logic;
SIGNAL \Add2~118\ : std_logic;
SIGNAL \Add2~114\ : std_logic;
SIGNAL \Add2~110\ : std_logic;
SIGNAL \Add2~106\ : std_logic;
SIGNAL \Add2~102\ : std_logic;
SIGNAL \Add2~98\ : std_logic;
SIGNAL \Add2~94\ : std_logic;
SIGNAL \Add2~90\ : std_logic;
SIGNAL \Add2~86\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~78\ : std_logic;
SIGNAL \Add2~74\ : std_logic;
SIGNAL \Add2~70\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \A2[29]~feeder_combout\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \Add2~77_sumout\ : std_logic;
SIGNAL \A2[27]~feeder_combout\ : std_logic;
SIGNAL \A2[26]~feeder_combout\ : std_logic;
SIGNAL \Add2~81_sumout\ : std_logic;
SIGNAL \Add2~85_sumout\ : std_logic;
SIGNAL \A2[25]~feeder_combout\ : std_logic;
SIGNAL \Add2~89_sumout\ : std_logic;
SIGNAL \Add2~93_sumout\ : std_logic;
SIGNAL \Add2~97_sumout\ : std_logic;
SIGNAL \Add2~101_sumout\ : std_logic;
SIGNAL \Add2~105_sumout\ : std_logic;
SIGNAL \Add2~109_sumout\ : std_logic;
SIGNAL \Add2~113_sumout\ : std_logic;
SIGNAL \A2[18]~feeder_combout\ : std_logic;
SIGNAL \Add2~117_sumout\ : std_logic;
SIGNAL \A2[16]~feeder_combout\ : std_logic;
SIGNAL \Add2~121_sumout\ : std_logic;
SIGNAL \Add2~125_sumout\ : std_logic;
SIGNAL \Add2~129_sumout\ : std_logic;
SIGNAL \Add2~133_sumout\ : std_logic;
SIGNAL \Add2~137_sumout\ : std_logic;
SIGNAL \Add2~141_sumout\ : std_logic;
SIGNAL \Add2~145_sumout\ : std_logic;
SIGNAL \Add2~149_sumout\ : std_logic;
SIGNAL \Add2~153_sumout\ : std_logic;
SIGNAL \Add2~157_sumout\ : std_logic;
SIGNAL \Add2~161_sumout\ : std_logic;
SIGNAL \Add2~165_sumout\ : std_logic;
SIGNAL \A2[5]~feeder_combout\ : std_logic;
SIGNAL \A2[5]~DUPLICATE_q\ : std_logic;
SIGNAL \A2[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~169_sumout\ : std_logic;
SIGNAL \A2[3]~DUPLICATE_q\ : std_logic;
SIGNAL \B2[2]~feeder_combout\ : std_logic;
SIGNAL \B2[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~182\ : std_logic;
SIGNAL \Add3~178\ : std_logic;
SIGNAL \Add3~174\ : std_logic;
SIGNAL \Add3~170\ : std_logic;
SIGNAL \Add3~166\ : std_logic;
SIGNAL \Add3~162\ : std_logic;
SIGNAL \Add3~158\ : std_logic;
SIGNAL \Add3~154\ : std_logic;
SIGNAL \Add3~150\ : std_logic;
SIGNAL \Add3~146\ : std_logic;
SIGNAL \Add3~142\ : std_logic;
SIGNAL \Add3~138\ : std_logic;
SIGNAL \Add3~134\ : std_logic;
SIGNAL \Add3~130\ : std_logic;
SIGNAL \Add3~126\ : std_logic;
SIGNAL \Add3~122\ : std_logic;
SIGNAL \Add3~118\ : std_logic;
SIGNAL \Add3~114\ : std_logic;
SIGNAL \Add3~110\ : std_logic;
SIGNAL \Add3~106\ : std_logic;
SIGNAL \Add3~102\ : std_logic;
SIGNAL \Add3~98\ : std_logic;
SIGNAL \Add3~94\ : std_logic;
SIGNAL \Add3~90\ : std_logic;
SIGNAL \Add3~86\ : std_logic;
SIGNAL \Add3~82\ : std_logic;
SIGNAL \Add3~78\ : std_logic;
SIGNAL \Add3~74\ : std_logic;
SIGNAL \Add3~70\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \Add1~130\ : std_logic;
SIGNAL \Add1~126\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \C2[30]~feeder_combout\ : std_logic;
SIGNAL \C[30]~feeder_combout\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \C[29]~feeder_combout\ : std_logic;
SIGNAL \Add3~69_sumout\ : std_logic;
SIGNAL \Add3~73_sumout\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \C[28]~feeder_combout\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add3~77_sumout\ : std_logic;
SIGNAL \Add3~81_sumout\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \C2[26]~feeder_combout\ : std_logic;
SIGNAL \Add3~85_sumout\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \C[25]~feeder_combout\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \C2[24]~feeder_combout\ : std_logic;
SIGNAL \C[24]~feeder_combout\ : std_logic;
SIGNAL \Add3~89_sumout\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \C2[23]~feeder_combout\ : std_logic;
SIGNAL \Add3~93_sumout\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \C2[22]~feeder_combout\ : std_logic;
SIGNAL \C[22]~feeder_combout\ : std_logic;
SIGNAL \Add3~97_sumout\ : std_logic;
SIGNAL \Add3~101_sumout\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \C2[20]~feeder_combout\ : std_logic;
SIGNAL \Add3~105_sumout\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \C2[19]~feeder_combout\ : std_logic;
SIGNAL \Add3~109_sumout\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Add3~113_sumout\ : std_logic;
SIGNAL \Add3~117_sumout\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \C2[17]~feeder_combout\ : std_logic;
SIGNAL \Add3~121_sumout\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \C2[16]~feeder_combout\ : std_logic;
SIGNAL \C[16]~feeder_combout\ : std_logic;
SIGNAL \Add3~125_sumout\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \C2[15]~feeder_combout\ : std_logic;
SIGNAL \C[15]~feeder_combout\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \C2[14]~feeder_combout\ : std_logic;
SIGNAL \C[14]~feeder_combout\ : std_logic;
SIGNAL \Add3~129_sumout\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \C2[13]~feeder_combout\ : std_logic;
SIGNAL \Add3~133_sumout\ : std_logic;
SIGNAL \Add3~137_sumout\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \Add3~141_sumout\ : std_logic;
SIGNAL \Add3~145_sumout\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \Add3~149_sumout\ : std_logic;
SIGNAL \Add1~129_sumout\ : std_logic;
SIGNAL \Add3~153_sumout\ : std_logic;
SIGNAL \Add3~157_sumout\ : std_logic;
SIGNAL \Add3~161_sumout\ : std_logic;
SIGNAL \Add3~165_sumout\ : std_logic;
SIGNAL \Add3~169_sumout\ : std_logic;
SIGNAL \Add3~173_sumout\ : std_logic;
SIGNAL \Add3~177_sumout\ : std_logic;
SIGNAL \Add3~181_sumout\ : std_logic;
SIGNAL \B[1]~feeder_combout\ : std_logic;
SIGNAL \Add4~186_cout\ : std_logic;
SIGNAL \Add4~187\ : std_logic;
SIGNAL \Add4~182_cout\ : std_logic;
SIGNAL \Add4~183\ : std_logic;
SIGNAL \Add4~178_cout\ : std_logic;
SIGNAL \Add4~179\ : std_logic;
SIGNAL \Add4~174_cout\ : std_logic;
SIGNAL \Add4~175\ : std_logic;
SIGNAL \Add4~170_cout\ : std_logic;
SIGNAL \Add4~171\ : std_logic;
SIGNAL \Add4~166_cout\ : std_logic;
SIGNAL \Add4~167\ : std_logic;
SIGNAL \Add4~162_cout\ : std_logic;
SIGNAL \Add4~163\ : std_logic;
SIGNAL \Add4~158_cout\ : std_logic;
SIGNAL \Add4~159\ : std_logic;
SIGNAL \Add4~154_cout\ : std_logic;
SIGNAL \Add4~155\ : std_logic;
SIGNAL \Add4~150_cout\ : std_logic;
SIGNAL \Add4~151\ : std_logic;
SIGNAL \Add4~146_cout\ : std_logic;
SIGNAL \Add4~147\ : std_logic;
SIGNAL \Add4~142_cout\ : std_logic;
SIGNAL \Add4~143\ : std_logic;
SIGNAL \Add4~138_cout\ : std_logic;
SIGNAL \Add4~139\ : std_logic;
SIGNAL \Add4~134_cout\ : std_logic;
SIGNAL \Add4~135\ : std_logic;
SIGNAL \Add4~130_cout\ : std_logic;
SIGNAL \Add4~131\ : std_logic;
SIGNAL \Add4~126_cout\ : std_logic;
SIGNAL \Add4~127\ : std_logic;
SIGNAL \Add4~122_cout\ : std_logic;
SIGNAL \Add4~123\ : std_logic;
SIGNAL \Add4~118_cout\ : std_logic;
SIGNAL \Add4~119\ : std_logic;
SIGNAL \Add4~114_cout\ : std_logic;
SIGNAL \Add4~115\ : std_logic;
SIGNAL \Add4~110_cout\ : std_logic;
SIGNAL \Add4~111\ : std_logic;
SIGNAL \Add4~106_cout\ : std_logic;
SIGNAL \Add4~107\ : std_logic;
SIGNAL \Add4~102_cout\ : std_logic;
SIGNAL \Add4~103\ : std_logic;
SIGNAL \Add4~98_cout\ : std_logic;
SIGNAL \Add4~99\ : std_logic;
SIGNAL \Add4~94_cout\ : std_logic;
SIGNAL \Add4~95\ : std_logic;
SIGNAL \Add4~90_cout\ : std_logic;
SIGNAL \Add4~91\ : std_logic;
SIGNAL \Add4~86_cout\ : std_logic;
SIGNAL \Add4~87\ : std_logic;
SIGNAL \Add4~82_cout\ : std_logic;
SIGNAL \Add4~83\ : std_logic;
SIGNAL \Add4~78_cout\ : std_logic;
SIGNAL \Add4~79\ : std_logic;
SIGNAL \Add4~74_cout\ : std_logic;
SIGNAL \Add4~75\ : std_logic;
SIGNAL \Add4~70_cout\ : std_logic;
SIGNAL \Add4~71\ : std_logic;
SIGNAL \Add4~37_sumout\ : std_logic;
SIGNAL \H[0]~feeder_combout\ : std_logic;
SIGNAL \H6[0]~feeder_combout\ : std_logic;
SIGNAL \H7[0]~feeder_combout\ : std_logic;
SIGNAL \H8[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add9~1_sumout\ : std_logic;
SIGNAL \Amod33401[0]~reg0_q\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \A1[31]~feeder_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \Add4~38\ : std_logic;
SIGNAL \Add4~39\ : std_logic;
SIGNAL \Add4~41_sumout\ : std_logic;
SIGNAL \H[1]~feeder_combout\ : std_logic;
SIGNAL \H7[1]~feeder_combout\ : std_logic;
SIGNAL \G9[1]~feeder_combout\ : std_logic;
SIGNAL \A6[1]~feeder_combout\ : std_logic;
SIGNAL \A7[1]~feeder_combout\ : std_logic;
SIGNAL \Add9~2\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~5_sumout\ : std_logic;
SIGNAL \Amod33401[1]~reg0_q\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \C[32]~feeder_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \B1[32]~feeder_combout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~45_sumout\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add4~45_sumout\ : std_logic;
SIGNAL \H7[2]~feeder_combout\ : std_logic;
SIGNAL \G9[2]~feeder_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \B1[34]~feeder_combout\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \B1[33]~feeder_combout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \Add3~46\ : std_logic;
SIGNAL \Add3~50\ : std_logic;
SIGNAL \Add3~54\ : std_logic;
SIGNAL \Add3~58\ : std_logic;
SIGNAL \Add3~62\ : std_logic;
SIGNAL \Add3~66\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \C1[41]~feeder_combout\ : std_logic;
SIGNAL \C[41]~feeder_combout\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \C2[40]~feeder_combout\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \C2[39]~feeder_combout\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \Add3~65_sumout\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \C2[37]~feeder_combout\ : std_logic;
SIGNAL \C[37]~feeder_combout\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add3~61_sumout\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \C2[35]~feeder_combout\ : std_logic;
SIGNAL \C[35]~feeder_combout\ : std_logic;
SIGNAL \Add3~57_sumout\ : std_logic;
SIGNAL \Add3~53_sumout\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \C[34]~feeder_combout\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \C2[33]~feeder_combout\ : std_logic;
SIGNAL \C[33]~feeder_combout\ : std_logic;
SIGNAL \Add3~49_sumout\ : std_logic;
SIGNAL \Add4~46\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~50\ : std_logic;
SIGNAL \Add4~51\ : std_logic;
SIGNAL \Add4~54\ : std_logic;
SIGNAL \Add4~55\ : std_logic;
SIGNAL \Add4~58\ : std_logic;
SIGNAL \Add4~59\ : std_logic;
SIGNAL \Add4~62\ : std_logic;
SIGNAL \Add4~63\ : std_logic;
SIGNAL \Add4~66\ : std_logic;
SIGNAL \Add4~67\ : std_logic;
SIGNAL \Add4~30\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~DUPLICATE_q\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~DUPLICATE_q\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|cntr1|counter_comb_bita2~1_sumout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|cntr1|counter_comb_bita2~sumout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2_combout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|cntr1|counter_comb_bita0~sumout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~DUPLICATE_q\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|op_1~1_sumout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|op_1~2\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|op_1~5_sumout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|dffe3a[1]~0_combout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|op_1~6\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|op_1~9_sumout\ : std_logic;
SIGNAL \A2[14]~DUPLICATE_q\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ram_block6a1\ : std_logic;
SIGNAL \Add9~6\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~9_sumout\ : std_logic;
SIGNAL \Amod33401[2]~reg0feeder_combout\ : std_logic;
SIGNAL \Amod33401[2]~reg0_q\ : std_logic;
SIGNAL \Add4~49_sumout\ : std_logic;
SIGNAL \H[3]~feeder_combout\ : std_logic;
SIGNAL \H6[3]~feeder_combout\ : std_logic;
SIGNAL \H8[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add8~62_cout\ : std_logic;
SIGNAL \Add8~63\ : std_logic;
SIGNAL \Add8~58_cout\ : std_logic;
SIGNAL \Add8~59\ : std_logic;
SIGNAL \Add8~54_cout\ : std_logic;
SIGNAL \Add8~55\ : std_logic;
SIGNAL \Add8~1_sumout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ram_block6a2\ : std_logic;
SIGNAL \Add9~10\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~13_sumout\ : std_logic;
SIGNAL \Amod33401[3]~reg0feeder_combout\ : std_logic;
SIGNAL \Amod33401[3]~reg0_q\ : std_logic;
SIGNAL \Add4~53_sumout\ : std_logic;
SIGNAL \H8[4]~feeder_combout\ : std_logic;
SIGNAL \Add8~2\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~5_sumout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ram_block6a3\ : std_logic;
SIGNAL \Add9~14\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~17_sumout\ : std_logic;
SIGNAL \Amod33401[4]~reg0feeder_combout\ : std_logic;
SIGNAL \Amod33401[4]~reg0_q\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ram_block6a4\ : std_logic;
SIGNAL \Add4~57_sumout\ : std_logic;
SIGNAL \H[5]~feeder_combout\ : std_logic;
SIGNAL \H6[5]~feeder_combout\ : std_logic;
SIGNAL \Add8~6\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~9_sumout\ : std_logic;
SIGNAL \Add9~18\ : std_logic;
SIGNAL \Add9~19\ : std_logic;
SIGNAL \Add9~21_sumout\ : std_logic;
SIGNAL \Amod33401[5]~reg0feeder_combout\ : std_logic;
SIGNAL \Amod33401[5]~reg0_q\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ram_block6a5\ : std_logic;
SIGNAL \Add4~61_sumout\ : std_logic;
SIGNAL \Add8~10\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~13_sumout\ : std_logic;
SIGNAL \Add9~22\ : std_logic;
SIGNAL \Add9~23\ : std_logic;
SIGNAL \Add9~25_sumout\ : std_logic;
SIGNAL \Amod33401[6]~reg0feeder_combout\ : std_logic;
SIGNAL \Amod33401[6]~reg0_q\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ram_block6a6\ : std_logic;
SIGNAL \Add4~65_sumout\ : std_logic;
SIGNAL \H[7]~feeder_combout\ : std_logic;
SIGNAL \H7[7]~feeder_combout\ : std_logic;
SIGNAL \H7[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add7~1_sumout\ : std_logic;
SIGNAL \Add8~14\ : std_logic;
SIGNAL \Add8~15\ : std_logic;
SIGNAL \Add8~17_sumout\ : std_logic;
SIGNAL \Add9~26\ : std_logic;
SIGNAL \Add9~27\ : std_logic;
SIGNAL \Add9~29_sumout\ : std_logic;
SIGNAL \Amod33401[7]~reg0_q\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ram_block6a7\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \H[8]~feeder_combout\ : std_logic;
SIGNAL \H6[8]~feeder_combout\ : std_logic;
SIGNAL \H7[8]~feeder_combout\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \Add7~5_sumout\ : std_logic;
SIGNAL \Add8~18\ : std_logic;
SIGNAL \Add8~19\ : std_logic;
SIGNAL \Add8~21_sumout\ : std_logic;
SIGNAL \Add9~30\ : std_logic;
SIGNAL \Add9~31\ : std_logic;
SIGNAL \Add9~33_sumout\ : std_logic;
SIGNAL \Amod33401[8]~reg0_q\ : std_logic;
SIGNAL \Add6~1_sumout\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|cntr1|counter_comb_bita1~1_sumout\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|cntr1|counter_comb_bita0~sumout\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|dffe3a[1]~0_combout\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ram_block5a16\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ram_block5a15\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ram_block5a14\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ram_block5a13\ : std_logic;
SIGNAL \Add7~6\ : std_logic;
SIGNAL \Add7~9_sumout\ : std_logic;
SIGNAL \Add8~22\ : std_logic;
SIGNAL \Add8~23\ : std_logic;
SIGNAL \Add8~25_sumout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ram_block6a8\ : std_logic;
SIGNAL \Add9~34\ : std_logic;
SIGNAL \Add9~35\ : std_logic;
SIGNAL \Add9~37_sumout\ : std_logic;
SIGNAL \Amod33401[9]~reg0feeder_combout\ : std_logic;
SIGNAL \Amod33401[9]~reg0_q\ : std_logic;
SIGNAL \Add6~2\ : std_logic;
SIGNAL \Add6~5_sumout\ : std_logic;
SIGNAL \Add7~10\ : std_logic;
SIGNAL \Add7~13_sumout\ : std_logic;
SIGNAL \Add8~26\ : std_logic;
SIGNAL \Add8~27\ : std_logic;
SIGNAL \Add8~29_sumout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ram_block6a9\ : std_logic;
SIGNAL \Add9~38\ : std_logic;
SIGNAL \Add9~39\ : std_logic;
SIGNAL \Add9~41_sumout\ : std_logic;
SIGNAL \Amod33401[10]~reg0_q\ : std_logic;
SIGNAL \H8[8]~DUPLICATE_q\ : std_logic;
SIGNAL \H6[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add6~6\ : std_logic;
SIGNAL \Add6~9_sumout\ : std_logic;
SIGNAL \Add7~14\ : std_logic;
SIGNAL \Add7~17_sumout\ : std_logic;
SIGNAL \Add8~30\ : std_logic;
SIGNAL \Add8~31\ : std_logic;
SIGNAL \Add8~33_sumout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ram_block6a10\ : std_logic;
SIGNAL \Add9~42\ : std_logic;
SIGNAL \Add9~43\ : std_logic;
SIGNAL \Add9~45_sumout\ : std_logic;
SIGNAL \Amod33401[11]~reg0feeder_combout\ : std_logic;
SIGNAL \Amod33401[11]~reg0_q\ : std_logic;
SIGNAL \Add6~10\ : std_logic;
SIGNAL \Add6~13_sumout\ : std_logic;
SIGNAL \Add7~18\ : std_logic;
SIGNAL \Add7~21_sumout\ : std_logic;
SIGNAL \H8[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add8~34\ : std_logic;
SIGNAL \Add8~35\ : std_logic;
SIGNAL \Add8~37_sumout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ram_block6a11\ : std_logic;
SIGNAL \Add9~46\ : std_logic;
SIGNAL \Add9~47\ : std_logic;
SIGNAL \Add9~49_sumout\ : std_logic;
SIGNAL \Amod33401[12]~reg0feeder_combout\ : std_logic;
SIGNAL \Amod33401[12]~reg0_q\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ram_block6a12\ : std_logic;
SIGNAL \Add6~14\ : std_logic;
SIGNAL \Add6~17_sumout\ : std_logic;
SIGNAL \Add4~33_sumout\ : std_logic;
SIGNAL \H7[13]~feeder_combout\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~25_sumout\ : std_logic;
SIGNAL \Add8~38\ : std_logic;
SIGNAL \Add8~39\ : std_logic;
SIGNAL \Add8~41_sumout\ : std_logic;
SIGNAL \Add9~50\ : std_logic;
SIGNAL \Add9~51\ : std_logic;
SIGNAL \Add9~53_sumout\ : std_logic;
SIGNAL \Amod33401[13]~reg0feeder_combout\ : std_logic;
SIGNAL \Amod33401[13]~reg0_q\ : std_logic;
SIGNAL \H8[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Add6~18\ : std_logic;
SIGNAL \Add6~21_sumout\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \H[14]~feeder_combout\ : std_logic;
SIGNAL \H6[14]~feeder_combout\ : std_logic;
SIGNAL \H7[14]~feeder_combout\ : std_logic;
SIGNAL \Add7~26\ : std_logic;
SIGNAL \Add7~29_sumout\ : std_logic;
SIGNAL \Add8~42\ : std_logic;
SIGNAL \Add8~43\ : std_logic;
SIGNAL \Add8~45_sumout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ram_block6a13\ : std_logic;
SIGNAL \Add9~54\ : std_logic;
SIGNAL \Add9~55\ : std_logic;
SIGNAL \Add9~57_sumout\ : std_logic;
SIGNAL \Amod33401[14]~reg0feeder_combout\ : std_logic;
SIGNAL \Amod33401[14]~reg0_q\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add6~22\ : std_logic;
SIGNAL \Add6~25_sumout\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \Add7~30\ : std_logic;
SIGNAL \Add7~33_sumout\ : std_logic;
SIGNAL \Add8~46\ : std_logic;
SIGNAL \Add8~47\ : std_logic;
SIGNAL \Add8~49_sumout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ram_block6a14\ : std_logic;
SIGNAL \Add9~58\ : std_logic;
SIGNAL \Add9~59\ : std_logic;
SIGNAL \Add9~61_sumout\ : std_logic;
SIGNAL \Amod33401[15]~reg0_q\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ram_block5a1\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ram_block5a2\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ram_block5a3\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ram_block5a4\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ram_block5a5\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ram_block5a6\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ram_block5a7\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ram_block5a8\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ram_block5a9\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ram_block5a10\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ram_block5a11\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ram_block5a12\ : std_logic;
SIGNAL \H8[13]~feeder_combout\ : std_logic;
SIGNAL \H9[13]~feeder_combout\ : std_logic;
SIGNAL \H10[13]~feeder_combout\ : std_logic;
SIGNAL \Afloor33401[13]~reg0_q\ : std_logic;
SIGNAL \H10[14]~feeder_combout\ : std_logic;
SIGNAL \Afloor33401[14]~reg0feeder_combout\ : std_logic;
SIGNAL \Afloor33401[14]~reg0_q\ : std_logic;
SIGNAL \H9[15]~feeder_combout\ : std_logic;
SIGNAL \Afloor33401[15]~reg0_q\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ram_block6a0~portbdataout\ : std_logic;
SIGNAL E6 : std_logic_vector(31 DOWNTO 0);
SIGNAL A3 : std_logic_vector(31 DOWNTO 0);
SIGNAL A4 : std_logic_vector(31 DOWNTO 0);
SIGNAL C1 : std_logic_vector(41 DOWNTO 0);
SIGNAL E7 : std_logic_vector(31 DOWNTO 0);
SIGNAL A5 : std_logic_vector(31 DOWNTO 0);
SIGNAL C2 : std_logic_vector(41 DOWNTO 0);
SIGNAL A6 : std_logic_vector(31 DOWNTO 0);
SIGNAL H7 : std_logic_vector(16 DOWNTO 0);
SIGNAL A2 : std_logic_vector(31 DOWNTO 0);
SIGNAL H10 : std_logic_vector(16 DOWNTO 0);
SIGNAL B1 : std_logic_vector(46 DOWNTO 0);
SIGNAL \H_rtl_0|auto_generated|dffe3a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \H_rtl_0|auto_generated|cntr1|counter_reg_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL H : std_logic_vector(16 DOWNTO 0);
SIGNAL H9 : std_logic_vector(16 DOWNTO 0);
SIGNAL D : std_logic_vector(46 DOWNTO 0);
SIGNAL G : std_logic_vector(31 DOWNTO 0);
SIGNAL H8 : std_logic_vector(16 DOWNTO 0);
SIGNAL \H9_rtl_0|auto_generated|cntr1|counter_reg_bit\ : std_logic_vector(1 DOWNTO 0);
SIGNAL A9 : std_logic_vector(31 DOWNTO 0);
SIGNAL G9 : std_logic_vector(31 DOWNTO 0);
SIGNAL H6 : std_logic_vector(16 DOWNTO 0);
SIGNAL A1 : std_logic_vector(31 DOWNTO 0);
SIGNAL B : std_logic_vector(46 DOWNTO 0);
SIGNAL \H9_rtl_0|auto_generated|dffe3a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL A8 : std_logic_vector(31 DOWNTO 0);
SIGNAL B2 : std_logic_vector(46 DOWNTO 0);
SIGNAL A7 : std_logic_vector(31 DOWNTO 0);
SIGNAL E : std_logic_vector(31 DOWNTO 0);
SIGNAL C : std_logic_vector(41 DOWNTO 0);
SIGNAL \ALT_INV_B2[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_A2[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_A2[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_A2[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_H6[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_H7[0]~DUPLICATE_q\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[2]~DUPLICATE_q\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[1]~DUPLICATE_q\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_H8[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_H8[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_H8[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_H8[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_H8[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL ALT_INV_B : std_logic_vector(46 DOWNTO 0);
SIGNAL ALT_INV_B2 : std_logic_vector(46 DOWNTO 1);
SIGNAL ALT_INV_C : std_logic_vector(41 DOWNTO 9);
SIGNAL ALT_INV_C1 : std_logic_vector(40 DOWNTO 13);
SIGNAL ALT_INV_B1 : std_logic_vector(46 DOWNTO 15);
SIGNAL ALT_INV_C2 : std_logic_vector(41 DOWNTO 14);
SIGNAL ALT_INV_A1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_A2 : std_logic_vector(31 DOWNTO 6);
SIGNAL ALT_INV_E6 : std_logic_vector(15 DOWNTO 15);
SIGNAL ALT_INV_A3 : std_logic_vector(1 DOWNTO 1);
SIGNAL ALT_INV_D : std_logic_vector(44 DOWNTO 30);
SIGNAL ALT_INV_E7 : std_logic_vector(15 DOWNTO 9);
SIGNAL ALT_INV_A5 : std_logic_vector(1 DOWNTO 1);
SIGNAL ALT_INV_H : std_logic_vector(14 DOWNTO 0);
SIGNAL ALT_INV_A6 : std_logic_vector(1 DOWNTO 1);
SIGNAL ALT_INV_H6 : std_logic_vector(14 DOWNTO 0);
SIGNAL ALT_INV_E : std_logic_vector(15 DOWNTO 7);
SIGNAL ALT_INV_H7 : std_logic_vector(15 DOWNTO 1);
SIGNAL \H_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~0_combout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|ALT_INV_op_2~0_combout\ : std_logic;
SIGNAL ALT_INV_H8 : std_logic_vector(15 DOWNTO 1);
SIGNAL ALT_INV_G9 : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_A9 : std_logic_vector(1 DOWNTO 0);
SIGNAL ALT_INV_H9 : std_logic_vector(14 DOWNTO 13);
SIGNAL \H_rtl_0|auto_generated|ALT_INV_dffe3a\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL ALT_INV_H10 : std_logic_vector(14 DOWNTO 14);
SIGNAL \H9_rtl_0|auto_generated|ALT_INV_dffe3a\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \H9_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\ : std_logic_vector(1 DOWNTO 0);
SIGNAL ALT_INV_G : std_logic_vector(14 DOWNTO 2);
SIGNAL \ALT_INV_Add3~181_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|ALT_INV_op_1~5_sumout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita2~sumout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita1~sumout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita0~sumout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita2~1_sumout\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita1~sumout\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita1~1_sumout\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita0~sumout\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a1\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a2\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a3\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a4\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a5\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a6\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a7\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a8\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a9\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a10\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a11\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a12\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a13\ : std_logic;
SIGNAL \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a14\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ALT_INV_ram_block5a13\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ALT_INV_ram_block5a14\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ALT_INV_ram_block5a15\ : std_logic;
SIGNAL \H9_rtl_0|auto_generated|altsyncram4|ALT_INV_ram_block5a16\ : std_logic;

BEGIN

ww_A <= A;
ww_clk <= clk;
Amod33401 <= ww_Amod33401;
Afloor33401 <= ww_Afloor33401;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & D(42) & D(41) & D(40) & D(39) & H8(12) & 
H8(11) & H8(10) & H8(9) & H8(8) & H8(7) & H8(6) & H8(5) & H8(4) & H8(3) & H8(2) & H8(1) & H8(0));

\H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTAADDR_bus\ <= (\H9_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & \H9_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

\H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBADDR_bus\ <= (\H9_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ & \H9_rtl_0|auto_generated|dffe3a\(0));

\H9_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\ <= \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(0);
\H9_rtl_0|auto_generated|altsyncram4|ram_block5a1\ <= \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(1);
\H9_rtl_0|auto_generated|altsyncram4|ram_block5a2\ <= \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(2);
\H9_rtl_0|auto_generated|altsyncram4|ram_block5a3\ <= \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(3);
\H9_rtl_0|auto_generated|altsyncram4|ram_block5a4\ <= \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(4);
\H9_rtl_0|auto_generated|altsyncram4|ram_block5a5\ <= \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(5);
\H9_rtl_0|auto_generated|altsyncram4|ram_block5a6\ <= \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(6);
\H9_rtl_0|auto_generated|altsyncram4|ram_block5a7\ <= \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(7);
\H9_rtl_0|auto_generated|altsyncram4|ram_block5a8\ <= \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(8);
\H9_rtl_0|auto_generated|altsyncram4|ram_block5a9\ <= \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(9);
\H9_rtl_0|auto_generated|altsyncram4|ram_block5a10\ <= \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(10);
\H9_rtl_0|auto_generated|altsyncram4|ram_block5a11\ <= \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(11);
\H9_rtl_0|auto_generated|altsyncram4|ram_block5a12\ <= \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(12);
\H9_rtl_0|auto_generated|altsyncram4|ram_block5a13\ <= \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(13);
\H9_rtl_0|auto_generated|altsyncram4|ram_block5a14\ <= \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(14);
\H9_rtl_0|auto_generated|altsyncram4|ram_block5a15\ <= \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(15);
\H9_rtl_0|auto_generated|altsyncram4|ram_block5a16\ <= \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(16);

\H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & A2(15) & \A2[14]~DUPLICATE_q\ & 
A2(13) & A2(12) & A2(11) & A2(10) & A2(9) & A2(8) & A2(7) & A2(6) & A2(5) & A2(4) & A2(3) & B2(3) & D(46));

\H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTAADDR_bus\ <= (\H_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & \H_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~DUPLICATE_q\ & \H_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~DUPLICATE_q\);

\H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBADDR_bus\ <= (\H_rtl_0|auto_generated|dffe3a\(2) & \H_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ & \H_rtl_0|auto_generated|dffe3a\(0));

\H_rtl_0|auto_generated|altsyncram5|ram_block6a0~portbdataout\ <= \H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBDATAOUT_bus\(0);
\H_rtl_0|auto_generated|altsyncram5|ram_block6a1\ <= \H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBDATAOUT_bus\(1);
\H_rtl_0|auto_generated|altsyncram5|ram_block6a2\ <= \H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBDATAOUT_bus\(2);
\H_rtl_0|auto_generated|altsyncram5|ram_block6a3\ <= \H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBDATAOUT_bus\(3);
\H_rtl_0|auto_generated|altsyncram5|ram_block6a4\ <= \H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBDATAOUT_bus\(4);
\H_rtl_0|auto_generated|altsyncram5|ram_block6a5\ <= \H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBDATAOUT_bus\(5);
\H_rtl_0|auto_generated|altsyncram5|ram_block6a6\ <= \H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBDATAOUT_bus\(6);
\H_rtl_0|auto_generated|altsyncram5|ram_block6a7\ <= \H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBDATAOUT_bus\(7);
\H_rtl_0|auto_generated|altsyncram5|ram_block6a8\ <= \H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBDATAOUT_bus\(8);
\H_rtl_0|auto_generated|altsyncram5|ram_block6a9\ <= \H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBDATAOUT_bus\(9);
\H_rtl_0|auto_generated|altsyncram5|ram_block6a10\ <= \H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBDATAOUT_bus\(10);
\H_rtl_0|auto_generated|altsyncram5|ram_block6a11\ <= \H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBDATAOUT_bus\(11);
\H_rtl_0|auto_generated|altsyncram5|ram_block6a12\ <= \H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBDATAOUT_bus\(12);
\H_rtl_0|auto_generated|altsyncram5|ram_block6a13\ <= \H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBDATAOUT_bus\(13);
\H_rtl_0|auto_generated|altsyncram5|ram_block6a14\ <= \H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBDATAOUT_bus\(14);
\ALT_INV_B2[2]~DUPLICATE_q\ <= NOT \B2[2]~DUPLICATE_q\;
\ALT_INV_A2[5]~DUPLICATE_q\ <= NOT \A2[5]~DUPLICATE_q\;
\ALT_INV_A2[4]~DUPLICATE_q\ <= NOT \A2[4]~DUPLICATE_q\;
\ALT_INV_A2[3]~DUPLICATE_q\ <= NOT \A2[3]~DUPLICATE_q\;
\ALT_INV_H6[4]~DUPLICATE_q\ <= NOT \H6[4]~DUPLICATE_q\;
\ALT_INV_H7[0]~DUPLICATE_q\ <= NOT \H7[0]~DUPLICATE_q\;
\H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[2]~DUPLICATE_q\ <= NOT \H_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~DUPLICATE_q\;
\H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[1]~DUPLICATE_q\ <= NOT \H_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~DUPLICATE_q\;
\H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[0]~DUPLICATE_q\ <= NOT \H_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~DUPLICATE_q\;
\ALT_INV_H8[11]~DUPLICATE_q\ <= NOT \H8[11]~DUPLICATE_q\;
\ALT_INV_H8[9]~DUPLICATE_q\ <= NOT \H8[9]~DUPLICATE_q\;
\ALT_INV_H8[8]~DUPLICATE_q\ <= NOT \H8[8]~DUPLICATE_q\;
\ALT_INV_H8[1]~DUPLICATE_q\ <= NOT \H8[1]~DUPLICATE_q\;
\ALT_INV_H8[0]~DUPLICATE_q\ <= NOT \H8[0]~DUPLICATE_q\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
ALT_INV_B(1) <= NOT B(1);
ALT_INV_B(2) <= NOT B(2);
ALT_INV_B2(4) <= NOT B2(4);
ALT_INV_B(3) <= NOT B(3);
ALT_INV_B2(5) <= NOT B2(5);
ALT_INV_B(4) <= NOT B(4);
ALT_INV_B2(6) <= NOT B2(6);
ALT_INV_B(5) <= NOT B(5);
ALT_INV_B2(7) <= NOT B2(7);
ALT_INV_B(6) <= NOT B(6);
ALT_INV_B2(8) <= NOT B2(8);
ALT_INV_B(7) <= NOT B(7);
ALT_INV_B2(9) <= NOT B2(9);
ALT_INV_B(8) <= NOT B(8);
ALT_INV_B2(10) <= NOT B2(10);
ALT_INV_B(9) <= NOT B(9);
ALT_INV_C(9) <= NOT C(9);
ALT_INV_B2(11) <= NOT B2(11);
ALT_INV_B(10) <= NOT B(10);
ALT_INV_C(10) <= NOT C(10);
ALT_INV_B2(12) <= NOT B2(12);
ALT_INV_B(11) <= NOT B(11);
ALT_INV_C(11) <= NOT C(11);
ALT_INV_C1(13) <= NOT C1(13);
ALT_INV_B2(13) <= NOT B2(13);
ALT_INV_B1(15) <= NOT B1(15);
ALT_INV_B(12) <= NOT B(12);
ALT_INV_C(12) <= NOT C(12);
ALT_INV_C1(14) <= NOT C1(14);
ALT_INV_B2(14) <= NOT B2(14);
ALT_INV_B1(16) <= NOT B1(16);
ALT_INV_B(13) <= NOT B(13);
ALT_INV_C(13) <= NOT C(13);
ALT_INV_C2(14) <= NOT C2(14);
ALT_INV_C1(15) <= NOT C1(15);
ALT_INV_B2(15) <= NOT B2(15);
ALT_INV_B1(17) <= NOT B1(17);
ALT_INV_A1(16) <= NOT A1(16);
ALT_INV_B(14) <= NOT B(14);
ALT_INV_C(14) <= NOT C(14);
ALT_INV_C2(15) <= NOT C2(15);
ALT_INV_C1(16) <= NOT C1(16);
ALT_INV_B2(16) <= NOT B2(16);
ALT_INV_A2(16) <= NOT A2(16);
ALT_INV_B1(18) <= NOT B1(18);
ALT_INV_A1(17) <= NOT A1(17);
ALT_INV_B(15) <= NOT B(15);
ALT_INV_C(15) <= NOT C(15);
ALT_INV_C2(16) <= NOT C2(16);
ALT_INV_C1(17) <= NOT C1(17);
ALT_INV_B2(17) <= NOT B2(17);
ALT_INV_A2(17) <= NOT A2(17);
ALT_INV_B1(19) <= NOT B1(19);
ALT_INV_A1(18) <= NOT A1(18);
ALT_INV_B(16) <= NOT B(16);
ALT_INV_C(16) <= NOT C(16);
ALT_INV_B2(18) <= NOT B2(18);
ALT_INV_A2(18) <= NOT A2(18);
ALT_INV_B1(20) <= NOT B1(20);
ALT_INV_A1(19) <= NOT A1(19);
ALT_INV_B(17) <= NOT B(17);
ALT_INV_C(17) <= NOT C(17);
ALT_INV_C1(19) <= NOT C1(19);
ALT_INV_B2(19) <= NOT B2(19);
ALT_INV_A2(19) <= NOT A2(19);
ALT_INV_B1(21) <= NOT B1(21);
ALT_INV_A1(20) <= NOT A1(20);
ALT_INV_B(18) <= NOT B(18);
ALT_INV_C(18) <= NOT C(18);
ALT_INV_C1(20) <= NOT C1(20);
ALT_INV_B2(20) <= NOT B2(20);
ALT_INV_A2(20) <= NOT A2(20);
ALT_INV_B1(22) <= NOT B1(22);
ALT_INV_A1(21) <= NOT A1(21);
ALT_INV_B(19) <= NOT B(19);
ALT_INV_C(19) <= NOT C(19);
ALT_INV_B2(21) <= NOT B2(21);
ALT_INV_A2(21) <= NOT A2(21);
ALT_INV_B1(23) <= NOT B1(23);
ALT_INV_A1(22) <= NOT A1(22);
ALT_INV_B(20) <= NOT B(20);
ALT_INV_C(20) <= NOT C(20);
ALT_INV_C1(22) <= NOT C1(22);
ALT_INV_B2(22) <= NOT B2(22);
ALT_INV_A2(22) <= NOT A2(22);
ALT_INV_B1(24) <= NOT B1(24);
ALT_INV_A1(23) <= NOT A1(23);
ALT_INV_B(21) <= NOT B(21);
ALT_INV_C(21) <= NOT C(21);
ALT_INV_C2(22) <= NOT C2(22);
ALT_INV_C1(23) <= NOT C1(23);
ALT_INV_B2(23) <= NOT B2(23);
ALT_INV_A2(23) <= NOT A2(23);
ALT_INV_B1(25) <= NOT B1(25);
ALT_INV_A1(24) <= NOT A1(24);
ALT_INV_B(22) <= NOT B(22);
ALT_INV_C(22) <= NOT C(22);
ALT_INV_C1(24) <= NOT C1(24);
ALT_INV_B2(24) <= NOT B2(24);
ALT_INV_A2(24) <= NOT A2(24);
ALT_INV_B1(26) <= NOT B1(26);
ALT_INV_A1(25) <= NOT A1(25);
ALT_INV_B(23) <= NOT B(23);
ALT_INV_C(23) <= NOT C(23);
ALT_INV_C2(24) <= NOT C2(24);
ALT_INV_B2(25) <= NOT B2(25);
ALT_INV_A2(25) <= NOT A2(25);
ALT_INV_B1(27) <= NOT B1(27);
ALT_INV_A1(26) <= NOT A1(26);
ALT_INV_B(24) <= NOT B(24);
ALT_INV_C(24) <= NOT C(24);
ALT_INV_C2(25) <= NOT C2(25);
ALT_INV_C1(26) <= NOT C1(26);
ALT_INV_B2(26) <= NOT B2(26);
ALT_INV_A2(26) <= NOT A2(26);
ALT_INV_B1(28) <= NOT B1(28);
ALT_INV_A1(27) <= NOT A1(27);
ALT_INV_B(25) <= NOT B(25);
ALT_INV_C(25) <= NOT C(25);
ALT_INV_B2(27) <= NOT B2(27);
ALT_INV_A2(27) <= NOT A2(27);
ALT_INV_B1(29) <= NOT B1(29);
ALT_INV_A1(28) <= NOT A1(28);
ALT_INV_B1(37) <= NOT B1(37);
ALT_INV_B1(36) <= NOT B1(36);
ALT_INV_B1(35) <= NOT B1(35);
ALT_INV_B1(34) <= NOT B1(34);
ALT_INV_B1(33) <= NOT B1(33);
ALT_INV_B1(32) <= NOT B1(32);
ALT_INV_B1(31) <= NOT B1(31);
ALT_INV_B(26) <= NOT B(26);
ALT_INV_C(26) <= NOT C(26);
ALT_INV_B2(28) <= NOT B2(28);
ALT_INV_A2(28) <= NOT A2(28);
ALT_INV_B1(30) <= NOT B1(30);
ALT_INV_A1(29) <= NOT A1(29);
ALT_INV_A1(1) <= NOT A1(1);
ALT_INV_A1(0) <= NOT A1(0);
ALT_INV_B1(43) <= NOT B1(43);
ALT_INV_B1(38) <= NOT B1(38);
ALT_INV_A1(31) <= NOT A1(31);
ALT_INV_B(27) <= NOT B(27);
ALT_INV_C(27) <= NOT C(27);
ALT_INV_C2(28) <= NOT C2(28);
ALT_INV_B2(29) <= NOT B2(29);
ALT_INV_A2(29) <= NOT A2(29);
ALT_INV_A1(30) <= NOT A1(30);
ALT_INV_B2(1) <= NOT B2(1);
ALT_INV_B1(44) <= NOT B1(44);
ALT_INV_B1(42) <= NOT B1(42);
ALT_INV_B1(41) <= NOT B1(41);
ALT_INV_B1(40) <= NOT B1(40);
ALT_INV_B1(39) <= NOT B1(39);
ALT_INV_B2(37) <= NOT B2(37);
ALT_INV_C1(37) <= NOT C1(37);
ALT_INV_B2(36) <= NOT B2(36);
ALT_INV_B2(35) <= NOT B2(35);
ALT_INV_C1(35) <= NOT C1(35);
ALT_INV_B2(34) <= NOT B2(34);
ALT_INV_B2(33) <= NOT B2(33);
ALT_INV_C1(33) <= NOT C1(33);
ALT_INV_B2(32) <= NOT B2(32);
ALT_INV_B2(31) <= NOT B2(31);
ALT_INV_A2(31) <= NOT A2(31);
ALT_INV_B(28) <= NOT B(28);
ALT_INV_C(28) <= NOT C(28);
ALT_INV_C2(29) <= NOT C2(29);
ALT_INV_B2(30) <= NOT B2(30);
ALT_INV_A2(30) <= NOT A2(30);
ALT_INV_C1(30) <= NOT C1(30);
ALT_INV_E6(15) <= NOT E6(15);
ALT_INV_A3(1) <= NOT A3(1);
ALT_INV_B(0) <= NOT B(0);
ALT_INV_B2(43) <= NOT B2(43);
ALT_INV_B1(45) <= NOT B1(45);
ALT_INV_B2(38) <= NOT B2(38);
ALT_INV_C2(37) <= NOT C2(37);
ALT_INV_C2(35) <= NOT C2(35);
ALT_INV_C2(34) <= NOT C2(34);
ALT_INV_C2(33) <= NOT C2(33);
ALT_INV_C2(32) <= NOT C2(32);
ALT_INV_B(29) <= NOT B(29);
ALT_INV_C(29) <= NOT C(29);
ALT_INV_C2(30) <= NOT C2(30);
ALT_INV_B2(44) <= NOT B2(44);
ALT_INV_B1(46) <= NOT B1(46);
ALT_INV_D(44) <= NOT D(44);
ALT_INV_B2(42) <= NOT B2(42);
ALT_INV_B2(41) <= NOT B2(41);
ALT_INV_B2(40) <= NOT B2(40);
ALT_INV_C1(40) <= NOT C1(40);
ALT_INV_B2(39) <= NOT B2(39);
ALT_INV_C1(39) <= NOT C1(39);
ALT_INV_B(37) <= NOT B(37);
ALT_INV_C(37) <= NOT C(37);
ALT_INV_B(36) <= NOT B(36);
ALT_INV_C(36) <= NOT C(36);
ALT_INV_B(35) <= NOT B(35);
ALT_INV_C(35) <= NOT C(35);
ALT_INV_B(34) <= NOT B(34);
ALT_INV_C(34) <= NOT C(34);
ALT_INV_B(33) <= NOT B(33);
ALT_INV_C(33) <= NOT C(33);
ALT_INV_B(32) <= NOT B(32);
ALT_INV_C(32) <= NOT C(32);
ALT_INV_B(31) <= NOT B(31);
ALT_INV_C(31) <= NOT C(31);
ALT_INV_B(30) <= NOT B(30);
ALT_INV_C(30) <= NOT C(30);
ALT_INV_E7(15) <= NOT E7(15);
ALT_INV_E7(14) <= NOT E7(14);
ALT_INV_E7(13) <= NOT E7(13);
ALT_INV_E7(12) <= NOT E7(12);
ALT_INV_E7(11) <= NOT E7(11);
ALT_INV_E7(10) <= NOT E7(10);
ALT_INV_E7(9) <= NOT E7(9);
ALT_INV_A5(1) <= NOT A5(1);
ALT_INV_B(43) <= NOT B(43);
ALT_INV_B2(45) <= NOT B2(45);
ALT_INV_H(14) <= NOT H(14);
ALT_INV_C2(41) <= NOT C2(41);
ALT_INV_B(38) <= NOT B(38);
ALT_INV_C(38) <= NOT C(38);
ALT_INV_A6(1) <= NOT A6(1);
ALT_INV_B(44) <= NOT B(44);
ALT_INV_B2(46) <= NOT B2(46);
ALT_INV_H6(14) <= NOT H6(14);
ALT_INV_H6(13) <= NOT H6(13);
ALT_INV_B(42) <= NOT B(42);
ALT_INV_B(41) <= NOT B(41);
ALT_INV_C(41) <= NOT C(41);
ALT_INV_B(40) <= NOT B(40);
ALT_INV_C(40) <= NOT C(40);
ALT_INV_B(39) <= NOT B(39);
ALT_INV_C(39) <= NOT C(39);
ALT_INV_D(38) <= NOT D(38);
ALT_INV_D(37) <= NOT D(37);
ALT_INV_D(35) <= NOT D(35);
ALT_INV_D(33) <= NOT D(33);
ALT_INV_D(31) <= NOT D(31);
ALT_INV_D(30) <= NOT D(30);
ALT_INV_A1(15) <= NOT A1(15);
ALT_INV_E(15) <= NOT E(15);
ALT_INV_A1(14) <= NOT A1(14);
ALT_INV_E(14) <= NOT E(14);
ALT_INV_A1(13) <= NOT A1(13);
ALT_INV_E(13) <= NOT E(13);
ALT_INV_A1(12) <= NOT A1(12);
ALT_INV_E(12) <= NOT E(12);
ALT_INV_A1(11) <= NOT A1(11);
ALT_INV_E(11) <= NOT E(11);
ALT_INV_A1(10) <= NOT A1(10);
ALT_INV_E(10) <= NOT E(10);
ALT_INV_A1(9) <= NOT A1(9);
ALT_INV_E(9) <= NOT E(9);
ALT_INV_A1(8) <= NOT A1(8);
ALT_INV_E(8) <= NOT E(8);
ALT_INV_A1(7) <= NOT A1(7);
ALT_INV_E(7) <= NOT E(7);
ALT_INV_A1(6) <= NOT A1(6);
ALT_INV_A1(5) <= NOT A1(5);
ALT_INV_A1(4) <= NOT A1(4);
ALT_INV_A1(3) <= NOT A1(3);
ALT_INV_A1(2) <= NOT A1(2);
ALT_INV_B(45) <= NOT B(45);
ALT_INV_H7(15) <= NOT H7(15);
ALT_INV_H7(14) <= NOT H7(14);
ALT_INV_H7(13) <= NOT H7(13);
ALT_INV_H(8) <= NOT H(8);
ALT_INV_H(6) <= NOT H(6);
ALT_INV_H(5) <= NOT H(5);
ALT_INV_H(3) <= NOT H(3);
ALT_INV_H(0) <= NOT H(0);
ALT_INV_A2(15) <= NOT A2(15);
ALT_INV_A2(14) <= NOT A2(14);
ALT_INV_A2(13) <= NOT A2(13);
ALT_INV_A2(12) <= NOT A2(12);
ALT_INV_A2(11) <= NOT A2(11);
ALT_INV_A2(10) <= NOT A2(10);
ALT_INV_A2(9) <= NOT A2(9);
ALT_INV_A2(8) <= NOT A2(8);
ALT_INV_A2(7) <= NOT A2(7);
ALT_INV_A2(6) <= NOT A2(6);
ALT_INV_B2(3) <= NOT B2(3);
\H_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~0_combout\ <= NOT \H_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\;
\H_rtl_0|auto_generated|ALT_INV_op_2~0_combout\ <= NOT \H_rtl_0|auto_generated|op_2~0_combout\;
ALT_INV_B(46) <= NOT B(46);
ALT_INV_H8(15) <= NOT H8(15);
ALT_INV_H8(13) <= NOT H8(13);
ALT_INV_H6(8) <= NOT H6(8);
ALT_INV_H6(7) <= NOT H6(7);
ALT_INV_H6(6) <= NOT H6(6);
ALT_INV_H6(5) <= NOT H6(5);
ALT_INV_H6(3) <= NOT H6(3);
ALT_INV_H6(2) <= NOT H6(2);
ALT_INV_H6(1) <= NOT H6(1);
ALT_INV_H6(0) <= NOT H6(0);
ALT_INV_G9(15) <= NOT G9(15);
ALT_INV_G9(14) <= NOT G9(14);
ALT_INV_G9(13) <= NOT G9(13);
ALT_INV_G9(12) <= NOT G9(12);
ALT_INV_G9(11) <= NOT G9(11);
ALT_INV_G9(10) <= NOT G9(10);
ALT_INV_G9(9) <= NOT G9(9);
ALT_INV_G9(8) <= NOT G9(8);
ALT_INV_G9(7) <= NOT G9(7);
ALT_INV_G9(6) <= NOT G9(6);
ALT_INV_G9(5) <= NOT G9(5);
ALT_INV_G9(4) <= NOT G9(4);
ALT_INV_G9(3) <= NOT G9(3);
ALT_INV_G9(2) <= NOT G9(2);
ALT_INV_G9(1) <= NOT G9(1);
ALT_INV_A9(1) <= NOT A9(1);
ALT_INV_G9(0) <= NOT G9(0);
ALT_INV_A9(0) <= NOT A9(0);
ALT_INV_H9(14) <= NOT H9(14);
ALT_INV_H9(13) <= NOT H9(13);
ALT_INV_H7(8) <= NOT H7(8);
ALT_INV_H7(7) <= NOT H7(7);
ALT_INV_H7(4) <= NOT H7(4);
ALT_INV_H7(1) <= NOT H7(1);
\H_rtl_0|auto_generated|ALT_INV_dffe3a\(1) <= NOT \H_rtl_0|auto_generated|dffe3a\(1);
\H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2) <= NOT \H_rtl_0|auto_generated|cntr1|counter_reg_bit\(2);
\H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1) <= NOT \H_rtl_0|auto_generated|cntr1|counter_reg_bit\(1);
\H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0) <= NOT \H_rtl_0|auto_generated|cntr1|counter_reg_bit\(0);
ALT_INV_H10(14) <= NOT H10(14);
ALT_INV_H8(12) <= NOT H8(12);
ALT_INV_H8(10) <= NOT H8(10);
ALT_INV_H8(7) <= NOT H8(7);
ALT_INV_H8(6) <= NOT H8(6);
ALT_INV_H8(5) <= NOT H8(5);
ALT_INV_H8(4) <= NOT H8(4);
ALT_INV_H8(3) <= NOT H8(3);
ALT_INV_H8(2) <= NOT H8(2);
ALT_INV_H8(1) <= NOT H8(1);
\H9_rtl_0|auto_generated|ALT_INV_dffe3a\(1) <= NOT \H9_rtl_0|auto_generated|dffe3a\(1);
\H9_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1) <= NOT \H9_rtl_0|auto_generated|cntr1|counter_reg_bit\(1);
\H9_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0) <= NOT \H9_rtl_0|auto_generated|cntr1|counter_reg_bit\(0);
ALT_INV_G(14) <= NOT G(14);
ALT_INV_G(13) <= NOT G(13);
ALT_INV_G(12) <= NOT G(12);
ALT_INV_G(11) <= NOT G(11);
ALT_INV_G(9) <= NOT G(9);
ALT_INV_G(6) <= NOT G(6);
ALT_INV_G(5) <= NOT G(5);
ALT_INV_G(4) <= NOT G(4);
ALT_INV_G(3) <= NOT G(3);
ALT_INV_G(2) <= NOT G(2);
\ALT_INV_Add3~181_sumout\ <= NOT \Add3~181_sumout\;
\ALT_INV_Add0~105_sumout\ <= NOT \Add0~105_sumout\;
\ALT_INV_Add0~77_sumout\ <= NOT \Add0~77_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\H_rtl_0|auto_generated|ALT_INV_op_1~5_sumout\ <= NOT \H_rtl_0|auto_generated|op_1~5_sumout\;
\H_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita2~sumout\ <= NOT \H_rtl_0|auto_generated|cntr1|counter_comb_bita2~sumout\;
\H_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita1~sumout\ <= NOT \H_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\;
\H_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita0~sumout\ <= NOT \H_rtl_0|auto_generated|cntr1|counter_comb_bita0~sumout\;
\H_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita2~1_sumout\ <= NOT \H_rtl_0|auto_generated|cntr1|counter_comb_bita2~1_sumout\;
\H9_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita1~sumout\ <= NOT \H9_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\;
\H9_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita1~1_sumout\ <= NOT \H9_rtl_0|auto_generated|cntr1|counter_comb_bita1~1_sumout\;
\H9_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita0~sumout\ <= NOT \H9_rtl_0|auto_generated|cntr1|counter_comb_bita0~sumout\;
\H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a1\ <= NOT \H_rtl_0|auto_generated|altsyncram5|ram_block6a1\;
\H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a2\ <= NOT \H_rtl_0|auto_generated|altsyncram5|ram_block6a2\;
\H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a3\ <= NOT \H_rtl_0|auto_generated|altsyncram5|ram_block6a3\;
\H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a4\ <= NOT \H_rtl_0|auto_generated|altsyncram5|ram_block6a4\;
\H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a5\ <= NOT \H_rtl_0|auto_generated|altsyncram5|ram_block6a5\;
\H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a6\ <= NOT \H_rtl_0|auto_generated|altsyncram5|ram_block6a6\;
\H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a7\ <= NOT \H_rtl_0|auto_generated|altsyncram5|ram_block6a7\;
\H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a8\ <= NOT \H_rtl_0|auto_generated|altsyncram5|ram_block6a8\;
\H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a9\ <= NOT \H_rtl_0|auto_generated|altsyncram5|ram_block6a9\;
\H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a10\ <= NOT \H_rtl_0|auto_generated|altsyncram5|ram_block6a10\;
\H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a11\ <= NOT \H_rtl_0|auto_generated|altsyncram5|ram_block6a11\;
\H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a12\ <= NOT \H_rtl_0|auto_generated|altsyncram5|ram_block6a12\;
\H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a13\ <= NOT \H_rtl_0|auto_generated|altsyncram5|ram_block6a13\;
\H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a14\ <= NOT \H_rtl_0|auto_generated|altsyncram5|ram_block6a14\;
\H9_rtl_0|auto_generated|altsyncram4|ALT_INV_ram_block5a13\ <= NOT \H9_rtl_0|auto_generated|altsyncram4|ram_block5a13\;
\H9_rtl_0|auto_generated|altsyncram4|ALT_INV_ram_block5a14\ <= NOT \H9_rtl_0|auto_generated|altsyncram4|ram_block5a14\;
\H9_rtl_0|auto_generated|altsyncram4|ALT_INV_ram_block5a15\ <= NOT \H9_rtl_0|auto_generated|altsyncram4|ram_block5a15\;
\H9_rtl_0|auto_generated|altsyncram4|ALT_INV_ram_block5a16\ <= NOT \H9_rtl_0|auto_generated|altsyncram4|ram_block5a16\;

-- Location: IOOBUF_X89_Y11_N79
\Amod33401[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Amod33401[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Amod33401(0));

-- Location: IOOBUF_X89_Y11_N96
\Amod33401[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Amod33401[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Amod33401(1));

-- Location: IOOBUF_X89_Y13_N39
\Amod33401[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Amod33401[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Amod33401(2));

-- Location: IOOBUF_X78_Y0_N2
\Amod33401[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Amod33401[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Amod33401(3));

-- Location: IOOBUF_X76_Y0_N36
\Amod33401[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Amod33401[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Amod33401(4));

-- Location: IOOBUF_X89_Y25_N5
\Amod33401[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Amod33401[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Amod33401(5));

-- Location: IOOBUF_X89_Y15_N39
\Amod33401[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Amod33401[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Amod33401(6));

-- Location: IOOBUF_X89_Y13_N22
\Amod33401[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Amod33401[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Amod33401(7));

-- Location: IOOBUF_X89_Y6_N22
\Amod33401[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Amod33401[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Amod33401(8));

-- Location: IOOBUF_X89_Y11_N62
\Amod33401[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Amod33401[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Amod33401(9));

-- Location: IOOBUF_X89_Y21_N39
\Amod33401[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Amod33401[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Amod33401(10));

-- Location: IOOBUF_X89_Y20_N45
\Amod33401[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Amod33401[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Amod33401(11));

-- Location: IOOBUF_X89_Y16_N22
\Amod33401[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Amod33401[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Amod33401(12));

-- Location: IOOBUF_X72_Y0_N53
\Amod33401[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Amod33401[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Amod33401(13));

-- Location: IOOBUF_X82_Y0_N59
\Amod33401[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Amod33401[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Amod33401(14));

-- Location: IOOBUF_X78_Y0_N36
\Amod33401[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Amod33401[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Amod33401(15));

-- Location: IOOBUF_X72_Y0_N2
\Afloor33401[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\,
	devoe => ww_devoe,
	o => ww_Afloor33401(0));

-- Location: IOOBUF_X89_Y16_N5
\Afloor33401[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H9_rtl_0|auto_generated|altsyncram4|ram_block5a1\,
	devoe => ww_devoe,
	o => ww_Afloor33401(1));

-- Location: IOOBUF_X89_Y13_N56
\Afloor33401[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H9_rtl_0|auto_generated|altsyncram4|ram_block5a2\,
	devoe => ww_devoe,
	o => ww_Afloor33401(2));

-- Location: IOOBUF_X89_Y13_N5
\Afloor33401[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H9_rtl_0|auto_generated|altsyncram4|ram_block5a3\,
	devoe => ww_devoe,
	o => ww_Afloor33401(3));

-- Location: IOOBUF_X89_Y15_N22
\Afloor33401[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H9_rtl_0|auto_generated|altsyncram4|ram_block5a4\,
	devoe => ww_devoe,
	o => ww_Afloor33401(4));

-- Location: IOOBUF_X89_Y15_N5
\Afloor33401[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H9_rtl_0|auto_generated|altsyncram4|ram_block5a5\,
	devoe => ww_devoe,
	o => ww_Afloor33401(5));

-- Location: IOOBUF_X89_Y16_N39
\Afloor33401[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H9_rtl_0|auto_generated|altsyncram4|ram_block5a6\,
	devoe => ww_devoe,
	o => ww_Afloor33401(6));

-- Location: IOOBUF_X89_Y16_N56
\Afloor33401[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H9_rtl_0|auto_generated|altsyncram4|ram_block5a7\,
	devoe => ww_devoe,
	o => ww_Afloor33401(7));

-- Location: IOOBUF_X68_Y0_N53
\Afloor33401[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H9_rtl_0|auto_generated|altsyncram4|ram_block5a8\,
	devoe => ww_devoe,
	o => ww_Afloor33401(8));

-- Location: IOOBUF_X68_Y0_N19
\Afloor33401[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H9_rtl_0|auto_generated|altsyncram4|ram_block5a9\,
	devoe => ww_devoe,
	o => ww_Afloor33401(9));

-- Location: IOOBUF_X89_Y15_N56
\Afloor33401[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H9_rtl_0|auto_generated|altsyncram4|ram_block5a10\,
	devoe => ww_devoe,
	o => ww_Afloor33401(10));

-- Location: IOOBUF_X89_Y21_N5
\Afloor33401[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H9_rtl_0|auto_generated|altsyncram4|ram_block5a11\,
	devoe => ww_devoe,
	o => ww_Afloor33401(11));

-- Location: IOOBUF_X89_Y21_N22
\Afloor33401[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H9_rtl_0|auto_generated|altsyncram4|ram_block5a12\,
	devoe => ww_devoe,
	o => ww_Afloor33401(12));

-- Location: IOOBUF_X89_Y21_N56
\Afloor33401[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Afloor33401[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Afloor33401(13));

-- Location: IOOBUF_X89_Y9_N39
\Afloor33401[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Afloor33401[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Afloor33401(14));

-- Location: IOOBUF_X80_Y0_N36
\Afloor33401[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Afloor33401[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Afloor33401(15));

-- Location: IOOBUF_X89_Y20_N96
\Afloor33401[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H_rtl_0|auto_generated|altsyncram5|ram_block6a0~portbdataout\,
	devoe => ww_devoe,
	o => ww_Afloor33401(16));

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

-- Location: IOIBUF_X34_Y81_N41
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: FF_X74_Y36_N26
\A1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \A[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(0));

-- Location: FF_X73_Y36_N23
\B2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(1));

-- Location: FF_X72_Y36_N14
\B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => B2(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(0));

-- Location: FF_X72_Y36_N58
\A4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => B(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A4(0));

-- Location: FF_X78_Y29_N41
\A5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A4(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A5(0));

-- Location: FF_X78_Y29_N14
\A6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A5(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A6(0));

-- Location: FF_X78_Y29_N17
\A7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A6(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A7(0));

-- Location: FF_X78_Y29_N38
\A8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A7(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A8(0));

-- Location: FF_X78_Y29_N49
\A9[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A8(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A9(0));

-- Location: IOIBUF_X89_Y23_N55
\A[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LABCELL_X70_Y35_N27
\A1[30]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1[30]~feeder_combout\ = ( \A[30]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \A1[30]~feeder_combout\);

-- Location: FF_X70_Y35_N29
\A1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A1[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(30));

-- Location: FF_X70_Y35_N25
\A2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(30));

-- Location: IOIBUF_X89_Y23_N38
\A[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X38_Y81_N35
\A[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X76_Y0_N1
\A[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\A[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X76_Y0_N52
\A[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\A[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X40_Y81_N18
\A[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X80_Y0_N1
\A[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X89_Y23_N21
\A[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X38_Y81_N18
\A[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X80_Y0_N52
\A[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\A[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\A[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X78_Y0_N52
\A[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X76_Y0_N18
\A[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X89_Y11_N44
\A[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X38_Y81_N1
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\A[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X40_Y81_N35
\A[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X74_Y0_N92
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X28_Y81_N52
\A[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X74_Y0_N75
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X30_Y81_N52
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X74_Y0_N58
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X75_Y35_N0
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( \A[11]~input_o\ ) + ( \A[0]~input_o\ ) + ( !VCC ))
-- \Add0~126\ = CARRY(( \A[11]~input_o\ ) + ( \A[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	cin => GND,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: LABCELL_X75_Y35_N3
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( \A[12]~input_o\ ) + ( \A[1]~input_o\ ) + ( \Add0~126\ ))
-- \Add0~122\ = CARRY(( \A[12]~input_o\ ) + ( \A[1]~input_o\ ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	cin => \Add0~126\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: LABCELL_X75_Y35_N6
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( \A[13]~input_o\ ) + ( \A[2]~input_o\ ) + ( \Add0~122\ ))
-- \Add0~118\ = CARRY(( \A[13]~input_o\ ) + ( \A[2]~input_o\ ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	cin => \Add0~122\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: LABCELL_X75_Y35_N9
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( \A[3]~input_o\ ) + ( \A[14]~input_o\ ) + ( \Add0~118\ ))
-- \Add0~114\ = CARRY(( \A[3]~input_o\ ) + ( \A[14]~input_o\ ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	cin => \Add0~118\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: LABCELL_X75_Y35_N12
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( \A[15]~input_o\ ) + ( \A[4]~input_o\ ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( \A[15]~input_o\ ) + ( \A[4]~input_o\ ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: LABCELL_X75_Y35_N15
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( \A[16]~input_o\ ) + ( \A[5]~input_o\ ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( \A[16]~input_o\ ) + ( \A[5]~input_o\ ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A[16]~input_o\,
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: LABCELL_X75_Y35_N18
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( \A[6]~input_o\ ) + ( \A[17]~input_o\ ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( \A[6]~input_o\ ) + ( \A[17]~input_o\ ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: LABCELL_X75_Y35_N21
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( \A[18]~input_o\ ) + ( \A[7]~input_o\ ) + ( \Add0~102\ ))
-- \Add0~98\ = CARRY(( \A[18]~input_o\ ) + ( \A[7]~input_o\ ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	cin => \Add0~102\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: LABCELL_X75_Y35_N24
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( \A[19]~input_o\ ) + ( \A[8]~input_o\ ) + ( \Add0~98\ ))
-- \Add0~94\ = CARRY(( \A[19]~input_o\ ) + ( \A[8]~input_o\ ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: LABCELL_X75_Y35_N27
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( \A[9]~input_o\ ) + ( \A[20]~input_o\ ) + ( \Add0~94\ ))
-- \Add0~90\ = CARRY(( \A[9]~input_o\ ) + ( \A[20]~input_o\ ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_A[20]~input_o\,
	cin => \Add0~94\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: LABCELL_X75_Y35_N30
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( \A[21]~input_o\ ) + ( \A[10]~input_o\ ) + ( \Add0~90\ ))
-- \Add0~86\ = CARRY(( \A[21]~input_o\ ) + ( \A[10]~input_o\ ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	cin => \Add0~90\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: LABCELL_X75_Y35_N33
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( \A[22]~input_o\ ) + ( \A[11]~input_o\ ) + ( \Add0~86\ ))
-- \Add0~82\ = CARRY(( \A[22]~input_o\ ) + ( \A[11]~input_o\ ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	cin => \Add0~86\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: LABCELL_X75_Y35_N36
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( \A[23]~input_o\ ) + ( \A[12]~input_o\ ) + ( \Add0~82\ ))
-- \Add0~78\ = CARRY(( \A[23]~input_o\ ) + ( \A[12]~input_o\ ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	cin => \Add0~82\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: LABCELL_X75_Y35_N39
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( \A[24]~input_o\ ) + ( \A[13]~input_o\ ) + ( \Add0~78\ ))
-- \Add0~74\ = CARRY(( \A[24]~input_o\ ) + ( \A[13]~input_o\ ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	cin => \Add0~78\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: LABCELL_X75_Y35_N42
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( \A[25]~input_o\ ) + ( \A[14]~input_o\ ) + ( \Add0~74\ ))
-- \Add0~70\ = CARRY(( \A[25]~input_o\ ) + ( \A[14]~input_o\ ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	cin => \Add0~74\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: LABCELL_X75_Y35_N45
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \A[26]~input_o\ ) + ( \A[15]~input_o\ ) + ( \Add0~70\ ))
-- \Add0~38\ = CARRY(( \A[26]~input_o\ ) + ( \A[15]~input_o\ ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	cin => \Add0~70\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X75_Y35_N47
\B1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(30));

-- Location: IOIBUF_X89_Y25_N55
\A[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: FF_X80_Y35_N53
\A1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \A[29]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(29));

-- Location: IOIBUF_X78_Y0_N18
\A[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LABCELL_X75_Y34_N39
\A1[28]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1[28]~feeder_combout\ = ( \A[28]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \A1[28]~feeder_combout\);

-- Location: FF_X75_Y34_N41
\A1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A1[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(28));

-- Location: FF_X75_Y35_N44
\B1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(29));

-- Location: FF_X75_Y35_N40
\B1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(28));

-- Location: IOIBUF_X70_Y0_N1
\A[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: MLABCELL_X78_Y34_N54
\A1[27]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1[27]~feeder_combout\ = ( \A[27]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \A1[27]~feeder_combout\);

-- Location: FF_X78_Y34_N56
\A1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A1[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(27));

-- Location: LABCELL_X77_Y35_N27
\A1[26]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1[26]~feeder_combout\ = ( \A[26]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \A1[26]~feeder_combout\);

-- Location: FF_X77_Y35_N29
\A1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A1[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(26));

-- Location: LABCELL_X77_Y35_N30
\B1[27]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1[27]~feeder_combout\ = ( \Add0~77_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~77_sumout\,
	combout => \B1[27]~feeder_combout\);

-- Location: FF_X77_Y35_N31
\B1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \B1[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(27));

-- Location: FF_X75_Y35_N35
\B1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(26));

-- Location: FF_X75_Y34_N38
\A1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \A[25]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(25));

-- Location: FF_X75_Y35_N32
\B1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(25));

-- Location: LABCELL_X77_Y35_N9
\A1[24]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1[24]~feeder_combout\ = ( \A[24]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \A1[24]~feeder_combout\);

-- Location: FF_X77_Y35_N11
\A1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A1[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(24));

-- Location: FF_X75_Y34_N50
\A1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \A[23]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(23));

-- Location: FF_X77_Y35_N41
\B1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~89_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(24));

-- Location: FF_X75_Y35_N26
\B1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(23));

-- Location: LABCELL_X77_Y35_N21
\A1[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1[22]~feeder_combout\ = ( \A[22]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \A1[22]~feeder_combout\);

-- Location: FF_X77_Y35_N23
\A1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A1[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(22));

-- Location: FF_X75_Y34_N44
\A1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \A[21]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(21));

-- Location: FF_X75_Y35_N22
\B1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(22));

-- Location: FF_X75_Y35_N20
\B1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(21));

-- Location: LABCELL_X75_Y34_N54
\A1[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1[20]~feeder_combout\ = ( \A[20]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \A1[20]~feeder_combout\);

-- Location: FF_X75_Y34_N56
\A1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A1[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(20));

-- Location: LABCELL_X77_Y35_N45
\A1[19]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1[19]~feeder_combout\ = ( \A[19]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \A1[19]~feeder_combout\);

-- Location: FF_X77_Y35_N47
\A1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A1[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(19));

-- Location: LABCELL_X77_Y35_N57
\B1[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1[20]~feeder_combout\ = ( \Add0~105_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~105_sumout\,
	combout => \B1[20]~feeder_combout\);

-- Location: FF_X77_Y35_N59
\B1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \B1[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(20));

-- Location: FF_X75_Y35_N14
\B1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(19));

-- Location: FF_X70_Y35_N41
\A1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \A[18]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(18));

-- Location: FF_X75_Y35_N29
\A1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \A[17]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(17));

-- Location: FF_X75_Y35_N11
\B1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(18));

-- Location: FF_X75_Y35_N8
\B1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(17));

-- Location: FF_X75_Y35_N17
\A1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \A[16]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(16));

-- Location: FF_X75_Y35_N5
\B1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(16));

-- Location: FF_X75_Y35_N38
\A1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \A[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(15));

-- Location: FF_X75_Y35_N1
\B1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~125_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(15));

-- Location: LABCELL_X74_Y33_N21
\A1[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1[14]~feeder_combout\ = ( \A[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \A1[14]~feeder_combout\);

-- Location: FF_X74_Y33_N23
\A1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A1[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(14));

-- Location: FF_X75_Y35_N53
\A1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \A[13]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(13));

-- Location: FF_X75_Y36_N38
\A1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \A[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(10));

-- Location: LABCELL_X75_Y36_N0
\A1[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1[12]~feeder_combout\ = ( \A[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \A1[12]~feeder_combout\);

-- Location: FF_X75_Y36_N2
\A1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A1[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(12));

-- Location: FF_X74_Y36_N11
\A1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \A[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(9));

-- Location: FF_X74_Y36_N20
\A1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \A[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(8));

-- Location: FF_X75_Y36_N8
\A1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \A[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(11));

-- Location: LABCELL_X74_Y36_N0
\A1[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1[7]~feeder_combout\ = ( \A[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \A1[7]~feeder_combout\);

-- Location: FF_X74_Y36_N2
\A1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A1[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(7));

-- Location: LABCELL_X73_Y36_N15
\A1[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1[6]~feeder_combout\ = ( \A[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \A1[6]~feeder_combout\);

-- Location: FF_X73_Y36_N17
\A1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A1[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(6));

-- Location: LABCELL_X74_Y36_N27
\A1[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1[5]~feeder_combout\ = ( \A[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \A1[5]~feeder_combout\);

-- Location: FF_X74_Y36_N29
\A1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A1[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(5));

-- Location: LABCELL_X74_Y36_N21
\A1[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1[4]~feeder_combout\ = ( \A[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \A1[4]~feeder_combout\);

-- Location: FF_X74_Y36_N23
\A1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A1[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(4));

-- Location: LABCELL_X74_Y36_N12
\A1[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1[3]~feeder_combout\ = ( \A[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \A1[3]~feeder_combout\);

-- Location: FF_X74_Y36_N14
\A1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A1[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(3));

-- Location: FF_X74_Y36_N5
\A1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \A[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(2));

-- Location: LABCELL_X74_Y36_N6
\A1[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1[1]~feeder_combout\ = ( \A[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \A1[1]~feeder_combout\);

-- Location: FF_X74_Y36_N8
\A1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A1[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(1));

-- Location: LABCELL_X74_Y36_N30
\Add2~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~169_sumout\ = SUM(( A1(3) ) + ( A1(0) ) + ( !VCC ))
-- \Add2~170\ = CARRY(( A1(3) ) + ( A1(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A1(3),
	datac => ALT_INV_A1(0),
	cin => GND,
	sumout => \Add2~169_sumout\,
	cout => \Add2~170\);

-- Location: LABCELL_X74_Y36_N33
\Add2~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~165_sumout\ = SUM(( A1(4) ) + ( A1(1) ) + ( \Add2~170\ ))
-- \Add2~166\ = CARRY(( A1(4) ) + ( A1(1) ) + ( \Add2~170\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A1(1),
	datad => ALT_INV_A1(4),
	cin => \Add2~170\,
	sumout => \Add2~165_sumout\,
	cout => \Add2~166\);

-- Location: LABCELL_X74_Y36_N36
\Add2~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~161_sumout\ = SUM(( A1(2) ) + ( A1(5) ) + ( \Add2~166\ ))
-- \Add2~162\ = CARRY(( A1(2) ) + ( A1(5) ) + ( \Add2~166\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A1(5),
	datad => ALT_INV_A1(2),
	cin => \Add2~166\,
	sumout => \Add2~161_sumout\,
	cout => \Add2~162\);

-- Location: LABCELL_X74_Y36_N39
\Add2~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~157_sumout\ = SUM(( A1(6) ) + ( A1(3) ) + ( \Add2~162\ ))
-- \Add2~158\ = CARRY(( A1(6) ) + ( A1(3) ) + ( \Add2~162\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A1(3),
	datad => ALT_INV_A1(6),
	cin => \Add2~162\,
	sumout => \Add2~157_sumout\,
	cout => \Add2~158\);

-- Location: LABCELL_X74_Y36_N42
\Add2~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~153_sumout\ = SUM(( A1(4) ) + ( A1(7) ) + ( \Add2~158\ ))
-- \Add2~154\ = CARRY(( A1(4) ) + ( A1(7) ) + ( \Add2~158\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A1(7),
	datad => ALT_INV_A1(4),
	cin => \Add2~158\,
	sumout => \Add2~153_sumout\,
	cout => \Add2~154\);

-- Location: LABCELL_X74_Y36_N45
\Add2~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~149_sumout\ = SUM(( A1(5) ) + ( A1(8) ) + ( \Add2~154\ ))
-- \Add2~150\ = CARRY(( A1(5) ) + ( A1(8) ) + ( \Add2~154\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A1(8),
	datad => ALT_INV_A1(5),
	cin => \Add2~154\,
	sumout => \Add2~149_sumout\,
	cout => \Add2~150\);

-- Location: LABCELL_X74_Y36_N48
\Add2~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~145_sumout\ = SUM(( A1(6) ) + ( A1(9) ) + ( \Add2~150\ ))
-- \Add2~146\ = CARRY(( A1(6) ) + ( A1(9) ) + ( \Add2~150\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A1(9),
	datad => ALT_INV_A1(6),
	cin => \Add2~150\,
	sumout => \Add2~145_sumout\,
	cout => \Add2~146\);

-- Location: LABCELL_X74_Y36_N51
\Add2~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~141_sumout\ = SUM(( A1(7) ) + ( A1(10) ) + ( \Add2~146\ ))
-- \Add2~142\ = CARRY(( A1(7) ) + ( A1(10) ) + ( \Add2~146\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A1(10),
	datad => ALT_INV_A1(7),
	cin => \Add2~146\,
	sumout => \Add2~141_sumout\,
	cout => \Add2~142\);

-- Location: LABCELL_X74_Y36_N54
\Add2~137\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~137_sumout\ = SUM(( A1(11) ) + ( A1(8) ) + ( \Add2~142\ ))
-- \Add2~138\ = CARRY(( A1(11) ) + ( A1(8) ) + ( \Add2~142\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A1(8),
	datad => ALT_INV_A1(11),
	cin => \Add2~142\,
	sumout => \Add2~137_sumout\,
	cout => \Add2~138\);

-- Location: LABCELL_X74_Y36_N57
\Add2~133\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~133_sumout\ = SUM(( A1(12) ) + ( A1(9) ) + ( \Add2~138\ ))
-- \Add2~134\ = CARRY(( A1(12) ) + ( A1(9) ) + ( \Add2~138\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A1(12),
	datac => ALT_INV_A1(9),
	cin => \Add2~138\,
	sumout => \Add2~133_sumout\,
	cout => \Add2~134\);

-- Location: LABCELL_X74_Y35_N0
\Add2~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~129_sumout\ = SUM(( A1(10) ) + ( A1(13) ) + ( \Add2~134\ ))
-- \Add2~130\ = CARRY(( A1(10) ) + ( A1(13) ) + ( \Add2~134\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A1(13),
	datad => ALT_INV_A1(10),
	cin => \Add2~134\,
	sumout => \Add2~129_sumout\,
	cout => \Add2~130\);

-- Location: LABCELL_X74_Y35_N3
\Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~125_sumout\ = SUM(( A1(14) ) + ( B1(15) ) + ( \Add2~130\ ))
-- \Add2~126\ = CARRY(( A1(14) ) + ( B1(15) ) + ( \Add2~130\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B1(15),
	datad => ALT_INV_A1(14),
	cin => \Add2~130\,
	sumout => \Add2~125_sumout\,
	cout => \Add2~126\);

-- Location: LABCELL_X74_Y35_N6
\Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~121_sumout\ = SUM(( A1(15) ) + ( B1(16) ) + ( \Add2~126\ ))
-- \Add2~122\ = CARRY(( A1(15) ) + ( B1(16) ) + ( \Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B1(16),
	datad => ALT_INV_A1(15),
	cin => \Add2~126\,
	sumout => \Add2~121_sumout\,
	cout => \Add2~122\);

-- Location: LABCELL_X74_Y35_N9
\Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~117_sumout\ = SUM(( A1(16) ) + ( B1(17) ) + ( \Add2~122\ ))
-- \Add2~118\ = CARRY(( A1(16) ) + ( B1(17) ) + ( \Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B1(17),
	datad => ALT_INV_A1(16),
	cin => \Add2~122\,
	sumout => \Add2~117_sumout\,
	cout => \Add2~118\);

-- Location: LABCELL_X74_Y35_N12
\Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~113_sumout\ = SUM(( B1(18) ) + ( A1(17) ) + ( \Add2~118\ ))
-- \Add2~114\ = CARRY(( B1(18) ) + ( A1(17) ) + ( \Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A1(17),
	datad => ALT_INV_B1(18),
	cin => \Add2~118\,
	sumout => \Add2~113_sumout\,
	cout => \Add2~114\);

-- Location: LABCELL_X74_Y35_N15
\Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~109_sumout\ = SUM(( A1(18) ) + ( B1(19) ) + ( \Add2~114\ ))
-- \Add2~110\ = CARRY(( A1(18) ) + ( B1(19) ) + ( \Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B1(19),
	datad => ALT_INV_A1(18),
	cin => \Add2~114\,
	sumout => \Add2~109_sumout\,
	cout => \Add2~110\);

-- Location: LABCELL_X74_Y35_N18
\Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~105_sumout\ = SUM(( B1(20) ) + ( A1(19) ) + ( \Add2~110\ ))
-- \Add2~106\ = CARRY(( B1(20) ) + ( A1(19) ) + ( \Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A1(19),
	datad => ALT_INV_B1(20),
	cin => \Add2~110\,
	sumout => \Add2~105_sumout\,
	cout => \Add2~106\);

-- Location: LABCELL_X74_Y35_N21
\Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~101_sumout\ = SUM(( A1(20) ) + ( B1(21) ) + ( \Add2~106\ ))
-- \Add2~102\ = CARRY(( A1(20) ) + ( B1(21) ) + ( \Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_B1(21),
	datac => ALT_INV_A1(20),
	cin => \Add2~106\,
	sumout => \Add2~101_sumout\,
	cout => \Add2~102\);

-- Location: LABCELL_X74_Y35_N24
\Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~97_sumout\ = SUM(( A1(21) ) + ( B1(22) ) + ( \Add2~102\ ))
-- \Add2~98\ = CARRY(( A1(21) ) + ( B1(22) ) + ( \Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A1(21),
	datac => ALT_INV_B1(22),
	cin => \Add2~102\,
	sumout => \Add2~97_sumout\,
	cout => \Add2~98\);

-- Location: LABCELL_X74_Y35_N27
\Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~93_sumout\ = SUM(( A1(22) ) + ( B1(23) ) + ( \Add2~98\ ))
-- \Add2~94\ = CARRY(( A1(22) ) + ( B1(23) ) + ( \Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B1(23),
	datad => ALT_INV_A1(22),
	cin => \Add2~98\,
	sumout => \Add2~93_sumout\,
	cout => \Add2~94\);

-- Location: LABCELL_X74_Y35_N30
\Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~89_sumout\ = SUM(( B1(24) ) + ( A1(23) ) + ( \Add2~94\ ))
-- \Add2~90\ = CARRY(( B1(24) ) + ( A1(23) ) + ( \Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A1(23),
	datad => ALT_INV_B1(24),
	cin => \Add2~94\,
	sumout => \Add2~89_sumout\,
	cout => \Add2~90\);

-- Location: LABCELL_X74_Y35_N33
\Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~85_sumout\ = SUM(( A1(24) ) + ( B1(25) ) + ( \Add2~90\ ))
-- \Add2~86\ = CARRY(( A1(24) ) + ( B1(25) ) + ( \Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B1(25),
	datad => ALT_INV_A1(24),
	cin => \Add2~90\,
	sumout => \Add2~85_sumout\,
	cout => \Add2~86\);

-- Location: LABCELL_X74_Y35_N36
\Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~81_sumout\ = SUM(( A1(25) ) + ( B1(26) ) + ( \Add2~86\ ))
-- \Add2~82\ = CARRY(( A1(25) ) + ( B1(26) ) + ( \Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B1(26),
	datad => ALT_INV_A1(25),
	cin => \Add2~86\,
	sumout => \Add2~81_sumout\,
	cout => \Add2~82\);

-- Location: LABCELL_X74_Y35_N39
\Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~77_sumout\ = SUM(( A1(26) ) + ( B1(27) ) + ( \Add2~82\ ))
-- \Add2~78\ = CARRY(( A1(26) ) + ( B1(27) ) + ( \Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A1(26),
	dataf => ALT_INV_B1(27),
	cin => \Add2~82\,
	sumout => \Add2~77_sumout\,
	cout => \Add2~78\);

-- Location: LABCELL_X74_Y35_N42
\Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( A1(27) ) + ( B1(28) ) + ( \Add2~78\ ))
-- \Add2~74\ = CARRY(( A1(27) ) + ( B1(28) ) + ( \Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_B1(28),
	datad => ALT_INV_A1(27),
	cin => \Add2~78\,
	sumout => \Add2~73_sumout\,
	cout => \Add2~74\);

-- Location: LABCELL_X74_Y35_N45
\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( B1(29) ) + ( A1(28) ) + ( \Add2~74\ ))
-- \Add2~70\ = CARRY(( B1(29) ) + ( A1(28) ) + ( \Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A1(28),
	datad => ALT_INV_B1(29),
	cin => \Add2~74\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

-- Location: LABCELL_X74_Y35_N48
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( A1(29) ) + ( B1(30) ) + ( \Add2~70\ ))
-- \Add2~38\ = CARRY(( A1(29) ) + ( B1(30) ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B1(30),
	datad => ALT_INV_A1(29),
	cin => \Add2~70\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: FF_X74_Y35_N50
\B2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(30));

-- Location: FF_X74_Y35_N47
\B2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(29));

-- Location: LABCELL_X79_Y35_N15
\A2[29]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A2[29]~feeder_combout\ = ( A1(29) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_A1(29),
	combout => \A2[29]~feeder_combout\);

-- Location: FF_X79_Y35_N17
\A2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A2[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(29));

-- Location: FF_X66_Y35_N40
\A2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(28));

-- Location: FF_X74_Y35_N43
\B2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(28));

-- Location: FF_X74_Y35_N41
\B2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(27));

-- Location: LABCELL_X79_Y35_N33
\A2[27]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A2[27]~feeder_combout\ = ( A1(27) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_A1(27),
	combout => \A2[27]~feeder_combout\);

-- Location: FF_X79_Y35_N35
\A2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A2[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(27));

-- Location: LABCELL_X70_Y35_N15
\A2[26]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A2[26]~feeder_combout\ = ( A1(26) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_A1(26),
	combout => \A2[26]~feeder_combout\);

-- Location: FF_X70_Y35_N16
\A2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A2[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(26));

-- Location: FF_X74_Y35_N38
\B2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(26));

-- Location: FF_X74_Y35_N35
\B2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(25));

-- Location: LABCELL_X70_Y35_N21
\A2[25]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A2[25]~feeder_combout\ = ( A1(25) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_A1(25),
	combout => \A2[25]~feeder_combout\);

-- Location: FF_X70_Y35_N23
\A2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A2[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(25));

-- Location: FF_X74_Y35_N32
\B2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(24));

-- Location: FF_X77_Y35_N52
\A2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(24));

-- Location: FF_X74_Y34_N52
\A2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(23));

-- Location: FF_X74_Y35_N28
\B2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(23));

-- Location: FF_X70_Y35_N52
\A2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(22));

-- Location: FF_X74_Y35_N25
\B2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(22));

-- Location: FF_X74_Y35_N23
\B2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(21));

-- Location: FF_X72_Y36_N19
\A2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(21));

-- Location: FF_X74_Y35_N20
\B2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(20));

-- Location: FF_X74_Y34_N47
\A2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(20));

-- Location: FF_X74_Y35_N17
\B2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(19));

-- Location: FF_X77_Y35_N5
\A2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(19));

-- Location: FF_X74_Y35_N14
\B2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(18));

-- Location: LABCELL_X70_Y35_N54
\A2[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A2[18]~feeder_combout\ = A1(18)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A1(18),
	combout => \A2[18]~feeder_combout\);

-- Location: FF_X70_Y35_N55
\A2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A2[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(18));

-- Location: FF_X75_Y35_N55
\A2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(17));

-- Location: FF_X74_Y35_N11
\B2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~117_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(17));

-- Location: LABCELL_X70_Y35_N9
\A2[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A2[16]~feeder_combout\ = ( A1(16) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_A1(16),
	combout => \A2[16]~feeder_combout\);

-- Location: FF_X70_Y35_N10
\A2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A2[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(16));

-- Location: FF_X74_Y35_N8
\B2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~121_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(16));

-- Location: FF_X74_Y35_N5
\B2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~125_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(15));

-- Location: FF_X71_Y35_N37
\A2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(15));

-- Location: FF_X74_Y35_N2
\B2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~129_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(14));

-- Location: FF_X74_Y33_N7
\A2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(14));

-- Location: FF_X72_Y35_N49
\A2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(13));

-- Location: FF_X74_Y36_N58
\B2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~133_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(13));

-- Location: FF_X74_Y36_N55
\B2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~137_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(12));

-- Location: FF_X74_Y36_N16
\A2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(12));

-- Location: FF_X74_Y36_N53
\B2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~141_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(11));

-- Location: FF_X72_Y36_N10
\A2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(11));

-- Location: FF_X74_Y36_N32
\A2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(10));

-- Location: FF_X74_Y36_N49
\B2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~145_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(10));

-- Location: FF_X73_Y36_N32
\A2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(9));

-- Location: FF_X74_Y36_N47
\B2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~149_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(9));

-- Location: FF_X73_Y36_N35
\A2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(8));

-- Location: FF_X74_Y36_N44
\B2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~153_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(8));

-- Location: FF_X73_Y36_N20
\A2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(7));

-- Location: FF_X74_Y36_N41
\B2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~157_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(7));

-- Location: FF_X73_Y36_N25
\A2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(6));

-- Location: FF_X74_Y36_N38
\B2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~161_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(6));

-- Location: FF_X74_Y36_N35
\B2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~165_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(5));

-- Location: LABCELL_X73_Y36_N3
\A2[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A2[5]~feeder_combout\ = ( A1(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_A1(5),
	combout => \A2[5]~feeder_combout\);

-- Location: FF_X73_Y36_N5
\A2[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A2[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A2[5]~DUPLICATE_q\);

-- Location: FF_X73_Y36_N11
\A2[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A2[4]~DUPLICATE_q\);

-- Location: FF_X73_Y36_N2
\B2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add2~169_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(4));

-- Location: FF_X73_Y36_N14
\B2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(3));

-- Location: FF_X73_Y36_N29
\A2[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A2[3]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y36_N6
\B2[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \B2[2]~feeder_combout\ = ( A1(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_A1(1),
	combout => \B2[2]~feeder_combout\);

-- Location: FF_X73_Y36_N7
\B2[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \B2[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B2[2]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y36_N30
\Add3~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~181_sumout\ = SUM(( \B2[2]~DUPLICATE_q\ ) + ( B2(1) ) + ( !VCC ))
-- \Add3~182\ = CARRY(( \B2[2]~DUPLICATE_q\ ) + ( B2(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(1),
	datad => \ALT_INV_B2[2]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add3~181_sumout\,
	cout => \Add3~182\);

-- Location: LABCELL_X73_Y36_N33
\Add3~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~177_sumout\ = SUM(( \B2[2]~DUPLICATE_q\ ) + ( B2(3) ) + ( \Add3~182\ ))
-- \Add3~178\ = CARRY(( \B2[2]~DUPLICATE_q\ ) + ( B2(3) ) + ( \Add3~182\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(3),
	datad => \ALT_INV_B2[2]~DUPLICATE_q\,
	cin => \Add3~182\,
	sumout => \Add3~177_sumout\,
	cout => \Add3~178\);

-- Location: LABCELL_X73_Y36_N36
\Add3~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~173_sumout\ = SUM(( \A2[3]~DUPLICATE_q\ ) + ( B2(3) ) + ( \Add3~178\ ))
-- \Add3~174\ = CARRY(( \A2[3]~DUPLICATE_q\ ) + ( B2(3) ) + ( \Add3~178\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_B2(3),
	datad => \ALT_INV_A2[3]~DUPLICATE_q\,
	cin => \Add3~178\,
	sumout => \Add3~173_sumout\,
	cout => \Add3~174\);

-- Location: LABCELL_X73_Y36_N39
\Add3~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~169_sumout\ = SUM(( B2(4) ) + ( \A2[4]~DUPLICATE_q\ ) + ( \Add3~174\ ))
-- \Add3~170\ = CARRY(( B2(4) ) + ( \A2[4]~DUPLICATE_q\ ) + ( \Add3~174\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A2[4]~DUPLICATE_q\,
	datad => ALT_INV_B2(4),
	cin => \Add3~174\,
	sumout => \Add3~169_sumout\,
	cout => \Add3~170\);

-- Location: LABCELL_X73_Y36_N42
\Add3~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~165_sumout\ = SUM(( \A2[5]~DUPLICATE_q\ ) + ( B2(5) ) + ( \Add3~170\ ))
-- \Add3~166\ = CARRY(( \A2[5]~DUPLICATE_q\ ) + ( B2(5) ) + ( \Add3~170\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(5),
	datad => \ALT_INV_A2[5]~DUPLICATE_q\,
	cin => \Add3~170\,
	sumout => \Add3~165_sumout\,
	cout => \Add3~166\);

-- Location: LABCELL_X73_Y36_N45
\Add3~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~161_sumout\ = SUM(( B2(6) ) + ( A2(6) ) + ( \Add3~166\ ))
-- \Add3~162\ = CARRY(( B2(6) ) + ( A2(6) ) + ( \Add3~166\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A2(6),
	datad => ALT_INV_B2(6),
	cin => \Add3~166\,
	sumout => \Add3~161_sumout\,
	cout => \Add3~162\);

-- Location: LABCELL_X73_Y36_N48
\Add3~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~157_sumout\ = SUM(( A2(7) ) + ( B2(7) ) + ( \Add3~162\ ))
-- \Add3~158\ = CARRY(( A2(7) ) + ( B2(7) ) + ( \Add3~162\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A2(7),
	dataf => ALT_INV_B2(7),
	cin => \Add3~162\,
	sumout => \Add3~157_sumout\,
	cout => \Add3~158\);

-- Location: LABCELL_X73_Y36_N51
\Add3~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~153_sumout\ = SUM(( B2(8) ) + ( A2(8) ) + ( \Add3~158\ ))
-- \Add3~154\ = CARRY(( B2(8) ) + ( A2(8) ) + ( \Add3~158\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A2(8),
	datad => ALT_INV_B2(8),
	cin => \Add3~158\,
	sumout => \Add3~153_sumout\,
	cout => \Add3~154\);

-- Location: LABCELL_X73_Y36_N54
\Add3~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~149_sumout\ = SUM(( A2(9) ) + ( B2(9) ) + ( \Add3~154\ ))
-- \Add3~150\ = CARRY(( A2(9) ) + ( B2(9) ) + ( \Add3~154\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A2(9),
	datac => ALT_INV_B2(9),
	cin => \Add3~154\,
	sumout => \Add3~149_sumout\,
	cout => \Add3~150\);

-- Location: LABCELL_X73_Y36_N57
\Add3~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~145_sumout\ = SUM(( B2(10) ) + ( A2(10) ) + ( \Add3~150\ ))
-- \Add3~146\ = CARRY(( B2(10) ) + ( A2(10) ) + ( \Add3~150\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A2(10),
	datad => ALT_INV_B2(10),
	cin => \Add3~150\,
	sumout => \Add3~145_sumout\,
	cout => \Add3~146\);

-- Location: LABCELL_X73_Y35_N0
\Add3~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~141_sumout\ = SUM(( A2(11) ) + ( B2(11) ) + ( \Add3~146\ ))
-- \Add3~142\ = CARRY(( A2(11) ) + ( B2(11) ) + ( \Add3~146\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(11),
	datad => ALT_INV_A2(11),
	cin => \Add3~146\,
	sumout => \Add3~141_sumout\,
	cout => \Add3~142\);

-- Location: LABCELL_X73_Y35_N3
\Add3~137\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~137_sumout\ = SUM(( A2(12) ) + ( B2(12) ) + ( \Add3~142\ ))
-- \Add3~138\ = CARRY(( A2(12) ) + ( B2(12) ) + ( \Add3~142\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(12),
	datad => ALT_INV_A2(12),
	cin => \Add3~142\,
	sumout => \Add3~137_sumout\,
	cout => \Add3~138\);

-- Location: LABCELL_X73_Y35_N6
\Add3~133\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~133_sumout\ = SUM(( B2(13) ) + ( A2(13) ) + ( \Add3~138\ ))
-- \Add3~134\ = CARRY(( B2(13) ) + ( A2(13) ) + ( \Add3~138\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A2(13),
	datad => ALT_INV_B2(13),
	cin => \Add3~138\,
	sumout => \Add3~133_sumout\,
	cout => \Add3~134\);

-- Location: LABCELL_X73_Y35_N9
\Add3~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~129_sumout\ = SUM(( A2(14) ) + ( B2(14) ) + ( \Add3~134\ ))
-- \Add3~130\ = CARRY(( A2(14) ) + ( B2(14) ) + ( \Add3~134\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B2(14),
	datad => ALT_INV_A2(14),
	cin => \Add3~134\,
	sumout => \Add3~129_sumout\,
	cout => \Add3~130\);

-- Location: LABCELL_X73_Y35_N12
\Add3~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~125_sumout\ = SUM(( A2(15) ) + ( B2(15) ) + ( \Add3~130\ ))
-- \Add3~126\ = CARRY(( A2(15) ) + ( B2(15) ) + ( \Add3~130\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(15),
	datad => ALT_INV_A2(15),
	cin => \Add3~130\,
	sumout => \Add3~125_sumout\,
	cout => \Add3~126\);

-- Location: LABCELL_X73_Y35_N15
\Add3~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~121_sumout\ = SUM(( B2(16) ) + ( A2(16) ) + ( \Add3~126\ ))
-- \Add3~122\ = CARRY(( B2(16) ) + ( A2(16) ) + ( \Add3~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A2(16),
	datad => ALT_INV_B2(16),
	cin => \Add3~126\,
	sumout => \Add3~121_sumout\,
	cout => \Add3~122\);

-- Location: LABCELL_X73_Y35_N18
\Add3~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~117_sumout\ = SUM(( B2(17) ) + ( A2(17) ) + ( \Add3~122\ ))
-- \Add3~118\ = CARRY(( B2(17) ) + ( A2(17) ) + ( \Add3~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A2(17),
	datad => ALT_INV_B2(17),
	cin => \Add3~122\,
	sumout => \Add3~117_sumout\,
	cout => \Add3~118\);

-- Location: LABCELL_X73_Y35_N21
\Add3~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~113_sumout\ = SUM(( A2(18) ) + ( B2(18) ) + ( \Add3~118\ ))
-- \Add3~114\ = CARRY(( A2(18) ) + ( B2(18) ) + ( \Add3~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(18),
	datad => ALT_INV_A2(18),
	cin => \Add3~118\,
	sumout => \Add3~113_sumout\,
	cout => \Add3~114\);

-- Location: LABCELL_X73_Y35_N24
\Add3~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~109_sumout\ = SUM(( A2(19) ) + ( B2(19) ) + ( \Add3~114\ ))
-- \Add3~110\ = CARRY(( A2(19) ) + ( B2(19) ) + ( \Add3~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(19),
	datad => ALT_INV_A2(19),
	cin => \Add3~114\,
	sumout => \Add3~109_sumout\,
	cout => \Add3~110\);

-- Location: LABCELL_X73_Y35_N27
\Add3~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~105_sumout\ = SUM(( A2(20) ) + ( B2(20) ) + ( \Add3~110\ ))
-- \Add3~106\ = CARRY(( A2(20) ) + ( B2(20) ) + ( \Add3~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_B2(20),
	datac => ALT_INV_A2(20),
	cin => \Add3~110\,
	sumout => \Add3~105_sumout\,
	cout => \Add3~106\);

-- Location: LABCELL_X73_Y35_N30
\Add3~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~101_sumout\ = SUM(( A2(21) ) + ( B2(21) ) + ( \Add3~106\ ))
-- \Add3~102\ = CARRY(( A2(21) ) + ( B2(21) ) + ( \Add3~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(21),
	datad => ALT_INV_A2(21),
	cin => \Add3~106\,
	sumout => \Add3~101_sumout\,
	cout => \Add3~102\);

-- Location: LABCELL_X73_Y35_N33
\Add3~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~97_sumout\ = SUM(( A2(22) ) + ( B2(22) ) + ( \Add3~102\ ))
-- \Add3~98\ = CARRY(( A2(22) ) + ( B2(22) ) + ( \Add3~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A2(22),
	datac => ALT_INV_B2(22),
	cin => \Add3~102\,
	sumout => \Add3~97_sumout\,
	cout => \Add3~98\);

-- Location: LABCELL_X73_Y35_N36
\Add3~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~93_sumout\ = SUM(( A2(23) ) + ( B2(23) ) + ( \Add3~98\ ))
-- \Add3~94\ = CARRY(( A2(23) ) + ( B2(23) ) + ( \Add3~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A2(23),
	datac => ALT_INV_B2(23),
	cin => \Add3~98\,
	sumout => \Add3~93_sumout\,
	cout => \Add3~94\);

-- Location: LABCELL_X73_Y35_N39
\Add3~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~89_sumout\ = SUM(( A2(24) ) + ( B2(24) ) + ( \Add3~94\ ))
-- \Add3~90\ = CARRY(( A2(24) ) + ( B2(24) ) + ( \Add3~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B2(24),
	datac => ALT_INV_A2(24),
	cin => \Add3~94\,
	sumout => \Add3~89_sumout\,
	cout => \Add3~90\);

-- Location: LABCELL_X73_Y35_N42
\Add3~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~85_sumout\ = SUM(( A2(25) ) + ( B2(25) ) + ( \Add3~90\ ))
-- \Add3~86\ = CARRY(( A2(25) ) + ( B2(25) ) + ( \Add3~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(25),
	datad => ALT_INV_A2(25),
	cin => \Add3~90\,
	sumout => \Add3~85_sumout\,
	cout => \Add3~86\);

-- Location: LABCELL_X73_Y35_N45
\Add3~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~81_sumout\ = SUM(( B2(26) ) + ( A2(26) ) + ( \Add3~86\ ))
-- \Add3~82\ = CARRY(( B2(26) ) + ( A2(26) ) + ( \Add3~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A2(26),
	datad => ALT_INV_B2(26),
	cin => \Add3~86\,
	sumout => \Add3~81_sumout\,
	cout => \Add3~82\);

-- Location: LABCELL_X73_Y35_N48
\Add3~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~77_sumout\ = SUM(( A2(27) ) + ( B2(27) ) + ( \Add3~82\ ))
-- \Add3~78\ = CARRY(( A2(27) ) + ( B2(27) ) + ( \Add3~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(27),
	datad => ALT_INV_A2(27),
	cin => \Add3~82\,
	sumout => \Add3~77_sumout\,
	cout => \Add3~78\);

-- Location: LABCELL_X73_Y35_N51
\Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~73_sumout\ = SUM(( B2(28) ) + ( A2(28) ) + ( \Add3~78\ ))
-- \Add3~74\ = CARRY(( B2(28) ) + ( A2(28) ) + ( \Add3~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A2(28),
	datad => ALT_INV_B2(28),
	cin => \Add3~78\,
	sumout => \Add3~73_sumout\,
	cout => \Add3~74\);

-- Location: LABCELL_X73_Y35_N54
\Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~69_sumout\ = SUM(( A2(29) ) + ( B2(29) ) + ( \Add3~74\ ))
-- \Add3~70\ = CARRY(( A2(29) ) + ( B2(29) ) + ( \Add3~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(29),
	datad => ALT_INV_A2(29),
	cin => \Add3~74\,
	sumout => \Add3~69_sumout\,
	cout => \Add3~70\);

-- Location: LABCELL_X73_Y35_N57
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( B2(30) ) + ( A2(30) ) + ( \Add3~70\ ))
-- \Add3~38\ = CARRY(( B2(30) ) + ( A2(30) ) + ( \Add3~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A2(30),
	datad => ALT_INV_B2(30),
	cin => \Add3~70\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: FF_X73_Y35_N59
\B[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(30));

-- Location: MLABCELL_X78_Y35_N0
\Add1~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~129_sumout\ = SUM(( \A[2]~input_o\ ) + ( \A[0]~input_o\ ) + ( !VCC ))
-- \Add1~130\ = CARRY(( \A[2]~input_o\ ) + ( \A[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sumout => \Add1~129_sumout\,
	cout => \Add1~130\);

-- Location: MLABCELL_X78_Y35_N3
\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( \A[1]~input_o\ ) + ( \A[3]~input_o\ ) + ( \Add1~130\ ))
-- \Add1~126\ = CARRY(( \A[1]~input_o\ ) + ( \A[3]~input_o\ ) + ( \Add1~130\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	cin => \Add1~130\,
	sumout => \Add1~125_sumout\,
	cout => \Add1~126\);

-- Location: MLABCELL_X78_Y35_N6
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( \A[4]~input_o\ ) + ( \A[2]~input_o\ ) + ( \Add1~126\ ))
-- \Add1~122\ = CARRY(( \A[4]~input_o\ ) + ( \A[2]~input_o\ ) + ( \Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	cin => \Add1~126\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

-- Location: MLABCELL_X78_Y35_N9
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( \A[5]~input_o\ ) + ( \A[3]~input_o\ ) + ( \Add1~122\ ))
-- \Add1~118\ = CARRY(( \A[5]~input_o\ ) + ( \A[3]~input_o\ ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	cin => \Add1~122\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

-- Location: MLABCELL_X78_Y35_N12
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( \A[4]~input_o\ ) + ( \A[6]~input_o\ ) + ( \Add1~118\ ))
-- \Add1~114\ = CARRY(( \A[4]~input_o\ ) + ( \A[6]~input_o\ ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	cin => \Add1~118\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

-- Location: MLABCELL_X78_Y35_N15
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( \A[5]~input_o\ ) + ( \A[7]~input_o\ ) + ( \Add1~114\ ))
-- \Add1~110\ = CARRY(( \A[5]~input_o\ ) + ( \A[7]~input_o\ ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	cin => \Add1~114\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: MLABCELL_X78_Y35_N18
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( \A[6]~input_o\ ) + ( \A[8]~input_o\ ) + ( \Add1~110\ ))
-- \Add1~106\ = CARRY(( \A[6]~input_o\ ) + ( \A[8]~input_o\ ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	cin => \Add1~110\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: MLABCELL_X78_Y35_N21
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( \A[9]~input_o\ ) + ( \A[7]~input_o\ ) + ( \Add1~106\ ))
-- \Add1~102\ = CARRY(( \A[9]~input_o\ ) + ( \A[7]~input_o\ ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	cin => \Add1~106\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: MLABCELL_X78_Y35_N24
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( \A[10]~input_o\ ) + ( \A[8]~input_o\ ) + ( \Add1~102\ ))
-- \Add1~98\ = CARRY(( \A[10]~input_o\ ) + ( \A[8]~input_o\ ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	cin => \Add1~102\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: MLABCELL_X78_Y35_N27
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( \A[11]~input_o\ ) + ( \A[9]~input_o\ ) + ( \Add1~98\ ))
-- \Add1~94\ = CARRY(( \A[11]~input_o\ ) + ( \A[9]~input_o\ ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	cin => \Add1~98\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: MLABCELL_X78_Y35_N30
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( \A[12]~input_o\ ) + ( \A[10]~input_o\ ) + ( \Add1~94\ ))
-- \Add1~90\ = CARRY(( \A[12]~input_o\ ) + ( \A[10]~input_o\ ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	cin => \Add1~94\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: MLABCELL_X78_Y35_N33
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( \A[13]~input_o\ ) + ( \A[11]~input_o\ ) + ( \Add1~90\ ))
-- \Add1~86\ = CARRY(( \A[13]~input_o\ ) + ( \A[11]~input_o\ ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	cin => \Add1~90\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

-- Location: MLABCELL_X78_Y35_N36
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( \A[12]~input_o\ ) + ( \A[14]~input_o\ ) + ( \Add1~86\ ))
-- \Add1~82\ = CARRY(( \A[12]~input_o\ ) + ( \A[14]~input_o\ ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	cin => \Add1~86\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: MLABCELL_X78_Y35_N39
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( \A[13]~input_o\ ) + ( \A[15]~input_o\ ) + ( \Add1~82\ ))
-- \Add1~78\ = CARRY(( \A[13]~input_o\ ) + ( \A[15]~input_o\ ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	cin => \Add1~82\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: MLABCELL_X78_Y35_N42
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( \A[14]~input_o\ ) + ( \A[16]~input_o\ ) + ( \Add1~78\ ))
-- \Add1~74\ = CARRY(( \A[14]~input_o\ ) + ( \A[16]~input_o\ ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	cin => \Add1~78\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: MLABCELL_X78_Y35_N45
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( \A[15]~input_o\ ) + ( \A[17]~input_o\ ) + ( \Add1~74\ ))
-- \Add1~70\ = CARRY(( \A[15]~input_o\ ) + ( \A[17]~input_o\ ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	cin => \Add1~74\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: MLABCELL_X78_Y35_N48
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( \A[18]~input_o\ ) + ( \A[16]~input_o\ ) + ( \Add1~70\ ))
-- \Add1~66\ = CARRY(( \A[18]~input_o\ ) + ( \A[16]~input_o\ ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	cin => \Add1~70\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: MLABCELL_X78_Y35_N51
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( \A[19]~input_o\ ) + ( \A[17]~input_o\ ) + ( \Add1~66\ ))
-- \Add1~62\ = CARRY(( \A[19]~input_o\ ) + ( \A[17]~input_o\ ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	cin => \Add1~66\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: MLABCELL_X78_Y35_N54
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( \A[20]~input_o\ ) + ( \A[18]~input_o\ ) + ( \Add1~62\ ))
-- \Add1~58\ = CARRY(( \A[20]~input_o\ ) + ( \A[18]~input_o\ ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	cin => \Add1~62\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: MLABCELL_X78_Y35_N57
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( \A[19]~input_o\ ) + ( \A[21]~input_o\ ) + ( \Add1~58\ ))
-- \Add1~54\ = CARRY(( \A[19]~input_o\ ) + ( \A[21]~input_o\ ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_A[19]~input_o\,
	cin => \Add1~58\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: MLABCELL_X78_Y34_N0
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( \A[22]~input_o\ ) + ( \A[20]~input_o\ ) + ( \Add1~54\ ))
-- \Add1~50\ = CARRY(( \A[22]~input_o\ ) + ( \A[20]~input_o\ ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_A[22]~input_o\,
	cin => \Add1~54\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: MLABCELL_X78_Y34_N3
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( \A[23]~input_o\ ) + ( \A[21]~input_o\ ) + ( \Add1~50\ ))
-- \Add1~18\ = CARRY(( \A[23]~input_o\ ) + ( \A[21]~input_o\ ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	cin => \Add1~50\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X78_Y34_N4
\C1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(30));

-- Location: LABCELL_X73_Y34_N51
\C2[30]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2[30]~feeder_combout\ = ( C1(30) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_C1(30),
	combout => \C2[30]~feeder_combout\);

-- Location: FF_X73_Y34_N53
\C2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C2[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(30));

-- Location: LABCELL_X73_Y34_N48
\C[30]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C[30]~feeder_combout\ = C2(30)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_C2(30),
	combout => \C[30]~feeder_combout\);

-- Location: FF_X73_Y34_N50
\C[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(30));

-- Location: FF_X78_Y34_N2
\C1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(29));

-- Location: FF_X77_Y34_N26
\C2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C1(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(29));

-- Location: LABCELL_X71_Y35_N54
\C[29]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C[29]~feeder_combout\ = ( C2(29) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_C2(29),
	combout => \C[29]~feeder_combout\);

-- Location: FF_X71_Y35_N55
\C[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(29));

-- Location: FF_X73_Y35_N56
\B[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(29));

-- Location: FF_X73_Y35_N52
\B[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(28));

-- Location: FF_X78_Y35_N58
\C1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(28));

-- Location: FF_X74_Y33_N31
\C2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C1(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(28));

-- Location: LABCELL_X68_Y35_N39
\C[28]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C[28]~feeder_combout\ = ( C2(28) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_C2(28),
	combout => \C[28]~feeder_combout\);

-- Location: FF_X68_Y35_N40
\C[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(28));

-- Location: FF_X78_Y35_N56
\C1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(27));

-- Location: FF_X77_Y35_N1
\C2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C1(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(27));

-- Location: FF_X71_Y35_N40
\C[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C2(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(27));

-- Location: FF_X73_Y35_N50
\B[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(27));

-- Location: FF_X73_Y35_N46
\B[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(26));

-- Location: FF_X78_Y35_N52
\C1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(26));

-- Location: LABCELL_X88_Y35_N15
\C2[26]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2[26]~feeder_combout\ = ( C1(26) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_C1(26),
	combout => \C2[26]~feeder_combout\);

-- Location: FF_X88_Y35_N16
\C2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C2[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(26));

-- Location: FF_X71_Y35_N52
\C[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C2(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(26));

-- Location: FF_X73_Y35_N43
\B[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(25));

-- Location: FF_X78_Y35_N50
\C1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(25));

-- Location: FF_X77_Y35_N35
\C2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C1(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(25));

-- Location: LABCELL_X70_Y35_N42
\C[25]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C[25]~feeder_combout\ = ( C2(25) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_C2(25),
	combout => \C[25]~feeder_combout\);

-- Location: FF_X70_Y35_N43
\C[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(25));

-- Location: FF_X78_Y35_N47
\C1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(24));

-- Location: LABCELL_X77_Y35_N42
\C2[24]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2[24]~feeder_combout\ = ( C1(24) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_C1(24),
	combout => \C2[24]~feeder_combout\);

-- Location: FF_X77_Y35_N43
\C2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C2[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(24));

-- Location: LABCELL_X71_Y35_N30
\C[24]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C[24]~feeder_combout\ = ( C2(24) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_C2(24),
	combout => \C[24]~feeder_combout\);

-- Location: FF_X71_Y35_N31
\C[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(24));

-- Location: FF_X73_Y35_N40
\B[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(24));

-- Location: FF_X78_Y35_N43
\C1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(23));

-- Location: LABCELL_X71_Y35_N6
\C2[23]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2[23]~feeder_combout\ = ( C1(23) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_C1(23),
	combout => \C2[23]~feeder_combout\);

-- Location: FF_X71_Y35_N8
\C2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C2[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(23));

-- Location: FF_X71_Y35_N4
\C[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C2(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(23));

-- Location: FF_X73_Y35_N38
\B[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(23));

-- Location: FF_X78_Y35_N40
\C1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(22));

-- Location: LABCELL_X71_Y35_N12
\C2[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2[22]~feeder_combout\ = ( C1(22) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_C1(22),
	combout => \C2[22]~feeder_combout\);

-- Location: FF_X71_Y35_N14
\C2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C2[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(22));

-- Location: LABCELL_X71_Y35_N15
\C[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C[22]~feeder_combout\ = C2(22)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_C2(22),
	combout => \C[22]~feeder_combout\);

-- Location: FF_X71_Y35_N16
\C[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(22));

-- Location: FF_X73_Y35_N35
\B[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(22));

-- Location: FF_X73_Y35_N32
\B[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(21));

-- Location: FF_X78_Y35_N38
\C1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(21));

-- Location: FF_X77_Y35_N50
\C2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C1(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(21));

-- Location: FF_X71_Y35_N49
\C[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C2(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(21));

-- Location: FF_X78_Y35_N35
\C1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(20));

-- Location: LABCELL_X77_Y35_N24
\C2[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2[20]~feeder_combout\ = ( C1(20) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_C1(20),
	combout => \C2[20]~feeder_combout\);

-- Location: FF_X77_Y35_N25
\C2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C2[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(20));

-- Location: FF_X72_Y35_N2
\C[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C2(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(20));

-- Location: FF_X73_Y35_N29
\B[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(20));

-- Location: FF_X78_Y35_N32
\C1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(19));

-- Location: LABCELL_X77_Y35_N36
\C2[19]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2[19]~feeder_combout\ = ( C1(19) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_C1(19),
	combout => \C2[19]~feeder_combout\);

-- Location: FF_X77_Y35_N37
\C2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C2[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(19));

-- Location: FF_X72_Y35_N26
\C[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C2(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(19));

-- Location: FF_X73_Y35_N25
\B[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(19));

-- Location: FF_X78_Y35_N29
\C1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(18));

-- Location: FF_X77_Y35_N14
\C2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C1(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(18));

-- Location: FF_X71_Y35_N1
\C[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C2(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(18));

-- Location: FF_X73_Y35_N23
\B[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(18));

-- Location: FF_X73_Y35_N20
\B[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~117_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(17));

-- Location: FF_X78_Y35_N26
\C1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(17));

-- Location: LABCELL_X77_Y35_N54
\C2[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2[17]~feeder_combout\ = ( C1(17) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_C1(17),
	combout => \C2[17]~feeder_combout\);

-- Location: FF_X77_Y35_N55
\C2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C2[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(17));

-- Location: FF_X75_Y35_N59
\C[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C2(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(17));

-- Location: FF_X73_Y35_N17
\B[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~121_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(16));

-- Location: FF_X78_Y35_N22
\C1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(16));

-- Location: LABCELL_X71_Y35_N18
\C2[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2[16]~feeder_combout\ = ( C1(16) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_C1(16),
	combout => \C2[16]~feeder_combout\);

-- Location: FF_X71_Y35_N20
\C2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C2[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(16));

-- Location: LABCELL_X71_Y35_N21
\C[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C[16]~feeder_combout\ = C2(16)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C2(16),
	combout => \C[16]~feeder_combout\);

-- Location: FF_X71_Y35_N22
\C[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(16));

-- Location: FF_X73_Y35_N14
\B[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~125_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(15));

-- Location: FF_X78_Y35_N19
\C1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(15));

-- Location: LABCELL_X71_Y35_N24
\C2[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2[15]~feeder_combout\ = ( C1(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_C1(15),
	combout => \C2[15]~feeder_combout\);

-- Location: FF_X71_Y35_N26
\C2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C2[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(15));

-- Location: LABCELL_X71_Y35_N27
\C[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C[15]~feeder_combout\ = C2(15)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C2(15),
	combout => \C[15]~feeder_combout\);

-- Location: FF_X71_Y35_N28
\C[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(15));

-- Location: FF_X78_Y35_N16
\C1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(14));

-- Location: LABCELL_X71_Y35_N42
\C2[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2[14]~feeder_combout\ = ( C1(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_C1(14),
	combout => \C2[14]~feeder_combout\);

-- Location: FF_X71_Y35_N44
\C2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C2[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(14));

-- Location: LABCELL_X71_Y35_N45
\C[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C[14]~feeder_combout\ = C2(14)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_C2(14),
	combout => \C[14]~feeder_combout\);

-- Location: FF_X71_Y35_N46
\C[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(14));

-- Location: FF_X73_Y35_N11
\B[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~129_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(14));

-- Location: FF_X78_Y35_N14
\C1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(13));

-- Location: LABCELL_X77_Y35_N6
\C2[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2[13]~feeder_combout\ = ( C1(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_C1(13),
	combout => \C2[13]~feeder_combout\);

-- Location: FF_X77_Y35_N7
\C2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C2[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(13));

-- Location: FF_X71_Y35_N10
\C[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C2(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(13));

-- Location: FF_X73_Y35_N8
\B[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~133_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(13));

-- Location: FF_X73_Y35_N5
\B[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~137_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(12));

-- Location: FF_X70_Y35_N35
\C1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add1~117_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(12));

-- Location: FF_X70_Y35_N58
\C2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C1(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(12));

-- Location: FF_X71_Y35_N34
\C[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C2(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(12));

-- Location: FF_X78_Y35_N8
\C1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~121_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(11));

-- Location: FF_X77_Y35_N16
\C2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C1(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(11));

-- Location: FF_X71_Y35_N58
\C[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C2(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(11));

-- Location: FF_X73_Y35_N1
\B[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~141_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(11));

-- Location: FF_X73_Y36_N59
\B[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~145_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(10));

-- Location: FF_X78_Y35_N4
\C1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~125_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(10));

-- Location: FF_X79_Y35_N41
\C2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C1(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(10));

-- Location: FF_X72_Y35_N47
\C[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C2(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(10));

-- Location: FF_X73_Y36_N55
\B[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~149_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(9));

-- Location: FF_X78_Y35_N1
\C1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~129_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(9));

-- Location: FF_X72_Y36_N35
\C2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C1(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(9));

-- Location: FF_X72_Y36_N23
\C[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C2(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(9));

-- Location: FF_X73_Y36_N8
\B2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \B2[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(2));

-- Location: FF_X72_Y36_N26
\A3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => B2(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A3(1));

-- Location: FF_X73_Y36_N53
\B[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~153_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(8));

-- Location: FF_X73_Y36_N50
\B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~157_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(7));

-- Location: FF_X73_Y36_N46
\B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~161_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(6));

-- Location: FF_X73_Y36_N44
\B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~165_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(5));

-- Location: FF_X73_Y36_N41
\B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~169_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(4));

-- Location: FF_X73_Y36_N38
\B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~173_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(3));

-- Location: FF_X72_Y36_N29
\B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add3~177_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(2));

-- Location: MLABCELL_X72_Y36_N0
\B[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \B[1]~feeder_combout\ = ( \Add3~181_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add3~181_sumout\,
	combout => \B[1]~feeder_combout\);

-- Location: FF_X72_Y36_N2
\B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \B[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(1));

-- Location: MLABCELL_X72_Y36_N30
\Add4~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~186_cout\ = CARRY(( B(0) ) + ( !VCC ) + ( !VCC ))
-- \Add4~187\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_B(0),
	cin => GND,
	sharein => GND,
	cout => \Add4~186_cout\,
	shareout => \Add4~187\);

-- Location: MLABCELL_X72_Y36_N33
\Add4~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~182_cout\ = CARRY(( !B(1) ) + ( \Add4~187\ ) + ( \Add4~186_cout\ ))
-- \Add4~183\ = SHARE(B(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_B(1),
	cin => \Add4~186_cout\,
	sharein => \Add4~187\,
	cout => \Add4~182_cout\,
	shareout => \Add4~183\);

-- Location: MLABCELL_X72_Y36_N36
\Add4~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~178_cout\ = CARRY(( !B(2) ) + ( \Add4~183\ ) + ( \Add4~182_cout\ ))
-- \Add4~179\ = SHARE(B(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_B(2),
	cin => \Add4~182_cout\,
	sharein => \Add4~183\,
	cout => \Add4~178_cout\,
	shareout => \Add4~179\);

-- Location: MLABCELL_X72_Y36_N39
\Add4~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~174_cout\ = CARRY(( !B(3) ) + ( \Add4~179\ ) + ( \Add4~178_cout\ ))
-- \Add4~175\ = SHARE(B(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_B(3),
	cin => \Add4~178_cout\,
	sharein => \Add4~179\,
	cout => \Add4~174_cout\,
	shareout => \Add4~175\);

-- Location: MLABCELL_X72_Y36_N42
\Add4~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~170_cout\ = CARRY(( !B(4) ) + ( \Add4~175\ ) + ( \Add4~174_cout\ ))
-- \Add4~171\ = SHARE(B(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B(4),
	cin => \Add4~174_cout\,
	sharein => \Add4~175\,
	cout => \Add4~170_cout\,
	shareout => \Add4~171\);

-- Location: MLABCELL_X72_Y36_N45
\Add4~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~166_cout\ = CARRY(( !B(5) ) + ( \Add4~171\ ) + ( \Add4~170_cout\ ))
-- \Add4~167\ = SHARE(B(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_B(5),
	cin => \Add4~170_cout\,
	sharein => \Add4~171\,
	cout => \Add4~166_cout\,
	shareout => \Add4~167\);

-- Location: MLABCELL_X72_Y36_N48
\Add4~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~162_cout\ = CARRY(( !B(6) ) + ( \Add4~167\ ) + ( \Add4~166_cout\ ))
-- \Add4~163\ = SHARE(B(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_B(6),
	cin => \Add4~166_cout\,
	sharein => \Add4~167\,
	cout => \Add4~162_cout\,
	shareout => \Add4~163\);

-- Location: MLABCELL_X72_Y36_N51
\Add4~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~158_cout\ = CARRY(( !B(0) $ (B(7)) ) + ( \Add4~163\ ) + ( \Add4~162_cout\ ))
-- \Add4~159\ = SHARE((!B(0) & B(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B(0),
	datad => ALT_INV_B(7),
	cin => \Add4~162_cout\,
	sharein => \Add4~163\,
	cout => \Add4~158_cout\,
	shareout => \Add4~159\);

-- Location: MLABCELL_X72_Y36_N54
\Add4~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~154_cout\ = CARRY(( !A3(1) $ (B(8)) ) + ( \Add4~159\ ) + ( \Add4~158_cout\ ))
-- \Add4~155\ = SHARE((!A3(1) & B(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A3(1),
	datac => ALT_INV_B(8),
	cin => \Add4~158_cout\,
	sharein => \Add4~159\,
	cout => \Add4~154_cout\,
	shareout => \Add4~155\);

-- Location: MLABCELL_X72_Y36_N57
\Add4~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~150_cout\ = CARRY(( !B(9) $ (C(9)) ) + ( \Add4~155\ ) + ( \Add4~154_cout\ ))
-- \Add4~151\ = SHARE((B(9) & !C(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B(9),
	datad => ALT_INV_C(9),
	cin => \Add4~154_cout\,
	sharein => \Add4~155\,
	cout => \Add4~150_cout\,
	shareout => \Add4~151\);

-- Location: MLABCELL_X72_Y35_N0
\Add4~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~146_cout\ = CARRY(( !B(10) $ (C(10)) ) + ( \Add4~151\ ) + ( \Add4~150_cout\ ))
-- \Add4~147\ = SHARE((B(10) & !C(10)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B(10),
	datad => ALT_INV_C(10),
	cin => \Add4~150_cout\,
	sharein => \Add4~151\,
	cout => \Add4~146_cout\,
	shareout => \Add4~147\);

-- Location: MLABCELL_X72_Y35_N3
\Add4~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~142_cout\ = CARRY(( !C(11) $ (B(11)) ) + ( \Add4~147\ ) + ( \Add4~146_cout\ ))
-- \Add4~143\ = SHARE((!C(11) & B(11)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_C(11),
	datad => ALT_INV_B(11),
	cin => \Add4~146_cout\,
	sharein => \Add4~147\,
	cout => \Add4~142_cout\,
	shareout => \Add4~143\);

-- Location: MLABCELL_X72_Y35_N6
\Add4~138\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~138_cout\ = CARRY(( !B(12) $ (C(12)) ) + ( \Add4~143\ ) + ( \Add4~142_cout\ ))
-- \Add4~139\ = SHARE((B(12) & !C(12)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B(12),
	datad => ALT_INV_C(12),
	cin => \Add4~142_cout\,
	sharein => \Add4~143\,
	cout => \Add4~138_cout\,
	shareout => \Add4~139\);

-- Location: MLABCELL_X72_Y35_N9
\Add4~134\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~134_cout\ = CARRY(( !C(13) $ (B(13)) ) + ( \Add4~139\ ) + ( \Add4~138_cout\ ))
-- \Add4~135\ = SHARE((!C(13) & B(13)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_C(13),
	datad => ALT_INV_B(13),
	cin => \Add4~138_cout\,
	sharein => \Add4~139\,
	cout => \Add4~134_cout\,
	shareout => \Add4~135\);

-- Location: MLABCELL_X72_Y35_N12
\Add4~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~130_cout\ = CARRY(( !C(14) $ (B(14)) ) + ( \Add4~135\ ) + ( \Add4~134_cout\ ))
-- \Add4~131\ = SHARE((!C(14) & B(14)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_C(14),
	datad => ALT_INV_B(14),
	cin => \Add4~134_cout\,
	sharein => \Add4~135\,
	cout => \Add4~130_cout\,
	shareout => \Add4~131\);

-- Location: MLABCELL_X72_Y35_N15
\Add4~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~126_cout\ = CARRY(( !B(15) $ (C(15)) ) + ( \Add4~131\ ) + ( \Add4~130_cout\ ))
-- \Add4~127\ = SHARE((B(15) & !C(15)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B(15),
	datad => ALT_INV_C(15),
	cin => \Add4~130_cout\,
	sharein => \Add4~131\,
	cout => \Add4~126_cout\,
	shareout => \Add4~127\);

-- Location: MLABCELL_X72_Y35_N18
\Add4~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~122_cout\ = CARRY(( !B(16) $ (C(16)) ) + ( \Add4~127\ ) + ( \Add4~126_cout\ ))
-- \Add4~123\ = SHARE((B(16) & !C(16)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B(16),
	datad => ALT_INV_C(16),
	cin => \Add4~126_cout\,
	sharein => \Add4~127\,
	cout => \Add4~122_cout\,
	shareout => \Add4~123\);

-- Location: MLABCELL_X72_Y35_N21
\Add4~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~118_cout\ = CARRY(( !B(17) $ (C(17)) ) + ( \Add4~123\ ) + ( \Add4~122_cout\ ))
-- \Add4~119\ = SHARE((B(17) & !C(17)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B(17),
	datad => ALT_INV_C(17),
	cin => \Add4~122_cout\,
	sharein => \Add4~123\,
	cout => \Add4~118_cout\,
	shareout => \Add4~119\);

-- Location: MLABCELL_X72_Y35_N24
\Add4~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~114_cout\ = CARRY(( !C(18) $ (B(18)) ) + ( \Add4~119\ ) + ( \Add4~118_cout\ ))
-- \Add4~115\ = SHARE((!C(18) & B(18)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_C(18),
	datad => ALT_INV_B(18),
	cin => \Add4~118_cout\,
	sharein => \Add4~119\,
	cout => \Add4~114_cout\,
	shareout => \Add4~115\);

-- Location: MLABCELL_X72_Y35_N27
\Add4~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~110_cout\ = CARRY(( !C(19) $ (B(19)) ) + ( \Add4~115\ ) + ( \Add4~114_cout\ ))
-- \Add4~111\ = SHARE((!C(19) & B(19)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(19),
	datac => ALT_INV_B(19),
	cin => \Add4~114_cout\,
	sharein => \Add4~115\,
	cout => \Add4~110_cout\,
	shareout => \Add4~111\);

-- Location: MLABCELL_X72_Y35_N30
\Add4~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~106_cout\ = CARRY(( !C(20) $ (B(20)) ) + ( \Add4~111\ ) + ( \Add4~110_cout\ ))
-- \Add4~107\ = SHARE((!C(20) & B(20)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_C(20),
	datad => ALT_INV_B(20),
	cin => \Add4~110_cout\,
	sharein => \Add4~111\,
	cout => \Add4~106_cout\,
	shareout => \Add4~107\);

-- Location: MLABCELL_X72_Y35_N33
\Add4~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~102_cout\ = CARRY(( !B(21) $ (C(21)) ) + ( \Add4~107\ ) + ( \Add4~106_cout\ ))
-- \Add4~103\ = SHARE((B(21) & !C(21)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B(21),
	datac => ALT_INV_C(21),
	cin => \Add4~106_cout\,
	sharein => \Add4~107\,
	cout => \Add4~102_cout\,
	shareout => \Add4~103\);

-- Location: MLABCELL_X72_Y35_N36
\Add4~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~98_cout\ = CARRY(( !C(22) $ (B(22)) ) + ( \Add4~103\ ) + ( \Add4~102_cout\ ))
-- \Add4~99\ = SHARE((!C(22) & B(22)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_C(22),
	datac => ALT_INV_B(22),
	cin => \Add4~102_cout\,
	sharein => \Add4~103\,
	cout => \Add4~98_cout\,
	shareout => \Add4~99\);

-- Location: MLABCELL_X72_Y35_N39
\Add4~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~94_cout\ = CARRY(( !C(23) $ (B(23)) ) + ( \Add4~99\ ) + ( \Add4~98_cout\ ))
-- \Add4~95\ = SHARE((!C(23) & B(23)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_C(23),
	datad => ALT_INV_B(23),
	cin => \Add4~98_cout\,
	sharein => \Add4~99\,
	cout => \Add4~94_cout\,
	shareout => \Add4~95\);

-- Location: MLABCELL_X72_Y35_N42
\Add4~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~90_cout\ = CARRY(( !C(24) $ (B(24)) ) + ( \Add4~95\ ) + ( \Add4~94_cout\ ))
-- \Add4~91\ = SHARE((!C(24) & B(24)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_C(24),
	datad => ALT_INV_B(24),
	cin => \Add4~94_cout\,
	sharein => \Add4~95\,
	cout => \Add4~90_cout\,
	shareout => \Add4~91\);

-- Location: MLABCELL_X72_Y35_N45
\Add4~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~86_cout\ = CARRY(( !B(25) $ (C(25)) ) + ( \Add4~91\ ) + ( \Add4~90_cout\ ))
-- \Add4~87\ = SHARE((B(25) & !C(25)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B(25),
	datac => ALT_INV_C(25),
	cin => \Add4~90_cout\,
	sharein => \Add4~91\,
	cout => \Add4~86_cout\,
	shareout => \Add4~87\);

-- Location: MLABCELL_X72_Y35_N48
\Add4~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~82_cout\ = CARRY(( !B(26) $ (C(26)) ) + ( \Add4~87\ ) + ( \Add4~86_cout\ ))
-- \Add4~83\ = SHARE((B(26) & !C(26)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_B(26),
	datac => ALT_INV_C(26),
	cin => \Add4~86_cout\,
	sharein => \Add4~87\,
	cout => \Add4~82_cout\,
	shareout => \Add4~83\);

-- Location: MLABCELL_X72_Y35_N51
\Add4~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~78_cout\ = CARRY(( !C(27) $ (B(27)) ) + ( \Add4~83\ ) + ( \Add4~82_cout\ ))
-- \Add4~79\ = SHARE((!C(27) & B(27)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(27),
	datac => ALT_INV_B(27),
	cin => \Add4~82_cout\,
	sharein => \Add4~83\,
	cout => \Add4~78_cout\,
	shareout => \Add4~79\);

-- Location: MLABCELL_X72_Y35_N54
\Add4~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~74_cout\ = CARRY(( !B(28) $ (C(28)) ) + ( \Add4~79\ ) + ( \Add4~78_cout\ ))
-- \Add4~75\ = SHARE((B(28) & !C(28)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B(28),
	datad => ALT_INV_C(28),
	cin => \Add4~78_cout\,
	sharein => \Add4~79\,
	cout => \Add4~74_cout\,
	shareout => \Add4~75\);

-- Location: MLABCELL_X72_Y35_N57
\Add4~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~70_cout\ = CARRY(( !C(29) $ (B(29)) ) + ( \Add4~75\ ) + ( \Add4~74_cout\ ))
-- \Add4~71\ = SHARE((!C(29) & B(29)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(29),
	datad => ALT_INV_B(29),
	cin => \Add4~74_cout\,
	sharein => \Add4~75\,
	cout => \Add4~70_cout\,
	shareout => \Add4~71\);

-- Location: MLABCELL_X72_Y34_N0
\Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~37_sumout\ = SUM(( !B(30) $ (C(30)) ) + ( \Add4~71\ ) + ( \Add4~70_cout\ ))
-- \Add4~38\ = CARRY(( !B(30) $ (C(30)) ) + ( \Add4~71\ ) + ( \Add4~70_cout\ ))
-- \Add4~39\ = SHARE((B(30) & !C(30)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B(30),
	datad => ALT_INV_C(30),
	cin => \Add4~70_cout\,
	sharein => \Add4~71\,
	sumout => \Add4~37_sumout\,
	cout => \Add4~38\,
	shareout => \Add4~39\);

-- Location: FF_X72_Y34_N1
\D[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(30));

-- Location: LABCELL_X74_Y31_N57
\H[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H[0]~feeder_combout\ = ( D(30) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_D(30),
	combout => \H[0]~feeder_combout\);

-- Location: FF_X74_Y31_N58
\H[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(0));

-- Location: LABCELL_X74_Y31_N39
\H6[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H6[0]~feeder_combout\ = ( H(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_H(0),
	combout => \H6[0]~feeder_combout\);

-- Location: FF_X74_Y31_N41
\H6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H6[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H6(0));

-- Location: LABCELL_X74_Y29_N48
\H7[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H7[0]~feeder_combout\ = ( H6(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_H6(0),
	combout => \H7[0]~feeder_combout\);

-- Location: FF_X74_Y29_N49
\H7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H7[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H7(0));

-- Location: FF_X75_Y29_N50
\H8[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H7(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H8[0]~DUPLICATE_q\);

-- Location: FF_X75_Y29_N55
\G9[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \H8[0]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G9(0));

-- Location: LABCELL_X77_Y29_N0
\Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~1_sumout\ = SUM(( !A9(0) $ (!G9(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add9~2\ = CARRY(( !A9(0) $ (!G9(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add9~3\ = SHARE((!G9(0)) # (A9(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A9(0),
	datad => ALT_INV_G9(0),
	cin => GND,
	sharein => GND,
	sumout => \Add9~1_sumout\,
	cout => \Add9~2\,
	shareout => \Add9~3\);

-- Location: FF_X77_Y29_N1
\G[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G(0));

-- Location: FF_X77_Y27_N52
\Amod33401[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => G(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Amod33401[0]~reg0_q\);

-- Location: MLABCELL_X78_Y34_N6
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \A[22]~input_o\ ) + ( \A[24]~input_o\ ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( \A[22]~input_o\ ) + ( \A[24]~input_o\ ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_A[24]~input_o\,
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X78_Y34_N7
\C1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(31));

-- Location: FF_X78_Y34_N59
\C2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C1(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(31));

-- Location: FF_X72_Y34_N53
\C[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C2(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(31));

-- Location: IOIBUF_X74_Y0_N41
\A[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LABCELL_X73_Y34_N57
\A1[31]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1[31]~feeder_combout\ = ( \A[31]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \A1[31]~feeder_combout\);

-- Location: FF_X73_Y34_N59
\A1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A1[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A1(31));

-- Location: FF_X73_Y34_N56
\A2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(31));

-- Location: LABCELL_X75_Y35_N48
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \A[16]~input_o\ ) + ( \A[27]~input_o\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \A[16]~input_o\ ) + ( \A[27]~input_o\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_A[16]~input_o\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X75_Y35_N49
\B1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(31));

-- Location: LABCELL_X74_Y35_N51
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( A1(30) ) + ( B1(31) ) + ( \Add2~38\ ))
-- \Add2~42\ = CARRY(( A1(30) ) + ( B1(31) ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B1(31),
	datac => ALT_INV_A1(30),
	cin => \Add2~38\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: FF_X74_Y35_N52
\B2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(31));

-- Location: LABCELL_X73_Y34_N0
\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( B2(31) ) + ( A2(31) ) + ( \Add3~38\ ))
-- \Add3~42\ = CARRY(( B2(31) ) + ( A2(31) ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A2(31),
	datad => ALT_INV_B2(31),
	cin => \Add3~38\,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\);

-- Location: FF_X73_Y34_N2
\B[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(31));

-- Location: MLABCELL_X72_Y34_N3
\Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~41_sumout\ = SUM(( !C(31) $ (B(31)) ) + ( \Add4~39\ ) + ( \Add4~38\ ))
-- \Add4~42\ = CARRY(( !C(31) $ (B(31)) ) + ( \Add4~39\ ) + ( \Add4~38\ ))
-- \Add4~43\ = SHARE((!C(31) & B(31)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(31),
	datad => ALT_INV_B(31),
	cin => \Add4~38\,
	sharein => \Add4~39\,
	sumout => \Add4~41_sumout\,
	cout => \Add4~42\,
	shareout => \Add4~43\);

-- Location: FF_X72_Y34_N4
\D[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(31));

-- Location: LABCELL_X74_Y33_N57
\H[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H[1]~feeder_combout\ = ( D(31) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_D(31),
	combout => \H[1]~feeder_combout\);

-- Location: FF_X74_Y33_N59
\H[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(1));

-- Location: FF_X74_Y33_N55
\H6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H6(1));

-- Location: MLABCELL_X78_Y29_N3
\H7[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H7[1]~feeder_combout\ = ( H6(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_H6(1),
	combout => \H7[1]~feeder_combout\);

-- Location: FF_X78_Y29_N4
\H7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H7[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H7(1));

-- Location: FF_X75_Y29_N4
\H8[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H7(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H8(1));

-- Location: MLABCELL_X78_Y29_N45
\G9[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G9[1]~feeder_combout\ = ( H8(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_H8(1),
	combout => \G9[1]~feeder_combout\);

-- Location: FF_X78_Y29_N47
\G9[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G9[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G9(1));

-- Location: FF_X72_Y36_N53
\A4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A3(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A4(1));

-- Location: FF_X72_Y36_N40
\A5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A4(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A5(1));

-- Location: MLABCELL_X78_Y29_N18
\A6[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A6[1]~feeder_combout\ = ( A5(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_A5(1),
	combout => \A6[1]~feeder_combout\);

-- Location: FF_X78_Y29_N20
\A6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A6[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A6(1));

-- Location: MLABCELL_X78_Y29_N0
\A7[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A7[1]~feeder_combout\ = A6(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A6(1),
	combout => \A7[1]~feeder_combout\);

-- Location: FF_X78_Y29_N2
\A7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A7[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A7(1));

-- Location: FF_X78_Y29_N23
\A8[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A7(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A8(1));

-- Location: FF_X78_Y29_N28
\A9[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A8(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A9(1));

-- Location: LABCELL_X77_Y29_N3
\Add9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~5_sumout\ = SUM(( !G9(1) $ (A9(1)) ) + ( \Add9~3\ ) + ( \Add9~2\ ))
-- \Add9~6\ = CARRY(( !G9(1) $ (A9(1)) ) + ( \Add9~3\ ) + ( \Add9~2\ ))
-- \Add9~7\ = SHARE((!G9(1) & A9(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G9(1),
	datac => ALT_INV_A9(1),
	cin => \Add9~2\,
	sharein => \Add9~3\,
	sumout => \Add9~5_sumout\,
	cout => \Add9~6\,
	shareout => \Add9~7\);

-- Location: FF_X77_Y29_N4
\G[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G(1));

-- Location: FF_X77_Y27_N22
\Amod33401[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => G(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Amod33401[1]~reg0_q\);

-- Location: MLABCELL_X78_Y34_N9
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \A[25]~input_o\ ) + ( \A[23]~input_o\ ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( \A[25]~input_o\ ) + ( \A[23]~input_o\ ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[25]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X78_Y34_N11
\C1[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(32));

-- Location: FF_X78_Y34_N50
\C2[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C1(32),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(32));

-- Location: MLABCELL_X72_Y34_N54
\C[32]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C[32]~feeder_combout\ = ( C2(32) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_C2(32),
	combout => \C[32]~feeder_combout\);

-- Location: FF_X72_Y34_N56
\C[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(32));

-- Location: LABCELL_X75_Y35_N51
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \A[28]~input_o\ ) + ( \A[17]~input_o\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \A[28]~input_o\ ) + ( \A[17]~input_o\ ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: LABCELL_X70_Y35_N30
\B1[32]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1[32]~feeder_combout\ = ( \Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~45_sumout\,
	combout => \B1[32]~feeder_combout\);

-- Location: FF_X70_Y35_N31
\B1[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \B1[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(32));

-- Location: LABCELL_X74_Y35_N54
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( A1(31) ) + ( B1(32) ) + ( \Add2~42\ ))
-- \Add2~46\ = CARRY(( A1(31) ) + ( B1(32) ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B1(32),
	datad => ALT_INV_A1(31),
	cin => \Add2~42\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: FF_X74_Y35_N55
\B2[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(32));

-- Location: LABCELL_X73_Y34_N3
\Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~45_sumout\ = SUM(( B2(32) ) + ( GND ) + ( \Add3~42\ ))
-- \Add3~46\ = CARRY(( B2(32) ) + ( GND ) + ( \Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(32),
	cin => \Add3~42\,
	sumout => \Add3~45_sumout\,
	cout => \Add3~46\);

-- Location: FF_X73_Y34_N4
\B[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(32));

-- Location: MLABCELL_X72_Y34_N6
\Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~45_sumout\ = SUM(( !C(32) $ (B(32)) ) + ( \Add4~43\ ) + ( \Add4~42\ ))
-- \Add4~46\ = CARRY(( !C(32) $ (B(32)) ) + ( \Add4~43\ ) + ( \Add4~42\ ))
-- \Add4~47\ = SHARE((!C(32) & B(32)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_C(32),
	datad => ALT_INV_B(32),
	cin => \Add4~42\,
	sharein => \Add4~43\,
	sumout => \Add4~45_sumout\,
	cout => \Add4~46\,
	shareout => \Add4~47\);

-- Location: FF_X72_Y34_N7
\D[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(32));

-- Location: FF_X75_Y31_N41
\H[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => D(32),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(2));

-- Location: FF_X74_Y31_N31
\H6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H6(2));

-- Location: MLABCELL_X72_Y29_N57
\H7[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H7[2]~feeder_combout\ = ( H6(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_H6(2),
	combout => \H7[2]~feeder_combout\);

-- Location: FF_X72_Y29_N58
\H7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H7[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H7(2));

-- Location: FF_X75_Y29_N8
\H8[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H7(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H8(2));

-- Location: LABCELL_X77_Y29_N54
\G9[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G9[2]~feeder_combout\ = ( H8(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_H8(2),
	combout => \G9[2]~feeder_combout\);

-- Location: FF_X77_Y29_N56
\G9[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G9[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G9(2));

-- Location: LABCELL_X75_Y35_N54
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \A[29]~input_o\ ) + ( \A[18]~input_o\ ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( \A[29]~input_o\ ) + ( \A[18]~input_o\ ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_A[18]~input_o\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: LABCELL_X75_Y35_N57
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \A[19]~input_o\ ) + ( \A[30]~input_o\ ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( \A[19]~input_o\ ) + ( \A[30]~input_o\ ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: LABCELL_X75_Y34_N0
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \A[31]~input_o\ ) + ( \A[20]~input_o\ ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( \A[31]~input_o\ ) + ( \A[20]~input_o\ ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: LABCELL_X75_Y34_N3
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \A[21]~input_o\ ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( \A[21]~input_o\ ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[21]~input_o\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: LABCELL_X75_Y34_N6
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( \A[22]~input_o\ ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( \A[22]~input_o\ ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[22]~input_o\,
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: LABCELL_X75_Y34_N9
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \A[23]~input_o\ ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~30\ = CARRY(( \A[23]~input_o\ ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[23]~input_o\,
	cin => \Add0~66\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: LABCELL_X75_Y34_N12
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \A[24]~input_o\ ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~10\ = CARRY(( \A[24]~input_o\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[24]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X75_Y34_N15
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \A[25]~input_o\ ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \A[25]~input_o\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X75_Y34_N18
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \A[26]~input_o\ ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \A[26]~input_o\ ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[26]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X75_Y34_N21
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \A[27]~input_o\ ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \A[27]~input_o\ ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X75_Y34_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \A[28]~input_o\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~34\ = CARRY(( \A[28]~input_o\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[28]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: LABCELL_X75_Y34_N27
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \A[29]~input_o\ ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~26\ = CARRY(( \A[29]~input_o\ ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[29]~input_o\,
	cin => \Add0~34\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LABCELL_X75_Y34_N30
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \A[30]~input_o\ ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~6\ = CARRY(( \A[30]~input_o\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[30]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X75_Y34_N33
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \A[31]~input_o\ ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\);

-- Location: FF_X75_Y34_N35
\B1[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(46));

-- Location: FF_X75_Y34_N32
\B1[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(45));

-- Location: FF_X75_Y34_N28
\B1[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(44));

-- Location: FF_X75_Y34_N25
\B1[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(43));

-- Location: FF_X75_Y34_N23
\B1[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(42));

-- Location: FF_X75_Y34_N20
\B1[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(41));

-- Location: FF_X75_Y34_N17
\B1[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(40));

-- Location: FF_X75_Y34_N13
\B1[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(39));

-- Location: FF_X75_Y34_N11
\B1[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(38));

-- Location: FF_X75_Y34_N8
\B1[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(37));

-- Location: FF_X75_Y34_N5
\B1[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(36));

-- Location: FF_X75_Y34_N1
\B1[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(35));

-- Location: LABCELL_X70_Y35_N0
\B1[34]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1[34]~feeder_combout\ = ( \Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~53_sumout\,
	combout => \B1[34]~feeder_combout\);

-- Location: FF_X70_Y35_N1
\B1[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \B1[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(34));

-- Location: MLABCELL_X84_Y35_N0
\B1[33]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1[33]~feeder_combout\ = ( \Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~49_sumout\,
	combout => \B1[33]~feeder_combout\);

-- Location: FF_X84_Y35_N1
\B1[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \B1[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B1(33));

-- Location: LABCELL_X74_Y35_N57
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( B1(33) ) + ( GND ) + ( \Add2~46\ ))
-- \Add2~50\ = CARRY(( B1(33) ) + ( GND ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B1(33),
	cin => \Add2~46\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: LABCELL_X74_Y34_N0
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( B1(34) ) + ( GND ) + ( \Add2~50\ ))
-- \Add2~54\ = CARRY(( B1(34) ) + ( GND ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B1(34),
	cin => \Add2~50\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: LABCELL_X74_Y34_N3
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( B1(35) ) + ( GND ) + ( \Add2~54\ ))
-- \Add2~58\ = CARRY(( B1(35) ) + ( GND ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B1(35),
	cin => \Add2~54\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: LABCELL_X74_Y34_N6
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( B1(36) ) + ( GND ) + ( \Add2~58\ ))
-- \Add2~62\ = CARRY(( B1(36) ) + ( GND ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B1(36),
	cin => \Add2~58\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: LABCELL_X74_Y34_N9
\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( B1(37) ) + ( GND ) + ( \Add2~62\ ))
-- \Add2~66\ = CARRY(( B1(37) ) + ( GND ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_B1(37),
	cin => \Add2~62\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: LABCELL_X74_Y34_N12
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( B1(38) ) + ( GND ) + ( \Add2~66\ ))
-- \Add2~30\ = CARRY(( B1(38) ) + ( GND ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B1(38),
	cin => \Add2~66\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: LABCELL_X74_Y34_N15
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( B1(39) ) + ( GND ) + ( \Add2~30\ ))
-- \Add2~10\ = CARRY(( B1(39) ) + ( GND ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_B1(39),
	cin => \Add2~30\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: LABCELL_X74_Y34_N18
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( B1(40) ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( B1(40) ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B1(40),
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: LABCELL_X74_Y34_N21
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( B1(41) ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( B1(41) ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B1(41),
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: LABCELL_X74_Y34_N24
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( B1(42) ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( B1(42) ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B1(42),
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: LABCELL_X74_Y34_N27
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( B1(43) ) + ( GND ) + ( \Add2~22\ ))
-- \Add2~34\ = CARRY(( B1(43) ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B1(43),
	cin => \Add2~22\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: LABCELL_X74_Y34_N30
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( B1(44) ) + ( GND ) + ( \Add2~34\ ))
-- \Add2~26\ = CARRY(( B1(44) ) + ( GND ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_B1(44),
	cin => \Add2~34\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: LABCELL_X74_Y34_N33
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( B1(45) ) + ( GND ) + ( \Add2~26\ ))
-- \Add2~6\ = CARRY(( B1(45) ) + ( GND ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B1(45),
	cin => \Add2~26\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: LABCELL_X74_Y34_N36
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( B1(46) ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B1(46),
	cin => \Add2~6\,
	sumout => \Add2~1_sumout\);

-- Location: FF_X74_Y34_N38
\B2[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(46));

-- Location: FF_X74_Y34_N35
\B2[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(45));

-- Location: FF_X74_Y34_N32
\B2[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(44));

-- Location: FF_X74_Y34_N29
\B2[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(43));

-- Location: FF_X74_Y34_N26
\B2[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(42));

-- Location: FF_X74_Y34_N23
\B2[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(41));

-- Location: FF_X74_Y34_N20
\B2[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(40));

-- Location: FF_X74_Y34_N16
\B2[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(39));

-- Location: FF_X74_Y34_N14
\B2[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(38));

-- Location: FF_X74_Y34_N11
\B2[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(37));

-- Location: FF_X74_Y34_N8
\B2[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(36));

-- Location: FF_X74_Y34_N5
\B2[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(35));

-- Location: FF_X74_Y34_N1
\B2[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(34));

-- Location: FF_X74_Y35_N59
\B2[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B2(33));

-- Location: LABCELL_X73_Y34_N6
\Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~49_sumout\ = SUM(( B2(33) ) + ( GND ) + ( \Add3~46\ ))
-- \Add3~50\ = CARRY(( B2(33) ) + ( GND ) + ( \Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_B2(33),
	cin => \Add3~46\,
	sumout => \Add3~49_sumout\,
	cout => \Add3~50\);

-- Location: LABCELL_X73_Y34_N9
\Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~53_sumout\ = SUM(( B2(34) ) + ( GND ) + ( \Add3~50\ ))
-- \Add3~54\ = CARRY(( B2(34) ) + ( GND ) + ( \Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(34),
	cin => \Add3~50\,
	sumout => \Add3~53_sumout\,
	cout => \Add3~54\);

-- Location: LABCELL_X73_Y34_N12
\Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~57_sumout\ = SUM(( B2(35) ) + ( GND ) + ( \Add3~54\ ))
-- \Add3~58\ = CARRY(( B2(35) ) + ( GND ) + ( \Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(35),
	cin => \Add3~54\,
	sumout => \Add3~57_sumout\,
	cout => \Add3~58\);

-- Location: LABCELL_X73_Y34_N15
\Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~61_sumout\ = SUM(( B2(36) ) + ( GND ) + ( \Add3~58\ ))
-- \Add3~62\ = CARRY(( B2(36) ) + ( GND ) + ( \Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_B2(36),
	cin => \Add3~58\,
	sumout => \Add3~61_sumout\,
	cout => \Add3~62\);

-- Location: LABCELL_X73_Y34_N18
\Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~65_sumout\ = SUM(( B2(37) ) + ( GND ) + ( \Add3~62\ ))
-- \Add3~66\ = CARRY(( B2(37) ) + ( GND ) + ( \Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(37),
	cin => \Add3~62\,
	sumout => \Add3~65_sumout\,
	cout => \Add3~66\);

-- Location: LABCELL_X73_Y34_N21
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( B2(38) ) + ( GND ) + ( \Add3~66\ ))
-- \Add3~30\ = CARRY(( B2(38) ) + ( GND ) + ( \Add3~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(38),
	cin => \Add3~66\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: LABCELL_X73_Y34_N24
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( B2(39) ) + ( GND ) + ( \Add3~30\ ))
-- \Add3~10\ = CARRY(( B2(39) ) + ( GND ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(39),
	cin => \Add3~30\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: LABCELL_X73_Y34_N27
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( B2(40) ) + ( GND ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( B2(40) ) + ( GND ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(40),
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: LABCELL_X73_Y34_N30
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( B2(41) ) + ( GND ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( B2(41) ) + ( GND ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(41),
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: LABCELL_X73_Y34_N33
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( B2(42) ) + ( GND ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( B2(42) ) + ( GND ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(42),
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: LABCELL_X73_Y34_N36
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( B2(43) ) + ( GND ) + ( \Add3~22\ ))
-- \Add3~34\ = CARRY(( B2(43) ) + ( GND ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(43),
	cin => \Add3~22\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: LABCELL_X73_Y34_N39
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( B2(44) ) + ( GND ) + ( \Add3~34\ ))
-- \Add3~26\ = CARRY(( B2(44) ) + ( GND ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B2(44),
	cin => \Add3~34\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: LABCELL_X73_Y34_N42
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( B2(45) ) + ( GND ) + ( \Add3~26\ ))
-- \Add3~6\ = CARRY(( B2(45) ) + ( GND ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(45),
	cin => \Add3~26\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: LABCELL_X73_Y34_N45
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( B2(46) ) + ( GND ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2(46),
	cin => \Add3~6\,
	sumout => \Add3~1_sumout\);

-- Location: FF_X73_Y34_N47
\B[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(46));

-- Location: FF_X73_Y34_N44
\B[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(45));

-- Location: FF_X73_Y34_N40
\B[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(44));

-- Location: FF_X73_Y34_N38
\B[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(43));

-- Location: FF_X73_Y34_N35
\B[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(42));

-- Location: FF_X73_Y34_N31
\B[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(41));

-- Location: MLABCELL_X78_Y34_N12
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( \A[26]~input_o\ ) + ( \A[24]~input_o\ ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( \A[26]~input_o\ ) + ( \A[24]~input_o\ ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_A[24]~input_o\,
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: MLABCELL_X78_Y34_N15
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( \A[27]~input_o\ ) + ( \A[25]~input_o\ ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( \A[27]~input_o\ ) + ( \A[25]~input_o\ ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: MLABCELL_X78_Y34_N18
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( \A[28]~input_o\ ) + ( \A[26]~input_o\ ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( \A[28]~input_o\ ) + ( \A[26]~input_o\ ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[26]~input_o\,
	datac => \ALT_INV_A[28]~input_o\,
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: MLABCELL_X78_Y34_N21
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( \A[29]~input_o\ ) + ( \A[27]~input_o\ ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( \A[29]~input_o\ ) + ( \A[27]~input_o\ ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: MLABCELL_X78_Y34_N24
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( \A[28]~input_o\ ) + ( \A[30]~input_o\ ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( \A[28]~input_o\ ) + ( \A[30]~input_o\ ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: MLABCELL_X78_Y34_N27
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \A[29]~input_o\ ) + ( \A[31]~input_o\ ) + ( \Add1~46\ ))
-- \Add1~14\ = CARRY(( \A[29]~input_o\ ) + ( \A[31]~input_o\ ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	cin => \Add1~46\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: MLABCELL_X78_Y34_N30
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \A[30]~input_o\ ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~2\ = CARRY(( \A[30]~input_o\ ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[30]~input_o\,
	cin => \Add1~14\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: MLABCELL_X78_Y34_N33
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \A[31]~input_o\ ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( \A[31]~input_o\ ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: MLABCELL_X78_Y34_N36
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( GND ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\);

-- Location: LABCELL_X75_Y34_N57
\C1[41]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1[41]~feeder_combout\ = ( \Add1~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~9_sumout\,
	combout => \C1[41]~feeder_combout\);

-- Location: FF_X75_Y34_N59
\C1[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C1[41]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(41));

-- Location: FF_X74_Y34_N44
\C2[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C1(41),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(41));

-- Location: LABCELL_X74_Y34_N57
\C[41]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C[41]~feeder_combout\ = C2(41)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_C2(41),
	combout => \C[41]~feeder_combout\);

-- Location: FF_X74_Y34_N58
\C[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C[41]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(41));

-- Location: FF_X73_Y34_N28
\B[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(40));

-- Location: FF_X78_Y34_N34
\C1[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(40));

-- Location: LABCELL_X74_Y34_N54
\C2[40]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2[40]~feeder_combout\ = ( C1(40) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_C1(40),
	combout => \C2[40]~feeder_combout\);

-- Location: FF_X74_Y34_N55
\C2[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C2[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(40));

-- Location: FF_X75_Y34_N52
\C[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C2(40),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(40));

-- Location: FF_X73_Y34_N26
\B[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(39));

-- Location: FF_X78_Y34_N31
\C1[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(39));

-- Location: LABCELL_X74_Y34_N48
\C2[39]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2[39]~feeder_combout\ = ( C1(39) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_C1(39),
	combout => \C2[39]~feeder_combout\);

-- Location: FF_X74_Y34_N50
\C2[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C2[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(39));

-- Location: FF_X74_Y34_N40
\C[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C2(39),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(39));

-- Location: FF_X78_Y34_N29
\C1[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(38));

-- Location: FF_X78_Y34_N40
\C2[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C1(38),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(38));

-- Location: FF_X78_Y34_N37
\C[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C2(38),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(38));

-- Location: FF_X73_Y34_N23
\B[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(38));

-- Location: FF_X73_Y34_N20
\B[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(37));

-- Location: FF_X78_Y34_N26
\C1[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(37));

-- Location: LABCELL_X77_Y34_N18
\C2[37]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2[37]~feeder_combout\ = ( C1(37) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_C1(37),
	combout => \C2[37]~feeder_combout\);

-- Location: FF_X77_Y34_N20
\C2[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C2[37]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(37));

-- Location: LABCELL_X77_Y34_N21
\C[37]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C[37]~feeder_combout\ = C2(37)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C2(37),
	combout => \C[37]~feeder_combout\);

-- Location: FF_X77_Y34_N22
\C[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C[37]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(37));

-- Location: FF_X78_Y34_N23
\C1[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(36));

-- Location: FF_X77_Y34_N38
\C2[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C1(36),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(36));

-- Location: FF_X77_Y34_N40
\C[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C2(36),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(36));

-- Location: FF_X73_Y34_N17
\B[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(36));

-- Location: FF_X78_Y34_N20
\C1[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(35));

-- Location: LABCELL_X77_Y34_N30
\C2[35]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2[35]~feeder_combout\ = ( C1(35) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_C1(35),
	combout => \C2[35]~feeder_combout\);

-- Location: FF_X77_Y34_N32
\C2[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C2[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(35));

-- Location: LABCELL_X77_Y34_N33
\C[35]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C[35]~feeder_combout\ = C2(35)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_C2(35),
	combout => \C[35]~feeder_combout\);

-- Location: FF_X77_Y34_N34
\C[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(35));

-- Location: FF_X73_Y34_N14
\B[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(35));

-- Location: FF_X73_Y34_N11
\B[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(34));

-- Location: FF_X78_Y34_N17
\C1[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(34));

-- Location: FF_X77_Y34_N50
\C2[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => C1(34),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(34));

-- Location: LABCELL_X77_Y34_N51
\C[34]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C[34]~feeder_combout\ = C2(34)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C2(34),
	combout => \C[34]~feeder_combout\);

-- Location: FF_X77_Y34_N52
\C[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(34));

-- Location: FF_X78_Y34_N14
\C1[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C1(33));

-- Location: MLABCELL_X78_Y34_N51
\C2[33]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2[33]~feeder_combout\ = C1(33)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_C1(33),
	combout => \C2[33]~feeder_combout\);

-- Location: FF_X78_Y34_N52
\C2[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C2[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C2(33));

-- Location: MLABCELL_X72_Y34_N57
\C[33]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C[33]~feeder_combout\ = ( C2(33) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_C2(33),
	combout => \C[33]~feeder_combout\);

-- Location: FF_X72_Y34_N59
\C[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \C[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(33));

-- Location: FF_X73_Y34_N7
\B[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(33));

-- Location: MLABCELL_X72_Y34_N9
\Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~49_sumout\ = SUM(( !C(33) $ (B(33)) ) + ( \Add4~47\ ) + ( \Add4~46\ ))
-- \Add4~50\ = CARRY(( !C(33) $ (B(33)) ) + ( \Add4~47\ ) + ( \Add4~46\ ))
-- \Add4~51\ = SHARE((!C(33) & B(33)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_C(33),
	datad => ALT_INV_B(33),
	cin => \Add4~46\,
	sharein => \Add4~47\,
	sumout => \Add4~49_sumout\,
	cout => \Add4~50\,
	shareout => \Add4~51\);

-- Location: MLABCELL_X72_Y34_N12
\Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~53_sumout\ = SUM(( !B(34) $ (C(34)) ) + ( \Add4~51\ ) + ( \Add4~50\ ))
-- \Add4~54\ = CARRY(( !B(34) $ (C(34)) ) + ( \Add4~51\ ) + ( \Add4~50\ ))
-- \Add4~55\ = SHARE((B(34) & !C(34)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B(34),
	datad => ALT_INV_C(34),
	cin => \Add4~50\,
	sharein => \Add4~51\,
	sumout => \Add4~53_sumout\,
	cout => \Add4~54\,
	shareout => \Add4~55\);

-- Location: MLABCELL_X72_Y34_N15
\Add4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~57_sumout\ = SUM(( !C(35) $ (B(35)) ) + ( \Add4~55\ ) + ( \Add4~54\ ))
-- \Add4~58\ = CARRY(( !C(35) $ (B(35)) ) + ( \Add4~55\ ) + ( \Add4~54\ ))
-- \Add4~59\ = SHARE((!C(35) & B(35)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(35),
	datac => ALT_INV_B(35),
	cin => \Add4~54\,
	sharein => \Add4~55\,
	sumout => \Add4~57_sumout\,
	cout => \Add4~58\,
	shareout => \Add4~59\);

-- Location: MLABCELL_X72_Y34_N18
\Add4~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~61_sumout\ = SUM(( !C(36) $ (B(36)) ) + ( \Add4~59\ ) + ( \Add4~58\ ))
-- \Add4~62\ = CARRY(( !C(36) $ (B(36)) ) + ( \Add4~59\ ) + ( \Add4~58\ ))
-- \Add4~63\ = SHARE((!C(36) & B(36)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_C(36),
	datad => ALT_INV_B(36),
	cin => \Add4~58\,
	sharein => \Add4~59\,
	sumout => \Add4~61_sumout\,
	cout => \Add4~62\,
	shareout => \Add4~63\);

-- Location: MLABCELL_X72_Y34_N21
\Add4~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~65_sumout\ = SUM(( !B(37) $ (C(37)) ) + ( \Add4~63\ ) + ( \Add4~62\ ))
-- \Add4~66\ = CARRY(( !B(37) $ (C(37)) ) + ( \Add4~63\ ) + ( \Add4~62\ ))
-- \Add4~67\ = SHARE((B(37) & !C(37)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B(37),
	datad => ALT_INV_C(37),
	cin => \Add4~62\,
	sharein => \Add4~63\,
	sumout => \Add4~65_sumout\,
	cout => \Add4~66\,
	shareout => \Add4~67\);

-- Location: MLABCELL_X72_Y34_N24
\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( !C(38) $ (B(38)) ) + ( \Add4~67\ ) + ( \Add4~66\ ))
-- \Add4~30\ = CARRY(( !C(38) $ (B(38)) ) + ( \Add4~67\ ) + ( \Add4~66\ ))
-- \Add4~31\ = SHARE((!C(38) & B(38)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_C(38),
	datad => ALT_INV_B(38),
	cin => \Add4~66\,
	sharein => \Add4~67\,
	sumout => \Add4~29_sumout\,
	cout => \Add4~30\,
	shareout => \Add4~31\);

-- Location: MLABCELL_X72_Y34_N27
\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( !B(39) $ (C(39)) ) + ( \Add4~31\ ) + ( \Add4~30\ ))
-- \Add4~10\ = CARRY(( !B(39) $ (C(39)) ) + ( \Add4~31\ ) + ( \Add4~30\ ))
-- \Add4~11\ = SHARE((B(39) & !C(39)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B(39),
	datad => ALT_INV_C(39),
	cin => \Add4~30\,
	sharein => \Add4~31\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\,
	shareout => \Add4~11\);

-- Location: MLABCELL_X72_Y34_N30
\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( !B(40) $ (C(40)) ) + ( \Add4~11\ ) + ( \Add4~10\ ))
-- \Add4~14\ = CARRY(( !B(40) $ (C(40)) ) + ( \Add4~11\ ) + ( \Add4~10\ ))
-- \Add4~15\ = SHARE((B(40) & !C(40)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B(40),
	datad => ALT_INV_C(40),
	cin => \Add4~10\,
	sharein => \Add4~11\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\,
	shareout => \Add4~15\);

-- Location: MLABCELL_X72_Y34_N33
\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( !B(41) $ (C(41)) ) + ( \Add4~15\ ) + ( \Add4~14\ ))
-- \Add4~18\ = CARRY(( !B(41) $ (C(41)) ) + ( \Add4~15\ ) + ( \Add4~14\ ))
-- \Add4~19\ = SHARE((B(41) & !C(41)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B(41),
	datad => ALT_INV_C(41),
	cin => \Add4~14\,
	sharein => \Add4~15\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\,
	shareout => \Add4~19\);

-- Location: MLABCELL_X72_Y34_N36
\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( !B(42) ) + ( \Add4~19\ ) + ( \Add4~18\ ))
-- \Add4~22\ = CARRY(( !B(42) ) + ( \Add4~19\ ) + ( \Add4~18\ ))
-- \Add4~23\ = SHARE(B(42))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B(42),
	cin => \Add4~18\,
	sharein => \Add4~19\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\,
	shareout => \Add4~23\);

-- Location: MLABCELL_X72_Y34_N39
\Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~33_sumout\ = SUM(( !B(43) ) + ( \Add4~23\ ) + ( \Add4~22\ ))
-- \Add4~34\ = CARRY(( !B(43) ) + ( \Add4~23\ ) + ( \Add4~22\ ))
-- \Add4~35\ = SHARE(B(43))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B(43),
	cin => \Add4~22\,
	sharein => \Add4~23\,
	sumout => \Add4~33_sumout\,
	cout => \Add4~34\,
	shareout => \Add4~35\);

-- Location: MLABCELL_X72_Y34_N42
\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( !B(44) ) + ( \Add4~35\ ) + ( \Add4~34\ ))
-- \Add4~26\ = CARRY(( !B(44) ) + ( \Add4~35\ ) + ( \Add4~34\ ))
-- \Add4~27\ = SHARE(B(44))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_B(44),
	cin => \Add4~34\,
	sharein => \Add4~35\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\,
	shareout => \Add4~27\);

-- Location: MLABCELL_X72_Y34_N45
\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( !B(45) ) + ( \Add4~27\ ) + ( \Add4~26\ ))
-- \Add4~6\ = CARRY(( !B(45) ) + ( \Add4~27\ ) + ( \Add4~26\ ))
-- \Add4~7\ = SHARE(B(45))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B(45),
	cin => \Add4~26\,
	sharein => \Add4~27\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\,
	shareout => \Add4~7\);

-- Location: MLABCELL_X72_Y34_N48
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( !B(46) ) + ( \Add4~7\ ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B(46),
	cin => \Add4~6\,
	sharein => \Add4~7\,
	sumout => \Add4~1_sumout\);

-- Location: FF_X72_Y34_N49
\D[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(46));

-- Location: FF_X75_Y32_N59
\H_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~DUPLICATE_q\);

-- Location: FF_X75_Y32_N25
\H_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~DUPLICATE_q\);

-- Location: FF_X75_Y32_N29
\H_rtl_0|auto_generated|cntr1|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

-- Location: LABCELL_X75_Y32_N0
\H_rtl_0|auto_generated|cntr1|counter_comb_bita0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H_rtl_0|auto_generated|cntr1|counter_comb_bita0~sumout\ = SUM(( \H_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))
-- \H_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ = CARRY(( \H_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	cin => GND,
	sumout => \H_rtl_0|auto_generated|cntr1|counter_comb_bita0~sumout\,
	cout => \H_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\);

-- Location: LABCELL_X75_Y32_N3
\H_rtl_0|auto_generated|cntr1|counter_comb_bita1\ : cyclonev_lcell_comb
-- Equation(s):
-- \H_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\ = SUM(( \H_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~DUPLICATE_q\ ) + ( GND ) + ( \H_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ ))
-- \H_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ = CARRY(( \H_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~DUPLICATE_q\ ) + ( GND ) + ( \H_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[1]~DUPLICATE_q\,
	cin => \H_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\,
	sumout => \H_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\,
	cout => \H_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\);

-- Location: LABCELL_X75_Y32_N6
\H_rtl_0|auto_generated|cntr1|counter_comb_bita2\ : cyclonev_lcell_comb
-- Equation(s):
-- \H_rtl_0|auto_generated|cntr1|counter_comb_bita2~sumout\ = SUM(( \H_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~DUPLICATE_q\ ) + ( GND ) + ( \H_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ ))
-- \H_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ = CARRY(( \H_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~DUPLICATE_q\ ) + ( GND ) + ( \H_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[2]~DUPLICATE_q\,
	cin => \H_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\,
	sumout => \H_rtl_0|auto_generated|cntr1|counter_comb_bita2~sumout\,
	cout => \H_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\);

-- Location: LABCELL_X75_Y32_N9
\H_rtl_0|auto_generated|cntr1|counter_comb_bita2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \H_rtl_0|auto_generated|cntr1|counter_comb_bita2~1_sumout\ = SUM(( GND ) + ( GND ) + ( \H_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \H_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\,
	sumout => \H_rtl_0|auto_generated|cntr1|counter_comb_bita2~1_sumout\);

-- Location: LABCELL_X75_Y32_N24
\H_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \H_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\ = ( \H_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~DUPLICATE_q\ & ( (!\H_rtl_0|auto_generated|cntr1|counter_comb_bita2~1_sumout\ & \H_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\) ) ) 
-- # ( !\H_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~DUPLICATE_q\ & ( (!\H_rtl_0|auto_generated|cntr1|counter_comb_bita2~1_sumout\ & (\H_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\ & ((!\H_rtl_0|auto_generated|cntr1|counter_reg_bit\(2)) # 
-- (!\H_rtl_0|auto_generated|cntr1|counter_reg_bit\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001000000011000000100000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2),
	datab => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita2~1_sumout\,
	datac => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita1~sumout\,
	datad => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1),
	dataf => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[0]~DUPLICATE_q\,
	combout => \H_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\);

-- Location: FF_X75_Y32_N26
\H_rtl_0|auto_generated|cntr1|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_rtl_0|auto_generated|cntr1|counter_reg_bit\(1));

-- Location: LABCELL_X75_Y32_N57
\H_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \H_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2_combout\ = ( \H_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~DUPLICATE_q\ & ( (!\H_rtl_0|auto_generated|cntr1|counter_comb_bita2~1_sumout\ & \H_rtl_0|auto_generated|cntr1|counter_comb_bita2~sumout\) ) ) 
-- # ( !\H_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~DUPLICATE_q\ & ( (!\H_rtl_0|auto_generated|cntr1|counter_comb_bita2~1_sumout\ & (\H_rtl_0|auto_generated|cntr1|counter_comb_bita2~sumout\ & ((!\H_rtl_0|auto_generated|cntr1|counter_reg_bit\(1)) # 
-- (!\H_rtl_0|auto_generated|cntr1|counter_reg_bit\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001000000011000000100000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1),
	datab => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita2~1_sumout\,
	datac => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita2~sumout\,
	datad => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2),
	dataf => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[0]~DUPLICATE_q\,
	combout => \H_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2_combout\);

-- Location: FF_X75_Y32_N58
\H_rtl_0|auto_generated|cntr1|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_rtl_0|auto_generated|cntr1|counter_reg_bit\(2));

-- Location: LABCELL_X75_Y32_N27
\H_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\ = ( \H_rtl_0|auto_generated|cntr1|counter_comb_bita0~sumout\ & ( (!\H_rtl_0|auto_generated|cntr1|counter_comb_bita2~1_sumout\ & ((!\H_rtl_0|auto_generated|cntr1|counter_reg_bit\(2)) # 
-- ((!\H_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~DUPLICATE_q\) # (\H_rtl_0|auto_generated|cntr1|counter_reg_bit\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001000110011001100100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2),
	datab => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita2~1_sumout\,
	datac => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[1]~DUPLICATE_q\,
	datad => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	dataf => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita0~sumout\,
	combout => \H_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\);

-- Location: FF_X75_Y32_N28
\H_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y32_N12
\H_rtl_0|auto_generated|cmpr4_aeb_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\ = ( \H_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & ( (!\H_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & !\H_rtl_0|auto_generated|cntr1|counter_reg_bit\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1),
	datad => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	dataf => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2),
	combout => \H_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\);

-- Location: LABCELL_X75_Y32_N18
\H_rtl_0|auto_generated|op_2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H_rtl_0|auto_generated|op_2~0_combout\ = ( \H_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) & ( \H_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & ( \H_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~DUPLICATE_q\ ) ) ) # ( 
-- !\H_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) & ( \H_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & ( \H_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~DUPLICATE_q\ ) ) ) # ( \H_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) & ( 
-- !\H_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & ( \H_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[2]~DUPLICATE_q\,
	datae => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	dataf => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1),
	combout => \H_rtl_0|auto_generated|op_2~0_combout\);

-- Location: LABCELL_X75_Y32_N30
\H_rtl_0|auto_generated|op_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \H_rtl_0|auto_generated|op_1~1_sumout\ = SUM(( \H_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) ) + ( (!\H_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\ & !\H_rtl_0|auto_generated|op_2~0_combout\) ) + ( !VCC ))
-- \H_rtl_0|auto_generated|op_1~2\ = CARRY(( \H_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) ) + ( (!\H_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\ & !\H_rtl_0|auto_generated|op_2~0_combout\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \H_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~0_combout\,
	datac => \H_rtl_0|auto_generated|ALT_INV_op_2~0_combout\,
	datad => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	cin => GND,
	sumout => \H_rtl_0|auto_generated|op_1~1_sumout\,
	cout => \H_rtl_0|auto_generated|op_1~2\);

-- Location: FF_X75_Y32_N32
\H_rtl_0|auto_generated|dffe3a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H_rtl_0|auto_generated|op_1~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_rtl_0|auto_generated|dffe3a\(0));

-- Location: LABCELL_X75_Y32_N33
\H_rtl_0|auto_generated|op_1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \H_rtl_0|auto_generated|op_1~5_sumout\ = SUM(( \H_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~DUPLICATE_q\ ) + ( (!\H_rtl_0|auto_generated|op_2~0_combout\ & !\H_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\) ) + ( \H_rtl_0|auto_generated|op_1~2\ ))
-- \H_rtl_0|auto_generated|op_1~6\ = CARRY(( \H_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~DUPLICATE_q\ ) + ( (!\H_rtl_0|auto_generated|op_2~0_combout\ & !\H_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\) ) + ( \H_rtl_0|auto_generated|op_1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111011100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \H_rtl_0|auto_generated|ALT_INV_op_2~0_combout\,
	datab => \H_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~0_combout\,
	datac => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[1]~DUPLICATE_q\,
	cin => \H_rtl_0|auto_generated|op_1~2\,
	sumout => \H_rtl_0|auto_generated|op_1~5_sumout\,
	cout => \H_rtl_0|auto_generated|op_1~6\);

-- Location: LABCELL_X75_Y32_N15
\H_rtl_0|auto_generated|dffe3a[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H_rtl_0|auto_generated|dffe3a[1]~0_combout\ = ( !\H_rtl_0|auto_generated|op_1~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \H_rtl_0|auto_generated|ALT_INV_op_1~5_sumout\,
	combout => \H_rtl_0|auto_generated|dffe3a[1]~0_combout\);

-- Location: FF_X75_Y32_N16
\H_rtl_0|auto_generated|dffe3a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H_rtl_0|auto_generated|dffe3a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_rtl_0|auto_generated|dffe3a\(1));

-- Location: LABCELL_X75_Y32_N54
\H_rtl_0|auto_generated|dffe3a[1]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \H_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ = ( !\H_rtl_0|auto_generated|dffe3a\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \H_rtl_0|auto_generated|ALT_INV_dffe3a\(1),
	combout => \H_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\);

-- Location: LABCELL_X75_Y32_N36
\H_rtl_0|auto_generated|op_1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \H_rtl_0|auto_generated|op_1~9_sumout\ = SUM(( \H_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~DUPLICATE_q\ ) + ( (\H_rtl_0|auto_generated|op_2~0_combout\) # (\H_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\) ) + ( \H_rtl_0|auto_generated|op_1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \H_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~0_combout\,
	datac => \H_rtl_0|auto_generated|ALT_INV_op_2~0_combout\,
	datad => \H_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[2]~DUPLICATE_q\,
	cin => \H_rtl_0|auto_generated|op_1~6\,
	sumout => \H_rtl_0|auto_generated|op_1~9_sumout\);

-- Location: FF_X75_Y32_N37
\H_rtl_0|auto_generated|dffe3a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H_rtl_0|auto_generated|op_1~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_rtl_0|auto_generated|dffe3a\(2));

-- Location: FF_X73_Y36_N28
\A2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(3));

-- Location: FF_X73_Y36_N10
\A2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(4));

-- Location: FF_X73_Y36_N4
\A2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \A2[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A2(5));

-- Location: FF_X74_Y33_N8
\A2[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => A1(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A2[14]~DUPLICATE_q\);

-- Location: M10K_X76_Y32_N0
\H_rtl_0|auto_generated|altsyncram5|ram_block6a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altshift_taps:H_rtl_0|shift_taps_0vu:auto_generated|altsyncram_rr91:altsyncram5|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 7,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 7,
	port_b_logical_ram_width => 15,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbre => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	clk1 => \clk~inputCLKENA0_outclk\,
	ena0 => VCC,
	ena1 => VCC,
	portadatain => \H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTADATAIN_bus\,
	portaaddr => \H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTAADDR_bus\,
	portbaddr => \H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \H_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X77_Y29_N6
\Add9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~9_sumout\ = SUM(( !G9(2) $ (\H_rtl_0|auto_generated|altsyncram5|ram_block6a1\) ) + ( \Add9~7\ ) + ( \Add9~6\ ))
-- \Add9~10\ = CARRY(( !G9(2) $ (\H_rtl_0|auto_generated|altsyncram5|ram_block6a1\) ) + ( \Add9~7\ ) + ( \Add9~6\ ))
-- \Add9~11\ = SHARE((!G9(2) & \H_rtl_0|auto_generated|altsyncram5|ram_block6a1\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_G9(2),
	datad => \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a1\,
	cin => \Add9~6\,
	sharein => \Add9~7\,
	sumout => \Add9~9_sumout\,
	cout => \Add9~10\,
	shareout => \Add9~11\);

-- Location: FF_X77_Y29_N7
\G[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G(2));

-- Location: LABCELL_X83_Y25_N39
\Amod33401[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Amod33401[2]~reg0feeder_combout\ = ( G(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_G(2),
	combout => \Amod33401[2]~reg0feeder_combout\);

-- Location: FF_X83_Y25_N40
\Amod33401[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Amod33401[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Amod33401[2]~reg0_q\);

-- Location: FF_X72_Y34_N10
\D[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(33));

-- Location: LABCELL_X74_Y33_N48
\H[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H[3]~feeder_combout\ = ( D(33) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_D(33),
	combout => \H[3]~feeder_combout\);

-- Location: FF_X74_Y33_N50
\H[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(3));

-- Location: LABCELL_X74_Y33_N51
\H6[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H6[3]~feeder_combout\ = H(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_H(3),
	combout => \H6[3]~feeder_combout\);

-- Location: FF_X74_Y33_N52
\H6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H6[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H6(3));

-- Location: FF_X74_Y33_N26
\H7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H6(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H7(3));

-- Location: FF_X74_Y33_N28
\H8[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H7(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H8(3));

-- Location: FF_X75_Y29_N5
\H8[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H7(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H8[1]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y29_N0
\Add8~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~62_cout\ = CARRY(( \H8[0]~DUPLICATE_q\ ) + ( !VCC ) + ( !VCC ))
-- \Add8~63\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_H8[0]~DUPLICATE_q\,
	cin => GND,
	sharein => GND,
	cout => \Add8~62_cout\,
	shareout => \Add8~63\);

-- Location: LABCELL_X75_Y29_N3
\Add8~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~58_cout\ = CARRY(( !\H8[1]~DUPLICATE_q\ ) + ( \Add8~63\ ) + ( \Add8~62_cout\ ))
-- \Add8~59\ = SHARE(\H8[1]~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000001010101010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_H8[1]~DUPLICATE_q\,
	cin => \Add8~62_cout\,
	sharein => \Add8~63\,
	cout => \Add8~58_cout\,
	shareout => \Add8~59\);

-- Location: LABCELL_X75_Y29_N6
\Add8~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~54_cout\ = CARRY(( !H8(2) ) + ( \Add8~59\ ) + ( \Add8~58_cout\ ))
-- \Add8~55\ = SHARE(H8(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_H8(2),
	cin => \Add8~58_cout\,
	sharein => \Add8~59\,
	cout => \Add8~54_cout\,
	shareout => \Add8~55\);

-- Location: LABCELL_X75_Y29_N9
\Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~1_sumout\ = SUM(( !\H8[0]~DUPLICATE_q\ $ (H8(3)) ) + ( \Add8~55\ ) + ( \Add8~54_cout\ ))
-- \Add8~2\ = CARRY(( !\H8[0]~DUPLICATE_q\ $ (H8(3)) ) + ( \Add8~55\ ) + ( \Add8~54_cout\ ))
-- \Add8~3\ = SHARE((!\H8[0]~DUPLICATE_q\ & H8(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_H8[0]~DUPLICATE_q\,
	datac => ALT_INV_H8(3),
	cin => \Add8~54_cout\,
	sharein => \Add8~55\,
	sumout => \Add8~1_sumout\,
	cout => \Add8~2\,
	shareout => \Add8~3\);

-- Location: FF_X75_Y29_N10
\G9[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G9(3));

-- Location: LABCELL_X77_Y29_N9
\Add9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~13_sumout\ = SUM(( !G9(3) $ (\H_rtl_0|auto_generated|altsyncram5|ram_block6a2\) ) + ( \Add9~11\ ) + ( \Add9~10\ ))
-- \Add9~14\ = CARRY(( !G9(3) $ (\H_rtl_0|auto_generated|altsyncram5|ram_block6a2\) ) + ( \Add9~11\ ) + ( \Add9~10\ ))
-- \Add9~15\ = SHARE((!G9(3) & \H_rtl_0|auto_generated|altsyncram5|ram_block6a2\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_G9(3),
	datac => \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a2\,
	cin => \Add9~10\,
	sharein => \Add9~11\,
	sumout => \Add9~13_sumout\,
	cout => \Add9~14\,
	shareout => \Add9~15\);

-- Location: FF_X77_Y29_N10
\G[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G(3));

-- Location: LABCELL_X77_Y27_N27
\Amod33401[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Amod33401[3]~reg0feeder_combout\ = ( G(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_G(3),
	combout => \Amod33401[3]~reg0feeder_combout\);

-- Location: FF_X77_Y27_N28
\Amod33401[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Amod33401[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Amod33401[3]~reg0_q\);

-- Location: FF_X72_Y34_N14
\D[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(34));

-- Location: FF_X74_Y31_N2
\H[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => D(34),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(4));

-- Location: FF_X74_Y31_N5
\H6[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H6(4));

-- Location: FF_X74_Y31_N49
\H7[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H6(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H7(4));

-- Location: LABCELL_X74_Y29_N33
\H8[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H8[4]~feeder_combout\ = ( H7(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_H7(4),
	combout => \H8[4]~feeder_combout\);

-- Location: FF_X74_Y29_N34
\H8[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H8[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H8(4));

-- Location: LABCELL_X75_Y29_N12
\Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~5_sumout\ = SUM(( !\H8[1]~DUPLICATE_q\ $ (H8(4)) ) + ( \Add8~3\ ) + ( \Add8~2\ ))
-- \Add8~6\ = CARRY(( !\H8[1]~DUPLICATE_q\ $ (H8(4)) ) + ( \Add8~3\ ) + ( \Add8~2\ ))
-- \Add8~7\ = SHARE((!\H8[1]~DUPLICATE_q\ & H8(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_H8[1]~DUPLICATE_q\,
	datad => ALT_INV_H8(4),
	cin => \Add8~2\,
	sharein => \Add8~3\,
	sumout => \Add8~5_sumout\,
	cout => \Add8~6\,
	shareout => \Add8~7\);

-- Location: FF_X75_Y29_N13
\G9[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G9(4));

-- Location: LABCELL_X77_Y29_N12
\Add9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~17_sumout\ = SUM(( !G9(4) $ (\H_rtl_0|auto_generated|altsyncram5|ram_block6a3\) ) + ( \Add9~15\ ) + ( \Add9~14\ ))
-- \Add9~18\ = CARRY(( !G9(4) $ (\H_rtl_0|auto_generated|altsyncram5|ram_block6a3\) ) + ( \Add9~15\ ) + ( \Add9~14\ ))
-- \Add9~19\ = SHARE((!G9(4) & \H_rtl_0|auto_generated|altsyncram5|ram_block6a3\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_G9(4),
	datad => \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a3\,
	cin => \Add9~14\,
	sharein => \Add9~15\,
	sumout => \Add9~17_sumout\,
	cout => \Add9~18\,
	shareout => \Add9~19\);

-- Location: FF_X77_Y29_N13
\G[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G(4));

-- Location: LABCELL_X77_Y27_N6
\Amod33401[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Amod33401[4]~reg0feeder_combout\ = ( G(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_G(4),
	combout => \Amod33401[4]~reg0feeder_combout\);

-- Location: FF_X77_Y27_N8
\Amod33401[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Amod33401[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Amod33401[4]~reg0_q\);

-- Location: FF_X72_Y34_N16
\D[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(35));

-- Location: LABCELL_X74_Y33_N42
\H[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H[5]~feeder_combout\ = ( D(35) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_D(35),
	combout => \H[5]~feeder_combout\);

-- Location: FF_X74_Y33_N44
\H[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(5));

-- Location: LABCELL_X74_Y33_N45
\H6[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H6[5]~feeder_combout\ = H(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_H(5),
	combout => \H6[5]~feeder_combout\);

-- Location: FF_X74_Y33_N46
\H6[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H6[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H6(5));

-- Location: FF_X75_Y29_N59
\H7[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H6(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H7(5));

-- Location: FF_X75_Y29_N53
\H8[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H7(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H8(5));

-- Location: LABCELL_X75_Y29_N15
\Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~9_sumout\ = SUM(( !H8(5) $ (H8(2)) ) + ( \Add8~7\ ) + ( \Add8~6\ ))
-- \Add8~10\ = CARRY(( !H8(5) $ (H8(2)) ) + ( \Add8~7\ ) + ( \Add8~6\ ))
-- \Add8~11\ = SHARE((H8(5) & !H8(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_H8(5),
	datac => ALT_INV_H8(2),
	cin => \Add8~6\,
	sharein => \Add8~7\,
	sumout => \Add8~9_sumout\,
	cout => \Add8~10\,
	shareout => \Add8~11\);

-- Location: FF_X75_Y29_N16
\G9[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G9(5));

-- Location: LABCELL_X77_Y29_N15
\Add9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~21_sumout\ = SUM(( !\H_rtl_0|auto_generated|altsyncram5|ram_block6a4\ $ (G9(5)) ) + ( \Add9~19\ ) + ( \Add9~18\ ))
-- \Add9~22\ = CARRY(( !\H_rtl_0|auto_generated|altsyncram5|ram_block6a4\ $ (G9(5)) ) + ( \Add9~19\ ) + ( \Add9~18\ ))
-- \Add9~23\ = SHARE((\H_rtl_0|auto_generated|altsyncram5|ram_block6a4\ & !G9(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a4\,
	datad => ALT_INV_G9(5),
	cin => \Add9~18\,
	sharein => \Add9~19\,
	sumout => \Add9~21_sumout\,
	cout => \Add9~22\,
	shareout => \Add9~23\);

-- Location: FF_X77_Y29_N16
\G[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G(5));

-- Location: MLABCELL_X78_Y29_N24
\Amod33401[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Amod33401[5]~reg0feeder_combout\ = G(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_G(5),
	combout => \Amod33401[5]~reg0feeder_combout\);

-- Location: FF_X78_Y29_N25
\Amod33401[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Amod33401[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Amod33401[5]~reg0_q\);

-- Location: FF_X72_Y34_N19
\D[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(36));

-- Location: FF_X74_Y31_N55
\H[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => D(36),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(6));

-- Location: FF_X74_Y31_N37
\H6[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H6(6));

-- Location: FF_X74_Y31_N46
\H7[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H6(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H7(6));

-- Location: FF_X78_Y29_N10
\H8[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H7(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H8(6));

-- Location: LABCELL_X75_Y29_N18
\Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~13_sumout\ = SUM(( !H8(3) $ (H8(6)) ) + ( \Add8~11\ ) + ( \Add8~10\ ))
-- \Add8~14\ = CARRY(( !H8(3) $ (H8(6)) ) + ( \Add8~11\ ) + ( \Add8~10\ ))
-- \Add8~15\ = SHARE((!H8(3) & H8(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_H8(3),
	datac => ALT_INV_H8(6),
	cin => \Add8~10\,
	sharein => \Add8~11\,
	sumout => \Add8~13_sumout\,
	cout => \Add8~14\,
	shareout => \Add8~15\);

-- Location: FF_X75_Y29_N19
\G9[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G9(6));

-- Location: LABCELL_X77_Y29_N18
\Add9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~25_sumout\ = SUM(( !\H_rtl_0|auto_generated|altsyncram5|ram_block6a5\ $ (G9(6)) ) + ( \Add9~23\ ) + ( \Add9~22\ ))
-- \Add9~26\ = CARRY(( !\H_rtl_0|auto_generated|altsyncram5|ram_block6a5\ $ (G9(6)) ) + ( \Add9~23\ ) + ( \Add9~22\ ))
-- \Add9~27\ = SHARE((\H_rtl_0|auto_generated|altsyncram5|ram_block6a5\ & !G9(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a5\,
	datad => ALT_INV_G9(6),
	cin => \Add9~22\,
	sharein => \Add9~23\,
	sumout => \Add9~25_sumout\,
	cout => \Add9~26\,
	shareout => \Add9~27\);

-- Location: FF_X77_Y29_N20
\G[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G(6));

-- Location: LABCELL_X77_Y27_N15
\Amod33401[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Amod33401[6]~reg0feeder_combout\ = ( G(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_G(6),
	combout => \Amod33401[6]~reg0feeder_combout\);

-- Location: FF_X77_Y27_N17
\Amod33401[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Amod33401[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Amod33401[6]~reg0_q\);

-- Location: FF_X72_Y34_N22
\D[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(37));

-- Location: LABCELL_X74_Y33_N36
\H[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H[7]~feeder_combout\ = ( D(37) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_D(37),
	combout => \H[7]~feeder_combout\);

-- Location: FF_X74_Y33_N38
\H[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(7));

-- Location: FF_X74_Y33_N40
\H6[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H6(7));

-- Location: LABCELL_X74_Y29_N57
\H7[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H7[7]~feeder_combout\ = ( H6(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_H6(7),
	combout => \H7[7]~feeder_combout\);

-- Location: FF_X74_Y29_N59
\H7[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H7[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H7(7));

-- Location: FF_X74_Y29_N50
\H7[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H7[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H7[0]~DUPLICATE_q\);

-- Location: LABCELL_X74_Y29_N0
\Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~1_sumout\ = SUM(( H7(7) ) + ( \H7[0]~DUPLICATE_q\ ) + ( !VCC ))
-- \Add7~2\ = CARRY(( H7(7) ) + ( \H7[0]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_H7(7),
	datac => \ALT_INV_H7[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add7~1_sumout\,
	cout => \Add7~2\);

-- Location: FF_X74_Y29_N1
\E[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(7));

-- Location: LABCELL_X75_Y29_N21
\Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~17_sumout\ = SUM(( !E(7) $ (H8(4)) ) + ( \Add8~15\ ) + ( \Add8~14\ ))
-- \Add8~18\ = CARRY(( !E(7) $ (H8(4)) ) + ( \Add8~15\ ) + ( \Add8~14\ ))
-- \Add8~19\ = SHARE((E(7) & !H8(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_E(7),
	datad => ALT_INV_H8(4),
	cin => \Add8~14\,
	sharein => \Add8~15\,
	sumout => \Add8~17_sumout\,
	cout => \Add8~18\,
	shareout => \Add8~19\);

-- Location: FF_X75_Y29_N23
\G9[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G9(7));

-- Location: LABCELL_X77_Y29_N21
\Add9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~29_sumout\ = SUM(( !\H_rtl_0|auto_generated|altsyncram5|ram_block6a6\ $ (G9(7)) ) + ( \Add9~27\ ) + ( \Add9~26\ ))
-- \Add9~30\ = CARRY(( !\H_rtl_0|auto_generated|altsyncram5|ram_block6a6\ $ (G9(7)) ) + ( \Add9~27\ ) + ( \Add9~26\ ))
-- \Add9~31\ = SHARE((\H_rtl_0|auto_generated|altsyncram5|ram_block6a6\ & !G9(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a6\,
	datad => ALT_INV_G9(7),
	cin => \Add9~26\,
	sharein => \Add9~27\,
	sumout => \Add9~29_sumout\,
	cout => \Add9~30\,
	shareout => \Add9~31\);

-- Location: FF_X77_Y29_N22
\G[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G(7));

-- Location: FF_X78_Y29_N55
\Amod33401[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => G(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Amod33401[7]~reg0_q\);

-- Location: FF_X72_Y34_N25
\D[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(38));

-- Location: LABCELL_X74_Y31_N15
\H[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H[8]~feeder_combout\ = ( D(38) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_D(38),
	combout => \H[8]~feeder_combout\);

-- Location: FF_X74_Y31_N17
\H[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(8));

-- Location: MLABCELL_X72_Y29_N48
\H6[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H6[8]~feeder_combout\ = ( H(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_H(8),
	combout => \H6[8]~feeder_combout\);

-- Location: FF_X72_Y29_N49
\H6[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H6[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H6(8));

-- Location: LABCELL_X74_Y29_N45
\H7[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H7[8]~feeder_combout\ = ( H6(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_H6(8),
	combout => \H7[8]~feeder_combout\);

-- Location: FF_X74_Y29_N47
\H7[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H7[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H7(8));

-- Location: LABCELL_X74_Y29_N3
\Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~5_sumout\ = SUM(( H7(1) ) + ( H7(8) ) + ( \Add7~2\ ))
-- \Add7~6\ = CARRY(( H7(1) ) + ( H7(8) ) + ( \Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_H7(8),
	datad => ALT_INV_H7(1),
	cin => \Add7~2\,
	sumout => \Add7~5_sumout\,
	cout => \Add7~6\);

-- Location: FF_X74_Y29_N4
\E[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(8));

-- Location: LABCELL_X75_Y29_N24
\Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~21_sumout\ = SUM(( !E(8) $ (H8(5)) ) + ( \Add8~19\ ) + ( \Add8~18\ ))
-- \Add8~22\ = CARRY(( !E(8) $ (H8(5)) ) + ( \Add8~19\ ) + ( \Add8~18\ ))
-- \Add8~23\ = SHARE((E(8) & !H8(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_E(8),
	datac => ALT_INV_H8(5),
	cin => \Add8~18\,
	sharein => \Add8~19\,
	sumout => \Add8~21_sumout\,
	cout => \Add8~22\,
	shareout => \Add8~23\);

-- Location: FF_X75_Y29_N25
\G9[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G9(8));

-- Location: LABCELL_X77_Y29_N24
\Add9~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~33_sumout\ = SUM(( !\H_rtl_0|auto_generated|altsyncram5|ram_block6a7\ $ (G9(8)) ) + ( \Add9~31\ ) + ( \Add9~30\ ))
-- \Add9~34\ = CARRY(( !\H_rtl_0|auto_generated|altsyncram5|ram_block6a7\ $ (G9(8)) ) + ( \Add9~31\ ) + ( \Add9~30\ ))
-- \Add9~35\ = SHARE((\H_rtl_0|auto_generated|altsyncram5|ram_block6a7\ & !G9(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a7\,
	datad => ALT_INV_G9(8),
	cin => \Add9~30\,
	sharein => \Add9~31\,
	sumout => \Add9~33_sumout\,
	cout => \Add9~34\,
	shareout => \Add9~35\);

-- Location: FF_X77_Y29_N26
\G[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G(8));

-- Location: FF_X77_Y29_N52
\Amod33401[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => G(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Amod33401[8]~reg0_q\);

-- Location: LABCELL_X73_Y29_N30
\Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~1_sumout\ = SUM(( H6(2) ) + ( H6(0) ) + ( !VCC ))
-- \Add6~2\ = CARRY(( H6(2) ) + ( H6(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_H6(2),
	datac => ALT_INV_H6(0),
	cin => GND,
	sumout => \Add6~1_sumout\,
	cout => \Add6~2\);

-- Location: FF_X73_Y29_N31
\E7[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E7(9));

-- Location: FF_X75_Y29_N49
\H8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H7(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H8(0));

-- Location: LABCELL_X75_Y30_N30
\H9_rtl_0|auto_generated|cntr1|counter_comb_bita0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H9_rtl_0|auto_generated|cntr1|counter_comb_bita0~sumout\ = SUM(( \H9_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))
-- \H9_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ = CARRY(( \H9_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \H9_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	cin => GND,
	sumout => \H9_rtl_0|auto_generated|cntr1|counter_comb_bita0~sumout\,
	cout => \H9_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\);

-- Location: LABCELL_X75_Y30_N33
\H9_rtl_0|auto_generated|cntr1|counter_comb_bita1\ : cyclonev_lcell_comb
-- Equation(s):
-- \H9_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\ = SUM(( \H9_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) ) + ( GND ) + ( \H9_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ ))
-- \H9_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ = CARRY(( \H9_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) ) + ( GND ) + ( \H9_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \H9_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1),
	cin => \H9_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\,
	sumout => \H9_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\,
	cout => \H9_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\);

-- Location: LABCELL_X75_Y30_N27
\H9_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \H9_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\ = ( \H9_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) & ( (!\H9_rtl_0|auto_generated|cntr1|counter_comb_bita1~1_sumout\ & \H9_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\) ) ) # ( 
-- !\H9_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) & ( (!\H9_rtl_0|auto_generated|cntr1|counter_comb_bita1~1_sumout\ & (\H9_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\ & !\H9_rtl_0|auto_generated|cntr1|counter_reg_bit\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \H9_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita1~1_sumout\,
	datac => \H9_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita1~sumout\,
	datad => \H9_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1),
	dataf => \H9_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	combout => \H9_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\);

-- Location: FF_X75_Y30_N28
\H9_rtl_0|auto_generated|cntr1|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H9_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H9_rtl_0|auto_generated|cntr1|counter_reg_bit\(1));

-- Location: LABCELL_X75_Y30_N36
\H9_rtl_0|auto_generated|cntr1|counter_comb_bita1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \H9_rtl_0|auto_generated|cntr1|counter_comb_bita1~1_sumout\ = SUM(( GND ) + ( GND ) + ( \H9_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \H9_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\,
	sumout => \H9_rtl_0|auto_generated|cntr1|counter_comb_bita1~1_sumout\);

-- Location: LABCELL_X75_Y30_N24
\H9_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H9_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\ = ( \H9_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & ( (!\H9_rtl_0|auto_generated|cntr1|counter_comb_bita1~1_sumout\ & (\H9_rtl_0|auto_generated|cntr1|counter_comb_bita0~sumout\ & 
-- \H9_rtl_0|auto_generated|cntr1|counter_reg_bit\(0))) ) ) # ( !\H9_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & ( (!\H9_rtl_0|auto_generated|cntr1|counter_comb_bita1~1_sumout\ & \H9_rtl_0|auto_generated|cntr1|counter_comb_bita0~sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \H9_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita1~1_sumout\,
	datab => \H9_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita0~sumout\,
	datad => \H9_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	dataf => \H9_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1),
	combout => \H9_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\);

-- Location: FF_X75_Y30_N26
\H9_rtl_0|auto_generated|cntr1|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H9_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H9_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

-- Location: FF_X75_Y30_N56
\H9_rtl_0|auto_generated|dffe3a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \H9_rtl_0|auto_generated|cntr1|counter_reg_bit\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H9_rtl_0|auto_generated|dffe3a\(0));

-- Location: MLABCELL_X72_Y29_N24
\H9_rtl_0|auto_generated|dffe3a[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H9_rtl_0|auto_generated|dffe3a[1]~0_combout\ = ( !\H9_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \H9_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1),
	combout => \H9_rtl_0|auto_generated|dffe3a[1]~0_combout\);

-- Location: FF_X72_Y29_N26
\H9_rtl_0|auto_generated|dffe3a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H9_rtl_0|auto_generated|dffe3a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H9_rtl_0|auto_generated|dffe3a\(1));

-- Location: MLABCELL_X72_Y29_N27
\H9_rtl_0|auto_generated|dffe3a[1]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \H9_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ = ( !\H9_rtl_0|auto_generated|dffe3a\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \H9_rtl_0|auto_generated|ALT_INV_dffe3a\(1),
	combout => \H9_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\);

-- Location: FF_X74_Y29_N31
\H8[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H7(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H8(7));

-- Location: FF_X74_Y29_N41
\H8[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H7(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H8(8));

-- Location: FF_X74_Y29_N44
\H8[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \H9_rtl_0|auto_generated|altsyncram4|ram_block5a13\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H8(9));

-- Location: FF_X72_Y34_N28
\D[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(39));

-- Location: FF_X72_Y34_N31
\D[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(40));

-- Location: FF_X72_Y34_N34
\D[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(41));

-- Location: FF_X72_Y34_N37
\D[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(42));

-- Location: M10K_X76_Y29_N0
\H9_rtl_0|auto_generated|altsyncram4|ram_block5a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altshift_taps:H9_rtl_0|shift_taps_uuu:auto_generated|altsyncram_lr91:altsyncram4|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 3,
	port_a_logical_ram_width => 17,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 3,
	port_b_logical_ram_width => 17,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbre => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	clk1 => \clk~inputCLKENA0_outclk\,
	ena0 => VCC,
	ena1 => VCC,
	portadatain => \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTADATAIN_bus\,
	portaaddr => \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTAADDR_bus\,
	portbaddr => \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \H9_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\);

-- Location: FF_X74_Y29_N28
\H8[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \H9_rtl_0|auto_generated|altsyncram4|ram_block5a16\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H8(12));

-- Location: FF_X74_Y29_N38
\H8[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \H9_rtl_0|auto_generated|altsyncram4|ram_block5a15\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H8(11));

-- Location: FF_X75_Y29_N2
\H8[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \H9_rtl_0|auto_generated|altsyncram4|ram_block5a14\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H8(10));

-- Location: LABCELL_X74_Y29_N6
\Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~9_sumout\ = SUM(( \H9_rtl_0|auto_generated|altsyncram4|ram_block5a13\ ) + ( E7(9) ) + ( \Add7~6\ ))
-- \Add7~10\ = CARRY(( \H9_rtl_0|auto_generated|altsyncram4|ram_block5a13\ ) + ( E7(9) ) + ( \Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_E7(9),
	datad => \H9_rtl_0|auto_generated|altsyncram4|ALT_INV_ram_block5a13\,
	cin => \Add7~6\,
	sumout => \Add7~9_sumout\,
	cout => \Add7~10\);

-- Location: FF_X74_Y29_N7
\E[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(9));

-- Location: LABCELL_X75_Y29_N27
\Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~25_sumout\ = SUM(( !E(9) $ (H8(6)) ) + ( \Add8~23\ ) + ( \Add8~22\ ))
-- \Add8~26\ = CARRY(( !E(9) $ (H8(6)) ) + ( \Add8~23\ ) + ( \Add8~22\ ))
-- \Add8~27\ = SHARE((E(9) & !H8(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_E(9),
	datad => ALT_INV_H8(6),
	cin => \Add8~22\,
	sharein => \Add8~23\,
	sumout => \Add8~25_sumout\,
	cout => \Add8~26\,
	shareout => \Add8~27\);

-- Location: FF_X75_Y29_N28
\G9[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G9(9));

-- Location: LABCELL_X77_Y29_N27
\Add9~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~37_sumout\ = SUM(( !G9(9) $ (\H_rtl_0|auto_generated|altsyncram5|ram_block6a8\) ) + ( \Add9~35\ ) + ( \Add9~34\ ))
-- \Add9~38\ = CARRY(( !G9(9) $ (\H_rtl_0|auto_generated|altsyncram5|ram_block6a8\) ) + ( \Add9~35\ ) + ( \Add9~34\ ))
-- \Add9~39\ = SHARE((!G9(9) & \H_rtl_0|auto_generated|altsyncram5|ram_block6a8\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_G9(9),
	datad => \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a8\,
	cin => \Add9~34\,
	sharein => \Add9~35\,
	sumout => \Add9~37_sumout\,
	cout => \Add9~38\,
	shareout => \Add9~39\);

-- Location: FF_X77_Y29_N28
\G[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G(9));

-- Location: LABCELL_X83_Y25_N21
\Amod33401[9]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Amod33401[9]~reg0feeder_combout\ = ( G(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_G(9),
	combout => \Amod33401[9]~reg0feeder_combout\);

-- Location: FF_X83_Y25_N22
\Amod33401[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Amod33401[9]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Amod33401[9]~reg0_q\);

-- Location: LABCELL_X73_Y29_N33
\Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~5_sumout\ = SUM(( H6(3) ) + ( H6(1) ) + ( \Add6~2\ ))
-- \Add6~6\ = CARRY(( H6(3) ) + ( H6(1) ) + ( \Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_H6(1),
	datad => ALT_INV_H6(3),
	cin => \Add6~2\,
	sumout => \Add6~5_sumout\,
	cout => \Add6~6\);

-- Location: FF_X73_Y29_N34
\E7[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E7(10));

-- Location: LABCELL_X74_Y29_N9
\Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~13_sumout\ = SUM(( E7(10) ) + ( \H9_rtl_0|auto_generated|altsyncram4|ram_block5a14\ ) + ( \Add7~10\ ))
-- \Add7~14\ = CARRY(( E7(10) ) + ( \H9_rtl_0|auto_generated|altsyncram4|ram_block5a14\ ) + ( \Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \H9_rtl_0|auto_generated|altsyncram4|ALT_INV_ram_block5a14\,
	datad => ALT_INV_E7(10),
	cin => \Add7~10\,
	sumout => \Add7~13_sumout\,
	cout => \Add7~14\);

-- Location: FF_X74_Y29_N10
\E[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(10));

-- Location: LABCELL_X75_Y29_N30
\Add8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~29_sumout\ = SUM(( !E(10) $ (H8(7)) ) + ( \Add8~27\ ) + ( \Add8~26\ ))
-- \Add8~30\ = CARRY(( !E(10) $ (H8(7)) ) + ( \Add8~27\ ) + ( \Add8~26\ ))
-- \Add8~31\ = SHARE((E(10) & !H8(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_E(10),
	datac => ALT_INV_H8(7),
	cin => \Add8~26\,
	sharein => \Add8~27\,
	sumout => \Add8~29_sumout\,
	cout => \Add8~30\,
	shareout => \Add8~31\);

-- Location: FF_X75_Y29_N31
\G9[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G9(10));

-- Location: LABCELL_X77_Y29_N30
\Add9~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~41_sumout\ = SUM(( !G9(10) $ (\H_rtl_0|auto_generated|altsyncram5|ram_block6a9\) ) + ( \Add9~39\ ) + ( \Add9~38\ ))
-- \Add9~42\ = CARRY(( !G9(10) $ (\H_rtl_0|auto_generated|altsyncram5|ram_block6a9\) ) + ( \Add9~39\ ) + ( \Add9~38\ ))
-- \Add9~43\ = SHARE((!G9(10) & \H_rtl_0|auto_generated|altsyncram5|ram_block6a9\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_G9(10),
	datac => \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a9\,
	cin => \Add9~38\,
	sharein => \Add9~39\,
	sumout => \Add9~41_sumout\,
	cout => \Add9~42\,
	shareout => \Add9~43\);

-- Location: FF_X77_Y29_N32
\G[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G(10));

-- Location: FF_X77_Y29_N49
\Amod33401[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => G(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Amod33401[10]~reg0_q\);

-- Location: FF_X74_Y29_N40
\H8[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H7(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H8[8]~DUPLICATE_q\);

-- Location: FF_X74_Y31_N4
\H6[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H6[4]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y29_N36
\Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~9_sumout\ = SUM(( \H6[4]~DUPLICATE_q\ ) + ( H6(2) ) + ( \Add6~6\ ))
-- \Add6~10\ = CARRY(( \H6[4]~DUPLICATE_q\ ) + ( H6(2) ) + ( \Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_H6(2),
	datad => \ALT_INV_H6[4]~DUPLICATE_q\,
	cin => \Add6~6\,
	sumout => \Add6~9_sumout\,
	cout => \Add6~10\);

-- Location: FF_X73_Y29_N37
\E7[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E7(11));

-- Location: LABCELL_X74_Y29_N12
\Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~17_sumout\ = SUM(( \H9_rtl_0|auto_generated|altsyncram4|ram_block5a15\ ) + ( E7(11) ) + ( \Add7~14\ ))
-- \Add7~18\ = CARRY(( \H9_rtl_0|auto_generated|altsyncram4|ram_block5a15\ ) + ( E7(11) ) + ( \Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_E7(11),
	datad => \H9_rtl_0|auto_generated|altsyncram4|ALT_INV_ram_block5a15\,
	cin => \Add7~14\,
	sumout => \Add7~17_sumout\,
	cout => \Add7~18\);

-- Location: FF_X74_Y29_N13
\E[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(11));

-- Location: LABCELL_X75_Y29_N33
\Add8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~33_sumout\ = SUM(( !\H8[8]~DUPLICATE_q\ $ (E(11)) ) + ( \Add8~31\ ) + ( \Add8~30\ ))
-- \Add8~34\ = CARRY(( !\H8[8]~DUPLICATE_q\ $ (E(11)) ) + ( \Add8~31\ ) + ( \Add8~30\ ))
-- \Add8~35\ = SHARE((!\H8[8]~DUPLICATE_q\ & E(11)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_H8[8]~DUPLICATE_q\,
	datad => ALT_INV_E(11),
	cin => \Add8~30\,
	sharein => \Add8~31\,
	sumout => \Add8~33_sumout\,
	cout => \Add8~34\,
	shareout => \Add8~35\);

-- Location: FF_X75_Y29_N35
\G9[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G9(11));

-- Location: LABCELL_X77_Y29_N33
\Add9~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~45_sumout\ = SUM(( !G9(11) $ (\H_rtl_0|auto_generated|altsyncram5|ram_block6a10\) ) + ( \Add9~43\ ) + ( \Add9~42\ ))
-- \Add9~46\ = CARRY(( !G9(11) $ (\H_rtl_0|auto_generated|altsyncram5|ram_block6a10\) ) + ( \Add9~43\ ) + ( \Add9~42\ ))
-- \Add9~47\ = SHARE((!G9(11) & \H_rtl_0|auto_generated|altsyncram5|ram_block6a10\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G9(11),
	datac => \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a10\,
	cin => \Add9~42\,
	sharein => \Add9~43\,
	sumout => \Add9~45_sumout\,
	cout => \Add9~46\,
	shareout => \Add9~47\);

-- Location: FF_X77_Y29_N35
\G[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G(11));

-- Location: LABCELL_X77_Y29_N57
\Amod33401[11]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Amod33401[11]~reg0feeder_combout\ = G(11)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G(11),
	combout => \Amod33401[11]~reg0feeder_combout\);

-- Location: FF_X77_Y29_N58
\Amod33401[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Amod33401[11]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Amod33401[11]~reg0_q\);

-- Location: LABCELL_X73_Y29_N39
\Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~13_sumout\ = SUM(( H6(5) ) + ( H6(3) ) + ( \Add6~10\ ))
-- \Add6~14\ = CARRY(( H6(5) ) + ( H6(3) ) + ( \Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_H6(3),
	datad => ALT_INV_H6(5),
	cin => \Add6~10\,
	sumout => \Add6~13_sumout\,
	cout => \Add6~14\);

-- Location: FF_X73_Y29_N40
\E7[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E7(12));

-- Location: LABCELL_X74_Y29_N15
\Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~21_sumout\ = SUM(( \H9_rtl_0|auto_generated|altsyncram4|ram_block5a16\ ) + ( E7(12) ) + ( \Add7~18\ ))
-- \Add7~22\ = CARRY(( \H9_rtl_0|auto_generated|altsyncram4|ram_block5a16\ ) + ( E7(12) ) + ( \Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_E7(12),
	datac => \H9_rtl_0|auto_generated|altsyncram4|ALT_INV_ram_block5a16\,
	cin => \Add7~18\,
	sumout => \Add7~21_sumout\,
	cout => \Add7~22\);

-- Location: FF_X74_Y29_N16
\E[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(12));

-- Location: FF_X74_Y29_N43
\H8[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \H9_rtl_0|auto_generated|altsyncram4|ram_block5a13\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H8[9]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y29_N36
\Add8~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~37_sumout\ = SUM(( !E(12) $ (\H8[9]~DUPLICATE_q\) ) + ( \Add8~35\ ) + ( \Add8~34\ ))
-- \Add8~38\ = CARRY(( !E(12) $ (\H8[9]~DUPLICATE_q\) ) + ( \Add8~35\ ) + ( \Add8~34\ ))
-- \Add8~39\ = SHARE((E(12) & !\H8[9]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_E(12),
	datad => \ALT_INV_H8[9]~DUPLICATE_q\,
	cin => \Add8~34\,
	sharein => \Add8~35\,
	sumout => \Add8~37_sumout\,
	cout => \Add8~38\,
	shareout => \Add8~39\);

-- Location: FF_X75_Y29_N38
\G9[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G9(12));

-- Location: LABCELL_X77_Y29_N36
\Add9~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~49_sumout\ = SUM(( !G9(12) $ (\H_rtl_0|auto_generated|altsyncram5|ram_block6a11\) ) + ( \Add9~47\ ) + ( \Add9~46\ ))
-- \Add9~50\ = CARRY(( !G9(12) $ (\H_rtl_0|auto_generated|altsyncram5|ram_block6a11\) ) + ( \Add9~47\ ) + ( \Add9~46\ ))
-- \Add9~51\ = SHARE((!G9(12) & \H_rtl_0|auto_generated|altsyncram5|ram_block6a11\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_G9(12),
	datad => \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a11\,
	cin => \Add9~46\,
	sharein => \Add9~47\,
	sumout => \Add9~49_sumout\,
	cout => \Add9~50\,
	shareout => \Add9~51\);

-- Location: FF_X77_Y29_N37
\G[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G(12));

-- Location: MLABCELL_X78_Y29_N51
\Amod33401[12]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Amod33401[12]~reg0feeder_combout\ = G(12)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G(12),
	combout => \Amod33401[12]~reg0feeder_combout\);

-- Location: FF_X78_Y29_N52
\Amod33401[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Amod33401[12]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Amod33401[12]~reg0_q\);

-- Location: LABCELL_X73_Y29_N42
\Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~17_sumout\ = SUM(( H6(6) ) + ( \H6[4]~DUPLICATE_q\ ) + ( \Add6~14\ ))
-- \Add6~18\ = CARRY(( H6(6) ) + ( \H6[4]~DUPLICATE_q\ ) + ( \Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_H6[4]~DUPLICATE_q\,
	datad => ALT_INV_H6(6),
	cin => \Add6~14\,
	sumout => \Add6~17_sumout\,
	cout => \Add6~18\);

-- Location: FF_X73_Y29_N43
\E7[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E7(13));

-- Location: FF_X72_Y34_N40
\D[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(43));

-- Location: FF_X74_Y33_N2
\H[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => D(43),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(13));

-- Location: FF_X74_Y33_N5
\H6[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H6(13));

-- Location: LABCELL_X74_Y29_N51
\H7[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H7[13]~feeder_combout\ = ( H6(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_H6(13),
	combout => \H7[13]~feeder_combout\);

-- Location: FF_X74_Y29_N53
\H7[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H7[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H7(13));

-- Location: LABCELL_X74_Y29_N18
\Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~25_sumout\ = SUM(( E7(13) ) + ( H7(13) ) + ( \Add7~22\ ))
-- \Add7~26\ = CARRY(( E7(13) ) + ( H7(13) ) + ( \Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_E7(13),
	datac => ALT_INV_H7(13),
	cin => \Add7~22\,
	sumout => \Add7~25_sumout\,
	cout => \Add7~26\);

-- Location: FF_X74_Y29_N19
\E[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(13));

-- Location: LABCELL_X75_Y29_N39
\Add8~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~41_sumout\ = SUM(( !H8(10) $ (E(13)) ) + ( \Add8~39\ ) + ( \Add8~38\ ))
-- \Add8~42\ = CARRY(( !H8(10) $ (E(13)) ) + ( \Add8~39\ ) + ( \Add8~38\ ))
-- \Add8~43\ = SHARE((!H8(10) & E(13)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_H8(10),
	datac => ALT_INV_E(13),
	cin => \Add8~38\,
	sharein => \Add8~39\,
	sumout => \Add8~41_sumout\,
	cout => \Add8~42\,
	shareout => \Add8~43\);

-- Location: FF_X75_Y29_N41
\G9[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G9(13));

-- Location: LABCELL_X77_Y29_N39
\Add9~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~53_sumout\ = SUM(( !\H_rtl_0|auto_generated|altsyncram5|ram_block6a12\ $ (G9(13)) ) + ( \Add9~51\ ) + ( \Add9~50\ ))
-- \Add9~54\ = CARRY(( !\H_rtl_0|auto_generated|altsyncram5|ram_block6a12\ $ (G9(13)) ) + ( \Add9~51\ ) + ( \Add9~50\ ))
-- \Add9~55\ = SHARE((\H_rtl_0|auto_generated|altsyncram5|ram_block6a12\ & !G9(13)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a12\,
	datad => ALT_INV_G9(13),
	cin => \Add9~50\,
	sharein => \Add9~51\,
	sumout => \Add9~53_sumout\,
	cout => \Add9~54\,
	shareout => \Add9~55\);

-- Location: FF_X77_Y29_N40
\G[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G(13));

-- Location: LABCELL_X77_Y27_N54
\Amod33401[13]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Amod33401[13]~reg0feeder_combout\ = ( G(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_G(13),
	combout => \Amod33401[13]~reg0feeder_combout\);

-- Location: FF_X77_Y27_N55
\Amod33401[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Amod33401[13]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Amod33401[13]~reg0_q\);

-- Location: FF_X74_Y29_N37
\H8[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \H9_rtl_0|auto_generated|altsyncram4|ram_block5a15\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H8[11]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y29_N45
\Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~21_sumout\ = SUM(( H6(5) ) + ( H6(7) ) + ( \Add6~18\ ))
-- \Add6~22\ = CARRY(( H6(5) ) + ( H6(7) ) + ( \Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_H6(7),
	datad => ALT_INV_H6(5),
	cin => \Add6~18\,
	sumout => \Add6~21_sumout\,
	cout => \Add6~22\);

-- Location: FF_X73_Y29_N46
\E7[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E7(14));

-- Location: FF_X72_Y34_N43
\D[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(44));

-- Location: MLABCELL_X78_Y29_N33
\H[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H[14]~feeder_combout\ = ( D(44) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_D(44),
	combout => \H[14]~feeder_combout\);

-- Location: FF_X78_Y29_N35
\H[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(14));

-- Location: MLABCELL_X78_Y29_N30
\H6[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H6[14]~feeder_combout\ = H(14)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_H(14),
	combout => \H6[14]~feeder_combout\);

-- Location: FF_X78_Y29_N32
\H6[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H6[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H6(14));

-- Location: MLABCELL_X78_Y29_N6
\H7[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H7[14]~feeder_combout\ = H6(14)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_H6(14),
	combout => \H7[14]~feeder_combout\);

-- Location: FF_X78_Y29_N7
\H7[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H7[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H7(14));

-- Location: LABCELL_X74_Y29_N21
\Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~29_sumout\ = SUM(( H7(14) ) + ( E7(14) ) + ( \Add7~26\ ))
-- \Add7~30\ = CARRY(( H7(14) ) + ( E7(14) ) + ( \Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_E7(14),
	datad => ALT_INV_H7(14),
	cin => \Add7~26\,
	sumout => \Add7~29_sumout\,
	cout => \Add7~30\);

-- Location: FF_X74_Y29_N22
\E[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(14));

-- Location: LABCELL_X75_Y29_N42
\Add8~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~45_sumout\ = SUM(( !\H8[11]~DUPLICATE_q\ $ (E(14)) ) + ( \Add8~43\ ) + ( \Add8~42\ ))
-- \Add8~46\ = CARRY(( !\H8[11]~DUPLICATE_q\ $ (E(14)) ) + ( \Add8~43\ ) + ( \Add8~42\ ))
-- \Add8~47\ = SHARE((!\H8[11]~DUPLICATE_q\ & E(14)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_H8[11]~DUPLICATE_q\,
	datad => ALT_INV_E(14),
	cin => \Add8~42\,
	sharein => \Add8~43\,
	sumout => \Add8~45_sumout\,
	cout => \Add8~46\,
	shareout => \Add8~47\);

-- Location: FF_X75_Y29_N43
\G9[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G9(14));

-- Location: LABCELL_X77_Y29_N42
\Add9~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~57_sumout\ = SUM(( !G9(14) $ (\H_rtl_0|auto_generated|altsyncram5|ram_block6a13\) ) + ( \Add9~55\ ) + ( \Add9~54\ ))
-- \Add9~58\ = CARRY(( !G9(14) $ (\H_rtl_0|auto_generated|altsyncram5|ram_block6a13\) ) + ( \Add9~55\ ) + ( \Add9~54\ ))
-- \Add9~59\ = SHARE((!G9(14) & \H_rtl_0|auto_generated|altsyncram5|ram_block6a13\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_G9(14),
	datad => \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a13\,
	cin => \Add9~54\,
	sharein => \Add9~55\,
	sumout => \Add9~57_sumout\,
	cout => \Add9~58\,
	shareout => \Add9~59\);

-- Location: FF_X77_Y29_N43
\G[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G(14));

-- Location: LABCELL_X83_Y25_N0
\Amod33401[14]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Amod33401[14]~reg0feeder_combout\ = ( G(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_G(14),
	combout => \Amod33401[14]~reg0feeder_combout\);

-- Location: FF_X83_Y25_N1
\Amod33401[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Amod33401[14]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Amod33401[14]~reg0_q\);

-- Location: LABCELL_X74_Y31_N42
\Add5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = ( !H(6) & ( H(0) ) ) # ( H(6) & ( !H(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_H(6),
	dataf => ALT_INV_H(0),
	combout => \Add5~0_combout\);

-- Location: FF_X74_Y31_N43
\E6[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E6(15));

-- Location: LABCELL_X73_Y29_N48
\Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~25_sumout\ = SUM(( E6(15) ) + ( H6(8) ) + ( \Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_H6(8),
	datac => ALT_INV_E6(15),
	cin => \Add6~22\,
	sumout => \Add6~25_sumout\);

-- Location: FF_X73_Y29_N49
\E7[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E7(15));

-- Location: FF_X72_Y34_N46
\D[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(45));

-- Location: FF_X74_Y33_N11
\H[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => D(45),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(15));

-- Location: FF_X74_Y33_N14
\H6[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H6(15));

-- Location: FF_X74_Y33_N17
\H7[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H6(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H7(15));

-- Location: LABCELL_X74_Y29_N24
\Add7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~33_sumout\ = SUM(( E7(15) ) + ( H7(15) ) + ( \Add7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_E7(15),
	datac => ALT_INV_H7(15),
	cin => \Add7~30\,
	sumout => \Add7~33_sumout\);

-- Location: FF_X74_Y29_N25
\E[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(15));

-- Location: LABCELL_X75_Y29_N45
\Add8~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~49_sumout\ = SUM(( !H8(12) $ (E(15)) ) + ( \Add8~47\ ) + ( \Add8~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_H8(12),
	datac => ALT_INV_E(15),
	cin => \Add8~46\,
	sharein => \Add8~47\,
	sumout => \Add8~49_sumout\);

-- Location: FF_X75_Y29_N47
\G9[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G9(15));

-- Location: LABCELL_X77_Y29_N45
\Add9~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~61_sumout\ = SUM(( !G9(15) $ (\H_rtl_0|auto_generated|altsyncram5|ram_block6a14\) ) + ( \Add9~59\ ) + ( \Add9~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_G9(15),
	datac => \H_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block6a14\,
	cin => \Add9~58\,
	sharein => \Add9~59\,
	sumout => \Add9~61_sumout\);

-- Location: FF_X77_Y29_N47
\G[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G(15));

-- Location: FF_X77_Y27_N4
\Amod33401[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => G(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Amod33401[15]~reg0_q\);

-- Location: LABCELL_X74_Y29_N54
\H8[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H8[13]~feeder_combout\ = H7(13)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_H7(13),
	combout => \H8[13]~feeder_combout\);

-- Location: FF_X74_Y29_N55
\H8[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H8[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H8(13));

-- Location: LABCELL_X80_Y25_N33
\H9[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H9[13]~feeder_combout\ = ( H8(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_H8(13),
	combout => \H9[13]~feeder_combout\);

-- Location: FF_X80_Y25_N35
\H9[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H9[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H9(13));

-- Location: LABCELL_X80_Y25_N27
\H10[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H10[13]~feeder_combout\ = H9(13)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_H9(13),
	combout => \H10[13]~feeder_combout\);

-- Location: FF_X80_Y25_N29
\H10[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H10[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H10(13));

-- Location: FF_X80_Y25_N25
\Afloor33401[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H10(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Afloor33401[13]~reg0_q\);

-- Location: FF_X83_Y25_N59
\H8[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H7(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H8(14));

-- Location: FF_X83_Y25_N17
\H9[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H8(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H9(14));

-- Location: LABCELL_X83_Y25_N54
\H10[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H10[14]~feeder_combout\ = H9(14)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_H9(14),
	combout => \H10[14]~feeder_combout\);

-- Location: FF_X83_Y25_N56
\H10[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H10[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H10(14));

-- Location: LABCELL_X83_Y21_N24
\Afloor33401[14]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Afloor33401[14]~reg0feeder_combout\ = ( H10(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_H10(14),
	combout => \Afloor33401[14]~reg0feeder_combout\);

-- Location: FF_X83_Y21_N25
\Afloor33401[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Afloor33401[14]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Afloor33401[14]~reg0_q\);

-- Location: FF_X80_Y25_N49
\H8[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H7(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H8(15));

-- Location: LABCELL_X80_Y1_N42
\H9[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \H9[15]~feeder_combout\ = ( H8(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_H8(15),
	combout => \H9[15]~feeder_combout\);

-- Location: FF_X80_Y1_N44
\H9[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \H9[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H9(15));

-- Location: FF_X80_Y1_N26
\H10[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H9(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H10(15));

-- Location: FF_X80_Y1_N29
\Afloor33401[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => H10(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Afloor33401[15]~reg0_q\);

-- Location: LABCELL_X33_Y2_N0
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


