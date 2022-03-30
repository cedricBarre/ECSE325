-- this circuit implements a simple 10 bit Hash function
--
-- entity name: gNN_Hash10
--
-- Copyright (C) 2022 Designer Name
-- Version 1.0
-- Author(s): Cedric Barre, Andy Li, Yuankang Wei
-- Date: March, 2022
library ieee; -- allows use of the std_logic_vector type
use ieee.std_logic_1164.all;

entity g40_HASH10 is
	port( clk : 		in std_logic;
			rst : 		in std_logic; 
			enable : 	in std_logic;
			message : 	in std_logic_vector(31 downto 0);
			hash10 : 	out std_logic_vector(9 downto 0));
end g40_HASH10;

architecture g40_HASH10_arch of g40_HASH10 is

	begin

end g40_HASH10_arch;