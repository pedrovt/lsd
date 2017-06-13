-- ====================================================================================================
-- CONTROLPATH: MoveUnit 
-- Depending on the value of the 4 KEY inputs of the FPGA, it indicates to the DATAPATH whether 
-- there is movement of the boxes in the board - and if so, which direction (left / right / up / down).
-- If more than one button is clicked at the same time, KEY [3] has maximum priority - ie the remaining 
-- buttons will be ignored - followed by KEY [2], KEY [1] and last KEY [0].

-- Inputs : Outputs (Move/MoveDir) : Direction
-- KEY[3] : 11/1 : Down
-- KEY[2] : 10/1 : Up
-- KEY[1] : 01/1 : Right
-- KEY[0] : 00/1 : Left
-- ====================================================================================================

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MoveUnit is
    port (
        KEY_0   : in  STD_LOGIC;
		  KEY_1   : in  STD_LOGIC;
		  KEY_2   : in  STD_LOGIC;
		  KEY_3   : in  STD_LOGIC;
        clk     : in  STD_LOGIC;
        move    : out STD_LOGIC;
        moveDir : out STD_LOGIC_VECTOR(1 downto 0));
end MoveUnit;


architecture Behavioral of MoveUnit is

begin
	process(clk, KEY_0, KEY_1, KEY_2, KEY_3)
	begin
		if (rising_edge(clk)) then
			move <= '1';
			if    (KEY_3 = '1') then moveDir <= "11";
			else 
				if (KEY_2 = '1') then moveDir <= "10";
				else 
					if (KEY_1 = '1') then moveDir <= "01";
					else
						if (KEY_0 = '1') then moveDir <= "00";
						else 
							move    <= '0';
							moveDir <= "00";
						end if;
					end if;
				end if;
			end if;
		end if;
	end process;	
end Behavioral;