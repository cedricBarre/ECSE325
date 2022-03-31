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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "03/31/2022 16:44:29"
                                                            
-- Vhdl Test Bench template for design  :  g40_timestamper
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;     
use ieee.numeric_std.all;                           

ENTITY g40_timestamper_vhd_tst IS
END g40_timestamper_vhd_tst;
ARCHITECTURE g40_timestamper_arch OF g40_timestamper_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL message : STD_LOGIC_VECTOR(31 DOWNTO 0) := std_logic_vector(to_unsigned(912837, 32));
SIGNAL rst : STD_LOGIC;
SIGNAL signature : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL timestamp : STD_LOGIC_VECTOR(21 DOWNTO 0) := std_logic_vector(to_unsigned(195015, 22));
COMPONENT g40_timestamper
	PORT (
	clk : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	message : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	rst : IN STD_LOGIC;
	signature : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	timestamp : IN STD_LOGIC_VECTOR(21 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g40_timestamper
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	enable => enable,
	message => message,
	rst => rst,
	signature => signature,
	timestamp => timestamp
	);                                          
always : PROCESS                                          

	BEGIN
		clk <= '0';
		enable <= '0';
		rst <= '1';
		wait for 20 ns;
		rst <= '0';
		enable <= '1';
		label1 : for k in 1 to 13215 loop
			clk <= '1';
			wait for 20 ns;
			clk <= '0';
			wait for 20 ns;
		end loop;
 
	WAIT;                                                        
END PROCESS always;                                          
END g40_timestamper_arch;
