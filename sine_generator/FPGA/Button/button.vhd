library ieee;
use ieee.std_logic_1164.all;
entity button is
	port
	( 
		clk: in std_logic;
	--	rst: in std_logic;
	-- Button
		sw1: in std_logic;	
	-- Led 0
		led_0: out std_logic_vector (6 downto 0);	
		sang : out std_logic_vector(3 downto 0)
	);
end button;
architecture rtl of button is
	constant clk_50 : natural := 50000000; 
	signal led_vaule : natural range 0 to 10 := 0;	
	
	signal status : std_logic := '0';
	
	signal temp : natural range 0 to 1000 := 0;
	signal rst : std_logic := '1';
	signal cnt_rst: natural range 0 to 1000 := 0;
	signal dem : natural range 0 to 1000 := 0;
	begin
		process(clk)
			begin
			sang(0) <= sw1;
			if (rst = '0') then
				--led_0 <= "1111111"; -- led tat
				led_0 <= "1000000";
				sang(0) <= '0';
			elsif rising_edge(clk) and  sw1 = '0' then
				--if (sw1 = '0') then
					-- bat suon xuong
					--status <= not status;
					
					while (sw1 = '0') loop
					end loop;		
					--led_0 <= "1000000";
					temp <= temp + 1;
					led_vaule <= (temp rem 10); -- count % 10
					case led_vaule is
						when 0 => led_0 <= "1000000";
						when 1 => led_0 <= "1111001";
						when 2 => led_0 <= "0100100";
						when 3 => led_0 <= "0110000";
						when 4 => led_0 <= "0011001";
						when 5 => led_0 <= "0010010";
						when 6 => led_0 <= "0000010";
						when 7 => led_0 <= "1111000";
						when 8 => led_0 <= "0000000";
						when 9 => led_0 <= "0010000";
						when others => led_0 <= "1111111";
					end case;
--					if (led_vaule > 9) then
--						led_vaule <= 0;
--					end if;
				--end if;
			end if;
		end process;
			
			process(clk)
				begin
					if rising_edge(clk) then	
						if (cnt_rst = 1000 - 1) then
							rst <= '0';
							if dem = 100 then
								rst <= '1';
							else
								dem <= dem + 1;
							end if;
						else
							cnt_rst <= cnt_rst + 1;
						end if;
					end if;
			end process;
end rtl;