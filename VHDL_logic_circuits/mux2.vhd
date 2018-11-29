-- 2x1 multiplexer

Library IEEE;
USE IEEE.STD_LOGIC_1164.all;

entity mux2 is
port(d0,d1: in std_logic;
	s: in std_logic;
	y: out std_logic);	
end;
architecture two of mux2 is
begin
	with s select y<=
	d0 when '0',
	d1 when OTHERS;
end;
