library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
entity Clock is
	port
	(
		clk : in std_logic;
		
		-- Led 7 Seg
		led_hex0 : out std_logic_vector (6 downto 0);
		led_hex1 : out std_logic_vector (6 downto 0);
		led_hex2 : out std_logic_vector (6 downto 0);
		led_hex3 : out std_logic_vector (6 downto 0);
		led_hex4 : out std_logic_vector (6 downto 0);
		led_hex5 : out std_logic_vector (6 downto 0);
		
		-- Button
		key0 : in std_logic;
		key1 : in std_logic;
		key2 : in std_logic;
		key3 : in std_logic
	);
end Clock;

architecture rtl of Clock is
	component Display
		port
		(
			clk : in std_logic;
			rst : in std_logic;
			cnt_hex0 : in integer; 
			-- Led 7 Seg
			led_hex : out std_logic_vector (6 downto 0)
		);
	end component;
	
	component Switch
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
	end component;
	

	
	
	constant clk_50 : natural := 50000000; 

	signal cnt_hex0 : integer range 0 to 9;
	signal cnt_hex1 : integer range 0 to 9;
	signal cnt_hex2 : integer range 0 to 9;
	signal cnt_hex3 : integer range 0 to 9;
	signal cnt_hex4 : integer range 0 to 9;
	signal cnt_hex5 : integer range 0 to 9;
	
	signal gio : integer range 0 to 24;
	signal phut : integer range 0 to 60;
	signal giay : integer range 0 to 60;
	
	-- reset software
	signal rst : std_logic := '1';
	signal cnt_rst: natural range 0 to 1000 := 0;
	signal swing : natural range 0 to 1000 := 0;
	
	signal cnv_cnt_hex0 : std_logic_vector(4 downto 0);
	signal cnv_cnt_hex1 : std_logic_vector(4 downto 0);
	 
	
	begin
		cnt_hex0 <= to_integer(unsigned(cnv_cnt_hex0));
		cnt_hex1 <= to_integer(unsigned(cnv_cnt_hex1));
		-- port map led_hex0
		
		hex0: Display port map 
						(
							clk => clk,
							rst => rst,
							cnt_hex0 => cnt_hex0,
							-- Led 7 Seg
							led_hex => led_hex0
						);
		hex1: Display port map 
						(
							clk => clk,
							rst => rst,
							cnt_hex0 => cnt_hex1,
							-- Led 7 Seg
							led_hex => led_hex1
						);
		hex2: Display port map 
						(
							clk => clk,
							rst => rst,
							cnt_hex0 => cnt_hex2,
							-- Led 7 Seg
							led_hex => led_hex2
						);
						
		Min: Display port map 
						(
							clk => clk,
							rst => rst,
							cnt_hex0 => cnt_hex3,
							-- Led 7 Seg
							led_hex => led_hex3
						);
		hourdv: Display port map 
						(
							clk => clk,
							rst => rst,
							cnt_hex0 => cnt_hex4,
							-- Led 7 Seg
							led_hex => led_hex4
						);
		hourc: Display port map 
						(
							clk => clk,
							rst => rst,
							cnt_hex0 => cnt_hex5,
							-- Led 7 Seg
							led_hex => led_hex5
						);
					

		-- MAIN --
		
		-- KEY 0 - Runtime
		process (key0, cnt_hex0)
			begin
				if(key0 = '0' and key0 'event) then
				end if;
		end process;
		
		-- KEY 1 - set giay
		Set_sec: Switch port map
						(
							clk => clk,
							rst => rst,
							SW_sel => "01",
							OK => key0,
							sw_status => key1,
		
							-- Output
							cnt_led_dv => cnv_cnt_hex0,
							cnt_led_ch => cnv_cnt_hex1
						);
		

		-- KEY 2 - set phut
		process (key2, cnt_hex2)
			begin
				-- set phut
				if(key2 = '0' and key2 'event) then
					cnt_hex2 <= cnt_hex2 + 1;
					if (cnt_hex2 = 9) then
					cnt_hex2 <= 0;
						cnt_hex3 <= cnt_hex3 + 1;
					end if;
					if (cnt_hex3 = 6) then
						cnt_hex3 <= 0;
					end if;
				end if;
		end process;
		
		-- KEY 3 - set gio
		process (key3, cnt_hex3)
			begin
				-- set phut
				if(key3 = '0' and key3 'event) then
					cnt_hex4 <= cnt_hex4 + 1;
					if (cnt_hex5 < 2) then
						if (cnt_hex4 = 9) then
							cnt_hex4 <= 0;
							cnt_hex5 <= cnt_hex5 + 1;
						end if;
					else
						if(cnt_hex4 = 4) then
							cnt_hex4 <= 0;
							cnt_hex5 <= cnt_hex5 + 1;
						end if;
						if(cnt_hex5 > 2) then
							cnt_hex5 <= 0;
						end if;
					end if;
				end if;

		end process;
		
		-- Reset software
		process(clk)
				begin
					if rising_edge(clk) then	
						if (cnt_rst = 1000 - 1) then
							rst <= '0';
							if swing = 100 then
								rst <= '1';
							else
								swing <= swing + 1;
							end if;
						else
							cnt_rst <= cnt_rst + 1;
						end if;
					end if;
		end process;
end rtl;
