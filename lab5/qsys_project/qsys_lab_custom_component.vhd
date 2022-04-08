LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY qsys_lab_custom_component IS
	PORT (
		clock, resetn : IN STD_LOGIC;
		read, write, chipselect : IN STD_LOGIC;
		address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		writedata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		readdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END qsys_lab_custom_component;

ARCHITECTURE Structure OF qsys_lab_custom_component IS
	SIGNAL to_component : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL from_component : STD_LOGIC_VECTOR(15 DOWNTO 0);
	signal int_timestamp : std_logic_vector(21 downto 0) := std_logic_vector(to_unsigned(195015, 22)); -- Hardcode timestamp to make things easier
	signal rst, timestamper_enable : std_logic;
	signal data_received : std_logic;
	signal data_chunks : integer range 0 to 2;
	
	COMPONENT g40_timestamper
		PORT( clk : in std_logic; 
				rst : in std_logic;
				enable : in std_logic;
				message : in std_logic_vector(31 downto 0);
				timestamp : in std_logic_vector(21 downto 0);
				signature : out std_logic_vector(15 downto 0));
	END COMPONENT;
	
	BEGIN
	readdata <= std_logic_vector(to_unsigned(0, 32));
	component_inst: g40_timestamper PORT MAP (clk => clock, rst => rst, enable => timestamper_enable, message => to_component, timestamp => int_timestamp, signature => from_component );
	
--	clk_process : process (clock, resetn)
--		begin
--			if resetn = '0' then 
--				rst <= '1';
--			elsif rising_edge(clock) then 
--				if rst = '1' and resetn = '1' then
--					rst <= '0';
--					timestamper_enable <= '0';
--					data_chunks <= 0;
--				elsif chipselect = '1' then 
--					if read = '1' then 
--							if address = std_logic_vector(to_unsigned(0, 8)) then	
--								readdata <= "0000000000000000" & from_component;
--							else 
--								readdata <= (others => '0');
--							end if;
--					elsif write = '1' then
--						if address = std_logic_vector(to_unsigned(4, 8)) then	
--							data_chunks <= data_chunks + 1;
--							to_component <= writedata;
--							timestamper_enable <= '1';
--						elsif address = std_logic_vector(to_unsigned(8, 8)) and writedata(0) = '1' then
--							rst <= '1';
--						end if;
--					elsif write = '0' and data_chunks < 2 then
--						timestamper_enable <= '0'; -- Received data chunks one at a time and feed them one by one to the timestamper, disable timestamper in between
--					end if;
--				end if;
--			end if;
--			
--	end process;
	
	
END Structure;

