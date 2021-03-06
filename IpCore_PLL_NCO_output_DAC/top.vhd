library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity dac is
	port
	(	
		clk_50 	 	: in std_logic;
		-- rst : software
		-- Led 7 seg
		led_hex0 	: out std_logic_vector (6 downto 0);
		led_hex1 	: out std_logic_vector (6 downto 0);
		led_hex2 	: out std_logic_vector (6 downto 0);
		led_hex3 	: out std_logic_vector (6 downto 0);
		led_hex4 	: out std_logic_vector (6 downto 0);
		-- Gpio = input -> DAC
		gpio_1	:	inout std_logic_vector(35 downto 0)

	);
end dac;

architecture rtl of dac is
	signal clk_125 				: std_logic := '0';
	-- Reset software
	signal rst 						: std_logic := '1';
	signal cnt_rst 				: natural range 0 to 10000 := 0;
	signal swing 					: natural range 0 to 10000 := 0;
	-- Parameter NCO
	signal phi_inc_35Mhz 		: integer := 1202590843;
	signal phi_inc_20hz  		: integer := 687;
	signal cnv_phi_inc_35Mhz 	: std_logic_vector (31 DOWNTO 0);
	signal cnv_phi_inc_20hz 	: std_logic_vector (31 DOWNTO 0);
	signal temp 					: std_logic_vector(14 downto 0);
	signal empty 					: std_logic := '0';
	-- Output NCO
	signal fsin_35Mhz 			: std_logic_vector (13 downto 0);
	signal fcos_35Mhz 			: std_logic_vector (13 downto 0);
	signal fsin_20hz  			: std_logic_vector (13 downto 0);
	signal fcos_20hz  			: std_logic_vector (13 downto 0);
	-- Setup DAC
	signal dac_mode 				: std_logic;
	signal dac_clk_a 				: std_logic;
	signal dac_clk_b				: std_logic;
	signal dac_wrt_a 				: std_logic;
	signal dac_wrt_b 				: std_logic;
	-- Data
	signal dac_da 					: std_logic_vector (13 downto 0); -- data channel A
	signal dac_db 					: std_logic_vector (13 downto 0); -- data channel B
	-- Generator Signal Counter 1 Hz
	constant max_counter 		: integer := 16384; -- 2^14
	signal counter_run 			: integer;
	signal counter_1hz 			: integer;
	-- Display
	signal cnt_hex0 				: integer range 0 to 9;
	signal cnt_hex1 				: integer range 0 to 9;
	signal cnt_hex2 				: integer range 0 to 9;
	signal cnt_hex3 				: integer range 0 to 9;
	signal cnt_hex4 				: integer range 0 to 9;

	component display
		port 
		(	
			clk		: in std_logic;
			rst 		: in std_logic;
			cnt_hex 	: in integer;
			-- Led 7 seg
			led_hex 	: out std_logic_vector(6 downto 0)
		);
	end component;

	component pll_125
		port
		(	
			refclk   : in  std_logic := '0'; --  refclk.clk
			rst      : in  std_logic := '0'; --   reset.reset
			outclk_0 : out std_logic;        -- outclk0.clk
			locked   : out std_logic         --  locked.export
		);
	end component;

	component nco_35Mhz
		port
		(
			phi_inc_i	: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			clk			: IN STD_LOGIC;
			reset_n		: IN STD_LOGIC;
			clken			: IN STD_LOGIC;
			fsin_o		: OUT STD_LOGIC_VECTOR (13 DOWNTO 0);
			fcos_o		: OUT STD_LOGIC_VECTOR (13 DOWNTO 0);
			out_valid	: OUT STD_LOGIC
		);
	end component;	

	component nco_20hz
		port
		(
			phi_inc_i	: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			clk			: IN STD_LOGIC;
			reset_n		: IN STD_LOGIC;
			clken			: IN STD_LOGIC;
			fsin_o		: OUT STD_LOGIC_VECTOR (13 DOWNTO 0);
			fcos_o		: OUT STD_LOGIC_VECTOR (13 DOWNTO 0);
			out_valid	: OUT STD_LOGIC	
		);
	end component;

	begin

		cnv_phi_inc_35Mhz <= std_logic_vector (to_unsigned(phi_inc_35Mhz, cnv_phi_inc_35Mhz'LENGTH));
		cnv_phi_inc_20hz  <= std_logic_vector (to_unsigned(phi_inc_20hz, cnv_phi_inc_20hz'length));
		-- Port map led display 1.9994331523776054E
		led0: display port map
		(	
			clk 		=> clk_50,
			rst 		=> rst,
			cnt_hex 	=> cnt_hex0,
			-- Led 7 Seg
			led_hex 	=> led_hex0
		);
		led1: display port map
			(	
				clk 		=> clk_50,
				rst 		=> rst,
				cnt_hex 	=> cnt_hex1,
				-- Led 7 Seg
				led_hex 	=> led_hex1
			);
		led2: display port map
			(	
				clk 		=> clk_50,
				rst 		=> rst,
				cnt_hex 	=> cnt_hex2,
				-- Led 7 Seg
				led_hex 	=> led_hex2
			);
		led3: display port map
		(	
				clk 		=> clk_50,
				rst 		=> rst,
				cnt_hex 	=> cnt_hex3,
				-- Led 7 Seg
				led_hex 	=> led_hex3
			);
		led4: display port map
		(	
				clk 		=> clk_50,
				rst 		=> rst,
				cnt_hex 	=> cnt_hex4,
				-- Led 7 Seg
				led_hex 	=> led_hex4
			);

		-- Port map PLL
		Clock_125 : pll_125 port map
			(
				refclk   => clk_50,
				rst      => rst,
				outclk_0 => clk_125,
				locked   => open
			);
		-- frequency
		f35Mhz : nco_35Mhz port map
			(
				phi_inc_i 	=> cnv_phi_inc_35Mhz, 
				clk		  	=> clk_125,
				reset_n	  	=> rst,
				clken	  		=> '1',
				fsin_o	  	=> fsin_35Mhz,
				fcos_o	  	=> fcos_35Mhz,
				out_valid 	=> open
			);
		f20hz : nco_20hz port map
			(
				phi_inc_i 	=> cnv_phi_inc_20hz, 
				clk		  	=> clk_125,
				reset_n	  	=> rst,
				clken	  		=> '1',
				fsin_o	  	=> fsin_20hz,
				fcos_o	  	=> fcos_20hz,
				out_valid 	=> open
			);

		dac_clk_a <= clk_125;
		dac_wrt_a <= clk_125;
		dac_clk_b <= clk_125;
		dac_wrt_b <= clk_125;
		dac_mode  <= '1';

		gpio_1(1)  <= dac_da(13);
		gpio_1(3)  <= dac_da(12);
		gpio_1(4)  <= dac_da(11);
		gpio_1(5)  <= dac_da(9);
		gpio_1(6)  <= dac_da(10);
		gpio_1(7)  <= dac_da(8);
		gpio_1(8)  <= dac_da(7);
		gpio_1(9)  <= dac_da(5);
		gpio_1(10) <= dac_da(6);
		gpio_1(11) <= dac_da(4);
		gpio_1(12) <= dac_da(3);
		gpio_1(13) <= dac_da(1);
		gpio_1(14) <= dac_da(2);
		gpio_1(15) <= dac_da(0);
		gpio_1(16) <= dac_clk_a;
		gpio_1(17) <= dac_wrt_a;
		gpio_1(18) <= dac_clk_b;
		gpio_1(19) <= dac_db(13);
		gpio_1(21) <= dac_db(12);
		gpio_1(22) <= dac_db(11);
		gpio_1(23) <= dac_db(9);
		gpio_1(24) <= dac_db(10);
		gpio_1(25) <= dac_db(8);
		gpio_1(26) <= dac_db(5);
		gpio_1(27) <= dac_db(7);
		gpio_1(28) <= dac_db(4);
		gpio_1(29) <= dac_db(6);
		gpio_1(30) <= dac_db(1);
		gpio_1(31) <= dac_db(3);
		gpio_1(32) <= dac_db(0);
		gpio_1(33) <= dac_db(2);
		gpio_1(34) <= dac_wrt_b;
		gpio_1(35) <= dac_mode;

		-- Reset software
		process(clk_50)
			begin
				if rising_edge(clk_50) then
					if(cnt_rst = 1000 - 1) then
						rst <= '0';
						if swing = 100 then
							rst 	<= '1';
						else
							swing <= swing + 1;
						end if;
					else
						cnt_rst <= cnt_rst + 1;
					end if;
				end if;
		end process;
		
		-- process counter_run increase(integer) = input => data2
		process(clk_50)
			begin
				if rst = '0' then 
					counter_run <= 0;
					counter_1hz <= 0;
					cnt_hex0 	<= 0;
					cnt_hex1 	<= 0;
					cnt_hex2 	<= 0;
					cnt_hex3 	<= 0;
					cnt_hex4 	<= 0;
				elsif rising_edge(clk_50) then
					cnt_hex4 	<= (counter_run / 10000);
					cnt_hex3 	<= ((counter_run / 1000) rem 10);
					cnt_hex2 	<= ((counter_run / 100) rem 10);
					cnt_hex1 	<= ((counter_run / 10) rem 10);
					cnt_hex0 	<= (counter_run rem 10);
					if (counter_1hz = (50000000 - 1)) then
						if (counter_run = max_counter - 1) then
							counter_run <= 0;
						else
							counter_run <= counter_run + 1;
						end if;
							counter_1hz <= 0;
					else
						counter_1hz <= counter_1hz + 1;
					end if;
				end if;
		end process;

		-- Main
		process(clk_125)
			begin
				if(rst = '0') then
					dac_da <= "00000000000000";
					dac_db <= "00000000000000";
				elsif rising_edge(clk_125) then
					temp   <= ((fsin_20hz & empty) + (fsin_35Mhz & empty)); -- temp 15 bit
					dac_da <= temp(13 downto 0); -- 14bit data mix frequency
					dac_db <= std_logic_vector (to_unsigned(counter_run, 14));
				end if;
		end process;
end rtl;