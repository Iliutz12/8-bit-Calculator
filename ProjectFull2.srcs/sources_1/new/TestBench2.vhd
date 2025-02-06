library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Project2_TB is
end Project2_TB;

architecture tb_arch of Project2_TB is
    -- Constants for clock period and simulation time
    constant CLK_PERIOD : time := 10 ns;
    constant SIM_TIME : time := 1000 ns;
    
    -- Signals for test bench
    signal clk : std_logic := '0';
    signal clear, enable_operation, equal : std_logic := '0';
    signal number : std_logic_vector(3 downto 0) := (others => '0');
    signal operation : std_logic_vector(1 downto 0) := (others => '0');
    signal cat_out : std_logic_vector(7 downto 0);
    signal an_out : std_logic_vector(7 downto 0) := "11111111";
    signal summ, diff, r, q : std_logic_vector(7 downto 0) := (others => '0');
    signal prod : std_logic_vector(14 downto 0) := (others => '0');
    signal cout, borrow_out : std_logic := '0';
    
    -- Instantiate the unit under test (UUT)
    component Project2
        Port (
            Number : in STD_LOGIC_VECTOR(3 downto 0);
            Clock : in STD_LOGIC;
            Operation : in STD_LOGIC_VECTOR(1 downto 0);
            Clear : in STD_LOGIC;
            Equal : in STD_LOGIC;
            EnableOperation : in STD_LOGIC;
            Cat1 : out STD_LOGIC_Vector(7 downto 0);
            An : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

begin
    -- Instantiate the UUT
    uut: Project2
        port map (
            Number => number,
            Clock => clk,
            Operation => operation,
            Clear => clear,
            Equal => equal,
            EnableOperation => enable_operation,
            Cat1 => cat_out,
            An => an_out
        );
stimulus_process: process
begin
    -- Initialize inputs
    Clk <= '0';
    enable_operation <= '0';
    operation <= "11";
    equal <= '0';

    number <= "0010"; 
    wait for 10 ns;
    Clk <= '1';
     wait for 10 ns;
    clk <= '0';
    wait for 10 ns;
    number <= "0001";
    wait for 10 ns;
    enable_operation <= '1';
    wait for 10 ns;
    Clk <= '1';
    wait for 10 ns;   
    Clk <= '0';    
    wait for 10 ns;
    
    number <= "0011";
    wait for 10 ns;
    Equal <= '1';
    wait for 10 ns;
    Clk <= '1';
    wait for 10 ns;
    Clk <= '0';
    wait for 10 ns;
    Clk <= '1';
    wait for 10 ns;
    Clk <= '0';
    wait for 10 ns;
    Clk <= '1';
    wait for 10 ns;
    Clk <= '0';
    wait for 10 ns;
    Clk <= '1';
    wait for 10 ns;
    Clk <= '0';
    wait for 10 ns;
    
    Clk <= '1';
    wait for 10 ns;
    Clk <= '0';
    wait for 10 ns;
    
    Clk <= '1';
    wait for 10 ns;
    Clk <= '0';
    wait for 10 ns;
    
    Clk <= '1';
    wait for 10 ns;
    Clk <= '0';
    wait for 10 ns;

    -- End simulation
    wait;
end process;


end tb_arch;
