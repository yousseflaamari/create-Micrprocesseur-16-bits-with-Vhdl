library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity processorvhdl is
	port(
		clk : in STD_LOGIC;
		op : out STD_LOGIC_VECTOR(4 downto 0);
		valuee : out STD_LOGIC_VECTOR(7 downto 0);
		rs : out STD_LOGIC_VECTOR(7 downto 0);
		rt : out STD_LOGIC_VECTOR( 7 downto 0)
		
		
	);
end processorvhdl;

architecture Behavioral of processorvhdl is

COMPONENT ALU
	port(
		op : in STD_LOGIC_VECTOR(4 downto 0);
		rs : in STD_LOGIC_VECTOR(7 downto 0);
		rt : in STD_LOGIC_VECTOR(7 downto 0);
		rd : out STD_LOGIC_VECTOR(7 downto 0)
	);
END COMPONENT;




COMPONENT instruction
	port(
		instr_addr : in STD_LOGIC_VECTOR(4 downto 0);
		instruction : out STD_LOGIC_VECTOR(13 downto 0)
	);
END COMPONENT;







COMPONENT pc
	port(
		clk : in STD_LOGIC;
		next_instr : out  STD_LOGIC_VECTOR (4 downto 0)
	);
END COMPONENT;


COMPONENT registers
	port(
        clk : in STD_LOGIC;
        rs_addr : in STD_LOGIC_VECTOR (2 downto 0);
        rt_addr : in STD_LOGIC_VECTOR (2 downto 0);
        rd_addr : in STD_LOGIC_VECTOR (2 downto 0);
        wr_data : in STD_LOGIC_VECTOR (7 downto 0);
	
        rs : out STD_LOGIC_VECTOR (7 downto 0);
        rt : out STD_LOGIC_VECTOR (7 downto 0)
    );
END COMPONENT;


COMPONENT muxvalue
	port(
		register_value : in STD_LOGIC_VECTOR(7 downto 0);
		alu_value : in STD_LOGIC_VECTOR(7 downto 0);
		control_value : in STD_LOGIC_VECTOR(7 downto 0);
		sel : in STD_LOGIC_VECTOR(1 downto 0);
		clk : in STD_LOGIC;
		valuee : out STD_LOGIC_VECTOR(7 downto 0)
	);
END COMPONENT;


COMPONENT control
	port(
		instr : in STD_LOGIC_VECTOR(13 downto 0);
		rs_addr : out STD_LOGIC_VECTOR(2 downto 0);
		rt_addr : out STD_LOGIC_VECTOR(2 downto 0);
		rd_addr : out STD_LOGIC_VECTOR(2 downto 0);
		op : out STD_LOGIC_VECTOR (4 downto 0);
		sel : out STD_LOGIC_VECTOR(1 downto 0);
		valuee : out STD_LOGIC_VECTOR(7 downto 0)
	);
END COMPONENT;



SIGNAL WIRE_0 : STD_LOGIC_VECTOR(4 downto 0);
SIGNAL WIRE_1 : STD_LOGIC_VECTOR(13 downto 0);
SIGNAL WIRE_2 : STD_LOGIC_VECTOR(2 downto 0);
SIGNAL WIRE_3 : STD_LOGIC_VECTOR(2 downto 0);
SIGNAL WIRE_4 : STD_LOGIC_VECTOR(2 downto 0);
SIGNAL WIRE_5 : STD_LOGIC_VECTOR(4 downto 0);
SIGNAL WIRE_6 : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL WIRE_7 : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL WIRE_8 : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL WIRE_9 : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL WIRE_10 : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL WIRE_11 : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL WIRE_12 : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL WIRE_13 : STD_LOGIC_VECTOR(7 downto 0);


BEGIN

valuee <= WIRE_11;
rt <= WIRE_7;
rs <= WIRE_6;
op <= WIRE_5; 


arithmetic_logical_unit : ALU
	port map(
		op => WIRE_5,
		rs => WIRE_6,
		rt => WIRE_7,
		rd => WIRE_10
	);





instruction_memory : instruction
	port map(
		instr_addr => WIRE_0,
		instruction => WIRE_1
	);





program_counter : pc
	port map(
		clk => clk,
		next_instr => WIRE_0
	);

registers_file : Registers
	port map(
		clk => clk,
		rt_addr => WIRE_4,
		rs_addr => WIRE_3,
		rd_addr => WIRE_2,
		wr_data => WIRE_11,
		
		rs => WIRE_6,
		rt => WIRE_7
	);

mux : muxvalue
	port map(
		register_value => WIRE_6,
		alu_value => WIRE_10,
		control_value => WIRE_13,
		sel => WIRE_12,
		clk => clk,
		valuee => WIRE_11
		
	);

cont : control
	port map(
		instr => WIRE_1,
		rs_addr => WIRE_3,
		rt_addr => WIRE_4,
		rd_addr => WIRE_2,
		op => WIRE_5,
		sel => WIRE_12,
		valuee => WIRE_13
	);
end Behavioral;
