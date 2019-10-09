library ieee;
use ieee .STD_LOGIC_1164.ALL;
use ieee .STD_LOGIC_UNSIGNED.ALL;

entity mux41a is
port(a,b,c,d:in STD_LOGIC;
     s0,s1: STD_LOGIC;
     y : out STD_LOGIC);
end mux41a;

architecture behavior of mux41a is
signal abc: STD_LOGIC_VECTOR(1 downto 0);
begin
abc<=s1&s0;

     process(abc)
     begin
          case abc is
            when "00"=>y<=a;
            when "01"=>y<=b;
            when "10"=>y<=c;
            when "11"=>y<=d;
            when others =>y<=null;
           end case;
     end process;
end architecture;