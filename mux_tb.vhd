library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mux_tb is
END mux_tb;

architecture behavior of mux_tb is
    COMPONENT mux_value
        port(
            register_value : in STD_LOGIC_VECTOR(7 downto 0);
            alu_value : in STD_LOGIC_VECTOR(7 downto 0);
            control_value : in STD_LOGIC_VECTOR(7 downto 0);
            sel : in STD_LOGIC_VECTOR(1 downto 0);
            clk : in STD_LOGIC;
            valuee : out STD_LOGIC_VECTOR(7 downto 0)
        );
    END COMPONENT;

    -- Inputs
    SIGNAL register_value :  STD_LOGIC_VECTOR(7 downto 0) := "11111111";
    SIGNAL alu_value :  STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    SIGNAL control_value :  STD_LOGIC_VECTOR(7 downto 0) := "00000001";
    SIGNAL sel :  STD_LOGIC_VECTOR(1 downto 0);
    SIGNAL clk :  STD_LOGIC := '0';

    -- Outputs
    SIGNAL valuee : STD_LOGIC_VECTOR(7 downto 0) := "00000000";

    -- Clock period definition
    CONSTANT clk_period : time := 10 ns;

BEGIN

    -- Instantiate the unit under test (UUT)
    uut : mux_value
    port map(
        register_value => register_value,
        alu_value => alu_value,
        control_value => control_value,
        sel => sel,
        valuee => valuee,
        clk => clk
    );

    -- Clock generation process
    clk_process: process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process clk_process;

    -- Stimulus process
    stimulus_proc: process
    begin
        sel <= "00";
        wait for clk_period * 10;
        
        sel <= "01";
        wait for clk_period;
        
        sel <= "10";
        wait for clk_period;
        
        wait;
    end process stimulus_proc;

END;

