-- this circuit implements the complete timestamper function
--
-- entity name: gNN_timestamper
--
-- Copyright (C) 2022 Designer Name
-- Version 1.0
-- Author(s): Designer(s) Name; Designer(s) Email
-- Date: March, 2022
library ieee; -- allows use of the std_logic_vector type
use ieee.std_logic_1164.all;

entity g40_timestamper is
	port( clk : in std_logic; 
			rst : in std_logic;
			enable : in std_logic;
			message : in std_logic_vector(31 downto 0);
			timestamp : in std_logic_vector(21 downto 0);
			signature : out std_logic_vector(15 downto 0) );
end g40_timestamper;

architecture g40_timestamper_arch of g40_timestamper is

	begin

end g40_timestamper_arch;