-- ====================================================================================================
-- DATAPATH: Board
-- Conceptually based on Part III, Guide 10 (RAM_2P_16_8.vhd)
--
-- Implements a board 4*4 using a RAM with 4*4=16 positions.
-- Each RAM address stores a std_logic_vector coding an integer number from 1 to 11, corresponding to 
-- the exponent of powers of 2 between 2 and 2048 (max allowed value by design)
-- ====================================================================================================

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Board is
port (clk			 : in  std_logic;
		reset 		 : in  std_logic;
		
		move			 : in std_logic;
		moveDir		 : in std_logic_vector(1 downto 0);
		
		readAddress  : in  std_logic_vector(3 downto 0);				
		readData		 : out std_logic_vector(3 downto 0));		
end Board;

architecture Behavioral of Board is
	-- enumerated type
	type TMemory is array(0 to 15) of std_logic_vector(3 downto 0);	-- 16 positions with 4 bits each
	signal s_memory : TMemory := ((others=> (others=>'0')));

	signal s_score_temp : std_logic_vector(3 downto 0);
	signal mergedBoxs : boolean := false;
	signal generated : boolean := false;
	
	-- Score
	--	signal s_score : integer;
	--	signal s_score_vector : std_logic_vector(15 downto 0);

	begin
	   process(clk, reset, move, moveDir, mergedBoxs, generated)
		begin		
			-- starts the game with 2 pieces in a default position
			if (reset = '1') then			
					s_memory(0) <= "0000";
					s_memory(1) <= "0000";
					s_memory(2) <= "0000";
					s_memory(3) <= "0000";
					s_memory(4) <= "0000";
					s_memory(7) <= "0000";
					s_memory(8) <= "0000";
					s_memory(9) <= "0000";
					s_memory(10) <= "0000";
					s_memory(11) <= "0000";
					s_memory(12) <= "0000";
					s_memory(13) <= "0000";
					s_memory(14) <= "0000";
					s_memory(15) <= "0000";
					
					s_memory(5) <= "0001";
					s_memory(6) <= "0001";	
			else	
				if (rising_edge(clk)) then

				if (move = '1') then	 -- necessary so moveDir "00" is properly used
				-- MoveDir = 11 Down, 10 Up, 01 Right, 00 Left
				
					-- ====================================================
					-- Left
					if (moveDir = "00") then
						moveLeft_line1 : for i in 0 to 2 loop
							if (s_memory(i) = s_memory(i+1)) and (s_memory(i) /= "0000") then
								s_score_temp  <= s_memory(i);
								s_memory(i)   <= std_logic_vector(unsigned(s_score_temp) + unsigned(s_score_temp));
								s_memory(i+1) <= "0000";
								mergedBoxs <= true;
							end if;
							if (s_memory(i) = "0000") and (s_memory(i+1) /= "0000") then
								s_memory(i)   <= s_memory(i+1);
								s_memory(i+1) <= "0000";
							end if;
						end loop;
						
						moveLeft_line2 : for i in 4 to 6 loop
							if (s_memory(i) = s_memory(i+1)) and (s_memory(i) /= "0000") then
								s_score_temp  <= s_memory(i);
								s_memory(i)   <= std_logic_vector(unsigned(s_score_temp) + unsigned(s_score_temp));
								s_memory(i+1) <= "0000";
								mergedBoxs <= true;
							end if;
							if (s_memory(i) = "0000") and (s_memory(i+1) /= "0000") then
								s_memory(i)   <= s_memory(i+1);
								s_memory(i+1) <= "0000";
							end if;
						end loop;
						
						moveLeft_line3: for i in 8 to 10 loop
							if (s_memory(i) = s_memory(i+1)) and (s_memory(i) /= "0000") then
								s_score_temp  <= s_memory(i);
								s_memory(i)   <= std_logic_vector(unsigned(s_score_temp) + unsigned(s_score_temp));
								s_memory(i+1) <= "0000";
								mergedBoxs <= true;
							end if;
							if (s_memory(i) = "0000") and (s_memory(i+1) /= "0000") then
								s_memory(i)   <= s_memory(i+1);
								s_memory(i+1) <= "0000";
							end if;
						end loop;
						
						moveLeft_line4 : for i in 12 to 14 loop
							if (s_memory(i) = s_memory(i+1)) and (s_memory(i) /= "0000") then
								s_score_temp  <= s_memory(i);
								s_memory(i)   <= std_logic_vector(unsigned(s_score_temp) + unsigned(s_score_temp));
								s_memory(i+1) <= "0000";
								mergedBoxs <= true;
							end if;
							if (s_memory(i) = "0000") and (s_memory(i+1) /= "0000") then
								s_memory(i)   <= s_memory(i+1);
								s_memory(i+1) <= "0000";
							end if;
						end loop;
					end if;
--					
--					-- ====================================================
--					-- Right
					else
						if (moveDir = "01") then 
							moveRight_line1 : for i in 0 to 2 loop
								if (s_memory(i) = s_memory(i+1)) and (s_memory(i) /= "0000") then
									s_score_temp    <= s_memory(i);
									s_memory(i) 	 <= "0000";
									s_memory(i+1)   <= std_logic_vector(unsigned(s_score_temp) + unsigned(s_score_temp));
									mergedBoxs <= true;
								end if;
								if (s_memory(i) = "0000") and (s_memory(i+1) /= "0000") then
									s_memory(i+1)   <= s_memory(i);
									s_memory(i) <= "0000";
								end if;
							end loop;
							
							moveRight_line2 : for i in 4 to 6 loop
								if (s_memory(i) = s_memory(i+1)) and (s_memory(i) /= "0000") then
									s_score_temp   <= s_memory(i);
									s_memory(i) 	<= "0000";
									s_memory(i+1)  <= std_logic_vector(unsigned(s_score_temp) + unsigned(s_score_temp));
									mergedBoxs <= true;
								end if;
								if (s_memory(i) = "0000") and (s_memory(i+1) /= "0000") then
									s_memory(i+1)   <= s_memory(i);
									s_memory(i) <= "0000";
								end if;
							end loop;
							
							moveRight_line3: for i in 8 to 10 loop
								if (s_memory(i) = s_memory(i+1)) and (s_memory(i) /= "0000") then
									s_score_temp    <= s_memory(i);
									s_memory(i) 	 <= "0000";
									s_memory(i+1)   <= std_logic_vector(unsigned(s_score_temp) + unsigned(s_score_temp));
									mergedBoxs <= true;
								end if;
								if (s_memory(i) = "0000") and (s_memory(i+1) /= "0000") then
									s_memory(i+1)   <= s_memory(i);
									s_memory(i) <= "0000";
								end if;
							end loop;
							
							moveRight_line4 : for i in 12 to 14 loop
								if (s_memory(i) = s_memory(i+1)) and (s_memory(i) /= "0000") then
									s_score_temp    <= s_memory(i);
									s_memory(i) 	 <= "0000";
									s_memory(i+1)   <= std_logic_vector(unsigned(s_score_temp) + unsigned(s_score_temp));
									mergedBoxs <= true;
								end if;
								if (s_memory(i) = "0000") and (s_memory(i+1) /= "0000") then
									s_memory(i+1)   <= s_memory(i);
									s_memory(i) <= "0000";
								end if;
							end loop;
						end if;
						end if;

--					-- ====================================================
--					-- Up
					if (moveDir = "10") then
						moveUp : for i in 15 downto 4 loop
							if (s_memory(i) = s_memory(i-4)) and (s_memory(i-4) /= "0000") then
								s_score_temp  <= s_memory(i);
								s_memory(i)   <= "0000";
								s_memory(i-4) <= std_logic_vector(unsigned(s_score_temp) + unsigned(s_score_temp));
								mergedBoxs <= true;
							end if;
							if (s_memory(i-4) = "0000") and (s_memory(i) /= "0000") then
									s_memory(i-4)   <= s_memory(i);
									s_memory(i) <= "0000";
								end if;
						end loop;
					
					
--					-- ====================================================
--					-- Down
					else
						if (moveDir = "11") then
							moveDown : for i in 0 to 11 loop
								if (s_memory(i) = s_memory(i+4)) and (s_memory(i+4) /= "0000") then
									s_score_temp  <= s_memory(i);
									s_memory(i)   <= "0000";
									s_memory(i+4) <= std_logic_vector(unsigned(s_score_temp) + unsigned(s_score_temp));
									mergedBoxs <= true;
								end if;
								if (s_memory(i+4) = "0000") and (s_memory(i) /= "0000") then
										s_memory(i+4)   <= s_memory(i);
										s_memory(i) <= "0000";
									end if;
							end loop;
						end if;
					end if;	
				end if;
			end if;
			
			-- generate new blocks on one empty position (for ... until find = 0?. if it doesn't, done = 1)
			-- generate box
				for i in 0 to 15 loop
					if ( (s_memory(i) = "0000") and (mergedBoxs = true) and generated = false) then 
						s_memory(i) <= "0001";
						generated <= true;			-- forces generation of just one box
						end if;
					end loop;
	
	end process;
	
	readData <= s_memory(to_integer(unsigned(readAddress)));

-- score
--	for i in s_memory range loop
--		s_score = s_score + s_memory(i);
--	end loop;
--		
--	s_score_vector <= std_logic_vector(s_score);
--	score1 <= s_score_vector(7 downto 0);
--	score2 <= s_score_vector(15 downto 8);		

end Behavioral;







