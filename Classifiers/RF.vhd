library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package hpc_array_type is
    type HPCArray is array(0 to 4) of std_logic_vector (31 downto 0);
end package hpc_array_type;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package rf_array_type is
    type RFArray is array(0 to 15) of std_logic_vector (31 downto 0);
end package rf_array_type;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package rf_entry_type is
    type RFEntry is array(0 to 15) of std_logic_vector (31 downto 0);
end package rf_entry_type;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.rf_array_type.ALL;
use work.rf_entry_type.ALL;
use work.HPC_array_type.ALL;

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
	signal T,Y:    std_logic_vector(32 downto 0);
	signal RF_state:  RFArray;
	signal RFs : RFArray;
	signal RF_weights : RFEntry;
	signal RF_directions : RFEntry;
	signal HPCs : HPCArray;
function RF_Decision(
	Forest: RFArray; 
	T : std_logic_vector(32 downto 0)
	)
return std_logic is
variable m : signed(32 downto 0) := (others=>'0');
variable ret : std_logic;
begin
	ret := '0';
	for idx in 0 to 4 loop
		m := m + signed(Forest(idx));
	end loop;
	m := m / 5;
	if (m > signed(T)) then
		ret := '1';
	end if;
	return ret;
end;
begin   process(Clock,Reset)
   begin
      if Reset='1' then
         temp <= '0';
			T <= (others=>'1');
			for idx in 0 to 4 loop
				RFs(idx) <= (others => '1');
			end loop;
			for idx in 0 to 4 loop
				RF_state(idx) <= (others => '0');
				RF_weights(idx) <= (others => '1');
				RF_directions(idx) <= (others => '1');
			end loop;
      elsif(rising_edge(Clock)) then
         if Clock_enable_B='0' then
				HPCs(0) <= HPC1;
            HPCs(1) <= HPC2;
            HPCs(2) <= HPC3;
            HPCs(3) <= HPC4;
            HPCs(4) <= HPC5;
				for tree_n in 0 to 3 loop
					for state_n in 0 to 3 loop
						if HPCs(tree_n) > RF_weights((tree_n*4)+state_n) then
							RF_state((tree_n*4)+state_n) <= RF_directions((tree_n*4)+state_n);
						end if;
					end loop;
					RFs(tree_n) <= RF_state(tree_n);
			end loop;
			temp <= RF_Decision(RFs,T);
         end if;
      end if;
   end process;
   Detection <= temp;
end Behavioral;