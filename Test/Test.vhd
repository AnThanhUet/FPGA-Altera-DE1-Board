library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity Test is
	port
	(
		clk : in std_logic;
		led_0: out std_logic_vector (6 downto 0);
		sw1: in std_logic
	);
end Test;
architecture rtl of Test is
	signal value : integer range 0 to 9;
	begin
		process (sw1, value)
			begin
				if(sw1 = '0' and sw1 'event) then
					if(value = 9) then
						value <= 0;
					else
						value <= value + 1;
					end if;
				end if;
		end process;
		
		process (value)
		begin
			case value is
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
		end process;
end rtl;
