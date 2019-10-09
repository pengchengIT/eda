library ieee;
use ieee .STD_LOGIC_1164.ALL;
use ieee .STD_LOGIC_UNSIGNED.ALL;

entity cnt_16 is
port(rst:in STD_LOGIC;
     clk:in STD_LOGIC;
     up:in STD_LOGIC;
    load:STD_LOGIC;
    data:in STD_LOGIC_vector(15 downto 0);
    count : out STD_LOGIC_vector(15 downto 0));
end cnt_16;
        
architecture arc of cnt_16 is
      signal cnt :STD_LOGIC_vector(15 downto 0);
      begin                                              
      process (clk,rst)
         begin
         if rst='0'then 
         cnt<=(others=>'0');
         elsif clk'event and clk='1' then 
         if load='1' then cnt<=data;
         elsif up='1' then cnt<=cnt+1;
         else cnt<=cnt-1;
         end if ;
         end if ;
      end process;
    count<=cnt;
end arc;