
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

ENTITY H_SUBER IS
port(x,y:in STD_LOGIC;
diff,s_out:out STD_LOGIC);
end H_SUBER;

architecture fd1 of H_SUBER IS
begin 
 diff<=x xor y;
 s_out<=(not x)and y;
 end fd1;
 
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

ENTITY OR_2 IS
port(a,b:in STD_LOGIC;
c:out STD_LOGIC);
END OR_2;

architecture one of OR_2 is
begin 
c<=a or b;
end one;


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

ENTITY F_SUBER IS
port(x0,y0,sub_in:in STD_LOGIC;
diffr,sub_out:out STD_LOGIC);
end F_SUBER;

architecture fs1 of  F_SUBER is
component H_SUBER
port(x,y:in STD_LOGIC;
diff,s_out:out STD_LOGIC);
end component;
component OR_2
port(a,b:in STD_LOGIC;
c:out STD_LOGIC);
end component;
signal d,e,f:STD_LOGIC;
begin
U1:H_SUBER port map(x=>x0,y=>y0,s_out=>e);
U2:H_SUBER port map(x=>d,y=>sub_in,diff=>diffr,s_out=>f);
U3:OR_2 port map(a=>f,b=>e,c=>sub_out);
end fs1;