-- ====================================================================================================
-- DATAPATH: GameBoardScore
-- Implements the board, changes it according to reset, move and moveDir inputs 
-- and ouputs the info to the DrawUI module
-- ====================================================================================================

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity GameBoardScore is
port (clk			 : in  std_logic;
		
 		move 			 : in  std_logic;
		moveDir 		 : in  std_logic_vector(1 downto 0);
		
		reset			 : in  std_logic;
		
		readData		 : out std_logic_vector(3 downto 0);		-- info output @Milestone
		readDataAddr : out std_logic_vector(3 downto 0);		-- indicates what box the info is related to

		done			 : out std_logic);								-- flag (=1 when at least one of the elements of the s_memory signal is = 11)

--		score2		 : out std_logic_vector(7 downto 0);		-- MSB 8 bits of the score
--		score1		 : out std_logic_vector(7 downto 0));		-- LSB 8 bits of the score

end GameBoardScore;

architecture Structural of GameBoardScore is
	
	signal s_readAddress, s_writeAddress: std_logic_vector(3 downto 0);
	signal s_writeData, s_romData: std_logic_vector(3 downto 0);
	
	signal s_RAM_clock : std_logic;
	
begin
	-- Instanciates adders for reading all board positions
	addr_counter_read : entity work.Counter4Bits(Behavioral)
						port map (clk    => clk,
									 reset  => reset,
									 count => s_readAddress);
									 
	addr_counter_write : entity work.Counter4Bits(Behavioral)
						port map (clk    => clk,
									 reset  => not move,
									 count => s_writeAddress);
	
	-- Instanciates clock generator for board so board can work
	-- in an apropriated frequency (ie a frequency that allows
	-- all the 16 positions to be read in each clock cycle of 
	-- the DrawUI module)
	
	clock_generator : entity work.clock_generator(cyclone4e)
							generic map(frequency => 3.125e6)
							port map(clock_50 => clk,
										new_clock => s_RAM_clock);
							
	board : entity work.Board(Behavioral)
					 port map (clk 			=> s_RAM_clock,
								  reset		   => reset,
								  move			=> move,
								  moveDir		=> moveDir,
								  readAddress  => s_readAddress,
								  readData     => s_romData);
	
	-- Computes done output value
	process(s_romData)
	begin
		if (s_romData = "1011") then
			done <= '1'; 
		else
			done <= '0';
		end if;
	end process;
	
	-- Assignments for output ports
	readDataAddr <= s_readAddress;
	readData     <= s_romData;		
	
end Structural;