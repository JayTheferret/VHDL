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

    with key select 
	    led_hex <= 	        "1000000" when "0000", -- 0
						    "1111001" when "0001", -- 1
						    "0100100" when "0010", -- 2
						    "0111111" when others; -- others

-- Bsp: LED_R0 mit Key0 schalten:
	--led_r(0) <= key(0);


	

end verhalten;
