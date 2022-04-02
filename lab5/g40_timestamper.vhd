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
use ieee.numeric_std.all;

entity g40_timestamper is
	port( clk : in std_logic; 
			rst : in std_logic;
			enable : in std_logic;
			message : in std_logic_vector(31 downto 0);
			timestamp : in std_logic_vector(21 downto 0);
			signature : out std_logic_vector(15 downto 0) );
end g40_timestamper;

architecture g40_timestamper_arch of g40_timestamper is
	signal hashed_msg : std_logic_vector(9 downto 0);
	signal hash10b_in : std_logic_vector(31 downto 0);
	signal msg_digest : std_logic_vector(9 downto 0);
	signal signature_internal : std_logic_vector(15 downto 0);
	signal d : std_logic_vector(13 downto 0):= std_logic_vector(to_unsigned(13205, 14));	
	signal start : std_logic;
	signal ready : std_logic;
	signal encryption_countdown : unsigned(1 downto 0);
	signal hash10a_enable : std_logic;
	signal hash10b_enable : std_logic;
	
	component g40_mod_exp 
	port ( d : 		in std_logic_vector(13 downto 0);
			 c : 		in std_logic_vector(9 downto 0);
			 start : in std_logic;
			 clk : 	in std_logic;
			 reset : in std_logic;
			 s : 		out std_logic_vector(15 downto 0);
			 ready : out std_logic);
	end component;
			 
	component g40_HASH10
			port( clk : 		in std_logic;
			rst : 		in std_logic; 
			enable : 	in std_logic;
			message : 	in std_logic_vector(31 downto 0);
			hash10 : 	out std_logic_vector(9 downto 0));
	end component;
	
	begin

	hash10a: g40_HASH10 port map(clk => clk,
											rst => rst,
											enable => hash10a_enable,
											message => message,
											hash10 => hashed_msg);

	hash10b: g40_HASH10 port map(clk => clk,
											rst => rst,
											enable => hash10b_enable,
											message => hash10b_in,
											hash10 => msg_digest);
										
	encryptor: g40_mod_exp port map(d => d,
												c => msg_digest,
												start => start,
												clk => clk,
												reset => rst,
												s => signature_internal,
												ready => ready);
	clk_process : process(clk, rst)
		begin
			if rst = '1' then
				start <= '0';
				encryption_countdown <= to_unsigned(3, 2);
				hash10b_enable <= '0';
				hash10a_enable <= '0';
			elsif rising_edge(clk) then
				if enable = '1' then
					if encryption_countdown = "00" then	
						start <= '1';
						hash10b_enable <= '0';
					elsif encryption_countdown = "01" then
						hash10b_enable <= '1';
						hash10a_enable <= '0';
					elsif encryption_countdown = "11" then
						hash10a_enable <= '1';
					end if;
					if encryption_countdown /= "00" then
						encryption_countdown <= encryption_countdown - 1;
					end if;
				else
					hash10a_enable <= '0';
					hash10b_enable <= '0';
				end if;
			end if;
	end process;
	
	
	signature_write : process(ready, signature_internal)
		begin
			if ready = '1' then
				signature <= signature_internal;
			end if;
	end process;

	hashed_msg_process : process( hashed_msg )
		begin
			hash10b_in <= hashed_msg & timestamp;
	
	end process;
	
	
end g40_timestamper_arch;