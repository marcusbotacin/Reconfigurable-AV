library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package hpc_array_type is
    type HPCArray is array(0 to 4) of std_logic_vector (31 downto 0);
end package hpc_array_type;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.HPC_array_type.all;

entity MLP is 
   port( Clock_enable_B: in std_logic;
 	 Clock:     in std_logic;
 	 Reset:     in std_logic;
    HPC1:      in std_logic_vector(7 downto 0);
	 HPC2:      in std_logic_vector(7 downto 0);
	 HPC3:      in std_logic_vector(7 downto 0);
	 HPC4:      in std_logic_vector(7 downto 0);
	 HPC5:      in std_logic_vector(7 downto 0);
 	 Detection: out std_logic
    );
end MLP;

architecture Behavioral of MLP is
	signal B,T: std_logic_vector(7 downto 0) := (others => '0');
	signal Y1,Y2,Y3,Y4: std_logic_vector(15 downto 0) := (others => '0');
	signal Support1,Support2,Support3,Support4,Support5,Support6, Support7,Support8,Support9,Support10, Support11,Support12,Support13,Support14,Support15,Support16,Support17,Support18,Support19,Support20: std_logic_vector(7 downto 0) := (others => '0');
   signal temp: std_logic;
	
begin process(Clock,Reset)
   begin
      if Reset='1' then
         temp <= '0';
			Support1 <= "00000001";
			Support2 <= "00000011";
			Support3 <= "00000111";
			Support4 <= "00001111";
			Support5 <= "00011111";
			Support6 <= "00111111";
			Support7 <= "01111111";
			Support8 <= "11111111";
			Support9 <= "11111110";
			Support10 <= "10111111";
			Support11 <= "10000001";
			Support12 <= "10000011";
			Support13 <= "10000111";
			Support14 <= "10001001";
			Support15 <= "10011001";
			Support16 <= "10111001";
			Support17 <= "11111001";
			Support18 <= "10011101";
			Support19 <= "10011010";
			Support20 <= "10111101";
			B <= "01011111";
			T <= "10101011";
      elsif(rising_edge(Clock)) then
         if Clock_enable_B='0' then
				Y1 <= HPC1 * Support1 + HPC2*Support2 + HPC3* Support3 + HPC4 * Support4 + HPC5 * Support5 + B;
				Y2 <= HPC1 * Support6 + HPC2*Support7 + HPC3* Support8 + HPC4 * Support9 + HPC5 * Support10 + B;
				Y3 <= HPC1 * Support11 + HPC2*Support12 + HPC3* Support13 + HPC4 * Support14 + HPC5 * Support15 + B;
				Y4 <= HPC1 * Support16 + HPC2*Support17 + HPC3* Support18 + HPC4 * Support19 + HPC5 * Support20 + B;
				if signed(Y1) > signed(T) and signed(Y2) > signed(T) and signed(Y3) > signed(T) and signed(Y4) > signed(T) then
               temp <= '1';
            else
               temp <= '0';
            end if;
         end if;
      end if;
   end process;
   Detection <= temp;
end Behavioral;
