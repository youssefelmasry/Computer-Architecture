--latch

Library IEEE;
USE IEEE.std_logic_1164.all;

entity latch is 
port(clk: in std_logic;
	D: in std_logic_vector(3 downto 0);
	Q: out std_logic_vector(3 downto 0));
end;
architecture synth of latch is
begin
	process(clk,d)
	begin
		if (clk = '1') Then
		Q <= D;
		end if;
	end process;
end;
