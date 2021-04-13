library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity dac is
	port
	(	
		clk : in std_logic;
		-- rst : software
		chanel_a_data : out std_logic_vector(13 downto 0);
		chanel_b_data : out std_logic_vector(13 downto 0);
		-- Setup DAC
		dac_mode : out std_logic; -- 1 = dual port, 0 = interleaved
		
		dac_wrt_a : out std_logic := '0'; -- write signal chanel B
		dac_wrt_b : out std_logic := '0'; -- write signal chanel B
		
		dac_clk_a	 : out std_logic; -- PLL_OUT_DAC chanel A
		dac_clk_b	 : out std_logic -- PLL_OUT_DAC chanel B
	);
end dac;

architecture rtl of dac is

	signal clk_50 : natural := 50000000;
	signal counter : natural range 0 to clk_50 := 0;
	signal swing_1 	: natural range 0 to 10000 := 0;
	signal clk_125 : std_logic := '0';
	
	signal phi_inc_35Mhz : integer := 1503238554;
	signal phi_inc_20hz  : integer := 858993459;
		
	signal cnv_phi_inc_35Mhz : std_logic_vector (31 DOWNTO 0);
	signal cnv_phi_inc_20hz : std_logic_vector (31 DOWNTO 0);
	
	signal temp : std_logic_vector(14 downto 0);
	signal empty : std_logic := '0';
	
	signal fsin_35Mhz : std_logic_vector (13 downto 0);
	signal fcos_35Mhz : std_logic_vector (13 downto 0);
	signal fsin_20hz  : std_logic_vector (13 downto 0);
	signal fcos_20hz  : std_logic_vector (13 downto 0);
	
	signal data1 : std_logic_vector (13 downto 0); -- data channel A
	signal data2 : std_logic_vector (13 downto 0); -- data channel B
	signal data  : std_logic_vector (23 downto 0); -- data mix = A(odd) + B(even)
	
	signal counter_14bit : std_logic_vector (13 downto 0);
	constant max_counter : integer := 16384; -- 2^14
	signal counter_run : integer;
	signal counter_1hz : integer;
	
	signal enable_channel_a : std_logic;
	signal enable_channel_b : std_logic;

	-- reset software
	signal rst 		: std_logic := '1';
	signal cnt_rst : natural range 0 to 10000 := 0;
	signal swing 	: natural range 0 to 10000 := 0;
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
			clk	: IN STD_LOGIC;
			reset_n	: IN STD_LOGIC;
			clken	: IN STD_LOGIC;
			fsin_o	: OUT STD_LOGIC_VECTOR (13 DOWNTO 0);
			fcos_o	: OUT STD_LOGIC_VECTOR (13 DOWNTO 0);
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
	
	type state_channel is (init,channel_a, channel_b);
	signal state : state_channel;

	Begin
		cnv_phi_inc_35Mhz <= std_logic_vector (to_unsigned(phi_inc_35Mhz, cnv_phi_inc_35Mhz'LENGTH));
		cnv_phi_inc_20hz <= std_logic_vector (to_unsigned(phi_inc_20hz, cnv_phi_inc_20hz'length));
		
		-- Port map 
		Clock_125 : pll_125 port map
			(
				refclk   => clk,
				rst      => rst,
				outclk_0 => clk_125,
				locked   => open
			);
		-- frequency
		f35Mhz : nco_35Mhz port map
			(
				phi_inc_i => cnv_phi_inc_35Mhz, 
				clk		 => clk_125,
				reset_n	 => rst,
				clken		 => '1',
				fsin_o	 => fsin_35Mhz,
				fcos_o	 => fcos_35Mhz,
				out_valid => open
			);
		f20hz : nco_20hz port map
			(
				phi_inc_i => cnv_phi_inc_20hz, 
				clk		 => clk_125,
				reset_n	 => rst,
				clken		 => '1',
				fsin_o	 => fsin_20hz,
				fcos_o	 => fcos_20hz,
				out_valid => open
			);
			
			
		-- Reset software
		process(clk)
			begin
				if rising_edge(clk) then
					if(cnt_rst = 1000 - 1) then
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
		dac_clk_a <= clk_125;
		dac_clk_b <= clk_125;
		temp <= ((fsin_20hz & empty) + (fsin_35Mhz & empty));
		data1 <= temp(13 downto 0);
		data2 <= std_logic_vector (to_unsigned(counter_run, 14));
		-- Main
		process(clk)
			begin
				if(rst = '0') then
					dac_mode <= '0';
					state <= init;
				elsif rising_edge(clk) then
					case state is
						when init =>
							dac_mode <= '1';
							if (enable_channel_a = '1' and enable_channel_b = '0') then
								state <= channel_a;
							end if;
							if (enable_channel_b = '1' and enable_channel_a = '0') then
								state <= channel_b;
							end if;
						when channel_a =>
							chanel_a_data <= temp(13 downto 0);
							
							if (enable_channel_b = '1' and enable_channel_a = '0') then
								state <= channel_b;
							end if;
						when channel_b =>
						
							if (enable_channel_a = '1' and enable_channel_b = '0') then
								state <= channel_a;
							end if;
						end case;
				end if;
		end process;
		-- change enable_channel_a and enble_channel b
		process(clk_125)
			begin
				if(rst = '0') then
					enable_channel_a <= '0';
					enable_channel_b <= '0';
				elsif rising_edge(clk_125) then
					enable_channel_a <= not enable_channel_a;
					dac_wrt_a <= enable_channel_a;
				elsif falling_edge(clk_125) then
					enable_channel_b <= not enable_channel_b;
					dac_wrt_b <= enable_channel_b;
				end if;
		end process;
		-- process change dac_wrt_a and dac_wrt_b
--		process(clk_125)
--			begin
--				
--		end process;
		
--		-- process change clk A and clk B
--		process(clk_125)
--		begin 
--			if rising_edge(clk_125) then
--				if (counter = 100) then 
--					dac_clk_a <= '0';
--					dac_clk_b <= '0';
--					if swing_1 = 100 then
--						dac_clk_a <= '1';
--						dac_clk_b <= '1';
--						counter <= 0;
--						swing_1 <= 0;
--					else
--						swing_1 <= swing_1 + 1;
--					end if;
--				else
--					counter <= counter + 1;
--				end if;
--			end if;
--		end process;
		-- process counter_run increase(integer) = input => data2
		process(clk)
			begin
				if rst = '0' then 
					counter_run <= 0;
					counter_1hz <= 0;
				elsif rising_edge(clk) then
					if (counter_1hz = (clk_50 -1)) then
						if (counter_run = max_counter -1 ) then
							counter_run <= 0;
						else
							--data2 <= std_logic_vector (to_unsigned(counter_run, counter_run'length));
							counter_run <= counter_run + 1;
						end if;
						counter_1hz <= 0;
					else
						counter_1hz <= counter_1hz + 1;
					end if;
				end if;
		end process;
end rtl;