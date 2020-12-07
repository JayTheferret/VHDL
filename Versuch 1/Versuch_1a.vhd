library ieee;
use ieee.std_logic_1164.all;

entity Versuch1a is
	port(
			x0,x1,x2: in std_logic;
			y:out std_logic);
			
end Versuch1a;
	
architecture verhalten of Versuch1a is
begin
	y<= not(x1) and (x2 or x0);
	
end verhalten;