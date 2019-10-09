library ieee;
use ieee .STD_LOGIC_1164.ALL;
entity ex4 is
port(a1,a2,a3:in STD_LOGIC; 
           temp:buffer STD_LOGIC;
           s1,s0:in STD_LOGIC;
           output:out STD_LOGIC);
end ex4;


architecture behavior of ex4 is
           begin
        process(a2,a3,s0)
           begin
           case s0 is
           when '0'=>temp<=a2;
           when '1'=>temp<=a3;
           end case;
           end process;           
        process (a1,temp,s1)
           begin
           case s1 is
           when '0'=>output<=a1;
           when '1'=>output<=temp;
           end case;
           end process ;
end architecture behavior;