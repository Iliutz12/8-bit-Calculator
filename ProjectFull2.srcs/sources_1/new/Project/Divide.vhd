library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Divide is
    port (
        a, b: in std_logic_vector(0 to 7);
        p: out std_logic_vector(0 to 7);
        rest1: out std_logic_vector(0 to 7)
    );
end Divide;

architecture dividera of Divide is
    signal p0, p1, p2, p3, p4, p5, p6, p7, cat, rest, c: std_logic_vector(0 to 15);
begin
    p7(8 to 15) <= b;
    p7(0 to 7) <= "00000000";
    p6 <= p7 + p7;
    p5 <= p6 + p6;
    p4 <= p5 + p5;
    p3 <= p4 + p4;
    p2 <= p3 + p3;
    p1 <= p2 + p2;
    p0 <= p1 + p1;

    process (p0, p1, p2, p3, p4, p5, p6, p7)
        variable r, c, p: std_logic_vector(0 to 15);
    begin
        r(8 to 15) := a;
        r(0 to 7) := "00000000";
        c := "0000000000000000";
        
        if (p0 > "00000000" and r >= p0) then
            r := r - p0;
            c := c + "10000000"; -- '128' in binary
        end if;
        
        if (p1 > "00000000" and r >= p1) then
            r := r - p1;
            c := c + "01000000"; -- '64' in binary
        end if;
        
        if (p2 > "00000000" and r >= p2) then
            r := r - p2;
            c := c + "00100000"; -- '32' in binary
        end if;
        
        if (p3 > "00000000" and r >= p3) then
            r := r - p3;
            c := c + "00010000"; -- '16' in binary
        end if;
        
        if (p4 > "00000000" and r >= p4) then
            r := r - p4;
            c := c + "00001000"; -- '8' in binary
        end if;
        
        if (p5 > "00000000" and r >= p5) then
            r := r - p5;
            c := c + "00000100"; -- '4' in binary
        end if;
        
        if (p6 > "00000000" and r >= p6) then
            r := r - p6;
            c := c + "00000010"; -- '2' in binary
        end if;
        
        if (p7 > "00000000" and r >= p7) then
            r := r - p7;
            c := c + "00000001"; -- '1' in binary
        end if;

        cat <= c;
        rest <= r;
    end process;

    rest1 <= rest(8 to 15);
    p <= cat(8 TO 15);
end dividera;
