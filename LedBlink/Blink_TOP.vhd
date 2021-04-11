library ieee; 
use ieee.std_logic_1164.all;

entity Blink is
	port(
		clk : in std_logic;
		led : out std_logic 
	);
end Blink;

architecture rtl of Blink is

constant clk_50 : natural := 50000000; 

signal status : std_logic;
signal cnt : natural range 0 to clk_50;
signal rst : std_logic := '1';

signal cnt_rst : natural range 0 to 10000 := 0;
signal dem : natural range 0 to 10000 := 0;

BEGIN
	process (clk)
		begin	
		if rst = '0' then
			cnt <= 0;
			status <= '0';
		else
			if rising_edge(clk) then
				cnt <= cnt + 1;
				if (cnt = clk_50 - 1) then
					status <= not status;
					cnt <= 0;
				end if;
			end if;
		end if;	
	end process;
	
	led <= status;
	
	process (clk)
		begin
			if rising_edge(clk) then
				if cnt_rst = 10000 - 1 then
					rst <= '0'; -- 1 -> 0
					if dem = 100 then
						rst <= '1'; -- 0 -> 1
					else
						dem <= dem + 1;
					end if;
				else
					cnt_rst <= cnt_rst + 1;
				end if;
			end if;
	end process;
END rtl;