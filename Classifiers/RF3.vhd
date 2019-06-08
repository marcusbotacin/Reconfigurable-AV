library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RF is 
   port( Clock_enable_B: in std_logic;
 	 Clock:     in std_logic;
 	 Reset:     in std_logic;
    HPC0:      in std_logic_vector(31 downto 0);
	 HPC1:      in std_logic_vector(31 downto 0);
	 HPC2:      in std_logic_vector(31 downto 0);
	 HPC3:      in std_logic_vector(31 downto 0);
	 HPC4:      in std_logic_vector(31 downto 0);
 	 Detection: out std_logic
    );
end RF;

architecture Behavioral of RF is
	signal RF0: std_logic_vector(31 downto 0) := (others => '0');
	signal W0, W1, W2, W3, W4, W5, W6, W7, W8, W9, W10, W11, W12: std_logic_vector(31 downto 0) := (others => '0');
	signal V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14: std_logic_vector(31 downto 0) := (others => '0');
	signal T: std_logic_vector(31 downto 0) := (others => '0');
   signal temp: std_logic;
begin process(Clock,Reset)
   begin
      if Reset='1' then
         temp <= '0';
			RF0 <= (others => '0');
			V0 <= "00000000000000000000000000000001";
			V1 <= "00000000000000000000000000000100";
			V2 <= "00000000000000000000000000001100";
			V3 <= "00000000000000000000000000000010";
			V4 <= "00000000000000000000000000000110";
			V5 <= "00000000000000000000000000100000";
			V6 <= "00000000000000000000000001100000";
			V7 <= "00000000000000000000000000011100";
			V8 <= "00000000000000000000000001000000";
			V9 <= "00000000000000000000000010000000";
			V10 <= "00000000000000000000001000000000";
			V11 <= "00000000000000000000010000000000";
			V12 <= "00000000000000000000000110000000";
			V13 <= "00000000000000000000100000000000";
			V14 <= "00000000000000000000101000000000";
			W0 <= "00000000000000000000001000000000";
			W1 <= "00000000000000000001000000000000";
			W2 <= "00000000000000000010000000000000";
			W3 <= "00000000000000000100000000000000";
			W4 <= "00000000000000001000000000000000";
			W5 <= "00000000000000011000000000000000";
			W6 <= "00000000000000001000000000000000";
			W7 <= "00000000000000100000000000000000";
			W8 <= "00000000000001000000000000000000";
			W9 <= "00000000000010000000000000000000";
			W10<= "00000000000100000000000000000000";
			W11 <= "00000000010000000000000000000000";
			W12 <= "00000000100000000000000000000000";
			T <= (others => '1');
      elsif(rising_edge(Clock)) then
			if HPC2 < W0 then
				if HPC1 < W1 then
					if HPC4 < W2 then
						if HPC2 < W3 then
							RF0 <= V0;
						else
							RF0 <= V1;
						end if;
					else
						if HPC3 < W4 then
							RF0 <= V2;
						else
							RF0 <= V3;
						end if;
					end if;
				else
					if HPC2 < W5 then
						if HPC4 < W6 then
							RF0 <= V4;
						else
							RF0 <= V5;
						end if;
					else
						if HPC1 < W7 then
							RF0 <= V6;
						else
							RF0 <= V7;
						end if;
					end if;
				end if;
			else
				if HPC1 < W8 then
					if HPC4 < W9 then
						if HPC0 < W9 then
							RF0 <= V8;
						else
							RF0 <= V9;
						end if;
					else
						RF0 <= V10;
					end if;
				else
					if HPC3 < W10 then
						if HPC2 < W11 then
							RF0 <= V11;
						else
							RF0 <= V12;
						end if;
					else
						if HPC1 < W12 then
							RF0 <= V13;
						else
							RF0 <= V14;
						end if;
					end if;
				end if;
			end if;
         if RF0 > T then
				temp <= '1';
         else
            temp <= '0';
         end if;
      end if;
   end process;
   Detection <= temp;
end Behavioral;