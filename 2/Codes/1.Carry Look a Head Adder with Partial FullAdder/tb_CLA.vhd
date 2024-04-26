library ieee;
use ieee.std_logic_1164.all;

entity tb_Carry_look_ahead is 
end tb_Carry_look_ahead;

  
architecture behavioral of tb_Carry_look_ahead is
 
    signal tb_a,tb_b : std_logic_vector(3 downto 0);
    signal tb_cin : std_logic;
    signal tb_cout : std_logic;
    signal tb_s : std_logic_vector(3 downto 0);
    
  begin
  
        U1_Test: entity work.Carry_look_ahead(behavioral) port map(
              a => tb_a, 
              b => tb_b,
              cin => tb_cin,
              cout => tb_cout,
				  s => tb_s
            );
 
 sim_proc: process   
      begin
         tb_a <="0000" ;
         tb_b <="0000";
			wait for 100 ns;
			
			tb_a <="0001" ;
         tb_b <="0001";
			wait for 100 ns;
			
			tb_a <="0010" ;
         tb_b <="0010";
			wait for 100 ns;
			
			tb_a <="0011" ;
         tb_b <="0011";
			wait for 100 ns;
			
			tb_a <="0100" ;
         tb_b <="0100";
			wait for 100 ns;
			
			tb_a <="0101" ;
         tb_b <="0101";
			wait for 100 ns;
			
			tb_a <="0110" ;
         tb_b <="0110";
			wait for 100 ns;
			
			tb_a <="0111" ;
         tb_b <="0111";
			wait for 100 ns;
			
			tb_a <="1000" ;
         tb_b <="1000";
			wait for 100 ns;
			
			tb_a <="1001" ;
         tb_b <="1001";
			wait for 100 ns;
			
			tb_a <="1010" ;
         tb_b <="1010";
			wait for 100 ns;
			
			tb_a <="1011" ;
         tb_b <="1011";
			wait for 100 ns;
			
			tb_a <="1100" ;
         tb_b <="1100";
			wait for 100 ns;
			
			tb_a <="1101" ;
         tb_b <="1101";
			wait for 100 ns;
			
			tb_a <="1110" ;
         tb_b <="1110";
			wait for 100 ns;
			
			tb_a <="1111" ;
         tb_b <="1111";
			wait for 100 ns;
			
       
       
     end process;
       
end  behavioral;








