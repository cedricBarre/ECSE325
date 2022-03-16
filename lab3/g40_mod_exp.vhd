--
-- entity name: gNN_mod_exp(replace “NN” by your group’s number)
-- implements s = c^d modulo 33401
--
-- Version 1.0
-- Authors: Andy Li, Cedric Barre
-- Date: March ??, 2022
library ieee; -- allows use of the std_logic_vector type
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

component g40_modulo33401
	port(A : 				in std_logic_vector(31 downto 0);
		  Amod33401 : 		out std_logic_vector(15 downto 0);
		  Afloor33401 : 	out std_logic_vector(16 downto 0));
end g40_modulo33401;

entity g40_mod_exp is
	port (d : 		in std_logic_vector(13 downto 0);
			c : 		in std_logic_vector(9 downto 0);
			start : 	in std_logic;
			clk : 	in std_logic;
			reset : 	in std_logic;
			s : 		out std_logic_vector(15 downto 0);
			ready : 	out std_logic);
end g40_mod_exp;

architecture g40_mod_exp_arch of g40_mod_exp is
	signal bufferedOutput : std_logic_vector(15 downto 0);
	signal modOperand : std_logic_vector(31 downto 0);
	signal floorContainer : std_logic_vector(16 downto 0));
	modulator : g40_modulo33401 port map(A => modOperand,
													 Amod33401 => bufferedOutput,
													 Afloor33401 => floorContainer);
	begin

end g40_mod_exp_arch;