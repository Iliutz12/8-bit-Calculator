library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SSD is
    Port (
        Digit1, Digit2, Digit3, Digit4, Digit5, Digit6 : in  STD_LOGIC_VECTOR(3 downto 0);
        Operation : in STD_LOGIC_VECTOR(1 downto 0);
        Clear, Equal, EnableOperation, clock: in STD_LOGIC;
        Summ, Diff, R, Q : in STD_LOGIC_VECTOR(7 downto 0);
        Cout, BorrowOut : in STD_LOGIC;
        Prod : in STD_LOGIC_VECTOR(14 downto 0);
        cat1 : out STD_LOGIC_VECTOR(6 downto 0);
        an1  : out STD_LOGIC_VECTOR(7 downto 0)
    );
end SSD;

architecture Behavioral of SSD is
    signal tmp, tmp2 : unsigned(1 downto 0) := (others => '0');
    signal tmp3 : unsigned(3 downto 0);
    signal selected_digit : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal zecidemii_digit, thousend_digit, hundreds_digit, tens_digit, units_digit : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal hundreds_digit2, tens_digit2, units_digit2 : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
begin

process (Clock, Clear, EnableOperation)
    begin
        if (Clear = '1') then
            tmp <= (others => '0');
            tmp2 <= (others => '0');
        elsif (rising_edge(Clock)) then
            if (EnableOperation = '0' and tmp < 3) then
                tmp <= tmp + 1;
            elsif (EnableOperation = '1' and tmp2 < 3 and equal = '0') then
                tmp2 <= tmp2 + 1;
            end if;
        end if;
    end process;

process(Clock, Equal)
    begin
        if(rising_edge(Clock) and Equal = '1') then
            tmp3 <= tmp3 + 1;
        end if;
 end process;
 
process(selected_digit, Clock, EnableOperation)
    begin
    if(EnableOperation = '0' and tmp <= 3) then
        case tmp is
            when "00" => selected_digit <= Digit1;
            when "01" => selected_digit <= Digit2;
            when "10" => selected_digit <= Digit3;
            when "11" => selected_digit <= Digit3;
            when others => null;
        end case;
    end if;
end process;

process(selected_digit, tmp2,Clock, EnableOperation)
    begin
    if(EnableOperation = '1'and tmp2 <= 3) then
        case tmp2 is
            when "00" => selected_digit <= "1111";
            when "01" => selected_digit <= Digit4;
            when "10" => selected_digit <= Digit5;
            when "11" => selected_digit <= Digit6;
            when others => null;
        end case;
    end if;
end process;

process (Summ, Operation, Diff, Prod, Q, R)
    variable temp, temp2 : integer;
begin
    if Operation = "00" then
        temp := to_integer(unsigned(Summ));
        hundreds_digit <= std_logic_vector(to_unsigned(temp / 100, 4));
        temp := temp mod 100;
        tens_digit <= std_logic_vector(to_unsigned(temp / 10, 4));
        units_digit <= std_logic_vector(to_unsigned(temp mod 10, 4));
    elsif Operation = "01" then
        temp := to_integer(unsigned(Diff));
        hundreds_digit <= std_logic_vector(to_unsigned(temp / 100, 4));
        temp := temp mod 100;
        tens_digit <= std_logic_vector(to_unsigned(temp / 10, 4));
        units_digit <= std_logic_vector(to_unsigned(temp mod 10, 4));
    elsif Operation = "10" then
        temp := to_integer(unsigned(Prod));
        zecidemii_digit <= std_logic_vector(to_unsigned(temp / 10000, 4));
        temp := temp mod 10000;
        thousend_digit <= std_logic_vector(to_unsigned((temp / 1000) mod 10, 4));
        temp := temp mod 1000;
        hundreds_digit <= std_logic_vector(to_unsigned((temp / 100) mod 10, 4));
        temp := temp mod 100;
        tens_digit <= std_logic_vector(to_unsigned((temp / 10) mod 10, 4));
        units_digit <= std_logic_vector(to_unsigned(temp mod 10, 4));
    elsif Operation = "11" then
        temp := to_integer(unsigned(Q));
        temp2 := to_integer(unsigned(R));
        hundreds_digit <= std_logic_vector(to_unsigned(temp / 100, 4));
        temp := temp mod 100;
        tens_digit <= std_logic_vector(to_unsigned(temp / 10, 4));
        units_digit <= std_logic_vector(to_unsigned(temp mod 10, 4));
        hundreds_digit2 <= std_logic_vector(to_unsigned(temp2 / 100, 4));
        temp2 := temp2 mod 100;
        tens_digit2 <= std_logic_vector(to_unsigned(temp2 / 10, 4));
        units_digit2 <= std_logic_vector(to_unsigned(temp2 mod 10, 4));
    end if;
end process;

process (selected_digit, Operation)
begin
    case selected_digit is
        when "0000" => cat1 <= "1000000"; -- 0
        when "0001" => cat1 <= "1111001"; -- 1
        when "0010" => cat1 <= "0100100"; -- 2
        when "0011" => cat1 <= "0110000"; -- 3
        when "0100" => cat1 <= "0011001"; -- 4
        when "0101" => cat1 <= "0010010"; -- 5
        when "0110" => cat1 <= "0000010"; -- 6
        when "0111" => cat1 <= "1111000"; -- 7
        when "1000" => cat1 <= "0000000"; -- 8
        when "1001" => cat1 <= "0010000"; -- 9
        when "1111" =>
            case Operation is
                when "00" => cat1 <= "1111000"; -- +
                when "01" => cat1 <= "0111111"; -- -
                when "10" => cat1 <= "1000111"; -- *
                when "11" => cat1 <= "1000110"; -- /
                when others => cat1 <= "1111111";
            end case;
        when "1110" => cat1 <= "0110110"; -- =
        when others => cat1 <= "1111111";
    end case;
end process;

end Behavioral;
