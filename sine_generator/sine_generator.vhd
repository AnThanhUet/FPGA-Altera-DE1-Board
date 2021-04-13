library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sine_generator is
	port(
		CLOCK_50			: 	in std_logic;
		KEY				:	in std_logic_vector(3 downto 0);
		HEX0				:	out std_logic_vector(6 downto 0);
		HEX1				:	out std_logic_vector(6 downto 0);
		GPIO_0			:	inout std_logic_vector(35 downto 0); --(GPI/O)
		GPIO_1			:	inout std_logic_vector(35 downto 0); --(GPI/O)
		SW					:	in std_LOGIC_VECTOR(9 downto 0);
		LEDR				:	out std_LOGIC_VECTOR(9 downto 0)
	);
end sine_generator;

architecture MAIN of sine_generator is

	signal RESET			 	: std_LOGIC := '0';
	signal SINE_CLK			: std_LOGIC;
	signal phi 					: std_LOGIC_VECTOR(31 downto 0) := "01000111101011100001010001111011"; -- !!!!!!!!!
	signal reset_n				: std_logic := '1';
	signal clken        		: std_logic := '1';
	signal out_valid    		: std_logic;
	signal sin_val	    		: std_logic_vector (13 downto 0);
	signal clk_cnt 			: unsigned(31 downto 0);
	signal clk_cnt1 			: unsigned(31 downto 0);
	signal DAC_CLK_A			: std_LOGIC;
	signal DAC_CLK_B			: std_LOGIC;
	signal DAC_WRT_A			: std_LOGIC;
	signal DAC_WRT_B			: std_LOGIC;
	signal DAC_MODE			: std_LOGIC;
	signal DAC_DA				: std_LOGIC_VECTOR(13 downto 0);
	signal DAC_DB				: std_LOGIC_VECTOR(13 downto 0);
	signal sw_on				: std_LOGIC;
	
	component PLL0 is
	port (
		refclk   : in  std_logic := '0'; --  refclk.clk
		rst      : in  std_logic := '0'; --   reset.reset
		outclk_0 : out std_logic         -- outclk0.clk
		  );
	end component PLL0;
		 
	component nco_0 is
	port (
		phi_inc_i	: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		clk	: IN STD_LOGIC;
		reset_n	: IN STD_LOGIC;
		clken	: IN STD_LOGIC;
		fsin_o	: OUT STD_LOGIC_VECTOR (13 DOWNTO 0);
		out_valid	: OUT STD_LOGIC
	);
	end component;
	
	component sw_debounce is
	port (
		i_clk			: in std_logic;
		i_switch		: in std_logic;
		o_switch		: out std_logic
	);
	end component;

begin

	GPIO_1(1) <= DAC_DA(13);
	GPIO_1(3) <= DAC_DA(12);
	GPIO_1(4) <= DAC_DA(11);
	GPIO_1(5) <= DAC_DA(9);
	GPIO_1(6) <= DAC_DA(10);
	GPIO_1(7) <= DAC_DA(8);
	GPIO_1(8) <= DAC_DA(7);
	GPIO_1(9) <= DAC_DA(5);
	GPIO_1(10) <= DAC_DA(6);
	GPIO_1(11) <= DAC_DA(4);
	GPIO_1(12) <= DAC_DA(3);
	GPIO_1(13) <= DAC_DA(1);
	GPIO_1(14) <= DAC_DA(2);
	GPIO_1(15) <= DAC_DA(0);
	GPIO_1(16) <= DAC_CLK_A;
	GPIO_1(17) <= DAC_WRT_A;
	GPIO_1(18) <= DAC_CLK_B;
	GPIO_1(19) <= DAC_DB(13);
	GPIO_1(21) <= DAC_DB(12);
	GPIO_1(22) <= DAC_DB(11);
	GPIO_1(23) <= DAC_DB(9);
	GPIO_1(24) <= DAC_DB(10);
	GPIO_1(25) <= DAC_DB(8);
	GPIO_1(26) <= DAC_DB(5);
	GPIO_1(27) <= DAC_DB(7);
	GPIO_1(28) <= DAC_DB(4);
	GPIO_1(29) <= DAC_DB(6);
	GPIO_1(30) <= DAC_DB(1);
	GPIO_1(31) <= DAC_DB(3);
	GPIO_1(32) <= DAC_DB(0);
	GPIO_1(33) <= DAC_DB(2);
	GPIO_1(34) <= DAC_WRT_B;
	GPIO_1(35) <= DAC_MODE;

	c1: sw_debounce port map(CLOCK_50,SW(0),sw_on);
	
	-- 279us = 139500clk, 0.9us = 450clk
	process(SINE_CLK)
	begin
		if rising_edge(SINE_CLK) then
			if(sw_on = '1') then
				LEDR(0) <= '1';
				if (clk_cnt < 34762) then --!!!!!!!!!!!!
					clk_cnt <= clk_cnt + 1;
					DAC_DA <= std_LOGIC_VECTOR(to_unsigned(8191,14));
					DAC_DB <= std_LOGIC_VECTOR(to_unsigned(8191,14));
				else
					if (clk_cnt1 < 113) then --!!!!!!!!!!!
						clk_cnt1 <= clk_cnt1 + 1;
						DAC_DA <= std_LOGIC_VECTOR(signed(sin_val)+8191);
						DAC_DB <= std_LOGIC_VECTOR(signed(sin_val)+8191);
					else
						clk_cnt <= (others => '0');
						clk_cnt1 <= (others => '0');
					end if;
				end if;
			else
				LEDR(0) <= '0';
				DAC_DA <= std_LOGIC_VECTOR(to_unsigned(8191,14));
				DAC_DB <= std_LOGIC_VECTOR(to_unsigned(8191,14));
			end if;
		end if;
	end process;

	c2: PLL0 port map(CLOCK_50,RESET,SINE_CLK);
	c3: nco_0 port map(phi,SINE_CLK,reset_n,clken,sin_val,out_valid);
	
	DAC_CLK_A <= SINE_CLK;
	DAC_WRT_A <= SINE_CLK;
	DAC_CLK_B <= SINE_CLK;
	DAC_WRT_B <= SINE_CLK;
	DAC_MODE <= '1';
	
end MAIN;