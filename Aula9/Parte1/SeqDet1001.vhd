library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDet1001 is
	port(CLOCK_50  : in  std_logic;
		  KEY			: in 	std_logic_vector (0 downto 0);
		  SW	      : in  std_logic_vector (0 downto 0);
		  LEDR      : out std_logic_vector (0 downto 0);
		  LEDG      : out std_logic_vector (8 downto 8));
end SeqDet1001;

architecture Structural of SeqDet1001 is
	signal s_clk  : std_logic;
	signal s_key0 : std_logic;
	
	begin
		s_key0 <= not KEY(0);

		freqDiv: entity work.FreqDivider(Behavioral)
			generic map(divFactor => 250000000)
			port map(clkIn  => CLOCK_50,
						clkOut => s_clk);
		
		seqDet : entity work.SeqDetFSM(MealyArch)
					port map(clk => s_clk,
								reset => s_key0,
								xin  => SW(0),
								yout => LEDR(0));
								
		LEDG(8) <= s_clk;
							
end Structural;