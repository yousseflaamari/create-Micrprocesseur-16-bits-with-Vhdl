library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity muxvalue is
	port(
		register_value : in STD_LOGIC_VECTOR(7 downto 0);
		alu_value : in STD_LOGIC_VECTOR(7 downto 0);
		control_value : in STD_LOGIC_VECTOR(7 downto 0);
		sel : in STD_LOGIC_VECTOR(1 downto 0);
		clk : in STD_LOGIC;
		valuee : out STD_LOGIC_VECTOR(7 downto 0)
	);
end muxvalue;
		

architecture Behavioral of muxvalue is
	
begin
	process(clk,sel,register_value,alu_value,control_value)
	begin
		
		
		if sel = "01" then
			valuee <= register_value;
		elsif sel = "00" then
			valuee <= alu_value;
		elsif sel = "10" then
			valuee <= control_value;
		end if;
	end process;
end Behavioral;
	
