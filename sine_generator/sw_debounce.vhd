library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sw_debounce is
	port(
		i_clk			: in std_logic;
		i_switch		: in std_logic;
		o_switch		: out std_logic
	);
end sw_debounce;

architecture MAIN of sw_debounce is

	constant c_debounce_limit		: integer := 499999;
	signal r_count						: integer range 0 to c_debounce_limit := 0;
	signal r_state						: std_logic := '0';

begin
	process(i_clk)
	begin
		if rising_edge(i_clk) then
			if(i_switch /= r_state and r_count < c_debounce_limit) then
				r_count <= r_count + 1;
			elsif r_count = c_debounce_limit then
				r_count <= 0;
				r_state <= i_switch;
			else
				r_count <= 0;
			end if;
		end if;
	end process;
	
	o_switch <= r_state;
end MAIN;