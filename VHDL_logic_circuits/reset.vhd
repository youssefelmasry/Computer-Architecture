--reset

Library IEEE;
USE IEEE.std_logic_1164.all;

entity reset is 
port(clk: in std_logic;
	D: in std_logic_vector(3 downto 0);
	r: in std_logic;
	Q: out std_logic_vector(3 downto 0));
end;
architecture synth of reset is
begin
	process(clk,d)
	begin
		if (r = '1' and clk = '1') Then
			Q <= "0000";
		elsif (clk = '1') Then
			Q <= D;
		end if;
		
	end process;
end;
