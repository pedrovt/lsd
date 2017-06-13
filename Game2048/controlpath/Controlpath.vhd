-- ====================================================================================================
-- CONTROLPATH 
-- Instanciates debouncers for the inputs, the MainControlUnit and the MoveUnit and connects 
-- those entities according to the structure presented in the Milestone
-- ====================================================================================================

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Controlpath is
	port(clk 	 : in  std_logic;
		  key 	 : in  std_logic_vector(3 downto 0);
		  sw0     : in  std_logic;
		  done    : in  std_logic;
		  move	 : out std_logic;
		  moveDir : out std_logic_vector(1 downto 0);
		  start 	 : out std_logic);
end Controlpath;

architecture Structural of Controlpath is
	
	signal s_pulseOut, s_key : std_logic_vector(3 downto 0);

begin
	key_debouncer : for i in 0 to 3 generate
		s_key(i) <= not key(i);
		debouncer : entity work.DebounceUnit(v1)
						generic map(clock_frequency => 50.0e6,
										window_duration => 0.1)
						port map(clock    => clk,
									dirty   => s_key(i),
									clean => s_pulseOut(i),
									zero_to_one_pulse => open,
									one_to_zero_pulse => open);
	end generate;
	
	moveunit : entity work.MoveUnit(Behavioral)
				  port map(KEY_0 => s_pulseOut(0),
							  KEY_1 => s_pulseOut(1),
							  KEY_2 => s_pulseOut(2),
							  KEY_3 => s_pulseOut(3),
							  clk   => clk,
							  move  => move,
							  moveDir => moveDir);
							  
	main_ctrl_unit : entity work.MainControlUnit(BEHAVIOR)
						  port map(clock => clk,
									  SW_0  => sw0,
									  done  => done,
									  start => start);

end Structural;