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
	signal RF,RF2,RF3,RF4,Y,V1,V2,V3,V4,V5,V6,V7,V8,V9,V10,V11,V12,V13,V14,V15,V16, W1,W2,W3,W4,W5,W6,W7,W8, W9, W10, W11, W12, W13, W14, W15: std_logic_vector(31 downto 0) := (others => '0');
    signal temp: std_logic;
begin process(Clock,Reset)
   begin
      if Reset='1' then
         temp <= '0';
         RF <= (others=>'0');
			RF2 <= (others=>'0');
			RF3 <= (others=>'0');
			RF4 <= (others=>'0');
         W1 <= "00000000000000000000000000000001";
			W2 <= "00000000000000000000000000000011";
			W3 <= "00000000000000000000000000000111";
			W4 <= "00000000000000000000000000001111";
			W5 <= "00000000000000000000000000011111";
			W6 <= "00000000000000000000000000111111";
			W7 <= "00000000000000000000000001111111";
			W8 <= "00000000000000000000000011111111";
			W9 <=  "00000000000000000000000111111111";
			W10 <= "00000000000000000000001111111111";
			W11 <= "00000000000000000000011111111111";
			W12 <= "00000000000000000000111111111111";
			W13 <= "00000000000000000001111111111111";
			W14 <= "00000000000000000011111111111111";
			W15 <= "00000000000000000111111111111111";
         V1 <= "00000000000000000000000000000010";
			V2 <= "00000000000000000000000000000011";
			V3 <= "00000000000000000000000000000111";
			V4 <= "00000000000000000000000000001111";
			V5 <= "00000000000000000000000000011111";
			V6 <= "00000000000000000000000000111111";
			V7 <= "00000000000000000000000001111111";
			V8 <= "00000000000000000000000011111111";
			V9 <= "00000000000000000000000011111111";
			V10 <= "00000000000000000000000011111111";
			V11 <= "00000000000000000000000011111111";
			V12 <= "00000000000000000000000011111111";
			V13 <= "00000000000000000000000111111111";
			V14 <= "00000000000000000000001111111111";
			V15 <= "00000000000000000000011111111111";
			V16 <= "00000000000000000000111111111111";
         Y  <= (others=>'0');
      elsif(rising_edge(Clock)) then
         if Clock_enable_B='0' then
			if HPC2 > W12 then
			if HPC3 > W13 then 
			if HPC4 > W12 then 
			if HPC5 > W11 then 
            if HPC1 > W1 then
					if HPC2 > W2 then
						if HPC3 > W3 then
							if HPC4 > W4 then
								RF <= V1;
							else
								RF <= V2;
							end if;
						else
							if HPC5 > W5 then
								RF <= V3;
							else
								RF <= V4;
							end if;
						end if;
					else
						if HPC5 > W6 then
							if HPC4 > W7 then
								RF <= V5;
							else
								RF <= V6;
							end if;
						else
							if HPC3 > W8 then
								RF <= V7;
							else
								RF <= V8;
							end if;
						end if;
					end if;
				else
					if HPC1 > W9 then
						if HPC4 > W10 then
							if HPC4 > W11 then
								RF <= V9;
							else
								RF <= V10;
							end if;
						else
							if HPC2 > W12 then
								RF <= V11;
							else
								RF <= V12;
							end if;
						end if;
					else
						if HPC4 > W13 then
							if HPC2 > W14 then
								RF <= V13;
							else
								RF <= V14;
							end if;
						else
							if HPC1 > W15 then
								RF <= V15;
							else
								RF <= V16;
							end if;
						end if;
					end if;
            end if;
			else
				if HPC1 > W1 then
					if HPC2 > W12 then
						if HPC3 > W13 then
							if HPC4 > W14 then
								RF <= V1;
							else
								RF <= V2;
							end if;
						else
							if HPC5 > W15 then
								RF <= V3;
							else
								RF <= V4;
							end if;
						end if;
					else
						if HPC5 > W3 then
							if HPC4 > W2 then
								RF <= V5;
							else
								RF <= V6;
							end if;
						else
							if HPC3 > W1 then
								RF <= V7;
							else
								RF <= V8;
							end if;
						end if;
					end if;
				else
					if HPC1 > W2 then
						if HPC4 > W3 then
							if HPC4 > W1 then
								RF <= V9;
							else
								RF <= V10;
							end if;
						else
							if HPC2 > W2 then
								RF <= V11;
							else
								RF <= V12;
							end if;
						end if;
					else
						if HPC4 > W3 then
							if HPC2 > W4 then
								RF <= V13;
							else
								RF <= V14;
							end if;
						else
							if HPC1 > W5 then
								RF <= V15;
							else
								RF <= V16;
							end if;
						end if;
					end if;
            end if;
			end if;
			else
				if HPC5 > W11 then 
            if HPC1 > W11 then
					if HPC2 > W12 then
						if HPC3 > W13 then
							if HPC4 > W14 then
								RF <= V1;
							else
								RF <= V2;
							end if;
						else
							if HPC5 > W6 then
								RF <= V3;
							else
								RF <= V4;
							end if;
						end if;
					else
						if HPC5 > W7 then
							if HPC4 > W8 then
								RF <= V5;
							else
								RF <= V6;
							end if;
						else
							if HPC3 > W8 then
								RF <= V7;
							else
								RF <= V8;
							end if;
						end if;
					end if;
				else
					if HPC1 > W9 then
						if HPC4 > W11 then
							if HPC4 > W12 then
								RF <= V9;
							else
								RF <= V10;
							end if;
						else
							if HPC2 > W13 then
								RF <= V11;
							else
								RF <= V12;
							end if;
						end if;
					else
						if HPC4 > W3 then
							if HPC2 > W4 then
								RF <= V13;
							else
								RF <= V14;
							end if;
						else
							if HPC1 > W15 then
								RF <= V15;
							else
								RF <= V16;
							end if;
						end if;
					end if;
            end if;
			else
				if HPC1 > W1 then
					if HPC2 > W12 then
						if HPC3 > W13 then
							if HPC4 > W14 then
								RF <= V1;
							else
								RF <= V2;
							end if;
						else
							if HPC5 > W15 then
								RF <= V3;
							else
								RF <= V4;
							end if;
						end if;
					else
						if HPC5 > W3 then
							if HPC4 > W2 then
								RF <= V5;
							else
								RF <= V6;
							end if;
						else
							if HPC3 > W1 then
								RF <= V7;
							else
								RF <= V8;
							end if;
						end if;
					end if;
				else
					if HPC1 > W2 then
						if HPC4 > W3 then
							if HPC4 > W1 then
								RF <= V9;
							else
								RF <= V10;
							end if;
						else
							if HPC2 > W2 then
								RF <= V11;
							else
								RF <= V12;
							end if;
						end if;
					else
						if HPC4 > W3 then
							if HPC2 > W4 then
								RF <= V13;
							else
								RF <= V14;
							end if;
						else
							if HPC1 > W5 then
								RF <= V15;
							else
								RF <= V16;
							end if;
						end if;
					end if;
            end if;
			end if;
			end if;
			else
			if HPC4 > W12 then 
			if HPC5 > W11 then 
            if HPC1 > W1 then
					if HPC2 > W2 then
						if HPC3 > W3 then
							if HPC4 > W4 then
								RF <= V1;
							else
								RF <= V2;
							end if;
						else
							if HPC5 > W5 then
								RF <= V3;
							else
								RF <= V4;
							end if;
						end if;
					else
						if HPC5 > W6 then
							if HPC4 > W7 then
								RF <= V5;
							else
								RF <= V6;
							end if;
						else
							if HPC3 > W8 then
								RF <= V7;
							else
								RF <= V8;
							end if;
						end if;
					end if;
				else
					if HPC1 > W9 then
						if HPC4 > W10 then
							if HPC4 > W11 then
								RF <= V9;
							else
								RF <= V10;
							end if;
						else
							if HPC2 > W12 then
								RF <= V11;
							else
								RF <= V12;
							end if;
						end if;
					else
						if HPC4 > W13 then
							if HPC2 > W14 then
								RF <= V13;
							else
								RF <= V14;
							end if;
						else
							if HPC1 > W15 then
								RF <= V15;
							else
								RF <= V16;
							end if;
						end if;
					end if;
            end if;
			else
				if HPC1 > W1 then
					if HPC2 > W12 then
						if HPC3 > W13 then
							if HPC4 > W14 then
								RF <= V1;
							else
								RF <= V2;
							end if;
						else
							if HPC5 > W15 then
								RF <= V3;
							else
								RF <= V4;
							end if;
						end if;
					else
						if HPC5 > W3 then
							if HPC4 > W2 then
								RF <= V5;
							else
								RF <= V6;
							end if;
						else
							if HPC3 > W1 then
								RF <= V7;
							else
								RF <= V8;
							end if;
						end if;
					end if;
				else
					if HPC1 > W2 then
						if HPC4 > W3 then
							if HPC4 > W1 then
								RF <= V9;
							else
								RF <= V10;
							end if;
						else
							if HPC2 > W2 then
								RF <= V11;
							else
								RF <= V12;
							end if;
						end if;
					else
						if HPC4 > W3 then
							if HPC2 > W4 then
								RF <= V13;
							else
								RF <= V14;
							end if;
						else
							if HPC1 > W5 then
								RF <= V15;
							else
								RF <= V16;
							end if;
						end if;
					end if;
            end if;
			end if;
			else
				if HPC5 > W11 then 
            if HPC1 > W11 then
					if HPC2 > W12 then
						if HPC3 > W13 then
							if HPC4 > W14 then
								RF <= V1;
							else
								RF <= V2;
							end if;
						else
							if HPC5 > W6 then
								RF <= V3;
							else
								RF <= V4;
							end if;
						end if;
					else
						if HPC5 > W7 then
							if HPC4 > W8 then
								RF <= V5;
							else
								RF <= V6;
							end if;
						else
							if HPC3 > W8 then
								RF <= V7;
							else
								RF <= V8;
							end if;
						end if;
					end if;
				else
					if HPC1 > W9 then
						if HPC4 > W11 then
							if HPC4 > W12 then
								RF <= V9;
							else
								RF <= V10;
							end if;
						else
							if HPC2 > W13 then
								RF <= V11;
							else
								RF <= V12;
							end if;
						end if;
					else
						if HPC4 > W3 then
							if HPC2 > W4 then
								RF <= V13;
							else
								RF <= V14;
							end if;
						else
							if HPC1 > W15 then
								RF <= V15;
							else
								RF <= V16;
							end if;
						end if;
					end if;
            end if;
			else
				if HPC1 > W8 then
					if HPC2 > W13 then
						if HPC3 > W14 then
							if HPC4 > W1 then
								RF <= V1;
							else
								RF <= V2;
							end if;
						else
							if HPC5 > W15 then
								RF <= V3;
							else
								RF <= V4;
							end if;
						end if;
					else
						if HPC5 > W2 then
							if HPC4 > W12 then
								RF <= V1;
							else
								RF <= V3;
							end if;
						else
							if HPC3 > W1 then
								RF <= V7;
							else
								RF <= V8;
							end if;
						end if;
					end if;
				else
					if HPC1 > W7 then
						if HPC4 > W13 then
							if HPC4 > W7 then
								RF <= V9;
							else
								RF <= V11;
							end if;
						else
							if HPC2 > W12 then
								RF <= V1;
							else
								RF <= V2;
							end if;
						end if;
					else
						if HPC4 > W1 then
							if HPC2 > W14 then
								RF <= V3;
							else
								RF <= V4;
							end if;
						else
							if HPC1 > W3 then
								RF <= V11;
							else
								RF <= V16;
							end if;
						end if;
					end if;
            end if;
			end if;
			end if;
			end if;
			else
				if HPC1 > W13 then 
			if HPC3 > W12 then 
			if HPC2 > W1 then 
            if HPC1 > W6 then
					if HPC2 > W3 then
						if HPC2 > W1 then
							if HPC2 > W14 then
								RF <= V11;
							else
								RF <= V12;
							end if;
						else
							if HPC2 > W2 then
								RF <= V13;
							else
								RF <= V14;
							end if;
						end if;
					else
						if HPC5 > W6 then
							if HPC4 > W7 then
								RF <= V5;
							else
								RF <= V6;
							end if;
						else
							if HPC3 > W8 then
								RF <= V7;
							else
								RF <= V2;
							end if;
						end if;
					end if;
				else
					if HPC5 > W7 then
						if HPC3 > W15 then
							if HPC4 > W1 then
								RF <= V9;
							else
								RF <= V10;
							end if;
						else
							if HPC2 > W12 then
								RF <= V11;
							else
								RF <= V12;
							end if;
						end if;
					else
						if HPC4 > W13 then
							if HPC2 > W14 then
								RF <= V13;
							else
								RF <= V14;
							end if;
						else
							if HPC3 > W15 then
								RF <= V5;
							else
								RF <= V7;
							end if;
						end if;
					end if;
            end if;
			else
				if HPC1 > W1 then
					if HPC2 > W12 then
						if HPC3 > W13 then
							if HPC4 > W14 then
								RF <= V1;
							else
								RF <= V2;
							end if;
						else
							if HPC5 > W15 then
								RF <= V3;
							else
								RF <= V4;
							end if;
						end if;
					else
						if HPC5 > W3 then
							if HPC4 > W2 then
								RF <= V5;
							else
								RF <= V6;
							end if;
						else
							if HPC3 > W1 then
								RF <= V7;
							else
								RF <= V8;
							end if;
						end if;
					end if;
				else
					if HPC1 > W2 then
						if HPC4 > W3 then
							if HPC4 > W1 then
								RF <= V9;
							else
								RF <= V10;
							end if;
						else
							if HPC2 > W2 then
								RF <= V11;
							else
								RF <= V12;
							end if;
						end if;
					else
						if HPC4 > W13 then
							if HPC4 > W4 then
								RF <= V1;
							else
								RF <= V4;
							end if;
						else
							if HPC2 > W5 then
								RF <= V15;
							else
								RF <= V16;
							end if;
						end if;
					end if;
            end if;
			end if;
			else
				if HPC5 > W1 then 
            if HPC2 > W11 then
					if HPC5 > W12 then
						if HPC3 > W3 then
							if HPC4 > W14 then
								RF <= V1;
							else
								RF <= V12;
							end if;
						else
							if HPC5 > W3 then
								RF <= V13;
							else
								RF <= V14;
							end if;
						end if;
					else
						if HPC5 > W7 then
							if HPC4 > W8 then
								RF <= V5;
							else
								RF <= V6;
							end if;
						else
							if HPC3 > W8 then
								RF <= V7;
							else
								RF <= V8;
							end if;
						end if;
					end if;
				else
					if HPC1 > W9 then
						if HPC1 > W11 then
							if HPC2 > W12 then
								RF <= V9;
							else
								RF <= V10;
							end if;
						else
							if HPC1 > W13 then
								RF <= V1;
							else
								RF <= V12;
							end if;
						end if;
					else
						if HPC4 > W3 then
							if HPC2 > W4 then
								RF <= V13;
							else
								RF <= V14;
							end if;
						else
							if HPC5 > W15 then
								RF <= V15;
							else
								RF <= V6;
							end if;
						end if;
					end if;
            end if;
			else
				if HPC1 > W1 then
					if HPC2 > W12 then
						if HPC3 > W13 then
							if HPC4 > W14 then
								RF <= V1;
							else
								RF <= V2;
							end if;
						else
							if HPC5 > W15 then
								RF <= V3;
							else
								RF <= V4;
							end if;
						end if;
					else
						if HPC5 > W3 then
							if HPC4 > W2 then
								RF <= V5;
							else
								RF <= V6;
							end if;
						else
							if HPC3 > W1 then
								RF <= V7;
							else
								RF <= V8;
							end if;
						end if;
					end if;
				else
					if HPC1 > W2 then
						if HPC4 > W3 then
							if HPC4 > W1 then
								RF <= V9;
							else
								RF <= V10;
							end if;
						else
							if HPC2 > W2 then
								RF <= V11;
							else
								RF <= V12;
							end if;
						end if;
					else
						if HPC4 > W3 then
							if HPC2 > W4 then
								RF <= V13;
							else
								RF <= V14;
							end if;
						else
							if HPC1 > W5 then
								RF <= V15;
							else
								RF <= V16;
							end if;
						end if;
					end if;
            end if;
			end if;
			end if;
			else
			if HPC4 > W12 then 
			if HPC5 > W11 then 
            if HPC1 > W1 then
					if HPC2 > W2 then
						if HPC3 > W3 then
							if HPC4 > W4 then
								RF <= V1;
							else
								RF <= V2;
							end if;
						else
							if HPC5 > W5 then
								RF <= V3;
							else
								RF <= V4;
							end if;
						end if;
					else
						if HPC5 > W6 then
							if HPC4 > W7 then
								RF <= V5;
							else
								RF <= V6;
							end if;
						else
							if HPC3 > W8 then
								RF <= V7;
							else
								RF <= V8;
							end if;
						end if;
					end if;
				else
					if HPC1 > W9 then
						if HPC4 > W10 then
							if HPC4 > W11 then
								RF <= V9;
							else
								RF <= V10;
							end if;
						else
							if HPC2 > W12 then
								RF <= V11;
							else
								RF <= V12;
							end if;
						end if;
					else
						if HPC4 > W13 then
							if HPC2 > W14 then
								RF <= V13;
							else
								RF <= V14;
							end if;
						else
							if HPC1 > W15 then
								RF <= V15;
							else
								RF <= V16;
							end if;
						end if;
					end if;
            end if;
			else
				if HPC1 > W1 then
					if HPC2 > W12 then
						if HPC3 > W13 then
							if HPC4 > W14 then
								RF <= V1;
							else
								RF <= V2;
							end if;
						else
							if HPC5 > W15 then
								RF <= V3;
							else
								RF <= V4;
							end if;
						end if;
					else
						if HPC5 > W3 then
							if HPC4 > W2 then
								RF <= V5;
							else
								RF <= V6;
							end if;
						else
							if HPC3 > W1 then
								RF <= V7;
							else
								RF <= V8;
							end if;
						end if;
					end if;
				else
					if HPC1 > W2 then
						if HPC4 > W3 then
							if HPC4 > W1 then
								RF <= V9;
							else
								RF <= V10;
							end if;
						else
							if HPC2 > W2 then
								RF <= V11;
							else
								RF <= V12;
							end if;
						end if;
					else
						if HPC4 > W3 then
							if HPC2 > W4 then
								RF <= V13;
							else
								RF <= V14;
							end if;
						else
							if HPC1 > W5 then
								RF <= V15;
							else
								RF <= V16;
							end if;
						end if;
					end if;
            end if;
			end if;
			else
				if HPC5 > W11 then 
            if HPC1 > W11 then
					if HPC2 > W12 then
						if HPC3 > W13 then
							if HPC4 > W14 then
								RF <= V1;
							else
								RF <= V2;
							end if;
						else
							if HPC5 > W6 then
								RF <= V3;
							else
								RF <= V4;
							end if;
						end if;
					else
						if HPC5 > W7 then
							if HPC4 > W8 then
								RF <= V5;
							else
								RF <= V6;
							end if;
						else
							if HPC3 > W8 then
								RF <= V7;
							else
								RF <= V8;
							end if;
						end if;
					end if;
				else
					if HPC1 > W9 then
						if HPC4 > W11 then
							if HPC4 > W12 then
								RF <= V9;
							else
								RF <= V10;
							end if;
						else
							if HPC2 > W13 then
								RF <= V11;
							else
								RF <= V12;
							end if;
						end if;
					else
						if HPC4 > W3 then
							if HPC2 > W4 then
								RF <= V13;
							else
								RF <= V14;
							end if;
						else
							if HPC1 > W15 then
								RF <= V15;
							else
								RF <= V16;
							end if;
						end if;
					end if;
            end if;
			else
				if HPC1 > W8 then
					if HPC2 > W13 then
						if HPC3 > W14 then
							if HPC4 > W1 then
								RF <= V1;
							else
								RF <= V2;
							end if;
						else
							if HPC5 > W15 then
								RF <= V3;
							else
								RF <= V4;
							end if;
						end if;
					else
						if HPC5 > W2 then
							if HPC4 > W12 then
								RF <= V1;
							else
								RF <= V3;
							end if;
						else
							if HPC3 > W1 then
								RF <= V7;
							else
								RF <= V8;
							end if;
						end if;
					end if;
				else
					if HPC1 > W7 then
						if HPC4 > W13 then
							if HPC4 > W7 then
								RF <= V9;
							else
								RF <= V11;
							end if;
						else
							if HPC2 > W12 then
								RF <= V1;
							else
								RF <= V2;
							end if;
						end if;
					else
						if HPC4 > W1 then
							if HPC2 > W14 then
								RF <= V3;
							else
								RF <= V4;
							end if;
						else
							if HPC1 > W3 then
								RF <= V11;
							else
								RF <= V16;
							end if;
						end if;
					end if;
            end if;
			end if;
			end if;
			end if;
			end if;
			if HPC2 > W12 then
            if HPC3 > W13 then 
            if HPC4 > W12 then 
            if HPC5 > W11 then 
            if HPC2 > W1 then
                    if HPC2 > W2 then
                        if HPC3 > W3 then
                            if HPC4 > W4 then
                                RF2 <= V1;
                            else
                                RF2 <= V2;
                            end if;
                        else
                            if HPC5 > W5 then
                                RF2 <= V3;
                            else
                                RF2 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W6 then
                            if HPC4 > W7 then
                                RF2 <= V5;
                            else
                                RF2 <= V6;
                            end if;
                        else
                            if HPC3 > W8 then
                                RF2 <= V7;
                            else
                                RF2 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W9 then
                        if HPC4 > W10 then
                            if HPC4 > W11 then
                                RF2 <= V9;
                            else
                                RF2 <= V10;
                            end if;
                        else
                            if HPC2 > W12 then
                                RF2 <= V3;
                            else
                                RF2 <= V12;
                            end if;
                        end if;
                    else
                        if HPC4 > W13 then
                            if HPC2 > W14 then
                                RF2 <= V13;
                            else
                                RF2 <= V14;
                            end if;
                        else
                            if HPC2 > W15 then
                                RF2 <= V15;
                            else
                                RF2 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W1 then
                    if HPC2 > W12 then
                        if HPC3 > W13 then
                            if HPC4 > W14 then
                                RF2 <= V1;
                            else
                                RF2 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF2 <= V3;
                            else
                                RF2 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W3 then
                            if HPC4 > W2 then
                                RF2 <= V5;
                            else
                                RF2 <= V6;
                            end if;
                        else
                            if HPC3 > W1 then
                                RF2 <= V7;
                            else
                                RF2 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W2 then
                        if HPC4 > W3 then
                            if HPC4 > W1 then
                                RF2 <= V9;
                            else
                                RF2 <= V10;
                            end if;
                        else
                            if HPC2 > W2 then
                                RF2 <= V3;
                            else
                                RF2 <= V12;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF2 <= V13;
                            else
                                RF2 <= V14;
                            end if;
                        else
                            if HPC2 > W5 then
                                RF2 <= V15;
                            else
                                RF2 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            else
                if HPC5 > W11 then 
            if HPC2 > W11 then
                    if HPC2 > W12 then
                        if HPC3 > W13 then
                            if HPC4 > W14 then
                                RF2 <= V1;
                            else
                                RF2 <= V2;
                            end if;
                        else
                            if HPC5 > W6 then
                                RF2 <= V3;
                            else
                                RF2 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W7 then
                            if HPC4 > W8 then
                                RF2 <= V5;
                            else
                                RF2 <= V6;
                            end if;
                        else
                            if HPC3 > W8 then
                                RF2 <= V7;
                            else
                                RF2 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W9 then
                        if HPC4 > W11 then
                            if HPC4 > W12 then
                                RF2 <= V9;
                            else
                                RF2 <= V10;
                            end if;
                        else
                            if HPC2 > W13 then
                                RF2 <= V3;
                            else
                                RF2 <= V12;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF2 <= V13;
                            else
                                RF2 <= V14;
                            end if;
                        else
                            if HPC2 > W15 then
                                RF2 <= V15;
                            else
                                RF2 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W1 then
                    if HPC2 > W12 then
                        if HPC3 > W13 then
                            if HPC4 > W14 then
                                RF2 <= V1;
                            else
                                RF2 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF2 <= V3;
                            else
                                RF2 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W3 then
                            if HPC4 > W2 then
                                RF2 <= V5;
                            else
                                RF2 <= V6;
                            end if;
                        else
                            if HPC3 > W1 then
                                RF2 <= V7;
                            else
                                RF2 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W2 then
                        if HPC4 > W3 then
                            if HPC4 > W1 then
                                RF2 <= V9;
                            else
                                RF2 <= V10;
                            end if;
                        else
                            if HPC2 > W2 then
                                RF2 <= V3;
                            else
                                RF2 <= V12;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF2 <= V13;
                            else
                                RF2 <= V14;
                            end if;
                        else
                            if HPC2 > W5 then
                                RF2 <= V15;
                            else
                                RF2 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            end if;
            else
            if HPC4 > W12 then 
            if HPC5 > W11 then 
            if HPC2 > W1 then
                    if HPC2 > W2 then
                        if HPC3 > W3 then
                            if HPC4 > W4 then
                                RF2 <= V1;
                            else
                                RF2 <= V2;
                            end if;
                        else
                            if HPC5 > W5 then
                                RF2 <= V3;
                            else
                                RF2 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W6 then
                            if HPC4 > W7 then
                                RF2 <= V5;
                            else
                                RF2 <= V6;
                            end if;
                        else
                            if HPC3 > W8 then
                                RF2 <= V7;
                            else
                                RF2 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W9 then
                        if HPC4 > W10 then
                            if HPC4 > W11 then
                                RF2 <= V9;
                            else
                                RF2 <= V10;
                            end if;
                        else
                            if HPC2 > W12 then
                                RF2 <= V3;
                            else
                                RF2 <= V12;
                            end if;
                        end if;
                    else
                        if HPC4 > W13 then
                            if HPC2 > W14 then
                                RF2 <= V13;
                            else
                                RF2 <= V14;
                            end if;
                        else
                            if HPC2 > W15 then
                                RF2 <= V15;
                            else
                                RF2 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W1 then
                    if HPC2 > W12 then
                        if HPC3 > W13 then
                            if HPC4 > W14 then
                                RF2 <= V1;
                            else
                                RF2 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF2 <= V3;
                            else
                                RF2 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W3 then
                            if HPC4 > W2 then
                                RF2 <= V5;
                            else
                                RF2 <= V6;
                            end if;
                        else
                            if HPC3 > W1 then
                                RF2 <= V7;
                            else
                                RF2 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W2 then
                        if HPC4 > W3 then
                            if HPC4 > W1 then
                                RF2 <= V9;
                            else
                                RF2 <= V10;
                            end if;
                        else
                            if HPC2 > W2 then
                                RF2 <= V3;
                            else
                                RF2 <= V12;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF2 <= V13;
                            else
                                RF2 <= V14;
                            end if;
                        else
                            if HPC2 > W5 then
                                RF2 <= V15;
                            else
                                RF2 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            else
                if HPC5 > W11 then 
            if HPC2 > W11 then
                    if HPC2 > W12 then
                        if HPC3 > W13 then
                            if HPC4 > W14 then
                                RF2 <= V1;
                            else
                                RF2 <= V2;
                            end if;
                        else
                            if HPC5 > W6 then
                                RF2 <= V3;
                            else
                                RF2 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W7 then
                            if HPC4 > W8 then
                                RF2 <= V5;
                            else
                                RF2 <= V6;
                            end if;
                        else
                            if HPC3 > W8 then
                                RF2 <= V7;
                            else
                                RF2 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W9 then
                        if HPC4 > W11 then
                            if HPC4 > W12 then
                                RF2 <= V9;
                            else
                                RF2 <= V10;
                            end if;
                        else
                            if HPC2 > W13 then
                                RF2 <= V3;
                            else
                                RF2 <= V12;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF2 <= V13;
                            else
                                RF2 <= V14;
                            end if;
                        else
                            if HPC2 > W15 then
                                RF2 <= V15;
                            else
                                RF2 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W8 then
                    if HPC2 > W13 then
                        if HPC3 > W14 then
                            if HPC4 > W1 then
                                RF2 <= V1;
                            else
                                RF2 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF2 <= V3;
                            else
                                RF2 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W2 then
                            if HPC4 > W12 then
                                RF2 <= V1;
                            else
                                RF2 <= V3;
                            end if;
                        else
                            if HPC3 > W1 then
                                RF2 <= V7;
                            else
                                RF2 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W7 then
                        if HPC4 > W13 then
                            if HPC4 > W7 then
                                RF2 <= V9;
                            else
                                RF2 <= V3;
                            end if;
                        else
                            if HPC2 > W12 then
                                RF2 <= V1;
                            else
                                RF2 <= V2;
                            end if;
                        end if;
                    else
                        if HPC4 > W1 then
                            if HPC2 > W14 then
                                RF2 <= V3;
                            else
                                RF2 <= V4;
                            end if;
                        else
                            if HPC2 > W3 then
                                RF2 <= V3;
                            else
                                RF2 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            end if;
            end if;
            else
                if HPC2 > W13 then 
            if HPC3 > W12 then 
            if HPC2 > W1 then 
            if HPC2 > W6 then
                    if HPC2 > W3 then
                        if HPC2 > W1 then
                            if HPC2 > W14 then
                                RF2 <= V3;
                            else
                                RF2 <= V12;
                            end if;
                        else
                            if HPC2 > W2 then
                                RF2 <= V13;
                            else
                                RF2 <= V14;
                            end if;
                        end if;
                    else
                        if HPC5 > W6 then
                            if HPC4 > W7 then
                                RF2 <= V5;
                            else
                                RF2 <= V6;
                            end if;
                        else
                            if HPC3 > W8 then
                                RF2 <= V7;
                            else
                                RF2 <= V2;
                            end if;
                        end if;
                    end if;
                else
                    if HPC5 > W7 then
                        if HPC3 > W15 then
                            if HPC4 > W1 then
                                RF2 <= V9;
                            else
                                RF2 <= V10;
                            end if;
                        else
                            if HPC2 > W12 then
                                RF2 <= V3;
                            else
                                RF2 <= V12;
                            end if;
                        end if;
                    else
                        if HPC4 > W13 then
                            if HPC2 > W14 then
                                RF2 <= V13;
                            else
                                RF2 <= V14;
                            end if;
                        else
                            if HPC3 > W15 then
                                RF2 <= V5;
                            else
                                RF2 <= V7;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W1 then
                    if HPC2 > W12 then
                        if HPC3 > W13 then
                            if HPC4 > W14 then
                                RF2 <= V1;
                            else
                                RF2 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF2 <= V3;
                            else
                                RF2 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W3 then
                            if HPC4 > W2 then
                                RF2 <= V5;
                            else
                                RF2 <= V6;
                            end if;
                        else
                            if HPC3 > W1 then
                                RF2 <= V7;
                            else
                                RF2 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W2 then
                        if HPC4 > W3 then
                            if HPC4 > W1 then
                                RF2 <= V9;
                            else
                                RF2 <= V10;
                            end if;
                        else
                            if HPC2 > W2 then
                                RF2 <= V3;
                            else
                                RF2 <= V12;
                            end if;
                        end if;
                    else
                        if HPC4 > W13 then
                            if HPC4 > W4 then
                                RF2 <= V1;
                            else
                                RF2 <= V4;
                            end if;
                        else
                            if HPC2 > W5 then
                                RF2 <= V15;
                            else
                                RF2 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            else
                if HPC5 > W1 then 
            if HPC2 > W11 then
                    if HPC5 > W12 then
                        if HPC3 > W3 then
                            if HPC4 > W14 then
                                RF2 <= V1;
                            else
                                RF2 <= V12;
                            end if;
                        else
                            if HPC5 > W3 then
                                RF2 <= V13;
                            else
                                RF2 <= V14;
                            end if;
                        end if;
                    else
                        if HPC5 > W7 then
                            if HPC4 > W8 then
                                RF2 <= V5;
                            else
                                RF2 <= V6;
                            end if;
                        else
                            if HPC3 > W8 then
                                RF2 <= V7;
                            else
                                RF2 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W9 then
                        if HPC2 > W11 then
                            if HPC2 > W12 then
                                RF2 <= V9;
                            else
                                RF2 <= V10;
                            end if;
                        else
                            if HPC2 > W13 then
                                RF2 <= V1;
                            else
                                RF2 <= V12;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF2 <= V13;
                            else
                                RF2 <= V14;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF2 <= V15;
                            else
                                RF2 <= V6;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W1 then
                    if HPC2 > W12 then
                        if HPC3 > W13 then
                            if HPC4 > W14 then
                                RF2 <= V1;
                            else
                                RF2 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF2 <= V3;
                            else
                                RF2 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W3 then
                            if HPC4 > W2 then
                                RF2 <= V5;
                            else
                                RF2 <= V6;
                            end if;
                        else
                            if HPC3 > W1 then
                                RF2 <= V7;
                            else
                                RF2 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W2 then
                        if HPC4 > W3 then
                            if HPC4 > W1 then
                                RF2 <= V9;
                            else
                                RF2 <= V10;
                            end if;
                        else
                            if HPC2 > W2 then
                                RF2 <= V3;
                            else
                                RF2 <= V12;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF2 <= V13;
                            else
                                RF2 <= V14;
                            end if;
                        else
                            if HPC2 > W5 then
                                RF2 <= V15;
                            else
                                RF2 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            end if;
            else
            if HPC4 > W12 then 
            if HPC5 > W11 then 
            if HPC2 > W1 then
                    if HPC2 > W2 then
                        if HPC3 > W3 then
                            if HPC4 > W4 then
                                RF2 <= V1;
                            else
                                RF2 <= V2;
                            end if;
                        else
                            if HPC5 > W5 then
                                RF2 <= V3;
                            else
                                RF2 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W6 then
                            if HPC4 > W7 then
                                RF2 <= V5;
                            else
                                RF2 <= V6;
                            end if;
                        else
                            if HPC3 > W8 then
                                RF2 <= V7;
                            else
                                RF2 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W9 then
                        if HPC4 > W10 then
                            if HPC4 > W11 then
                                RF2 <= V9;
                            else
                                RF2 <= V10;
                            end if;
                        else
                            if HPC2 > W12 then
                                RF2 <= V3;
                            else
                                RF2 <= V12;
                            end if;
                        end if;
                    else
                        if HPC4 > W13 then
                            if HPC2 > W14 then
                                RF2 <= V13;
                            else
                                RF2 <= V14;
                            end if;
                        else
                            if HPC2 > W15 then
                                RF2 <= V15;
                            else
                                RF2 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W1 then
                    if HPC2 > W12 then
                        if HPC3 > W13 then
                            if HPC4 > W14 then
                                RF2 <= V1;
                            else
                                RF2 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF2 <= V3;
                            else
                                RF2 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W3 then
                            if HPC4 > W2 then
                                RF2 <= V5;
                            else
                                RF2 <= V6;
                            end if;
                        else
                            if HPC3 > W1 then
                                RF2 <= V7;
                            else
                                RF2 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W2 then
                        if HPC4 > W3 then
                            if HPC4 > W1 then
                                RF2 <= V9;
                            else
                                RF2 <= V10;
                            end if;
                        else
                            if HPC2 > W2 then
                                RF2 <= V3;
                            else
                                RF2 <= V12;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF2 <= V13;
                            else
                                RF2 <= V14;
                            end if;
                        else
                            if HPC2 > W5 then
                                RF2 <= V15;
                            else
                                RF2 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            else
                if HPC5 > W11 then 
            if HPC2 > W11 then
                    if HPC2 > W12 then
                        if HPC3 > W13 then
                            if HPC4 > W14 then
                                RF2 <= V1;
                            else
                                RF2 <= V2;
                            end if;
                        else
                            if HPC5 > W6 then
                                RF2 <= V3;
                            else
                                RF2 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W7 then
                            if HPC4 > W8 then
                                RF2 <= V5;
                            else
                                RF2 <= V6;
                            end if;
                        else
                            if HPC3 > W8 then
                                RF2 <= V7;
                            else
                                RF2 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W9 then
                        if HPC4 > W11 then
                            if HPC4 > W12 then
                                RF2 <= V9;
                            else
                                RF2 <= V10;
                            end if;
                        else
                            if HPC2 > W13 then
                                RF2 <= V3;
                            else
                                RF2 <= V12;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF2 <= V13;
                            else
                                RF2 <= V14;
                            end if;
                        else
                            if HPC2 > W15 then
                                RF2 <= V15;
                            else
                                RF2 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W8 then
                    if HPC2 > W13 then
                        if HPC3 > W14 then
                            if HPC4 > W1 then
                                RF2 <= V1;
                            else
                                RF2 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF2 <= V3;
                            else
                                RF2 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W2 then
                            if HPC4 > W12 then
                                RF2 <= V1;
                            else
                                RF2 <= V3;
                            end if;
                        else
                            if HPC3 > W1 then
                                RF2 <= V7;
                            else
                                RF2 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W7 then
                        if HPC4 > W13 then
                            if HPC4 > W7 then
                                RF2 <= V9;
                            else
                                RF2 <= V3;
                            end if;
                        else
                            if HPC2 > W12 then
                                RF2 <= V1;
                            else
                                RF2 <= V2;
                            end if;
                        end if;
                    else
                        if HPC4 > W1 then
                            if HPC2 > W14 then
                                RF2 <= V3;
                            else
                                RF2 <= V4;
                            end if;
                        else
                            if HPC2 > W3 then
                                RF2 <= V3;
                            else
                                RF2 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            end if;
            end if;
            end if;
			if HPC2 > W12 then
            if HPC5 > W13 then 
            if HPC4 > W12 then 
            if HPC5 > W11 then 
            if HPC2 > W1 then
                    if HPC2 > W2 then
                        if HPC5 > W3 then
                            if HPC4 > W4 then
                                RF3 <= V1;
                            else
                                RF3 <= V2;
                            end if;
                        else
                            if HPC5 > W5 then
                                RF3 <= V3;
                            else
                                RF3 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W6 then
                            if HPC4 > W7 then
                                RF3 <= V11;
                            else
                                RF3 <= V6;
                            end if;
                        else
                            if HPC5 > W8 then
                                RF3 <= V7;
                            else
                                RF3 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W9 then
                        if HPC4 > W10 then
                            if HPC4 > W11 then
                                RF3 <= V9;
                            else
                                RF3 <= V10;
                            end if;
                        else
                            if HPC2 > W12 then
                                RF3 <= V3;
                            else
                                RF3 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W13 then
                            if HPC2 > W14 then
                                RF3 <= V13;
                            else
                                RF3 <= V14;
                            end if;
                        else
                            if HPC2 > W15 then
                                RF3 <= V15;
                            else
                                RF3 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W1 then
                    if HPC2 > W12 then
                        if HPC5 > W13 then
                            if HPC4 > W14 then
                                RF3 <= V1;
                            else
                                RF3 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF3 <= V3;
                            else
                                RF3 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W3 then
                            if HPC4 > W2 then
                                RF3 <= V11;
                            else
                                RF3 <= V6;
                            end if;
                        else
                            if HPC5 > W1 then
                                RF3 <= V7;
                            else
                                RF3 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W2 then
                        if HPC4 > W3 then
                            if HPC4 > W1 then
                                RF3 <= V9;
                            else
                                RF3 <= V10;
                            end if;
                        else
                            if HPC2 > W2 then
                                RF3 <= V3;
                            else
                                RF3 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF3 <= V13;
                            else
                                RF3 <= V14;
                            end if;
                        else
                            if HPC2 > W5 then
                                RF3 <= V15;
                            else
                                RF3 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            else
                if HPC5 > W11 then 
            if HPC2 > W11 then
                    if HPC2 > W12 then
                        if HPC5 > W13 then
                            if HPC4 > W14 then
                                RF3 <= V1;
                            else
                                RF3 <= V2;
                            end if;
                        else
                            if HPC5 > W6 then
                                RF3 <= V3;
                            else
                                RF3 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W7 then
                            if HPC4 > W8 then
                                RF3 <= V11;
                            else
                                RF3 <= V6;
                            end if;
                        else
                            if HPC5 > W8 then
                                RF3 <= V7;
                            else
                                RF3 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W9 then
                        if HPC4 > W11 then
                            if HPC4 > W12 then
                                RF3 <= V9;
                            else
                                RF3 <= V10;
                            end if;
                        else
                            if HPC2 > W13 then
                                RF3 <= V3;
                            else
                                RF3 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF3 <= V13;
                            else
                                RF3 <= V14;
                            end if;
                        else
                            if HPC2 > W15 then
                                RF3 <= V15;
                            else
                                RF3 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W1 then
                    if HPC2 > W12 then
                        if HPC5 > W13 then
                            if HPC4 > W14 then
                                RF3 <= V1;
                            else
                                RF3 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF3 <= V3;
                            else
                                RF3 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W3 then
                            if HPC4 > W2 then
                                RF3 <= V11;
                            else
                                RF3 <= V6;
                            end if;
                        else
                            if HPC5 > W1 then
                                RF3 <= V7;
                            else
                                RF3 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W2 then
                        if HPC4 > W3 then
                            if HPC4 > W1 then
                                RF3 <= V9;
                            else
                                RF3 <= V10;
                            end if;
                        else
                            if HPC2 > W2 then
                                RF3 <= V3;
                            else
                                RF3 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF3 <= V13;
                            else
                                RF3 <= V14;
                            end if;
                        else
                            if HPC2 > W5 then
                                RF3 <= V15;
                            else
                                RF3 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            end if;
            else
            if HPC4 > W12 then 
            if HPC5 > W11 then 
            if HPC2 > W1 then
                    if HPC2 > W2 then
                        if HPC5 > W3 then
                            if HPC4 > W4 then
                                RF3 <= V1;
                            else
                                RF3 <= V2;
                            end if;
                        else
                            if HPC5 > W5 then
                                RF3 <= V3;
                            else
                                RF3 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W6 then
                            if HPC4 > W7 then
                                RF3 <= V11;
                            else
                                RF3 <= V6;
                            end if;
                        else
                            if HPC5 > W8 then
                                RF3 <= V7;
                            else
                                RF3 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W9 then
                        if HPC4 > W10 then
                            if HPC4 > W11 then
                                RF3 <= V9;
                            else
                                RF3 <= V10;
                            end if;
                        else
                            if HPC2 > W12 then
                                RF3 <= V3;
                            else
                                RF3 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W13 then
                            if HPC2 > W14 then
                                RF3 <= V13;
                            else
                                RF3 <= V14;
                            end if;
                        else
                            if HPC2 > W15 then
                                RF3 <= V15;
                            else
                                RF3 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W1 then
                    if HPC2 > W12 then
                        if HPC5 > W13 then
                            if HPC4 > W14 then
                                RF3 <= V1;
                            else
                                RF3 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF3 <= V3;
                            else
                                RF3 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W3 then
                            if HPC4 > W2 then
                                RF3 <= V11;
                            else
                                RF3 <= V6;
                            end if;
                        else
                            if HPC5 > W1 then
                                RF3 <= V7;
                            else
                                RF3 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W2 then
                        if HPC4 > W3 then
                            if HPC4 > W1 then
                                RF3 <= V9;
                            else
                                RF3 <= V10;
                            end if;
                        else
                            if HPC2 > W2 then
                                RF3 <= V3;
                            else
                                RF3 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF3 <= V13;
                            else
                                RF3 <= V14;
                            end if;
                        else
                            if HPC2 > W5 then
                                RF3 <= V15;
                            else
                                RF3 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            else
                if HPC5 > W11 then 
            if HPC2 > W11 then
                    if HPC2 > W12 then
                        if HPC5 > W13 then
                            if HPC4 > W14 then
                                RF3 <= V1;
                            else
                                RF3 <= V2;
                            end if;
                        else
                            if HPC5 > W6 then
                                RF3 <= V3;
                            else
                                RF3 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W7 then
                            if HPC4 > W8 then
                                RF3 <= V11;
                            else
                                RF3 <= V6;
                            end if;
                        else
                            if HPC5 > W8 then
                                RF3 <= V7;
                            else
                                RF3 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W9 then
                        if HPC4 > W11 then
                            if HPC4 > W12 then
                                RF3 <= V9;
                            else
                                RF3 <= V10;
                            end if;
                        else
                            if HPC2 > W13 then
                                RF3 <= V3;
                            else
                                RF3 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF3 <= V13;
                            else
                                RF3 <= V14;
                            end if;
                        else
                            if HPC2 > W15 then
                                RF3 <= V15;
                            else
                                RF3 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W8 then
                    if HPC2 > W13 then
                        if HPC5 > W14 then
                            if HPC4 > W1 then
                                RF3 <= V1;
                            else
                                RF3 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF3 <= V3;
                            else
                                RF3 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W2 then
                            if HPC4 > W12 then
                                RF3 <= V1;
                            else
                                RF3 <= V3;
                            end if;
                        else
                            if HPC5 > W1 then
                                RF3 <= V7;
                            else
                                RF3 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W7 then
                        if HPC4 > W13 then
                            if HPC4 > W7 then
                                RF3 <= V9;
                            else
                                RF3 <= V3;
                            end if;
                        else
                            if HPC2 > W12 then
                                RF3 <= V1;
                            else
                                RF3 <= V2;
                            end if;
                        end if;
                    else
                        if HPC4 > W1 then
                            if HPC2 > W14 then
                                RF3 <= V3;
                            else
                                RF3 <= V4;
                            end if;
                        else
                            if HPC2 > W3 then
                                RF3 <= V3;
                            else
                                RF3 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            end if;
            end if;
            else
                if HPC2 > W13 then 
            if HPC5 > W12 then 
            if HPC2 > W1 then 
            if HPC2 > W6 then
                    if HPC2 > W3 then
                        if HPC2 > W1 then
                            if HPC2 > W14 then
                                RF3 <= V3;
                            else
                                RF3 <= V1;
                            end if;
                        else
                            if HPC2 > W2 then
                                RF3 <= V13;
                            else
                                RF3 <= V14;
                            end if;
                        end if;
                    else
                        if HPC5 > W6 then
                            if HPC4 > W7 then
                                RF3 <= V11;
                            else
                                RF3 <= V6;
                            end if;
                        else
                            if HPC5 > W8 then
                                RF3 <= V7;
                            else
                                RF3 <= V2;
                            end if;
                        end if;
                    end if;
                else
                    if HPC5 > W7 then
                        if HPC5 > W15 then
                            if HPC4 > W1 then
                                RF3 <= V9;
                            else
                                RF3 <= V10;
                            end if;
                        else
                            if HPC2 > W12 then
                                RF3 <= V3;
                            else
                                RF3 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W13 then
                            if HPC2 > W14 then
                                RF3 <= V13;
                            else
                                RF3 <= V14;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF3 <= V11;
                            else
                                RF3 <= V7;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W1 then
                    if HPC2 > W12 then
                        if HPC5 > W13 then
                            if HPC4 > W14 then
                                RF3 <= V1;
                            else
                                RF3 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF3 <= V3;
                            else
                                RF3 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W3 then
                            if HPC4 > W2 then
                                RF3 <= V11;
                            else
                                RF3 <= V6;
                            end if;
                        else
                            if HPC5 > W1 then
                                RF3 <= V7;
                            else
                                RF3 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W2 then
                        if HPC4 > W3 then
                            if HPC4 > W1 then
                                RF3 <= V9;
                            else
                                RF3 <= V10;
                            end if;
                        else
                            if HPC2 > W2 then
                                RF3 <= V3;
                            else
                                RF3 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W13 then
                            if HPC4 > W4 then
                                RF3 <= V1;
                            else
                                RF3 <= V4;
                            end if;
                        else
                            if HPC2 > W5 then
                                RF3 <= V15;
                            else
                                RF3 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            else
                if HPC5 > W1 then 
            if HPC2 > W11 then
                    if HPC5 > W12 then
                        if HPC5 > W3 then
                            if HPC4 > W14 then
                                RF3 <= V1;
                            else
                                RF3 <= V1;
                            end if;
                        else
                            if HPC5 > W3 then
                                RF3 <= V13;
                            else
                                RF3 <= V14;
                            end if;
                        end if;
                    else
                        if HPC5 > W7 then
                            if HPC4 > W8 then
                                RF3 <= V11;
                            else
                                RF3 <= V6;
                            end if;
                        else
                            if HPC5 > W8 then
                                RF3 <= V7;
                            else
                                RF3 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W9 then
                        if HPC2 > W11 then
                            if HPC2 > W12 then
                                RF3 <= V9;
                            else
                                RF3 <= V10;
                            end if;
                        else
                            if HPC2 > W13 then
                                RF3 <= V1;
                            else
                                RF3 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF3 <= V13;
                            else
                                RF3 <= V14;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF3 <= V15;
                            else
                                RF3 <= V6;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W1 then
                    if HPC2 > W12 then
                        if HPC5 > W13 then
                            if HPC4 > W14 then
                                RF3 <= V1;
                            else
                                RF3 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF3 <= V3;
                            else
                                RF3 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W3 then
                            if HPC4 > W2 then
                                RF3 <= V11;
                            else
                                RF3 <= V6;
                            end if;
                        else
                            if HPC5 > W1 then
                                RF3 <= V7;
                            else
                                RF3 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W2 then
                        if HPC4 > W3 then
                            if HPC4 > W1 then
                                RF3 <= V9;
                            else
                                RF3 <= V10;
                            end if;
                        else
                            if HPC2 > W2 then
                                RF3 <= V3;
                            else
                                RF3 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF3 <= V13;
                            else
                                RF3 <= V14;
                            end if;
                        else
                            if HPC2 > W5 then
                                RF3 <= V15;
                            else
                                RF3 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            end if;
            else
            if HPC4 > W12 then 
            if HPC5 > W11 then 
            if HPC2 > W1 then
                    if HPC2 > W2 then
                        if HPC5 > W3 then
                            if HPC4 > W4 then
                                RF3 <= V1;
                            else
                                RF3 <= V2;
                            end if;
                        else
                            if HPC5 > W5 then
                                RF3 <= V3;
                            else
                                RF3 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W6 then
                            if HPC4 > W7 then
                                RF3 <= V11;
                            else
                                RF3 <= V6;
                            end if;
                        else
                            if HPC5 > W8 then
                                RF3 <= V7;
                            else
                                RF3 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W9 then
                        if HPC4 > W10 then
                            if HPC4 > W11 then
                                RF3 <= V9;
                            else
                                RF3 <= V10;
                            end if;
                        else
                            if HPC2 > W12 then
                                RF3 <= V3;
                            else
                                RF3 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W13 then
                            if HPC2 > W14 then
                                RF3 <= V13;
                            else
                                RF3 <= V14;
                            end if;
                        else
                            if HPC2 > W15 then
                                RF3 <= V15;
                            else
                                RF3 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W1 then
                    if HPC2 > W12 then
                        if HPC5 > W13 then
                            if HPC4 > W14 then
                                RF3 <= V1;
                            else
                                RF3 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF3 <= V3;
                            else
                                RF3 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W3 then
                            if HPC4 > W2 then
                                RF3 <= V11;
                            else
                                RF3 <= V6;
                            end if;
                        else
                            if HPC5 > W1 then
                                RF3 <= V7;
                            else
                                RF3 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W2 then
                        if HPC4 > W3 then
                            if HPC4 > W1 then
                                RF3 <= V9;
                            else
                                RF3 <= V10;
                            end if;
                        else
                            if HPC2 > W2 then
                                RF3 <= V3;
                            else
                                RF3 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF3 <= V13;
                            else
                                RF3 <= V14;
                            end if;
                        else
                            if HPC2 > W5 then
                                RF3 <= V15;
                            else
                                RF3 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            else
                if HPC5 > W11 then 
            if HPC2 > W11 then
                    if HPC2 > W12 then
                        if HPC5 > W13 then
                            if HPC4 > W14 then
                                RF3 <= V1;
                            else
                                RF3 <= V2;
                            end if;
                        else
                            if HPC5 > W6 then
                                RF3 <= V3;
                            else
                                RF3 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W7 then
                            if HPC4 > W8 then
                                RF3 <= V11;
                            else
                                RF3 <= V6;
                            end if;
                        else
                            if HPC5 > W8 then
                                RF3 <= V7;
                            else
                                RF3 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W9 then
                        if HPC4 > W11 then
                            if HPC4 > W12 then
                                RF3 <= V9;
                            else
                                RF3 <= V10;
                            end if;
                        else
                            if HPC2 > W13 then
                                RF3 <= V3;
                            else
                                RF3 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF3 <= V13;
                            else
                                RF3 <= V14;
                            end if;
                        else
                            if HPC2 > W15 then
                                RF3 <= V15;
                            else
                                RF3 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W8 then
                    if HPC2 > W13 then
                        if HPC5 > W14 then
                            if HPC4 > W1 then
                                RF3 <= V1;
                            else
                                RF3 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF3 <= V3;
                            else
                                RF3 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W2 then
                            if HPC4 > W12 then
                                RF3 <= V1;
                            else
                                RF3 <= V3;
                            end if;
                        else
                            if HPC5 > W1 then
                                RF3 <= V7;
                            else
                                RF3 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W7 then
                        if HPC4 > W13 then
                            if HPC4 > W7 then
                                RF3 <= V9;
                            else
                                RF3 <= V3;
                            end if;
                        else
                            if HPC2 > W12 then
                                RF3 <= V1;
                            else
                                RF3 <= V2;
                            end if;
                        end if;
                    else
                        if HPC4 > W1 then
                            if HPC2 > W14 then
                                RF3 <= V3;
                            else
                                RF3 <= V4;
                            end if;
                        else
                            if HPC2 > W3 then
                                RF3 <= V3;
                            else
                                RF3 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            end if;
            end if;
            end if;
			if HPC2 > W12 then
            if HPC5 > W13 then 
            if HPC4 > W12 then 
            if HPC5 > W11 then 
            if HPC2 > W1 then
                    if HPC2 > W2 then
                        if HPC5 > W3 then
                            if HPC4 > W4 then
                                RF4 <= V1;
                            else
                                RF4 <= V2;
                            end if;
                        else
                            if HPC5 > W5 then
                                RF4 <= V3;
                            else
                                RF4 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W6 then
                            if HPC4 > W7 then
                                RF4 <= V11;
                            else
                                RF4 <= V6;
                            end if;
                        else
                            if HPC5 > W8 then
                                RF4 <= V15;
                            else
                                RF4 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W9 then
                        if HPC4 > W10 then
                            if HPC4 > W11 then
                                RF4 <= V9;
                            else
                                RF4 <= V10;
                            end if;
                        else
                            if HPC2 > W12 then
                                RF4 <= V3;
                            else
                                RF4 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W13 then
                            if HPC2 > W14 then
                                RF4 <= V10;
                            else
                                RF4 <= V11;
                            end if;
                        else
                            if HPC2 > W15 then
                                RF4 <= V1;
                            else
                                RF4 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W1 then
                    if HPC2 > W12 then
                        if HPC5 > W13 then
                            if HPC4 > W14 then
                                RF4 <= V1;
                            else
                                RF4 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF4 <= V3;
                            else
                                RF4 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W3 then
                            if HPC4 > W2 then
                                RF4 <= V11;
                            else
                                RF4 <= V6;
                            end if;
                        else
                            if HPC5 > W1 then
                                RF4 <= V15;
                            else
                                RF4 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W2 then
                        if HPC4 > W3 then
                            if HPC4 > W1 then
                                RF4 <= V9;
                            else
                                RF4 <= V10;
                            end if;
                        else
                            if HPC2 > W2 then
                                RF4 <= V3;
                            else
                                RF4 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF4 <= V10;
                            else
                                RF4 <= V11;
                            end if;
                        else
                            if HPC2 > W5 then
                                RF4 <= V1;
                            else
                                RF4 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            else
                if HPC5 > W11 then 
            if HPC2 > W11 then
                    if HPC2 > W12 then
                        if HPC5 > W13 then
                            if HPC4 > W14 then
                                RF4 <= V1;
                            else
                                RF4 <= V2;
                            end if;
                        else
                            if HPC5 > W6 then
                                RF4 <= V3;
                            else
                                RF4 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W7 then
                            if HPC4 > W8 then
                                RF4 <= V11;
                            else
                                RF4 <= V6;
                            end if;
                        else
                            if HPC5 > W8 then
                                RF4 <= V15;
                            else
                                RF4 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W9 then
                        if HPC4 > W11 then
                            if HPC4 > W12 then
                                RF4 <= V9;
                            else
                                RF4 <= V10;
                            end if;
                        else
                            if HPC2 > W13 then
                                RF4 <= V3;
                            else
                                RF4 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF4 <= V10;
                            else
                                RF4 <= V11;
                            end if;
                        else
                            if HPC2 > W15 then
                                RF4 <= V1;
                            else
                                RF4 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W1 then
                    if HPC2 > W12 then
                        if HPC5 > W13 then
                            if HPC4 > W14 then
                                RF4 <= V1;
                            else
                                RF4 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF4 <= V3;
                            else
                                RF4 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W3 then
                            if HPC4 > W2 then
                                RF4 <= V11;
                            else
                                RF4 <= V6;
                            end if;
                        else
                            if HPC5 > W1 then
                                RF4 <= V15;
                            else
                                RF4 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W2 then
                        if HPC4 > W3 then
                            if HPC4 > W1 then
                                RF4 <= V9;
                            else
                                RF4 <= V10;
                            end if;
                        else
                            if HPC2 > W2 then
                                RF4 <= V3;
                            else
                                RF4 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF4 <= V10;
                            else
                                RF4 <= V11;
                            end if;
                        else
                            if HPC2 > W5 then
                                RF4 <= V1;
                            else
                                RF4 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            end if;
            else
            if HPC4 > W12 then 
            if HPC5 > W11 then 
            if HPC2 > W1 then
                    if HPC2 > W2 then
                        if HPC5 > W3 then
                            if HPC4 > W4 then
                                RF4 <= V1;
                            else
                                RF4 <= V2;
                            end if;
                        else
                            if HPC5 > W5 then
                                RF4 <= V3;
                            else
                                RF4 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W6 then
                            if HPC4 > W7 then
                                RF4 <= V11;
                            else
                                RF4 <= V6;
                            end if;
                        else
                            if HPC5 > W8 then
                                RF4 <= V15;
                            else
                                RF4 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W9 then
                        if HPC4 > W10 then
                            if HPC4 > W11 then
                                RF4 <= V9;
                            else
                                RF4 <= V10;
                            end if;
                        else
                            if HPC2 > W12 then
                                RF4 <= V3;
                            else
                                RF4 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W13 then
                            if HPC2 > W14 then
                                RF4 <= V10;
                            else
                                RF4 <= V11;
                            end if;
                        else
                            if HPC2 > W15 then
                                RF4 <= V1;
                            else
                                RF4 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W1 then
                    if HPC2 > W12 then
                        if HPC5 > W13 then
                            if HPC4 > W14 then
                                RF4 <= V1;
                            else
                                RF4 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF4 <= V3;
                            else
                                RF4 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W3 then
                            if HPC4 > W2 then
                                RF4 <= V11;
                            else
                                RF4 <= V6;
                            end if;
                        else
                            if HPC5 > W1 then
                                RF4 <= V15;
                            else
                                RF4 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W2 then
                        if HPC4 > W3 then
                            if HPC4 > W1 then
                                RF4 <= V9;
                            else
                                RF4 <= V10;
                            end if;
                        else
                            if HPC2 > W2 then
                                RF4 <= V3;
                            else
                                RF4 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF4 <= V10;
                            else
                                RF4 <= V11;
                            end if;
                        else
                            if HPC2 > W5 then
                                RF4 <= V1;
                            else
                                RF4 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            else
                if HPC5 > W11 then 
            if HPC2 > W11 then
                    if HPC2 > W12 then
                        if HPC5 > W13 then
                            if HPC4 > W14 then
                                RF4 <= V1;
                            else
                                RF4 <= V2;
                            end if;
                        else
                            if HPC5 > W6 then
                                RF4 <= V3;
                            else
                                RF4 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W7 then
                            if HPC4 > W8 then
                                RF4 <= V11;
                            else
                                RF4 <= V6;
                            end if;
                        else
                            if HPC5 > W8 then
                                RF4 <= V15;
                            else
                                RF4 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W9 then
                        if HPC4 > W11 then
                            if HPC4 > W12 then
                                RF4 <= V9;
                            else
                                RF4 <= V10;
                            end if;
                        else
                            if HPC2 > W13 then
                                RF4 <= V3;
                            else
                                RF4 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF4 <= V10;
                            else
                                RF4 <= V11;
                            end if;
                        else
                            if HPC2 > W15 then
                                RF4 <= V1;
                            else
                                RF4 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W8 then
                    if HPC2 > W13 then
                        if HPC5 > W14 then
                            if HPC4 > W1 then
                                RF4 <= V1;
                            else
                                RF4 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF4 <= V3;
                            else
                                RF4 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W2 then
                            if HPC4 > W12 then
                                RF4 <= V1;
                            else
                                RF4 <= V3;
                            end if;
                        else
                            if HPC5 > W1 then
                                RF4 <= V15;
                            else
                                RF4 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W7 then
                        if HPC4 > W13 then
                            if HPC4 > W7 then
                                RF4 <= V9;
                            else
                                RF4 <= V3;
                            end if;
                        else
                            if HPC2 > W12 then
                                RF4 <= V1;
                            else
                                RF4 <= V2;
                            end if;
                        end if;
                    else
                        if HPC4 > W1 then
                            if HPC2 > W14 then
                                RF4 <= V3;
                            else
                                RF4 <= V4;
                            end if;
                        else
                            if HPC2 > W3 then
                                RF4 <= V3;
                            else
                                RF4 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            end if;
            end if;
            else
                if HPC2 > W13 then 
            if HPC5 > W12 then 
            if HPC2 > W1 then 
            if HPC2 > W6 then
                    if HPC2 > W3 then
                        if HPC2 > W1 then
                            if HPC2 > W14 then
                                RF4 <= V3;
                            else
                                RF4 <= V1;
                            end if;
                        else
                            if HPC2 > W2 then
                                RF4 <= V10;
                            else
                                RF4 <= V11;
                            end if;
                        end if;
                    else
                        if HPC5 > W6 then
                            if HPC4 > W7 then
                                RF4 <= V11;
                            else
                                RF4 <= V6;
                            end if;
                        else
                            if HPC5 > W8 then
                                RF4 <= V15;
                            else
                                RF4 <= V2;
                            end if;
                        end if;
                    end if;
                else
                    if HPC5 > W7 then
                        if HPC5 > W15 then
                            if HPC4 > W1 then
                                RF4 <= V9;
                            else
                                RF4 <= V10;
                            end if;
                        else
                            if HPC2 > W12 then
                                RF4 <= V3;
                            else
                                RF4 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W13 then
                            if HPC2 > W14 then
                                RF4 <= V10;
                            else
                                RF4 <= V11;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF4 <= V11;
                            else
                                RF4 <= V15;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W1 then
                    if HPC2 > W12 then
                        if HPC5 > W13 then
                            if HPC4 > W14 then
                                RF4 <= V1;
                            else
                                RF4 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF4 <= V3;
                            else
                                RF4 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W3 then
                            if HPC4 > W2 then
                                RF4 <= V11;
                            else
                                RF4 <= V6;
                            end if;
                        else
                            if HPC5 > W1 then
                                RF4 <= V15;
                            else
                                RF4 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W2 then
                        if HPC4 > W3 then
                            if HPC4 > W1 then
                                RF4 <= V9;
                            else
                                RF4 <= V10;
                            end if;
                        else
                            if HPC2 > W2 then
                                RF4 <= V3;
                            else
                                RF4 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W13 then
                            if HPC4 > W4 then
                                RF4 <= V1;
                            else
                                RF4 <= V4;
                            end if;
                        else
                            if HPC2 > W5 then
                                RF4 <= V1;
                            else
                                RF4 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            else
                if HPC5 > W1 then 
            if HPC2 > W11 then
                    if HPC5 > W12 then
                        if HPC5 > W3 then
                            if HPC4 > W14 then
                                RF4 <= V1;
                            else
                                RF4 <= V1;
                            end if;
                        else
                            if HPC5 > W3 then
                                RF4 <= V10;
                            else
                                RF4 <= V11;
                            end if;
                        end if;
                    else
                        if HPC5 > W7 then
                            if HPC4 > W8 then
                                RF4 <= V11;
                            else
                                RF4 <= V6;
                            end if;
                        else
                            if HPC5 > W8 then
                                RF4 <= V15;
                            else
                                RF4 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W9 then
                        if HPC2 > W11 then
                            if HPC2 > W12 then
                                RF4 <= V9;
                            else
                                RF4 <= V10;
                            end if;
                        else
                            if HPC2 > W13 then
                                RF4 <= V1;
                            else
                                RF4 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF4 <= V10;
                            else
                                RF4 <= V11;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF4 <= V1;
                            else
                                RF4 <= V6;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W1 then
                    if HPC2 > W12 then
                        if HPC5 > W13 then
                            if HPC4 > W14 then
                                RF4 <= V1;
                            else
                                RF4 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF4 <= V3;
                            else
                                RF4 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W3 then
                            if HPC4 > W2 then
                                RF4 <= V11;
                            else
                                RF4 <= V6;
                            end if;
                        else
                            if HPC5 > W1 then
                                RF4 <= V15;
                            else
                                RF4 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W2 then
                        if HPC4 > W3 then
                            if HPC4 > W1 then
                                RF4 <= V9;
                            else
                                RF4 <= V10;
                            end if;
                        else
                            if HPC2 > W2 then
                                RF4 <= V3;
                            else
                                RF4 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF4 <= V10;
                            else
                                RF4 <= V11;
                            end if;
                        else
                            if HPC2 > W5 then
                                RF4 <= V1;
                            else
                                RF4 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            end if;
            else
            if HPC4 > W12 then 
            if HPC5 > W11 then 
            if HPC2 > W1 then
                    if HPC2 > W2 then
                        if HPC5 > W3 then
                            if HPC4 > W4 then
                                RF4 <= V1;
                            else
                                RF4 <= V2;
                            end if;
                        else
                            if HPC5 > W5 then
                                RF4 <= V3;
                            else
                                RF4 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W6 then
                            if HPC4 > W7 then
                                RF4 <= V11;
                            else
                                RF4 <= V6;
                            end if;
                        else
                            if HPC5 > W8 then
                                RF4 <= V15;
                            else
                                RF4 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W9 then
                        if HPC4 > W10 then
                            if HPC4 > W11 then
                                RF4 <= V9;
                            else
                                RF4 <= V10;
                            end if;
                        else
                            if HPC2 > W12 then
                                RF4 <= V3;
                            else
                                RF4 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W13 then
                            if HPC2 > W14 then
                                RF4 <= V10;
                            else
                                RF4 <= V11;
                            end if;
                        else
                            if HPC2 > W15 then
                                RF4 <= V1;
                            else
                                RF4 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W1 then
                    if HPC2 > W12 then
                        if HPC5 > W13 then
                            if HPC4 > W14 then
                                RF4 <= V1;
                            else
                                RF4 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF4 <= V3;
                            else
                                RF4 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W3 then
                            if HPC4 > W2 then
                                RF4 <= V11;
                            else
                                RF4 <= V6;
                            end if;
                        else
                            if HPC5 > W1 then
                                RF4 <= V15;
                            else
                                RF4 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W2 then
                        if HPC4 > W3 then
                            if HPC4 > W1 then
                                RF4 <= V9;
                            else
                                RF4 <= V10;
                            end if;
                        else
                            if HPC2 > W2 then
                                RF4 <= V3;
                            else
                                RF4 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF4 <= V10;
                            else
                                RF4 <= V11;
                            end if;
                        else
                            if HPC2 > W5 then
                                RF4 <= V1;
                            else
                                RF4 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            else
                if HPC5 > W11 then 
            if HPC2 > W11 then
                    if HPC2 > W12 then
                        if HPC5 > W13 then
                            if HPC4 > W14 then
                                RF4 <= V1;
                            else
                                RF4 <= V2;
                            end if;
                        else
                            if HPC5 > W6 then
                                RF4 <= V3;
                            else
                                RF4 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W7 then
                            if HPC4 > W8 then
                                RF4 <= V11;
                            else
                                RF4 <= V6;
                            end if;
                        else
                            if HPC5 > W8 then
                                RF4 <= V15;
                            else
                                RF4 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W9 then
                        if HPC4 > W11 then
                            if HPC4 > W12 then
                                RF4 <= V9;
                            else
                                RF4 <= V10;
                            end if;
                        else
                            if HPC2 > W13 then
                                RF4 <= V3;
                            else
                                RF4 <= V1;
                            end if;
                        end if;
                    else
                        if HPC4 > W3 then
                            if HPC2 > W4 then
                                RF4 <= V10;
                            else
                                RF4 <= V11;
                            end if;
                        else
                            if HPC2 > W15 then
                                RF4 <= V1;
                            else
                                RF4 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            else
                if HPC2 > W8 then
                    if HPC2 > W13 then
                        if HPC5 > W14 then
                            if HPC4 > W1 then
                                RF4 <= V1;
                            else
                                RF4 <= V2;
                            end if;
                        else
                            if HPC5 > W15 then
                                RF4 <= V3;
                            else
                                RF4 <= V4;
                            end if;
                        end if;
                    else
                        if HPC5 > W2 then
                            if HPC4 > W12 then
                                RF4 <= V1;
                            else
                                RF4 <= V3;
                            end if;
                        else
                            if HPC5 > W1 then
                                RF4 <= V15;
                            else
                                RF4 <= V8;
                            end if;
                        end if;
                    end if;
                else
                    if HPC2 > W7 then
                        if HPC4 > W13 then
                            if HPC4 > W7 then
                                RF4 <= V9;
                            else
                                RF4 <= V3;
                            end if;
                        else
                            if HPC2 > W12 then
                                RF4 <= V1;
                            else
                                RF4 <= V2;
                            end if;
                        end if;
                    else
                        if HPC4 > W1 then
                            if HPC2 > W14 then
                                RF4 <= V3;
                            else
                                RF4 <= V4;
                            end if;
                        else
                            if HPC2 > W3 then
                                RF4 <= V3;
                            else
                                RF4 <= V16;
                            end if;
                        end if;
                    end if;
            end if;
            end if;
            end if;
            end if;
            end if;
			if RF > Y and RF2>Y and RF3 > Y and RF4 > Y then
               temp <= '1';
            else
               temp <= '0';
            end if;
         end if;
      end if;
   end process;
   Detection <= temp;
end Behavioral;
