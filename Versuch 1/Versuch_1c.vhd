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

with switch select
	hex_0 <=	"1000000" when "0000000000",
				"1111001" when "0000000001",
				"0100100" when "0000000010",
				"0111111" when others;

-- Bsp: LED_R0 mit Key0 schalten:



	

end verhalten;


