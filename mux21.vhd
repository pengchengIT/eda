library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;



ENTITY mux21 IS                               --ʵ��2��  2ѡ1��·ѡ����
    PORT (in0,  in1, sel :  IN STD_LOGIC;     
           output : OUT STD_LOGIC); 
END ENTITY mux21;
