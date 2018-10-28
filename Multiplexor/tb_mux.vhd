--------------------------------------------------------------------------------
-- Company: Universidad del Bio-Bio
-- Engineer: MAtias Gonzalo Saavedra Miranda
--
-- Create Date:   11:33:43 10/26/2018
-- Design Name:   
-- Module Name:   D:/Matias/Documents/UNIVERSIDAD/Arqui/Multiplexor/tb_mux.vhd
-- Project Name:  Multiplexor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_mux IS
END tb_mux;
 
ARCHITECTURE behavior OF tb_mux IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux
    PORT(
         d0 : IN  std_logic_vector(3 downto 0);
         d1 : IN  std_logic_vector(3 downto 0);
         s : IN  std_logic;
         y : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal d0 : std_logic_vector(3 downto 0) := (others => '0');
   signal d1 : std_logic_vector(3 downto 0) := (others => '0');
   signal s : std_logic := '0';

 	--Outputs
   signal y : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux PORT MAP (
          d0 => d0,
          d1 => d1,
          s => s,
          y => y
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
	  s <= '1';	--se escoge un s para definir que bit pasara el mux-
					--si es 0 pasara los bit de la entrada d0
					--si es 1 pasara los bit de la entrada d1
     d0 <= "1100";
	  d1 <= "0101";
      wait for 100 ns;
	  s <= '0';
     d0 <= "0011";
	  d1 <= "1111";
	  wait for 100 ns;
	  s <= '1';
     d0 <= "1010";
	  d1 <= "1001";
	  wait for 100 ns;
	  s <= '0';
     d0 <= "1011";
	  d1 <= "1101";
	  wait for 100 ns;
	  s <= '1';
     d0 <= "0011";
	  d1 <= "1111";
	  wait for 100 ns;
	  s <= '0';
     d0 <= "1000";
	  d1 <= "1111";
      -- insert stimulus here 

      wait;
   end process;

END;
