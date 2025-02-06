library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Divide is
  Port (
        Clock : in STD_LOGIC;
        Reset : in STD_LOGIC;
        X, Y : in STD_LOGIC_VECTOR(7 downto 0);
        R : out STD_LOGIC_VECTOR(7  downto 0);
        Q : out STD_LOGIC_VECTOR(7 downto 0);
        Start : in STD_LOGIC
   );
end Divide;

architecture Behavioral of Divide is

signal A, B, C : STD_LOGIC_VECTOR(7 downto 0);
signal F, I : integer range 0 to 7;
signal temp : STD_LOGIC_VECTOR(15 downto 0);
signal A7, I7 : STD_LOGIC;
type state_type is (IDLE, INIT, SHIFT, inside, Shift2, SUBTRACT, StateB, Subtract2,beggining, Outside, endInside, StateA, Add, B0, Add2, Finish);
signal state : state_type;

begin

process(Clock, Reset)
    begin
        if Reset = '1' then
            state <= IDLE;
            Q <= (others => '0');
            R <= (others => '0');
         elsif rising_edge(Clock) then
           case state is 
                when IDLE =>
                    if Start = '1' then
                        state <= INIT;
                     end if;
                when INIT =>
                    A <= (others => '0');
                    B <= X;
                    C <= Y;
                    F <= 0;
                    I <= 0;
                    state <= Shift;
                when Shift =>
                    temp <= A & B;
                    temp <= temp (14 downto 0) & temp (15); 
                    A <= temp (15 downto 8);
                    B <= temp (7 downto 0);
                    state <= Subtract;
                when Subtract =>
                    A <= A - C;
                    state <= inside;
                when inside =>
                    state <= beggining;
                when beggining =>
                        if(A(7) = '0') then
                            state <= StateB;
                         else
                            state <= StateA;
                          end if;
                when StateB =>
                      B(0) <= '1';
                      state <= Shift2;
                when Shift2 =>
                      temp <= A & B;
                      temp <= temp (14 downto 0) & temp (15); 
                      A <= temp (15 downto 8);
                      B <= temp (7 downto 0);
                      B(0) <= '0';
                      state <= Subtract2;
               when Subtract2 =>
                      A <= A - C;
                      I <= I + 1;
                      if(I = 7) then
                        state <= beggining;
                      else
                        state <= endInside;
                      end if;    
                when StateA =>
                     temp <= A & B;
                      temp <= temp (14 downto 0) & temp (15); 
                      A <= temp (15 downto 8);
                      B <= temp (7 downto 0);
                      B(0) <= '0';
                      state <= Add;
                 when Add =>
                      A <= A + C;
                      I <= I + 1;
                      if(I = 7) then
                        state <= beggining;
                      else
                        state <= endInside; 
                      end if;   
                when endInside =>
                       if( A(7) = '0') then
                            state <= B0;
                       else
                            state <= Add2;
                       end if;
                 when B0 =>
                        B(0) <= '1';
                        state <= Finish;
                 when Add2 =>
                        A <= A + C;
                        state <= Finish;       
                 when Finish =>
                    Q <= B;
                    R <= A;
                    state <= IDLE;
                  when others =>
                    state <= IDLE;
         end case;
       end if;
  end process;           
end Behavioral;
