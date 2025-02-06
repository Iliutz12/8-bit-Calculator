library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Subtractor_tb is
end Subtractor_tb;

architecture Behavioral of Subtractor_tb is

  component Subtract is
    Port (
        Number1, Number2 : in STD_LOGIC_VECTOR(7 downto 0);
        Diff : out STD_LOGIC_VECTOR(7 downto 0);
        BorrowOut : out STD_LOGIC
    );
  end component;

  signal A, B : std_logic_vector(7 downto 0);
  signal Diff : std_logic_vector(7 downto 0);
  signal BorrowOut : std_logic;

begin
  UUT: Subtract port map ( Number1 => A, Number2 => B, Diff => Diff, BorrowOut => BorrowOut );

  process
  begin
    -- Test case 1
    A <= "00001010"; B <= "00000101"; -- 10 - 5
    wait for 10 ns;

    -- Test case 2
    A <= "00000010"; B <= "00000100"; -- 2 - 4
    wait for 10 ns;

    -- Test case 3
    A <= "11111111"; B <= "00000001"; -- 255 - 1
    wait for 10 ns;

    -- Test case 4
    A <= "00000001"; B <= "00000010"; -- 1 - 2
    wait for 10 ns;

    wait;
  end process;

end Behavioral;
