library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity display is
	port 
	(	
		clk: in std_logic;
		rst : in std_logic;
		cnt_hex : in integer;
		-- Led 7 seg
		led_hex : out std_logic_vector(6 downto 0)
	);
end display;

architecture rtl of display is
	Begin
		process(clk, rst)
			begin
				if(rst = '0') then
					-- Led = '0'
					led_hex <= "1000000";
				elsif rising_edge(clk) then
					case cnt_hex is
						when 0 => led_hex <= "1000000";
						when 1 => led_hex <= "1111001";
						when 2 => led_hex <= "0100100";
						when 3 => led_hex <= "0110000";
						when 4 => led_hex <= "0011001";
						when 5 => led_hex <= "0010010";
						when 6 => led_hex <= "0000010";
						when 7 => led_hex <= "1111000";
						when 8 => led_hex <= "0000000";
						when 9 => led_hex <= "0010000";
						when others => led_hex <= "1111111"; -- Led off
					end case;
				end if;
		end process;
end rtl;