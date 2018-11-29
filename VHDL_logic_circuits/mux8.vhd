--8x1 multiplexer using the (1)2x1 and (2)4x1 multiplexers

Library IEEE;
use IEEE.std_logic_1164.all;

entity mux8 is
port(d: in std_logic_vector(7 downto 0);
	s: in std_logic_vector(2 downto 0);
	y: out std_logic
);
end;

architecture gaber of mux8 is
component mux2
port(d0,d1: in std_logic;
	s: in std_logic;
	y: out std_logic
);
end component;
component mux4
port(d0,d1,d2,d3: in std_logic;
	s: in std_logic_vector(1 downto 0);
	y: out std_logic
);
end component;
signal outl, outh: std_logic;
begin
lowmux: mux4 port map(d(0),d(1),d(2),d(3),s(2 downto 1),outl);
highmux: mux4 port map(d(4),d(5),d(6),d(7),s(2 downto 1),outh);
finalmux: mux2 port map(outl, outh, s(0),y);
end;
