library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Registers is
    port(
        clk : in STD_LOGIC;
        rs_addr : in STD_LOGIC_VECTOR (2 downto 0);
        rt_addr : in STD_LOGIC_VECTOR (2 downto 0);
        rd_addr : in STD_LOGIC_VECTOR (2 downto 0);
        wr_data : in STD_LOGIC_VECTOR (7 downto 0);
	rs : out STD_LOGIC_VECTOR (7 downto 0);
        rt : out STD_LOGIC_VECTOR (7 downto 0)
    );
end Registers;

architecture Behavioral of Registers is
    type registerFile is array(0 to 7) of STD_LOGIC_VECTOR(7 downto 0);
    signal reg : registerFile := (
        "00000010", -- 0 inittial is 2 KEEP IN MIND
        "00000001", -- 1
        "00000010", -- 2
        "00000111", -- 3
        "11110000", -- 4
        "11101010", -- 5
        "00000010", -- 6
        "00000010"  -- 7
    );
begin
    process(clk)
    begin
        if falling_edge(clk) then
            
                reg(to_integer(unsigned(rd_addr))) <= wr_data;
	    
            
        end if;
    end process;

    rs <= reg(to_integer(unsigned(rs_addr)));
    rt <= reg(to_integer(unsigned(rt_addr)));
   
end Behavioral;

