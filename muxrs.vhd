library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity muxrs is
	port(
		rs : in STD_LOGIC_VECTOR(7 downto 0);
		sel : in STD_LOGIC;
		rs_alu : out STD_LOGIC_VECTOR(7 downto 0);
		rs_mux_value : out STD_LOGIC_VECTOR(7 downto 0)
	);
end muxrs;
		

architecture Behavioral of muxrs is
	signal slct : STD_LOGIC;
begin
	process(rs)
	begin
		slct <= sel;
		if slct = '1' then
			rs_alu <= (others => 'Z');
			rs_mux_value <= rs;
		else
			rs_alu <=  rs;
			rs_mux_value <= (others => 'Z');
	
		end if;
	end process;
end Behavioral;