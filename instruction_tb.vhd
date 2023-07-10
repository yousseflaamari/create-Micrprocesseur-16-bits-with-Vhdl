

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity instruction_tb is
END instruction_tb;

architecture behavior of instruction_tb is

COMPONENT instruction
	port(
		instr_addr : in STD_LOGIC_VECTOR (4 downto 0);
		instruction : out STD_LOGIC_VECTOR(13 downto 0)
	);
END COMPONENT;

--Inputs
SIGNAL instr_addr_tb : STD_LOGIC_VECTOR(4 downto 0);

--Outputs
SIGNAL instruction_tb : STD_LOGIC_VECTOR(13 downto 0);

--clock period definition
CONSTANT clk_period : time := 10 ns;

BEGIN

--Instatntiate the unit under test (UUT)

uut : instruction
	port map(
		instr_addr => instr_addr_tb,
		instruction => instruction_tb
	);



 -- Stimulus process
  stimulus_proc: process
  begin
    instr_addr_tb <= "00000"; -- Initialize instr_addr_tb to 0

    -- Increment instr_addr_tb by 1 in each iteration
    for i in 0 to 19 loop
      wait for 10 ns;
      instr_addr_tb <= std_logic_vector(unsigned(instr_addr_tb) + 1);
    end loop;

    wait;
  end process stimulus_proc;
END;