--
-- entity name: g40_modulo33401
--
-- Version 1.0
-- Authors: Cedric Barre, Andy Li
-- Date: March 18, 2022
library ieee; -- allows use of the std_logic_vector type
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- needed if you are using unsigned numbers

entity g40_modulo33401_pipelined is
	port (A : 				in std_logic_vector(31 downto 0);
			clk:				in std_logic;
			Amod33401 : 	out std_logic_vector(15 downto 0);
			Afloor33401 : 	out std_logic_vector(16 downto 0));
end g40_modulo33401_pipelined;

architecture g40_modulo33401_pipelined_arch of g40_modulo33401_pipelined is
	signal A1 : unsigned(31 downto 0);
	signal A2 : unsigned(31 downto 0);
	signal A3 : unsigned(31 downto 0);
	signal A4 : unsigned(31 downto 0);
	signal A5 : unsigned(31 downto 0);
	signal A6 : unsigned(31 downto 0);
	signal A7 : unsigned(31 downto 0);
	signal A8 : unsigned(31 downto 0);
	signal A9 : unsigned(31 downto 0);
	signal B : unsigned(46 downto 0);
	signal B1 : unsigned(46 downto 0);
	signal B2 : unsigned(46 downto 0);
	signal C : unsigned(41 downto 0);
	signal C1 : unsigned(41 downto 0);
	signal C2 : unsigned(41 downto 0);
	signal D : unsigned(46 downto 0);
	signal E : unsigned(31 downto 0);
	signal E6 : unsigned(31 downto 0);
	signal E7 : unsigned(31 downto 0);
	signal F : unsigned(19 downto 0);
	signal F6 : unsigned(19 downto 0);
	signal F7 : unsigned(19 downto 0);
	signal G : unsigned(31 downto 0);
	signal G9 : unsigned(31 downto 0);
	signal H : unsigned(16 downto 0);
	signal H6 : unsigned(16 downto 0);
	signal H7 : unsigned(16 downto 0);
	signal H8 : unsigned(16 downto 0);
	signal H9 : unsigned(16 downto 0);
	signal H10 : unsigned(16 downto 0);
	
	begin
		clock_process : process (clk)
			begin
				if rising_edge(clk) then
					
					-- stage 1
					A1 <= unsigned(A);
					B1 <= (unsigned(A) & "000000000000000") + 
							("00000000000" & unsigned(A) & "0000");
					C1 <= ("0" & unsigned(A) & "000000000") +
							("000" & unsigned(A) & "0000000");
					
					-- stage 2
					A2 <= A1;
					B2	<=	B1 + ("00000000000000" & A1 & "0"); 
					C2 <= C1;
					
					-- stage 3
					A3 <= A2;
					B <= B2 + ("000000000000000" & A2);
					C <= C2;
					
					-- stage 4
					A4 <= A3;
					D <= unsigned(B) - unsigned("00000" + C);
					
					-- stage 5
					A5 <= A4;
					H <= D(46 downto 30);
				
					-- stage 6 
					E6 <= (unsigned(H) & "000000000000000") + 
							("000000" & unsigned(H) & "000000000"); 
					F6 <= (unsigned(H) & "000");
					H6 <= unsigned(H);
					A6 <= A5;
					
					-- stage 7
					E7 <= E6 + ("00000000" & H6 & "0000000"); 
					F7 <= F6;
					H7 <= H6;
					A7 <= A6;
					
					
					--stage 8		
					E <= E7 + ("000000000000000" & H7);
					F <= F7;
					A8 <= A7;
					H8 <= H7;
					
					--stage 9
					G9 <= (unsigned(E) - unsigned("000000000000" & F));
					H9 <= H8;
					A9 <= A8;
					
					--stage 10
					G <= (A9 - G9);
					H10 <= H9;
					
					--stage 11
					Afloor33401 <= std_logic_vector(H10);
					Amod33401 <= std_logic_vector(G(15 downto 0));
				end if;
		end process;

end g40_modulo33401_pipelined_arch;