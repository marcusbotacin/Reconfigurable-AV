library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RF is 
   port( Clock_enable_B: in std_logic;
 	 Clock:     in std_logic;
 	 Reset:     in std_logic;
    HPC1:      in std_logic_vector(31 downto 0);
	 HPC2:      in std_logic_vector(31 downto 0);
	 HPC3:      in std_logic_vector(31 downto 0);
	 HPC4:      in std_logic_vector(31 downto 0);
	 HPC5:      in std_logic_vector(31 downto 0);
 	 Detection: out std_logic
    );
end RF;

architecture Behavioral of RF is
	signal temp: std_logic;
	signal RF0 : std_logic_vector(31 downto 0);
begin process(Clock,Reset)
   begin
      if Reset='1' then
         temp <= '0';
      elsif(rising_edge(Clock)) then
         if Clock_enable_B='0' then
				-- RF0
				if HPC2 < 403796 then
					if HPC1 < 19128 then
						if HPC4 < 388108 then
							if HPC2 < 273587 then
								RF0 <= "00000000000000000000000000000001";
							else
								RF0 <= "00000000000000000000000000000011";
							end if;
						end if;
					end if;
				end if;
				if RF0 > 0 then
					temp <= '1';
				else	
					temp <= '0';
				end if;
         end if;
      end if;
   end process;
   Detection <= temp;
end Behavioral;