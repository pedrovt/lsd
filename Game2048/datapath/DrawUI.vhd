-- ====================================================================================================
-- DATAPATH : DrawUI
-- Generates the VGA output signals 
-- A process is used to generate the static UI and to read and process the s_board info
-- ====================================================================================================


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use work.vga_config.all;
use work.BoxConfig.all;

entity DrawUI is
port (clk:	 in std_logic;
		
		info_num 	: in std_logic_vector(3 downto 0);	-- readDataAddr from GameBoardScore (ie the number 0-15 of the box)
		info 			: in std_logic_vector(3 downto 0);	-- readData from GameBoardScore (ie the score of the box)
		
		reset			: in std_logic; 							-- reset (start from datapath);
		
		vga_clk     : out std_logic;                    -- vga pixel clock
		vga_hs      : out std_logic;                    -- vga horizontal sync
		vga_vs      : out std_logic;                    -- vga vertical sync
		vga_sync_n  : out std_logic;                    -- vga sync signal (active low)
		vga_blank_n : out std_logic;                    -- vga blank signal (active low)
		vga_r       : out std_logic_vector(7 downto 0); -- vga red component
		vga_g       : out std_logic_vector(7 downto 0); -- vga green component
		vga_b       : out std_logic_vector(7 downto 0));-- vga blue component
end DrawUI;

architecture Draw of DrawUI is
	signal s_data : vga_data_t;
	signal s_rgb  : vga_rgb_t;
	signal s_clk  : std_logic;
	
	type Board is array(0 to 15) of box;
	signal s_board  : Board;  
	signal s_r, s_g, s_b : std_logic_vector(7 downto 0);
	
	begin
	-- ====================================================================================================
	-- Instanciate vga entities
	
	-- Instanciate vga_clock_generator entity
	vga_clock_generator: entity work.vga_clock_generator(v1)
								port map(clock_50  => clk,
											vga_clock => s_clk);
	
	-- Instanciate vga_controller entity
	vga_controller : entity work.vga_controller(v1)
						  port map(clock 		 => s_clk,
									  reset 		 => reset,
									  vga_data_0 => s_data);
	
	-- Instanciate vga_output entity
	vga_output : entity work.vga_output(v1)
					 port map(clock       => s_clk,
								 vga_data    => s_data,
								 vga_rgb     => s_rgb,
								 vga_clk     => vga_clk,
								 vga_hs   	 => vga_hs,
								 vga_vs      => vga_vs,
								 vga_sync_n  => vga_sync_n,
								 vga_blank_n => vga_blank_n,
								 vga_r		 => vga_r,
								 vga_g		 => vga_g,
								 vga_b		 => vga_b
								);
	
	-- ====================================================================================================
	-- Initialize x and y coordinates for boxes
	
		-- Line 1
		init1 : for i in 1 to 4 generate
			s_board(i-1).xinit <= (50 + 20* i + 100* (i-1) + 90);
			s_board(i-1).xend  <= (50 + 20* i + 100* (i-1) + 100 + 90);
			s_board(i-1).yinit <= (50 + 20* 1 + 100* (1-1));
			s_board(i-1).yend  <= (50 + 20* 1 + 100* (1-1) + 100);
			s_board(i-1).num   <= (others => '0');
		end generate;
		
		-- Line 2
		init2 : for i in 1 to 4 generate
			s_board(i-1+4).xinit <= (50 + 20* i + 100* (i-1) + 90);
			s_board(i-1+4).xend  <= (50 + 20* i + 100* (i-1) + 100 + 90);
			s_board(i-1+4).yinit <= (50 + 20* 2 + 100* (2-1));
			s_board(i-1+4).yend  <= (50 + 20* 2 + 100* (2-1) + 100);
			s_board(i-1+4).num   <= (others => '0');
		end generate;
	
		-- Line 3
		init3 : for i in 1 to 4 generate
			s_board(i-1+8).xinit <= (50 + 20* i + 100* (i-1) + 90);
			s_board(i-1+8).xend  <= (50 + 20* i + 100* (i-1) + 100 + 90);
			s_board(i-1+8).yinit <= (50 + 20* 3 + 100* (3-1));
			s_board(i-1+8).yend  <= (50 + 20* 3 + 100* (3-1) + 100);
			s_board(i-1+8).num   <= (others => '0');
		end generate;
	
		-- Line 4
		init4 : for i in 1 to 4 generate
			s_board(i-1+12).xinit <= (50 + 20* i + 100* (i-1) + 90);
			s_board(i-1+12).xend  <= (50 + 20* i + 100* (i-1) + 100 + 90);
			s_board(i-1+12).yinit <= (50 + 20* 4 + 100* (4-1));
			s_board(i-1+12).yend  <= (50 + 20* 4 + 100* (4-1) + 100);
			s_board(i-1+12).num   <= (others => '0');
		end generate;
	
	-- ====================================================================================================
	-- Change color on s_board(info_num) to the color corresponding to the power of two in info input
	color_Boxs : process (info, info_num, s_r, s_g, s_b) is
	begin
		case info is
			when "0001"	=> s_r <= x"EA";				-- 1
			when "0010" => s_r <= x"E9";				-- 2
			when "0011"	=> s_r <= x"E1";				-- 3
			when "0100"	=> s_r <= x"DE";				-- 4
			when "0101"	=> s_r <= x"DB";				-- 5
			when "0110"	=> s_r <= x"D8";				-- 6
			when "0111"	=> s_r <= x"E4";				-- 7
--			when "1000"	=> s_r <=						-- 8
--			when "1001"	=> s_r <=						-- 9		
--			when "1010" => s_r <=						-- 10
--			when "1011" => s_r <=						-- 11
			when others => s_r <= x"BB";
		end case;

		case info is
			when "0001"	=> s_g <= x"E3";				-- 1
			when "0010" => s_g <= x"DF";				-- 2
			when "0011"	=> s_g <= x"B0";				-- 3
			when "0100"	=> s_g <= x"95";				-- 4
			when "0101"	=> s_g <= x"7B";				-- 5
			when "0110"	=> s_g <= x"5F";				-- 6
			when "0111"	=> s_g <= x"CE";				-- 7
--			when "1000"	=> s_g <=						-- 8
--			when "1001"	=> s_g <=						-- 9		
--			when "1010" => s_g <=						-- 10
--			when "1011" => s_g <=						-- 11
			when others => s_g <= x"AD";
		end case;
		
		case info is
			when "0001"	=> s_b <= x"D9";				-- 1
			when "0010" => s_b <= x"C8";				-- 2
			when "0011"	=> s_b <= x"7B";				-- 3
			when "0100"	=> s_b <= x"65";				-- 4
			when "0101"	=> s_b <= x"61";				-- 5
			when "0110"	=> s_b <= x"40";				-- 6
			when "0111"	=> s_b <= x"77";				-- 7
--			when "1000"	=> s_b <=						-- 8
--			when "1001"	=> s_b <=						-- 9		
--			when "1010" => s_b <=						-- 10
--			when "1011" => s_b <=						-- 11
			when others => s_b <= x"A0";
		end case;
		
		s_board(to_integer(unsigned(info_num))).r <= s_r;
		s_board(to_integer(unsigned(info_num))).g <= s_g;
		s_board(to_integer(unsigned(info_num))).b <= s_b;
		
	end process;
	
	-- ====================================================================================================
	-- Combinational process for UI
	static_UI : process(s_data, s_board) is
	begin
		-- Draws border : RGB 250-248-239
		s_rgb.r <= x"FA"; 
		s_rgb.g <= x"F8"; 
		s_rgb.b <= x"EF"; 	
				
		-- Draws board : RGB 180-154-137
		if (s_data.x < 50 or s_data.x >= vga_width-50 or s_data.y < 50 or s_data.y >= vga_height-50) then
			s_rgb.r <= x"B4"; 
			s_rgb.g <= x"9A"; 
			s_rgb.b <= x"89"; 
		end if;
		
		-- Draws the boxes
		boxs : for i in 0 to 15 loop
			if ((s_data.x > s_board(i).xinit and s_data.x < s_board(i).xend) and (s_data.y > s_board(i).yinit and s_data.y < s_board(i).yend)) then
				s_rgb.r <= s_board(i).r; 
				s_rgb.g <= s_board(i).g; 
				s_rgb.b <= s_board(i).b;
			end if;
		end loop;
	end process;
end Draw;