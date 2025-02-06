----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2024 02:05:13 PM
-- Design Name: 
-- Module Name: FA_1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FA_1 is
  Port ( 
         A, B, C: IN STD_LOGIC;
          S, Cout: out STD_LOGIC
          );
end FA_1;

architecture Behavioral of FA_1 is

signal INTERN : STD_LOGIC;

begin

    INTERN <= A xor B;
    S <= INTERN xor C;
    Cout <= (A and B) or ( INTERN and C);


end Behavioral;
