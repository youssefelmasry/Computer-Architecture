--flip flop

Library IEEE;
USE IEEE.std_logic_1164.all;

entity flip is 
port(clk: in std_logic;
	D: in std_logic_vector(3 downto 0);
	r: in std_logic;
	Q: out std_logic_vector(3 downto 0));
end;
architecture synth of flip is
begin
	process(clk)
	begin
		if (rising_edge(clk) and r = '1') Then
			Q <= "0000";
		elsif (rising_edge(clk)) Then
			Q <= D;
		end if;
		
	end process;
end;
