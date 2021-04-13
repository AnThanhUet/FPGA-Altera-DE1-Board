library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity phase is
	port
	(	
		clk : in std_logic;
		-- rst : software
		data_out_dac: std_logic_vector(13 downto 0)
	);
end phase;

architecture rtl of phase is
	signal clk_50 : natural := 50000000;
	signal counter : natural range 0 to clk_50 := 0;
	
	signal clk_125 : std_logic := '0';
	
	-- NCO input
	signal phi_inc_35Mhz : integer := 1202590843;
	signal phi_inc_20hz  : integer := 34;
	signal cnv_phi_inc_35Mhz : std_logic_vector (31 DOWNTO 0);
	signal cnv_phi_inc_20hz : std_logic_vector (31 DOWNTO 0);
	
	-- NCO output
	signal fsin_35Mhz : std_logic_vector (13 downto 0);
	signal fcos_35Mhz : std_logic_vector (13 downto 0);
	signal fsin_20hz  : std_logic_vector (13 downto 0);
	signal fcos_20hz  : std_logic_vector (13 downto 0);
	signal target_fsin_35Mhz : std_logic_vector (13 downto 0);
	
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
				phi_inc_i => cnv_phi_inc_35Mhz, -- 1202590843
				clk		 => clk_125,
				reset_n	 => rst,
				clken		 => '1',
				fsin_o	 => fsin_35Mhz,
				fcos_o	 => fcos_35Mhz,
				out_valid => open
			);
		f20hz : nco_20hz port map
			(
				phi_inc_i => cnv_phi_inc_20hz, -- 34
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
		
		-- Main
		process(clk)
			begin
				if(rst = '0') then
				elsif (clk_125 'event and clk_125 = '1') then
				end if;
		end process;

end rtl;