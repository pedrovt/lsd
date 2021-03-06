-- ====================================================================================================
-- DATAPATH/SCORE: Bin2BCD
-- To convert decimal numbers of the score to BCD
-- ====================================================================================================

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Bin2BCD is
	generic (N:  positive := 7);
	port(bin_in  : in std_logic_vector(N-1 downto 0);
		  bcd_out_1 : out std_logic_vector(3 downto 0);
		  bcd_out_2 : out std_logic_vector(3 downto 0));
end Bin2BCD;

architecture Behavioral of Bin2BCD is

	signal s_bcd_out_1, s_bcd_out_2 : std_logic_vector(N-1 downto 0);
	
begin
	process (bin_in)
	begin
		
		s_bcd_out_2 <= std_logic_vector(unsigned(bin_in) / 10);
		s_bcd_out_1 <= std_logic_vector(unsigned(bin_in) rem 10);
	
		bcd_out_1 <= s_bcd_out_1 (3 downto 0);
		bcd_out_2 <= s_bcd_out_2 (3 downto 0);
		
	end process;
	
end Behavioral;