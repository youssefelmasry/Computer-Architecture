-- 4x1 multiplexer

Library IEEE;
USE IEEE.STD_LOGIC_1164.all;

entity mux4 is
port(d0, d1, d2, d3: in std_logic;
	s: in std_logic_vector(1 downto 0);
	y: out std_logic);	
end;
architecture four of mux4 is
begin
	with s select y<=
	d0 when "00",
	d1 when "01",
	d2 when "10",
	d3 when OTHERS;
end;
