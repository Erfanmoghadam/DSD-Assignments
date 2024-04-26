library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Q4 is 
	port(
		clk,reset: in std_logic;
		input: in std_logic_vector(2 downto 0);
		output: out std_logic_vector(2 downto 0)
		);
end Q4;

architecture behavioral of Q4 is
	signal r_reg,r_next: std_logic_vector(2 downto 0);
		begin
		--State register
			process(clk,reset)
				begin
					if (reset = '1') then
						r_reg <= (others =>'0');
					elsif (clk' event and clk = '1') then
						r_reg <= r_next;
					end if;
			end process;
		--Next state logic
			r_next <= "011" when input = "000" else
						 "110" when input = "011" else
						 "101" when input = "110" else
						 "111" when input = "101" else
						 "000";		
		--Output
			output <= r_reg;
end behavioral;	