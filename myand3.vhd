----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: AUSTIN BOLINGER
-- 
-- Create Date:    17:04:38 02/03/2014 
-- Design Name: and gate Y
-- Module Name:    myand3 - Behavioral 
-- Project Name: CE2
-- Target Devices: and gate
-- Tool versions: 
-- Description: one output using an and gate
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

entity myand3 is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           O : out  STD_LOGIC);
end myand3;

architecture Behavioral of myand3 is

signal I0_NOT, I1_NOT : STD_LOGIC;

begin
	
	I0_NOT <= not I0;
	I1_NOT <= not I1;
	O <= I0 and I1 and I2;

end Behavioral;

