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
-- Generated on "03/10/2022 16:17:55"
                                                            
-- Vhdl Test Bench template for design  :  gNN_modulo33401
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY g40_modulo33401_pipelined_vhd_tst IS
END g40_modulo33401_pipelined_vhd_tst;
ARCHITECTURE g40_modulo33401_pipelined_arch OF g40_modulo33401_pipelined_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Afloor33401 : STD_LOGIC_VECTOR(16 DOWNTO 0);
SIGNAL Amod33401 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
COMPONENT g40_modulo33401_pipelined
	PORT (
	A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	clk : IN STD_LOGIC;
	Afloor33401 : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
	Amod33401 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g40_modulo33401_pipelined
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	clk => clk,
	Afloor33401 => Afloor33401,
	Amod33401 => Amod33401
	);                                          
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
	A <= x"FF000000";
	label1 : for k in 1 to 20 loop
		clk <= '1';
		wait for 100 ns;
		clk <= '0';
		wait for 100 ns;
	end loop label1;
	WAIT;                                                        
END PROCESS always;                                          
END g40_modulo33401_pipelined_arch;
