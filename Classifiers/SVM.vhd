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

entity SVM is 
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
end SVM;

architecture Behavioral of SVM is
	signal HPCs,Support: HPCArray;
	signal B,T: std_logic_vector(31 downto 0) := (others => '0');
	signal Y: std_logic_vector(63 downto 0) := (others => '0');
   signal temp: std_logic;
function Threshold(
	val : in std_logic_vector(63 downto 0);
	limit : in std_logic_vector(31 downto 0))
	return std_logic_vector is 
	variable ret : std_logic_vector(63 downto 0) := (others => '0');
	begin
		if signed(val) > signed(limit) then
			ret := val;
		end if;
		return ret;
	end;
function Perceptron(S_HPCs: HPCArray; S_Support: HPCArray; B: std_logic_vector(31 downto 0);  T: std_logic_vector(31 downto 0)) 
	return std_logic_vector is
	variable ret : std_logic_vector(63 downto 0);
	variable aux_hpc: signed(31 downto 0);
	variable aux_support: signed(31 downto 0);
	variable acc: signed(63 downto 0) := (others => '0');
	begin
		for idx in 0 to 4 loop	
			aux_hpc := signed(S_HPCs(idx));
			aux_support := signed(S_Support(idx));
		acc := acc + (aux_hpc*aux_support);
		end loop;
		acc := acc + signed(B);
		ret := Threshold(std_logic_vector(acc),T);
		return ret;
	end;
	
begin process(Clock,Reset)
   begin
      if Reset='1' then
         temp <= '0';
			for idx in 0 to 4 loop
				Support(idx) <= (others => '1');
			end loop;
			B <= (others => '0');
			T <= (others => '0');
      elsif(rising_edge(Clock)) then
         if Clock_enable_B='0' then
			HPCs(0) <= HPC1;
			HPCs(1) <= HPC2;
			HPCs(2) <= HPC3;
			HPCs(3) <= HPC4;
			HPCs(4) <= HPC5;
				Y <= Perceptron(HPCs,Support,B,T);
				if signed(Y) > 0 then
               temp <= '1';
            else
               temp <= '0';
            end if;
         end if;
      end if;
   end process;
   Detection <= temp;
end Behavioral;
