Library IEEE;
USE IEEE.STD_LOGIC_1164.all;

entity banyan is
port(i0,i1: in std_logic_vector(3 downto 0);
	si,so: in std_logic;
	y0,y1: out std_logic_vector(3 downto 0));	
end;
architecture two of banyan is
begin
	y0<=i0 when si = '0' and so = '0' else
		i1 when si = '1' and so = '0'else
		"----";
	y1<=i0 when si = '0' and so = '1' else
		i1 when si = '1' and so = '1' else
		"----";
end;