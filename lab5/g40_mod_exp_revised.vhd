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

entity g40_mod_exp_revised is
	port ( d : 		in std_logic_vector(13 downto 0);
			 c : 		in std_logic_vector(9 downto 0);
			 start : in std_logic;
			 clk : 	in std_logic;
			 reset : in std_logic;
			 s : 		out std_logic_vector(15 downto 0);
			 ready : out std_logic);
end g40_mod_exp_revised;

architecture g40_mod_exp_revised_arch of g40_mod_exp_revised is
	-- State machine declarations
	type states is (reset_state, latency_killer_state, calculating_state, finished_state);
	signal state : states;
	
	-- Internal signals
	signal counter : integer range 0 to 16383; -- Counter in range of 14 bits, like d
	signal latency : integer range 0 to 16383; -- Counter in range of 14 bits, like d
	signal s_int : unsigned(15 downto 0); -- Running modulo: s_int < 33401 always
	
	-- Instantiation
	signal A : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal Amod33401 : STD_LOGIC_VECTOR(15 DOWNTO 0);
	signal Afloor33401 : STD_LOGIC_VECTOR(16 DOWNTO 0);
	
	-- Component declarations
	component g40_modulo33401_pipelined
		port ( A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
				 clk: IN STD_LOGIC;
				 Afloor33401 : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
				 Amod33401 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	end component;
	
	begin
		-- Component port mappings
		modulator : g40_modulo33401_pipelined port map(A => A,
															clk => clk,
															Afloor33401 => Afloor33401,
															Amod33401 => Amod33401);
		
		-- Processes								 
		state_update : process( clk, reset, start )
			begin
				if reset = '1' then
					state <= reset_state;
					counter <= 1;
					latency <= 0;
					A <= (0 => '1', others => '0');
				elsif start = '1' and state = reset_state then
					A <= ("0000000000000000000000" & std_logic_vector(unsigned(c)));
					state <= latency_killer_state;
				elsif rising_edge( clk ) then
					case state is
						when reset_state =>
							-- reset_state behavior: handled below
						when latency_killer_state =>
							if latency >= 11 then
								latency <= 0;
								state <= calculating_state;
							else
								latency <= latency + 1;
							end if;
						when calculating_state =>
							if counter < to_integer(unsigned(d)) then
								A <= ("000000" & std_logic_vector(unsigned(c) * s_int));
								counter <= ( counter + 1 );
								state <= latency_killer_state;
							else
								state <= finished_state;
								counter <= 1;
							end if; -- if counter < d
						when finished_state =>
							-- finished state behavior: handled below
					end case; --state
				end if;	
		end process; -- state_update
		
		output_logic : process( state )
			begin
				case state is
					when reset_state =>
						s <= std_logic_vector(to_unsigned(1, 16));
						ready <= '0';
					when latency_killer_state =>
						-- nothing to do
					when calculating_state =>
						-- calculating state behavior: nothing to do
					when finished_state =>
						s <= std_logic_vector(unsigned(Amod33401));
						ready <= '1';
				end case; --state
		end process; -- output_logic
		
		internal_s : process( Amod33401 ) 
			begin 
				s_int <= unsigned(Amod33401);
		end process;
end g40_mod_exp_revised_arch;