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
-- Generated on "03/24/2022 16:02:01"
                                                            
-- Vhdl Test Bench template for design  :  g40_mod_exp_revised
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all; 
use ieee.numeric_std.all;                                   

ENTITY g40_mod_exp_revised_vhd_tst IS
END g40_mod_exp_revised_vhd_tst;
ARCHITECTURE g40_mod_exp_revised_arch OF g40_mod_exp_revised_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL c : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL d : STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL ready : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL start : STD_LOGIC;
signal number : unsigned(9 downto 0);
COMPONENT g40_mod_exp_revised
	PORT (
	c : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	clk : IN STD_LOGIC;
	d : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
	ready : BUFFER STD_LOGIC;
	reset : IN STD_LOGIC;
	s : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : g40_mod_exp_revised
	PORT MAP (
-- list connections between master ports and signals
	c => c,
	clk => clk,
	d => d,
	ready => ready,
	reset => reset,
	s => s,
	start => start
	);
always : PROCESS    
BEGIN
   number <= (others => '1');
	clk <= '0';
	start <= '0';
	d <= std_logic_vector(to_unsigned(5,14));
		  label1 : for k in 1 to 11 loop
				reset <= '1';
				wait for 100 ns;
				reset <= '0';
				c <= std_logic_vector(number);
				start <= '1';
				wait for 100 ns;
				start <= '0';
				while ready = '0' loop
					clk <= '1';
					wait for 3 ns;
					clk <= '0';
					wait for 3 ns;
				end loop;
				
				number <= "0" & number(9 downto 1);
				
		  end loop label1;
WAIT;                                                        
END PROCESS always;                                                       
END g40_mod_exp_revised_arch;
