library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

ENTITY EX5 IS 
port  (cl:STD_LOGIC;
clk:in STD_LOGIC;
output:buffer STD_LOGIC);
end EX5;

architecture behavior of EX5 IS
begin
process(clk)
begin
if(clk'event and clk='1')then
output<=NOT (cl or output);
end if;
end process;
end architecture behavior;
