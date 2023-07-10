

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity alu_tb is
END alu_tb;

architecture behavior of alu_tb is

COMPONENT alu
	port(
        op : in STD_LOGIC_VECTOR (4 downto 0);
        rs : in STD_LOGIC_VECTOR (7 downto 0);
        rt : in STD_LOGIC_VECTOR (7 downto 0);
	rd : out STD_LOGIC_VECTOR(7 downto 0)
    );
END COMPONENT;

--Inputs
SIGNAL op :  STD_LOGIC_VECTOR (4 downto 0):="00000";
SIGNAL rs :  STD_LOGIC_VECTOR (7 downto 0):= "11110000";
SIGNAL rt :  STD_LOGIC_VECTOR (7 downto 0):="00001110";
--Outputs
SIGNAL rd :  STD_LOGIC_VECTOR(7 downto 0);




--clock period definition
CONSTANT clk_period : time := 10 ns;




BEGIN

--Instatntiate the unit under test (UUT)

uut : alu
	port map(
		op => op,
		rs => rs,
		rt => rt,
		rd => rd
	);



 -- Stimulus process
  stimulus_proc: process
  begin
     

    -- Increment instr_addr_tb by 1 in each iteration
    for i in 0 to 13 loop
	if (i = 0) then
		op <= op;
	else
      		op <= std_logic_vector(unsigned(op) + to_unsigned(1,5));
	end if;
	wait for 10 ns;
    end loop;

    wait;
  end process stimulus_proc;
END;
