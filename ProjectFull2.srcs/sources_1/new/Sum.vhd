library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Sum is
    Port (
        Number1, Number2 : in STD_LOGIC_VECTOR(7 downto 0);
        Cin : in STD_LOGIC;
        Sum : out STD_LOGIC_VECTOR(7 downto 0);
        Cout : out STD_LOGIC
    );
end Sum;

architecture Behavioral of Sum is
    signal Int : STD_LOGIC_VECTOR(7 downto 0);
    component FA_1 is
        Port (
            A, B, C : in STD_LOGIC;
            S, Cout : out STD_LOGIC
        );
    end component;
begin
    L1: for i in 0 to 7 generate
    begin
        L2: if i = 0 generate
        begin
            L3: FA_1 port map (
                A => Number1(i),
                B => Number2(i),
                C => Cin,
                S => Sum(i),
                Cout => Int(i)
            );
        end generate;
        L4: if i > 0 and i < 7 generate
        begin
            L5: FA_1 port map (
                A => Number1(i),
                B => Number2(i),
                C => Int(i-1),
                S => Sum(i),
                Cout => Int(i)
            );
        end generate;
        L6: if i = 7 generate
        begin
            L7: FA_1 port map (
                A => Number1(i),
                B => Number2(i),
                C => Int(i-1),
                S => Sum(i),
                Cout => Cout
            );
        end generate;
    end generate;
end Behavioral;
