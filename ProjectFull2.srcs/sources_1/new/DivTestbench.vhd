library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Divide_Testbench is
end Divide_Testbench;

architecture Behavioral of Divide_Testbench is

    constant CLK_PERIOD : time := 10 ns;
    constant HALF_CLK_PERIOD : time := CLK_PERIOD / 2;

    signal Clock : STD_LOGIC := '0';
    signal Number1 : STD_LOGIC_VECTOR(7 downto 0) := "11010010"; -- Dividend (210)
    signal Number2 : STD_LOGIC_VECTOR(7 downto 0) := "00101010"; -- Divisor (42)
    signal Quotient : STD_LOGIC_VECTOR(7 downto 0);
    signal Remainder : STD_LOGIC_VECTOR(7 downto 0);

begin

    UUT : entity work.Divide
        port map (
            Number1 => Number1,
            Number2 => Number2,
            Quotient => Quotient,
            Remainder => Remainder,
            Clock => Clock
        );

    clk_process: process
    begin
        while now < 1000 ns loop
            Clock <= '0';
            wait for HALF_CLK_PERIOD;
            Clock <= '1';
            wait for HALF_CLK_PERIOD;
        end loop;
        wait;
    end process clk_process;

    stim_process: process
    begin
        wait for 20 ns;

        -- Test case 1
        Number1 <= "11010010"; -- 210
        Number2 <= "00101010"; -- 42
        wait for CLK_PERIOD;
        assert Quotient = "010011" report "Quotient mismatch for test case 1" severity error;
        assert Remainder = "000010" report "Remainder mismatch for test case 1" severity error;

        -- Test case 2
        Number1 <= "11010000"; -- 208
        Number2 <= "00101010"; -- 42
        wait for CLK_PERIOD;
        assert Quotient = "010011" report "Quotient mismatch for test case 2" severity error;
        assert Remainder = "000000" report "Remainder mismatch for test case 2" severity error;

        wait;
    end process stim_process;

end Behavioral;
