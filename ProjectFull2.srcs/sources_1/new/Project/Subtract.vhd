library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Subtract is
    Port (
        Number1, Number2 : in STD_LOGIC_VECTOR(7 downto 0);
        Diff : inout STD_LOGIC_VECTOR(7 downto 0);
        BorrowOut : inout STD_LOGIC
    );
end Subtract;

architecture Behavioral of Subtract is
    signal Int : STD_LOGIC_VECTOR(8 downto 0);
    signal Number2_comp : STD_LOGIC_VECTOR(7 downto 0);
    component FA_1 is
        Port (
            A, B, C : in STD_LOGIC;
            S, Cout : out STD_LOGIC
        );
    end component;
begin
    Number2_comp <= not Number2;
    L1: for i in 0 to 7 generate
    begin
        L2: if i = 0 generate
        begin
            L3: FA_1 port map (
                A => Number1(i),
                B => Number2_comp(i),
                C => '1',
                S => Diff(i),
                Cout => Int(i)
            );
        end generate;

        L4: if i > 0 and i < 7 generate
        begin
            L5: FA_1 port map (
                A => Number1(i),
                B => Number2_comp(i),
                C => Int(i-1),
                S => Diff(i),
                Cout => Int(i)
            ); 
        end generate;

        L6: if i = 7 generate
        begin
            L7: FA_1 port map (
                A => Number1(i),
                B => Number2_comp(i),
                C => Int(i-1),
                S => Diff(i),
                Cout => BorrowOut
            );
        end generate;
    end generate;

end Behavioral;
