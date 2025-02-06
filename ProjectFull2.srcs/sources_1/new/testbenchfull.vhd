library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Project2_Testbench is
end Project2_Testbench;

architecture Behavioral of Project2_Testbench is
    -- Constants
    constant CLOCK_PERIOD : time := 10 ns;
    constant HALF_CLOCK_PERIOD : time := CLOCK_PERIOD / 2;
    
    -- Signals
    signal Clock : std_logic := '0';
    signal Number : std_logic_vector(3 downto 0) := "0000";
    signal Operation : std_logic_vector(1 downto 0) := "00";
    signal Clear : std_logic := '0';
    signal Equal : std_logic := '0';
    signal EnableOperation : std_logic := '0';
    signal Summ : std_logic_vector(7 downto 0);
    signal Cat : std_logic_vector(6 downto 0);
    signal An : std_logic_vector(7 downto 0);
    signal Diff : std_logic_vector(7 downto 0);
    
    -- Simulation stop signal
    signal stop_simulation : boolean := false;
    
begin
    -- Instantiate the DUT (Design Under Test)
    DUT: entity work.Project2
        port map (
            Number => Number,
            Clock => Clock,
            Operation => Operation,
            Clear => Clear,
            Equal => Equal,
            EnableOperation => EnableOperation,
            Summ => Summ,
            Cat => Cat,
            An => An,
            Diff => Diff
        );

    -- Clock process
    Clock_Process: process
    begin
        while not stop_simulation loop
            Clock <= '0';
            wait for HALF_CLOCK_PERIOD;
            Clock <= '1';
            wait for HALF_CLOCK_PERIOD;
        end loop;
        wait;
    end process Clock_Process;

    -- Stimulus process
    Stimulus_Process: process
    begin
        -- Wait for a brief moment to start
        wait for 10 ns;

        -- Test Case 1
        Number <= "0001"; -- Set input Number
        Operation <= "00"; -- Set operation
        Clear <= '0'; -- Clear flag
        Equal <= '0'; -- Equal flag
        EnableOperation <= '1'; -- Enable operation flag
        wait for CLOCK_PERIOD; -- Wait for one clock cycle
        -- Assert or check the output signals here if needed

        -- Test Case 2
        Number <= "0010"; -- Set input Number
        Operation <= "01"; -- Set operation
        Clear <= '0'; -- Clear flag
        Equal <= '0'; -- Equal flag
        EnableOperation <= '1'; -- Enable operation flag
        wait for CLOCK_PERIOD; -- Wait for one clock cycle
        -- Assert or check the output signals here if needed

        -- Test Case 3
        Number <= "0100"; -- Set input Number
        Operation <= "10"; -- Set operation
        Clear <= '0'; -- Clear flag
        Equal <= '0'; -- Equal flag
        EnableOperation <= '1'; -- Enable operation flag
        wait for CLOCK_PERIOD; -- Wait for one clock cycle
        -- Assert or check the output signals here if needed

        -- Add more test cases if needed

        -- Stop simulation
        stop_simulation <= true;
        wait;
    end process Stimulus_Process;

end Behavioral;


