library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity FSM is
	port
	(
		clk : in std_logic;
		--	rst : software
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
end FSM;

architecture rtl of FSM is
	
	component display
		port 
		(	
			clk: in std_logic;
			rst : in std_logic;
			cnt_hex : in integer;
			-- Led 7 seg
			led_hex : out std_logic_vector(6 downto 0)
		);
	end component;
	
	-- Button check
	component check_button
		port 
		(	
			clk: in std_logic;
			rst : in std_logic;
			button : in std_logic;  
			-- Check button
			check : out std_logic
		);
	end component;

	signal clk_50 : natural := 50000000;
	signal counter : natural range 0 to clk_50 := 0;
	
	signal cnt_hex0 : integer range 0 to 9;
	signal cnt_hex1 : integer range 0 to 9;
	signal cnt_hex2 : integer range 0 to 9;
	signal cnt_hex3 : integer range 0 to 9;
	signal cnt_hex4 : integer range 0 to 9;
	signal cnt_hex5 : integer range 0 to 9;
	
	-- reset software
	signal rst : std_logic := '1';
	signal cnt_rst: natural range 0 to 1000 := 0;
	signal swing : natural range 0 to 1000 := 0;
	
	-- FSM
	type state_type is (hour, min, sec, ok);
	signal state : state_type;
	
	signal check_sec  : std_logic := '0';
	signal check_min	: std_logic	:= '0';
	signal check_hour	: std_logic	:= '0';
	
	signal enable_sec : std_logic;
	signal enable_min : std_logic;
	signal enable_hour : std_logic;
	
	Begin
	
	-- Port map Check_button
	Check_button_hour : check_button port map
		(	
			clk => clk,
			rst => rst,
			button => key3,
			-- Check button
			check => check_hour
		);
	
	Check_button_min : check_button port map
		(	
			clk => clk,
			rst => rst,
			button => key2,
			-- Check button
			check => check_min
		);
	
	Check_button_sec : check_button port map
		(	
			clk => clk,
			rst => rst,
			button => key1,
			-- Check button
			check => check_sec
		);
	
	-- Port map led display
	led0: display port map
		(	
			clk => clk,
			rst => rst,
			cnt_hex => cnt_hex0,
			-- Led 7 Seg
			led_hex => led_hex0
		);
	led1: display port map
		(	
			clk => clk,
			rst => rst,
			cnt_hex => cnt_hex1,
			-- Led 7 Seg
			led_hex => led_hex1
		);
	led2: display port map
		(	
			clk => clk,
			rst => rst,
			cnt_hex => cnt_hex2,
			-- Led 7 Seg
			led_hex => led_hex2
		);
	led3: display port map
	(	
			clk => clk,
			rst => rst,
			cnt_hex => cnt_hex3,
			-- Led 7 Seg
			led_hex => led_hex3
		);
	led4: display port map
	(	
			clk => clk,
			rst => rst,
			cnt_hex => cnt_hex4,
			-- Led 7 Seg
			led_hex => led_hex4
		);
	led5: display port map
	(	
			clk => clk,
			rst => rst,
			cnt_hex => cnt_hex5,
			-- Led 7 Seg
			led_hex => led_hex5
		);
		
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
	
	-- FSM
	process(clk)
		begin
			if(rst = '0') then
					cnt_hex0 <= 0;
					cnt_hex1 <= 0;
					cnt_hex2 <= 0;
					cnt_hex3 <= 0;
					cnt_hex4 <= 0;
					cnt_hex5 <= 0;
					state <= ok;
			elsif rising_edge(clk) then
				case state is
					-- Sw 3
					when hour =>
						if (check_hour = '1') then
							if (cnt_hex5 < 2) then
								if (cnt_hex4 = 9) then
									cnt_hex4 <= 0;
									cnt_hex5 <= cnt_hex5 + 1;
								else
									cnt_hex4 <= cnt_hex4 + 1;
								end if;
							elsif(cnt_hex5 = 2) then
								if(cnt_hex4 = 3) then
									cnt_hex4 <= 0;
									cnt_hex5 <= 0;
								else
									cnt_hex4 <= cnt_hex4 + 1;
								end if;
							else
								cnt_hex5 <= 0;
							end if;
						end if;
					
						if (key2 = '0') then
							state <= min;
						end if;
						if (key1 = '0') then
							state <= sec;
						end if;
						if (key0 = '0') then	
							state <= ok;
						end if;
					-- Sw 2
					when min =>
						if (check_min = '1') then
							if (cnt_hex3 < 6) then
								if (cnt_hex2 = 9) then
									cnt_hex2 <= 0;
									cnt_hex3 <= cnt_hex3 + 1;
								else
									cnt_hex2 <= cnt_hex2 + 1;
								end if;
							else
								cnt_hex3 <= 0;
							end if;
						end if;
						
						if (key3 = '0') then
							state <= hour;
						end if;
						if (key1 = '0') then
							state <= sec;
						end if;
						if (key0 = '0') then	
							state <= ok;
						end if;
					-- Sw 1
					when sec =>
						if (check_sec = '1') then
							if(cnt_hex0 >= 9) then
								cnt_hex0 <= 0;
								cnt_hex1 <= cnt_hex1 + 1;
							else
								cnt_hex0 <= cnt_hex0 + 1;
							end if;
							
							if(cnt_hex1 >= 6) then
								cnt_hex1 <= 0;
							end if;
						end if;
						
						if (key3 = '0') then
							state <= hour;
						end if;
						if (key2 = '0') then
							state <= min;
						end if;
						if (key0 = '0') then	
							state <= ok;
						end if;			
					--Sw 0
					when ok =>
							counter <= counter + 1;
							if(counter = clk_50 -1) then
								-- SEC
								if(cnt_hex1 < 6) then
									if(cnt_hex0 = 9) then
										cnt_hex0 <= 0;
										cnt_hex1 <= cnt_hex1 + 1;
									else
										cnt_hex0 <= cnt_hex0 + 1;
									end if;
								else
									cnt_hex1 <= 0;
									cnt_hex2 <= cnt_hex2 + 1;
								end if;	
								-- MIN
								if (cnt_hex3 < 6) then
									if(cnt_hex2 = 9) then
										cnt_hex2 <= 0;
										cnt_hex3 <= cnt_hex3 + 1;
									end if;
								else
									cnt_hex3 <= 0;
									cnt_hex4 <= cnt_hex4 + 1;
								end if;
								-- HOUR
								if (cnt_hex5 < 2) then
									if(cnt_hex4 = 9 and cnt_hex3 = 5 and cnt_hex2 = 9 and cnt_hex1 = 5 and cnt_hex0 = 9) then
										cnt_hex4 <= 0;
										cnt_hex5 <= cnt_hex5 + 1;
									end if;
								elsif (cnt_hex5 = 2) then
									if(cnt_hex4 = 4) then
										cnt_hex4 <= 0;
										cnt_hex5 <= cnt_hex5 + 1;
									end if;
								else
									cnt_hex5 <= 0;
								end if;
								counter <= 0;
							end if;
							
						if (key3 = '0') then
							state <= hour;
						end if;
						if (key2 = '0' ) then
							state <= min;
						end if;
						if (key1 = '0' ) then	
							state <= sec;
						end if;		
				end case;
			end if;	
	end process;
end rtl;