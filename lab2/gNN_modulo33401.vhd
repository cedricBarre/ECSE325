--
-- entity name: gNN_modulo33401 (replace “NN” by your group’s number)
--
-- Version 1.0
-- Authors: Cedric Barre
-- Date: March ??, 2022
library ieee; -- allows use of the std_logic_vector type
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- needed if you are using unsigned numbers

entity gNN_modulo33401 is
	port (A : 				in std_logic_vector(31 downto 0);
			Amod33401 : 	out std_logic_vector(15 downto 0);
			Afloor33401 : 	out std_logic_vector(16 downto 0));
end gNN_modulo33401;

architecture gNN_modulo33401_arch of gNN_modulo33401 is
	signal B : unsigned(46 downto 0);
	signal C : unsigned(41 downto 0);
	signal D : unsigned(46 downto 0);
	signal E : unsigned(31 downto 0);
	signal F : unsigned(19 downto 0);
	signal G : unsigned(31 downto 0);
	signal H : unsigned(16 downto 0);
	begin
		-- D = A*32147
		B <= (unsigned(A) & "000000000000000") + 
				("00000000000" & unsigned(A) & "0000") +
				("00000000000000" & unsigned(A) & "0") +
				("000000000000000" & unsigned(A));
		C <= ("0" & unsigned(A) & "000000000") +
				("000" & unsigned(A) & "0000000");
		D <= unsigned(B) - unsigned("00000" + C);
		
		-- H = D >> 30
		-- H = A/33401 (floor)
		H <= D(46 downto 30);
		
		-- G = A mod 33401
		E <= (unsigned(H) & "000000000000000") + 
				("000000" & unsigned(H) & "000000000") +
				("00000000" & unsigned(H) & "0000000") +
				("000000000000000" & unsigned(H));
		F <= (unsigned(H) & "000");
		G <= (unsigned(A)) - (unsigned(E) - unsigned("000000000000" & F));
		
		Afloor33401 <= std_logic_vector(H);
		Amod33401 <= std_logic_vector(G(15 downto 0));
		

end gNN_modulo33401_arch;