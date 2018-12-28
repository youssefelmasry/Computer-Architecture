Library IEEE;
USE IEEE.STD_LOGIC_1164.all;

entity omega is
port(	d: in std_logic_vector(3 downto 0);

	s_in: in std_logic_vector(2 downto 0);
	s_out: in std_logic_vector(2 downto 0);

	y: out std_logic_vector(3 downto 0)
);
end;

architecture eight of omega is
component banyan
port(i0,i1: in std_logic_vector(3 downto 0);
	si,so: in std_logic;
	y0,y1: out std_logic_vector(3 downto 0)
);
end component;
signal d0,d1,d2,d3,d4,d5,d6,d7: std_logic_vector(3 downto 0);
signal y0,y1,y2,y3,y4,y5,y6,y7: std_logic_vector(3 downto 0);
signal out0,out1,out2,out3,out4,out5,out6,out7: std_logic_vector(3 downto 0);
signal out01,out11,out21,out31,out41,out51,out61,out71: std_logic_vector(3 downto 0);
begin
	d0<=d when s_in = "000" else "----";
	d1<=d when s_in = "001" else "----";
	d2<=d when s_in = "010" else "----";
	d3<=d when s_in = "011" else "----";
	d4<=d when s_in = "100" else "----";
	d5<=d when s_in = "101" else "----";
	d6<=d when s_in = "110" else "----";
	d7<=d when s_in = "111" else "----";

--stage1
switch1: banyan port map(d0,d4,s_in(2),s_out(2),out0,out1);
switch2: banyan port map(d1,d5,s_in(2),s_out(2),out2,out3);
switch3: banyan port map(d2,d6,s_in(2),s_out(2),out4,out5);
switch4: banyan port map(d3,d7,s_in(2),s_out(2),out6,out7);
--stage2
switch5: banyan port map(out0,out4,s_in(1),s_out(1),out01,out11);
switch6: banyan port map(out1,out5,s_in(1),s_out(1),out21,out31);
switch7: banyan port map(out2,out6,s_in(1),s_out(1),out41,out51);
switch8: banyan port map(out3,out7,s_in(1),s_out(1),out61,out71);
--stage3
switch9: banyan port map(out01,out41,s_in(0),s_out(0),y0,y1);
switch10: banyan port map(out11,out51,s_in(0),s_out(0),y2,y3);
switch11: banyan port map(out21,out61,s_in(0),s_out(0),y4,y5);
switch12: banyan port map(out31,out71,s_in(0),s_out(0),y6,y7);

	y<=y0 when s_out = "000" else 
		y1 when s_out = "001" else
		y2 when s_out = "010" else
		y3 when s_out = "011" else
		y4 when s_out = "100" else
		y5 when s_out = "101" else
		y6 when s_out = "110" else
		y7 when s_out = "111" else 
		"----";
end;