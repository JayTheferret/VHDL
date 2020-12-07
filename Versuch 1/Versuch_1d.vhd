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

with key(2 downto 0) select
led_r(0) <=    switch(0) when "000",
					switch(1) when "001",
					switch(2) when "010",
					switch(3) when "011",
					switch(4) when "100",
					switch(5) when "101",
					switch(6) when "110",
					switch(7) when "111";
				
-- Bsp: LED_R0 mit Key0 schalten:
	--led_r(0) <= key(0);


	

end verhalten;


