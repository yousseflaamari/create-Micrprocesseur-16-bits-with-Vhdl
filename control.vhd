library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity control is
	port(
		instr : in STD_LOGIC_VECTOR(13 downto 0);
		rs_addr : out STD_LOGIC_VECTOR(2 downto 0);
		rt_addr : out STD_LOGIC_VECTOR(2 downto 0);
		rd_addr : out STD_LOGIC_VECTOR(2 downto 0);
		op : out STD_LOGIC_VECTOR (4 downto 0);
		sel : out STD_LOGIC_VECTOR(1 downto 0);
		valuee : out STD_LOGIC_VECTOR(7 downto 0)
	);
end control;

architecture Behavioral of control is
	signal operation : STD_LOGIC_VECTOR(4 downto 0);
	
begin
	
	process(instr)
	begin

	operation <= instr(13 downto 9);
	rs_addr <= instr(8 downto 6);
	rt_addr <= instr(5 downto 3);
	rd_addr <= instr(2 downto 0);
	op <= instr(13 downto 9);

	if(instr(13 downto 9) < "10000") then -- first bit is 1
		sel <="00";	
	elsif instr(13 downto 11) = "111" then
		sel <= "01";
	elsif instr(13 downto 11) = "100" then
		sel <= "10";
		valuee <= instr(10 downto 3);
	end if;

	end process;
end Behavioral;