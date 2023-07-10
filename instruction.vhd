library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity instruction is
	port(
		instr_addr : in STD_LOGIC_VECTOR (4 downto 0);
		instruction : out STD_LOGIC_VECTOR(13 downto 0)
	);
end instruction;

architecture Behavioral of instruction is

type instruction_set is array(0 to 20) of STD_LOGIC_VECTOR(13 downto 0);
	constant instr : instruction_set :=(
		"00001000001000", -- plus
		"00011000000000", -- mult
		"00010000001000", -- moins
		"00000000000000", -- and
		"00100000010000", -- div
		"00101000010000", -- sll by 2
		"00110000010000", -- slr by 2
		"00111000011000", -- rol by 7
		"01000000011000", -- ror by 7
		"01001000011000", -- or of 4 and 7
		"01010000010000", -- xor of 7 and 4
		"01100000010000", -- nor ...101 and ...010 sur 8 bit
		"01101000100000", --nand entre F8 et F0 => 0F
		"01110000101000", -- xnor 0F et EA => 1A
		"11111000000000", -- reset
		"11111000000000",
		"11111011000011", -- value 3
		"11111110000011", -- value 2
		"11111000000000",
		"10000000111000", --NEW value 7 to the 000 address
		"11111000000000"  -- LOAD the new value just to make sure
	
	);

begin	
	process(instr_addr)
	begin
	if (instr_addr <= "11111") then
		instruction <= instr(to_integer(unsigned(instr_addr)));
	end if;
end process;
	
end Behavioral;
