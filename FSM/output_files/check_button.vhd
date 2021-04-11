library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity check_button is
	port 
	(	
		clk : in std_logic;
		rst : in std_logic;
		button : in std_logic;  
		-- Check button
		check : out std_logic
	);
end check_button;

architecture rtl of check_button is
	signal enable : std_logic;
	Begin
		process (clk, button)
		begin
			if(rst = '0') then
				check <= '0';
				enable <= '1';
			elsif rising_edge(clk) then
					if(button = '0') then
						if (enable = '1') then
							check <= '1';
							enable <= '0';
						else
							check <= '0';
						end if;
					else
						enable <= '1';
					end if;
			end if;	
		end process;
end rtl;
