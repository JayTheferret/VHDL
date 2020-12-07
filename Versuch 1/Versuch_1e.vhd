library ieee;
use ieee.std_logic_1164.all;
--------------------------------------------------------------------------------------------------
-- Sie arbeiten im Praktikum nur in diesem file.  
---------------------------------------------------------------------------------------------------

entity praktikum is 

	port
		(
			-- an den Ports NICHTS ÄNDERN!!!!!
			switch : in std_logic_vector(9 downto 0);	
			key : in std_logic_vector(3 downto 0);	

			led_g : out std_logic_vector(7 downto 0);
			led_r : out std_logic_vector(9 downto 0);
			
			hex_0	: out std_logic_vector(6 downto 0);
			hex_1	: out std_logic_vector(6 downto 0);
			hex_2	: out std_logic_vector(6 downto 0);
			hex_3	: out std_logic_vector(6 downto 0)
		
			
		);
end praktikum;

architecture verhalten of praktikum is



begin

-- hier kommt Ihre Logik hin:

led_g(0) <= switch(0) when key(2 downto 0) = "000" else '0';
led_g(1) <= switch(0) when key(2 downto 0) = "001" else '0';
led_g(2) <= switch(0) when key(2 downto 0) = "010" else '0';
led_g(3) <= switch(0) when key(2 downto 0) = "011" else '0';
led_g(4) <= switch(0) when key(2 downto 0) = "100" else '0';
led_g(5) <= switch(0) when key(2 downto 0) = "101" else '0';
led_g(6) <= switch(0) when key(2 downto 0) = "110" else '0';
led_g(7) <= switch(0) when key(2 downto 0) = "011" else '0';

-- Bsp: LED_R0 mit Key0 schalten:
	


	

end verhalten;


