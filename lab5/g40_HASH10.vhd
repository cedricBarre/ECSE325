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
use ieee.numeric_std.all;

entity g40_HASH10 is
	port( clk : 		in std_logic;
			rst : 		in std_logic; 
			enable : 	in std_logic;
			message : 	in std_logic_vector(31 downto 0);
			hash10 : 	out std_logic_vector(9 downto 0));
end g40_HASH10;

architecture g40_HASH10_arch of g40_HASH10 is
	signal oldHash : unsigned(31 downto 0);
	signal tmpHash : unsigned(36 downto 0);
	
	begin
		clock_process : process( clk, rst )
			begin
				if rst = '1' then
					tmpHash <= to_unsigned(5381, 37);
				elsif rising_edge( clk ) then
					if enable = '1' then
						tmpHash <= (((unsigned(oldHash) & "00000") + unsigned(oldHash)) + unsigned(message));
					end if;
				end if;
		end process;
		
		output_process : process( tmpHash )
			begin 
				hash10 <= std_logic_vector(tmpHash(31 downto 22) xor tmpHash(9 downto 0));
				oldHash <= tmpHash(31 downto 0);
		end process;

end g40_HASH10_arch;