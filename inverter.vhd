----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: AUSTIN BOLINGER
-- 
-- Create Date:    16:46:46 02/03/2014 
-- Design Name: Inverter
-- Module Name:    inverter - Behavioral 
-- Project Name: CE2
-- Target Devices: inverter gate
-- Tool versions: 
-- Description: inverts signal
--
-- Dependencies: 
--
-- Revision: 1
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity inverter is
    Port ( I : in  STD_LOGIC;
           O : out  STD_LOGIC);
end inverter;

architecture Behavioral of inverter is

signal I_NOT : STD_LOGIC;
	
begin

I_NOT <= not I;
O <= I_NOT;

end Behavioral;

