--priotity encoder

Library ieee;
use ieee.std_logic_1164.all;

entity pencoder is
	port(
	x: in std_logic_vector(7 downto 0);
	y: out std_logic_vector(2 downto 0)
);

end pencoder;
architecture proc of pencoder is
begin
	y <= "000" when x(0) = '1' else
	"001" when x(1) = '1' else
	"010" when x(2) = '1' else
	"011" when x(3) = '1' else
	"100" when x(4) = '1' else
	"101" when x(5) = '1' else
	"110" when x(6) = '1' else
	"111" when x(7) = '1' else
	"---";
end architecture proc;  
