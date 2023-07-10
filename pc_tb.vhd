
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity pc_tb is
END pc_tb;

architecture behavior of pc_tb is

COMPONENT pc
	port(
		clk : in STD_LOGIC;
		next_instr : out  STD_LOGIC_VECTOR (4 downto 0)
	);
END COMPONENT;

--Inputs
SIGNAL clk : STD_LOGIC := '0';

--Outputs
SIGNAL next_instr : STD_LOGIC_VECTOR(4 downto 0);

--clock period definition
CONSTANT clk_period : time := 10 ns;

BEGIN

--Instatntiate the unit under test (UUT)

uut : pc
	port map(
		clk => clk,
		next_instr => next_instr
	);

--Clock process definitions
clk_process : process
BEGIN
	clk <= '0';
	wait for clk_period/2;
	clk <= '1';
	wait for clk_period/2;
END PROCESS;

--stimulus process
stim_proc : process
BEGIN
	--hold reset state for 100ns
	wait for 100 ns;
	
	wait for clk_period*10;

	--insert stimulus

	wait;
end PROCESS;
END;