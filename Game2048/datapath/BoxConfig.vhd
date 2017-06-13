-- ====================================================================================================
-- DATAPATH: BoxConfig Package
-- Implements a package containing the information for each box: 
-- Coordinates, Number (from 2 to 2048) and Color (R,G,B components with 8 bits each)
--
-- ====================================================================================================

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.vga_config.all;

package BoxConfig is
	type box is record
    -- x position
	 xinit : integer range 0 to 800; 
    xend  : integer range 0 to 800;
	 
	 -- y position
	 yinit : integer range 0 to 600;    
	 yend  : integer range 0 to 600;
	 
	 -- number (2-2048)
	 num : std_logic_vector(11 downto 0);
	
	 -- color in RGB
	 r : std_logic_vector(7 downto 0); -- red color component
    g : std_logic_vector(7 downto 0); -- green color component
    b : std_logic_vector(7 downto 0); -- blue color component
  end record box;
  
end package BoxConfig;