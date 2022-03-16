--
-- entity name: g40_modulo33401
--
-- Version 1.0
-- Authors: Cedric Barre, Andy Li
-- Date: March 18, 2022
library ieee; -- allows use of the std_logic_vector type
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- needed if you are using unsigned numbers

entity g40_modulo33401 is
	port (A : 				in std_logic_vector(31 downto 0);
			Amod33401 : 	out std_logic_vector(15 downto 0);
			Afloor33401 : 	out std_logic_vector(16 downto 0));
end g40_modulo33401;

architecture g40_modulo33401_arch of g40_modulo33401 is
	signal B : unsigned(46 downto 0);
	signal C : unsigned(40 downto 0);
	signal D : signed(46 downto 0);
	signal E : unsigned(31 downto 0);
	signal F : unsigned(19 downto 0);
	signal G : signed(31 downto 0);
	signal H : signed(16 downto 0);
	begin
		B <= (unsigned(A) & "000000000000000") + 
				("00000000000" & unsigned(A) & "0000") +
				("00000000000000" & unsigned(A) & "0") +
				("000000000000000" & unsigned(A));
		C <= (unsigned(A) & "000000000") +
				("00" & unsigned(A) & "0000000");
		D <= signed(B) - signed("000000" + C);
		H <= signed(D(46) & D(46 downto 31));
		E <= (unsigned(H) & "000000000000000") + 
				("000000" & unsigned(H) & "000000000") +
				("00000000" & unsigned(H) & "0000000") +
				("000000000000000" & unsigned(H));
		F <= (unsigned(H) & "000");
		G <= (signed(A)) - (signed(E) - signed("000000000000" & F));
		Afloor33401 <= std_logic_vector(H);
		Amod33401 <= std_logic_vector(G(15 downto 0));
		

end g40_modulo33401_arch;