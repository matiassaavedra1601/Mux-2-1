----------------------------------------------------------------------------------
-- Company: Universidad del Bio-Bio
-- Engineer: Matias Gonzalo Saavedra Miranda 
-- 
-- Create Date:    11:22:43 10/26/2018 
-- Design Name: 
-- Module Name:    mux - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux is
generic (width: integer:=4);
	port (d0, d1:	in STD_LOGIC_VECTOR(width-1 downto 0);
		s:			 	in STD_LOGIC;
		y:			 	out STD_LOGIC_VECTOR(width-1 downto 0));
end mux;

architecture Behavioral of mux is

begin
	y <= d0 when s = '0' else d1;

end Behavioral;

