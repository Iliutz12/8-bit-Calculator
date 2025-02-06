library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;

entity SSD2 is
  Port (
    Number : in STD_LOGIC_VECTOR(3 downto 0);
    Operation : in STD_LOGIC_VECTOR(1 downto 0);
    EnableOperation : in STD_LOGIC;
    Equal : in STD_LOGIC;
    clock_100Mhz : in STD_LOGIC;  -- 100Mhz clock on Basys 3 FPGA board
    reset : in STD_LOGIC;  -- reset
    zecidemii_digit, thousend_digit, hundreds_digit, tens_digit, units_digit : in STD_LOGIC_VECTOR(3 downto 0);
    hundreds_digit2, tens_digit2, units_digit2 : in STD_LOGIC_VECTOR(3 downto 0);
    Anode_Activate : out STD_LOGIC_VECTOR (7 downto 0) := (others => '1');  -- 4 Anode signals
    LED_out : out STD_LOGIC_VECTOR (7 downto 0)
  );
end SSD2;

architecture Behavioral of SSD2 is
  signal LED_BCD: STD_LOGIC_VECTOR (3 downto 0);
  signal refresh_counter: STD_LOGIC_VECTOR (19 downto 0) := (others => '0');
  signal refresh_counter2: STD_LOGIC_VECTOR (19 downto 0) := (others => '0');
  signal refresh_counter3: STD_LOGIC_VECTOR (19 downto 0) := (others => '0');
  signal LED_activating_counter: std_logic_vector(3 downto 0);
begin
  -- Process for converting BCD to LED output
  process(LED_BCD)
  begin
    case LED_BCD is
      when "0000" => LED_out <= "11000000"; 
      when "0001" => LED_out <= "11111001";
      when "0010" => LED_out <= "10100100";
      when "0011" => LED_out <= "10110000";
      when "0100" => LED_out <= "10011001";
      when "0101" => LED_out <= "10010010";
      when "0110" => LED_out <= "10000010";
      when "0111" => LED_out <= "11111000";
      when "1000" => LED_out <= "10000000";
      when "1001" => LED_out <= "10010000"; 
      when "1100" => LED_out <= "11010101";
      when "1101" => LED_out <= "00000000";
      when "1110" => LED_out <= "00000011";
      when "1111" => LED_out <= "11111111";
      when others => LED_out <= (others => '0'); -- Default case
    end case;
  end process;

  -- Process for refreshing the display
    process (Clock_100mhz, Reset, EnableOperation, Equal)
    begin
        if (Reset = '1') then
            refresh_counter<= (others => '0');
        elsif (rising_edge(Clock_100mhz)) then
            if(EnableOperation = '0') then
               refresh_counter <= refresh_counter + 1;
             elsif (EnableOperation = '1' and Equal = '0') then
               refresh_counter2 <= refresh_counter2 + 1;
            end if;
           end if;
    end process;

process(Clock_100mhz, Equal)
    begin
        if(rising_edge(Clock_100mhz) and Equal = '1') then
            refresh_counter3 <= refresh_counter3 + 1;
        end if;
 end process;

process(EnableOperation, Led_activating_counter, refresh_counter, Clock_100mhz, Equal)
    begin
        if(EnableOperation = '0') then
            LED_activating_counter <= refresh_counter(3 downto 0);
        elsif(enableOperation = '1' and rising_edge(Clock_100mhz) and Equal = '0') then  
            LED_activating_counter <= refresh_counter2(3 downto 0);   
        end if;
        if (equal = '1') then
            LED_activating_counter <= refresh_counter3(3 downto 0);         
       end if;
end process;

  -- Process for activating each digit on the display
  process(LED_activating_counter, EnableOperation, Clock_100mhz, Equal)
  begin
    if(EnableOperation = '0') then
      case LED_activating_counter is
        when "0000" =>
        null;
        when "0001" =>
          Anode_Activate <= "11111110"; 
          LED_BCD <= Number;
        when "0010" => Anode_Activate <= "11111101";
          LED_BCD <= Number;
         when others =>
            null;
        end case;
    elsif(EnableOperation = '1' and Equal = '0') then
        case LED_activating_counter is
         when "0000" =>
         Anode_Activate <= "11111011"; 
          LED_BCD <= Number;
        when "0001" =>
           Anode_Activate <= "11110111"; 
          LED_BCD <= "11" & Operation;
        when "0010" =>
          Anode_Activate <= "11101111"; 
          LED_BCD <= Number;
        when "0011" =>
          Anode_Activate <= "11011111"; 
          LED_BCD <= Number;
        when "0100" =>
          Anode_Activate <= "10111111"; 
          LED_BCD <= Number;
          when others =>
            null;
        end case;
    else
    case LED_activating_counter is
         when "0000" =>
         Anode_Activate <= "10111111"; 
          LED_BCD <= Number;
        when "0001" =>
           Anode_Activate <= "11111111"; 
          LED_BCD <= "1111";
        when "0010" =>
          Anode_Activate <=  "11111110"; 
          LED_BCD <= zecidemii_digit;
        when "0011" =>
          Anode_Activate <=  "11111101"; 
          LED_BCD <= thousend_digit;
        when "0100" =>
          Anode_Activate <= "11111011"; 
          LED_BCD <= hundreds_digit;
        when "0101" =>
          Anode_Activate <= "11110111"; 
          LED_BCD <= tens_digit;
        when "0110" =>
          Anode_Activate <= "11101111"; 
          LED_BCD <= units_digit2;
        when "0111" =>
          Anode_Activate <= "11011111"; 
          LED_BCD <= hundreds_digit2;
         when "1000" =>
          Anode_Activate <= "10111111"; 
          LED_BCD <= tens_digit2;
         when "1001" =>
         Anode_Activate <= "01111111"; 
          LED_BCD <= units_digit2;
          when others =>
          null; 
      end case;
    end if;
  end process;

end Behavioral;