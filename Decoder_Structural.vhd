----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: AUSTIN BOLINGER
-- 
-- Create Date:    16:52:10 02/03/2014 
-- Design Name: decoder at the structural implementation
-- Module Name:    Decoder_Structural - Structural 
-- Project Name: CE2
-- Target Devices: decoder
-- Tool versions: 
-- Description: translates bit input to unique output
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

entity Decoder_Structural is

    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Y0 : out  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC;
           Y3 : out  STD_LOGIC);
end Decoder_Structural;

architecture Structural of Decoder_Structural is
	
	COMPONENT inverter
	Port ( I : in  STD_LOGIC;
           O : out  STD_LOGIC);
	end COMPONENT;
	
	COMPONENT myand3
	Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           O : out  STD_LOGIC);
	end COMPONENT;
	
	signal I0_NOT, I1_NOT : STD_LOGIC;
	
begin
	
--	I0_NOT <= not I0;
--	
--	I1_NOT <= not I1;

	Y0_myand3: myand3 PORT MAP(I0_NOT, I1_NOT, EN, Y0);

	Y1_myand3: myand3 PORT MAP(I0, I1_NOT, EN, Y1);

	Y2_myand3: myand3 PORT MAP(I0_NOT, I1, EN, Y2);

	Y3_myand3: myand3 PORT MAP(I0, I1, EN, Y3);

	U4_inverter: inverter Port MAP(I0,I0_NOT);
	
	U5_inverter: inverter Port MAP(I1,I1_NOT);

end Structural;

