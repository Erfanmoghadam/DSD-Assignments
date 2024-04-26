library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BS is
	port (
		clk,reset : in std_logic;
		ctrl: in std_logic_vector(1 downto 0);
		input: in std_logic_vector(3 downto 0);
		output: out std_logic_vector(3 downto 0)
	);
end BS;

architecture behavioral of BS is

	signal r_next: std_logic_vector(3 downto 0);
	signal r_reg: std_logic_vector(3 downto 0);
	
begin
	--state register 
	process(clk,reset)
	begin
		if (reset = '1') then
			r_reg <= (others => '0');
		elsif ( clk' event and clk = '1' ) then 
			r_reg <= r_next;
		end if;
	end process;
	--next state logic
	r_next <= input when ctrl = "00" else
				 input(0) & r_reg(3 downto 1) when ctrl = "01" else
				 input(1 downto 0) & r_reg(3 downto 2) when ctrl = "10" else
				 input(2 downto 0) & r_reg(3);
	--output
	output <= r_reg; 
end behavioral;