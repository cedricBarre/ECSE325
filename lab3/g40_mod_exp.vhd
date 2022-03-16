--
-- entity name: g40_mod_exp
-- implements s = c^d modulo 33401
--
-- Version 1.0
-- Authors: (list the group member names here)
-- Date: March ??, 2022 (enter the date of the latest edit to the file)
library ieee; -- allows use of the std_logic_vector type
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity g40_mod_exp is
port ( d : in std_logic_vector(13 downto 0);
c : in std_logic_vector(9 downto 0);
start : in std_logic;
clk : in std_logic;
reset : in std_logic;
s : out std_logic_vector(15 downto 0);
ready : out std_logic);
end g40_mod_exp;

architecture g40_mod_exp_arch of g40_mod_exp is
	signal k: unsigned(13 downto 0); -- Counter: k <= d always
	signal s_int: unsigned(15 downto 0); -- Running modulo: s_int < 33401 always
	signal cs: unsigned(25 downto 0); -- Product of c and s
	
	-- Instantiation
	SIGNAL A : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL Amod33401 : STD_LOGIC_VECTOR(15 DOWNTO 0);
	component g40_modulo33401
		PORT (
		A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		Afloor33401 : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
		Amod33401 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
	END COMPONENT;
	begin
	i1 : g40_modulo33401
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	Amod33401 => Amod33401
	);     
	
	modulo : process(reset, clk)
		begin
			if reset = '1' then
				k <= to_unsigned(0, 14);
				s_int <= to_unsigned(1, 16);
				s <= std_logic_vector(s_int); -- Initialize to 1
				ready <= '0';
			elsif start = '0' then
				ready <= '0';
			elsif rising_edge(clk) then
				if k >= unsigned(d) then
					ready <= '1';
				else
					ready <= '0';
					k <= (k+1);
					cs <= unsigned(c) * s_int;
					A <= ("000000" & std_logic_vector(cs));
					s_int <= unsigned(Amod33401);
					s <= std_logic_vector(s_int);
			end if; -- if k >= d
		end if; -- if reset = '1'
	end process;
end g40_mod_exp_arch;
				
			