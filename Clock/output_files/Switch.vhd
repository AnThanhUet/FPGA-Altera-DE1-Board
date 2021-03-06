library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
entity Switch is
	port
	(
		clk : in std_logic;
		rst : in std_logic;
		SW_sel : in std_logic_vector(1 downto 0);
		OK : in std_logic;
		sw_status : in std_logic;
		
		-- Output
		cnt_led_dv : out std_logic_vector(4 downto 0);
		cnt_led_ch : out std_logic_vector(4 downto 0)
	);
end Switch;
architecture rtl of Switch is
	signal cnt_hex0 : integer range 0 to 9;
	signal cnt_hex1 : integer range 0 to 9;

	begin
		cnt_led_dv <= std_logic_vector(to_unsigned(cnt_hex0, cnt_led_dv'length));
		cnt_led_ch <= std_logic_vector(to_unsigned(cnt_hex1, cnt_led_ch'length));
		process(clk,rst)
			begin
				if (rst = '0') then
--					cnt_led_dv <= (others => '0');
--					cnt_led_ch <= (others => '0');
				elsif rising_edge(clk) then
					if (OK = '0') then -- OK enable
						
					
					elsif SW_sel = "01" then
						if sw_status = '0' then 
							if (cnt_hex0 = 9) then
								cnt_hex0 <= 0;
								cnt_hex1 <= cnt_hex1 + 1;
							else
								cnt_hex0 <= cnt_hex0 + 1;
							end if;
							if (cnt_hex1 = 6) then
								cnt_hex1 <= 0;
						end if;
						
--					elsif SW_sel = "10" then
--						if sw_status = '0' then
--							cnt_hex2 <= cnt_hex2 + 1;
--							if (cnt_hex2 = 9) then
--								cnt_hex2 <= 0;
--								cnt_hex3 <= cnt_hex3 + 1;
--							end if;
--							if (cnt_hex3 = 6) then
--								cnt_hex3 <= 0;
--							end if;
--						end if;
--						
						
					end if;
				end if;
				end if;
				
				
		end process;
end rtl;
