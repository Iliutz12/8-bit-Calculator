library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Project2 is
    Port (
        Number : in STD_LOGIC_VECTOR(3 downto 0);
        Clock : in STD_LOGIC;
        Operation : in STD_LOGIC_VECTOR(1 downto 0);
        Clear : in STD_LOGIC;
        Equal : in STD_LOGIC;
        EnableOperation : in STD_LOGIC;
        Start : in STD_LOGIC;
        Cat1 : out STD_LOGIC_Vector(6 downto 0);
        An : out STD_LOGIC_VECTOR(7 downto 0)
    );
end Project2;

architecture Behavioral of Project2 is
    signal Summ, Diff: STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal Digit: STD_LOGIC_VECTOR(3 downto 0);
    signal Q : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal R : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal Prod :  STD_LOGIC_VECTOR(14 downto 0) := (others => '0');
    signal Cin :  STD_LOGIC := '0';
    signal BorrowOut :  STD_LOGIC := '0';
    signal Cout : STD_LOGIC := '0';
    signal count_digit1 : unsigned(1 downto 0) := (others => '0');
    signal count_digit2 : unsigned(1 downto 0) :=(others => '0');
    signal count_digit3 : unsigned(3 downto 0) :=(others => '0');
    signal num1_dec, num2_dec : natural := 0;
    signal Number1, Number2 : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal Register1, Register2, Register3, Register4, Register5, Register6 : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal zecidemii_digit, thousend_digit, hundreds_digit, tens_digit, units_digit : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal hundreds_digit2, tens_digit2, units_digit2 : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');

    component Product is
     port (IN1, IN2 : in STD_LOGIC_VECTOR(7 downto 0);
    PRODUCT : out STD_LOGIC_VECTOR(14 downto 0));
    end component;

    component Sum is
        Port (
            Number1, Number2 : in STD_LOGIC_VECTOR(7 downto 0);
            Cin : in STD_LOGIC;
            Sum : out STD_LOGIC_VECTOR(7 downto 0);
            Cout : out STD_LOGIC
        );
    end component;
    component Subtract is
    Port (
        Number1, Number2 : in STD_LOGIC_VECTOR(7 downto 0);
        Diff : inout STD_LOGIC_VECTOR(7 downto 0);
        BorrowOut : inout STD_LOGIC
    );
    end component;
    component Divide is
	port(a,b:in std_logic_vector(0 to 7);
	p:out std_logic_vector(0 to 7);
	rest1: out std_logic_vector(0 to 7));
end component ;
    
begin
    process (Clock, Clear, EnableOperation)
    begin
        if (Clear = '1') then
            count_digit1<= (others => '0');
            count_digit2 <= (others => '0');
        elsif (rising_edge(Clock)) then
            if (EnableOperation = '0' and count_digit1 < 3) then
               count_digit1 <= count_digit1 + 1;
            elsif (EnableOperation = '1' and count_digit2 < 3 and equal = '0') then
                count_digit2 <= count_digit2 + 1;
            end if;
        end if;
    end process;

process(Clock, Equal)
    begin
        if(rising_edge(Clock) and Equal = '1') then
            count_digit3 <= count_digit3 + 1;
        end if;
 end process;
 
process(count_digit1, Number, Clock, EnableOperation)
    begin
    if(EnableOperation = '0' and Number <= "1001" and count_digit1 <= 3) then
        case count_digit1 is
            when "00" => Register1 <= Number;
            when "01" => Register2 <= Number;
            when "10" => Register3 <= Number;
            when "11" => Register3 <= Number;
            when others => null;
        end case;
    end if;
end process;

process(count_digit2, Number, Clock, EnableOperation)
    begin
    if(EnableOperation = '1' and Number <= "1001" and count_digit2 <= 3) then
        case count_digit2 is
            when "00" =>
            when "01" => Register4 <= Number;
            when "10" => Register5 <= Number;
            when "11" => Register6 <= Number;
            when others => null;
        end case;
    end if;
end process;

process(count_digit1, count_digit2, count_digit3, EnableOperation, Start, Equal,Clock)
    begin
       if(EnableOperation = '0' and Start = '0') then
        case count_digit1 is
            when "00" =>
                An <= "11111110";
            when "01" =>
                An <= "11111101";
            when "10" => 
                An <= "11111011";
            when others => null;
        end case;
        elsif (EnableOperation ='1' and Start ='0' and rising_edge(Clock)) then
            case count_digit2 is
            when "00" =>
                An <= "11110111";
            when "01" =>
                An <= "11101111";
            when "10" => 
                An <= "11011111";
            when "11" =>
                An <= "10111111";
            when others =>
                An <= "11111111";
            end case;
          end if;           
            if(Start = '1') then
         case count_digit3 is
            when "0000" =>
                An <="11111111";
            when "0001" =>
                 An <="11111110";
            when "0010" =>
                 An <="11111101";
            when "0011" => 
                 An <="11111011";
            when "0100" =>
                 An <="11110111";
           when "0101" =>
                 An <="11101111";
           when "0110" =>
                 An <="11011111";
          when "0111" =>
                 An <="10111111";
          when "1000" =>
                 An <="01111111";
          when others =>
                An <= "01111111";
       end case;
      end if;
      end process;      

    process (Clock, num1_dec)
    begin
    if(rising_edge(Clock)) then
        case count_digit1 is
            when "00" => num1_dec <= to_integer(unsigned(Register1));
            when "01" => num1_dec <= to_integer(unsigned(Register1)) * 10 + to_integer(unsigned(Register2));
            when "10" => num1_dec <= to_integer(unsigned(Register1)) * 100 + to_integer(unsigned(Register2)) * 10 + to_integer(unsigned(Register3));
            when "11" => num1_dec <= to_integer(unsigned(Register1)) * 100 + to_integer(unsigned(Register2)) * 10 + to_integer(unsigned(Register3));
            when others => null;
        end case;
     end if;
        if(num1_dec > 256) then
            num1_dec <= 255;
         end if;
        Number1 <= std_logic_vector(to_unsigned(num1_dec, 8));
    end process;

process (Clock, num2_dec)
begin
    if rising_edge(Clock) then
        case count_digit2 is
            when "01" => num2_dec <= to_integer(unsigned(Register4));
            when "10" => num2_dec <= to_integer(unsigned(Register4)) * 10 + to_integer(unsigned(Register5));
            when "11" => num2_dec <= to_integer(unsigned(Register4)) * 100 + to_integer(unsigned(Register5)) * 10 + to_integer(unsigned(Register6));
            when others => null;
        end case;
        end if;
        if num2_dec > 256 then
            num2_dec <= 255;
        end if;      
        Number2 <= std_logic_vector(to_unsigned(num2_dec, 8));
end process;

process (Number, Operation, Start, Digit)
begin
    if Start = '0' then
    case Number is
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
        when others => cat1 <= "1111111";
    end case;
    else
    case Digit is
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
        when "1110" =>
        case Operation is
                when "00" => cat1 <= "1111000"; -- +
                when "01" => cat1 <= "0111111"; -- -
                when "10" => cat1 <= "1000111"; -- *
                when "11" => cat1 <= "1000110"; -- /
                when others => cat1 <= "1111111";
            end case;
        when others => cat1 <= "1111111";
    end case;
    
  end if;
end process;


process (Summ, Operation, Diff, Prod, Q, R, Equal)
    variable temp, temp2 : integer;
begin
    if(Equal = '1') then
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
  end if;
end process;

process(Clock, count_digit3, Digit, Equal,Start)
    begin
    if(count_digit2 = "00" and EnableOperation = '1') then
        Digit <= "1110";
     end if;
        if(Start = '1' and rising_edge(Clock)) then
        case count_digit3 is
            when "0001" =>
                Digit <= "1111";
            when "0010" =>
                Digit <= zecidemii_digit;
            when "0011" => 
                Digit <= thousend_digit;
            when "0100" =>
                Digit <= hundreds_digit;
           when "0101" =>
                Digit <= tens_digit;
           when "0110" =>
                Digit <= units_digit;
          when "0111" =>
                Digit <= hundreds_digit2;
          when "1000" =>
                Digit <= tens_digit2;
          when "1001" =>
                Digit <= units_digit2;
          when others =>
                Digit <= "1111";
       end case;
end if;
 end process;


    L1: Sum port map (
        Number1 => Number1,
        Number2 => Number2,
        Cin => Cin,
        Sum => Summ,
        Cout => Cout
    );
    L2: Subtract port map (
        Number1 => Number1,
        Number2 => Number2,
        Diff => Diff,
        BorrowOut => BorrowOut
        );
    L3: Product port map (
    In1 => Number1,
    In2 => Number2,
    Product => Prod
    );
    
    L4: Divide port map(
        a => Number1,
        b => Number2,
	    p => Q,
	   rest1 => R
        );
       
end Behavioral;
