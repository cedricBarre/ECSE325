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
	signal int_timestamp : std_logic_vector(21 downto 0) := std_logic_vector(to_unsigned(195015, 22));
	
	COMPONENT g40_timestamper
		PORT( clk : in std_logic; 
				rst : in std_logic;
				enable : in std_logic;
				message : in std_logic_vector(31 downto 0);
				timestamp : in std_logic_vector(21 downto 0);
				signature : out std_logic_vector(15 downto 0));
	END COMPONENT;
	
	BEGIN
	to_component <= writedata;
	component_inst: g40_timestamper PORT MAP (clk => clock, rst => resetn, enable => chipselect, message => to_component, timestamp => int_timestamp, signature => from_component );
	readdata <= "0000000000000000" & from_component;
END Structure;

