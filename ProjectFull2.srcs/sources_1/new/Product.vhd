library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


use IEEE.STD_LOGIC_UNSIGNED.all;

entity Product is
    port (IN1, IN2 : in STD_LOGIC_VECTOR(7 downto 0);
    PRODUCT : out STD_LOGIC_VECTOR(14 downto 0));

end Product;

architecture Behavioral of Product is
begin

    process(IN1, IN2)
        variable SUM : STD_LOGIC_VECTOR(14 downto 0);
    begin
        SUM := "000000000000000";
        for I in 6 downto 0 loop
    if IN2(I) = '1' then
        SUM := SUM + ("0000000" & IN1(6 downto 0));
        end if;
    if I /= 0 then
    SUM := SUM(13 downto 0) & '0';
    end if;
    end loop ;
    
PRODUCT(13 downto 0) <= SUM(13 downto 0);
PRODUCT(14) <= IN1(7) XOR IN2(7);

end process;

end Behavioral;