--sevenSegDisp
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_STD.all;
use std.textio;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenSegDisp is
    Port (   
    --A : in STD_LOGIC_VECTOR (7 downto 0);  
            X : in STD_LOGIC;
            Y : in STD_LOGIC;
            Z : in STD_LOGIC;
            A : out std_logic;
            B : out std_logic;
            C : out std_logic;
            D : out std_logic;
            E : out std_logic;
            F : out std_logic;
            G : out std_logic);
        
end sevenSegDisp;

architecture Behavioral of sevenSegDisp is


begin 
A <= NOT X;
B <= (NOT Y AND NOT Z) OR (NOT X AND Z);
C <= (NOT X) AND (NOT Y AND NOT Z);
D <= (NOT X AND Y) OR (NOT X AND NOT Z);
E <= '0';
F <= (NOT X AND NOT Z);
G <= (NOT X AND NOT Z) OR (NOT X AND Y);


 
     -- pragma synthesis_off

     -- pragma synthesis_on
  
 


end Behavioral;
