library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
entity SVM is 
   port( Clock_enable_B: in std_logic;
 	 Clock:     in std_logic;
 	 Reset:     in std_logic;
    HPC1:      in std_logic_vector(4 downto 0);
	 HPC2:      in std_logic_vector(4 downto 0);
	 HPC3:      in std_logic_vector(4 downto 0);
	 HPC4:      in std_logic_vector(4 downto 0);
	 HPC5:      in std_logic_vector(4 downto 0);
 	 Detection: out std_logic
    );
end SVM;
   
architecture Behavioral of SVM is

COMPONENT Single_port_RAM_VHDL
    PORT(
         RAM_ADDR : IN  std_logic_vector(6 downto 0);
         RAM_DATA_IN : IN  std_logic_vector(4 downto 0);
         RAM_WR : IN  std_logic;
         RAM_CLOCK : IN  std_logic;
         RAM_DATA_OUT : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;

	  --Inputs
   signal RAM_ADDR : std_logic_vector(6 downto 0) := (others => '0');
   signal RAM_DATA_IN : std_logic_vector(4 downto 0) := (others => '0');
   signal RAM_WR : std_logic := '0';
   signal RAM_CLOCK : std_logic := '0';

  --Outputs
   signal RAM_DATA_OUT : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant RAM_CLOCK_period : time := 10 ns;
	 
	signal Support1:	std_logic_vector(4 downto 0);
	signal Support2:   std_logic_vector(4 downto 0);
	signal Support3:   std_logic_vector(4 downto 0);
	signal Support4:  std_logic_vector(4 downto 0);
   signal Support5:  std_logic_vector(4 downto 0);
	signal B:   		std_logic_vector(4 downto 0);
	signal T:   		std_logic_vector(4 downto 0);
   signal temp: std_logic;
	signal Y: unsigned(9 downto 0) := (others => '0');
function Threshold(
	val : in unsigned(9 downto 0);
	limit : in unsigned(4 downto 0))
	return unsigned is 
	variable ret : unsigned(9 downto 0) := (others => '0');
	begin
		if val > limit then
			ret := val;
		end if;
		return ret;
	end;
function Perceptron(
	S_HPC1: unsigned(4 downto 0) := (others => '0');
	S_HPC2: unsigned(4 downto 0) := (others => '0');
	S_HPC3: unsigned(4 downto 0) := (others => '0');
	S_HPC4: unsigned(4 downto 0) := (others => '0');
	S_HPC5: unsigned(4 downto 0) := (others => '0');
	S_Support1: unsigned(4 downto 0) := (others => '0');
	S_Support2: unsigned(4 downto 0) := (others => '0');
	S_Support3: unsigned(4 downto 0) := (others => '0');
	S_Support4: unsigned(4 downto 0) := (others => '0');
	S_Support5: unsigned(4 downto 0) := (others => '0');
	S_B : in unsigned(4 downto 0);
	S_T : in unsigned(4 downto 0)
	)
	return unsigned is 
	variable ret, tmp : unsigned(9 downto 0) := (others => '0');
	begin
		tmp := (S_HPC1 * S_Support1) + (S_HPC2 * S_Support2) + (S_HPC3 * S_Support3) + (S_HPC4 * S_Support4) + (S_HPC5 * S_Support5) + S_B;
		ret := Threshold(tmp,S_T);
		return ret;
	end;
	
begin 
 uut: Single_port_RAM_VHDL PORT MAP (
          RAM_ADDR => RAM_ADDR,
          RAM_DATA_IN => RAM_DATA_IN,
          RAM_WR => RAM_WR,
          RAM_CLOCK => RAM_CLOCK,
          RAM_DATA_OUT => RAM_DATA_OUT
        );
process(Clock,Reset)
   begin
      if Reset='1' then
         temp <= '0';
			RAM_ADDR <= "0000000";
			Support1 <= RAM_DATA_OUT;
			RAM_ADDR <= "0000001";
			Support2 <= RAM_DATA_OUT;
			RAM_ADDR <= "0000010";
			Support3 <= RAM_DATA_OUT;
			RAM_ADDR <= "0000011";
			Support4 <= RAM_DATA_OUT;
			RAM_ADDR <= "0000100";
			Support5 <= RAM_DATA_OUT;
			RAM_ADDR <= "0000101";
			B <= RAM_DATA_OUT;
			RAM_ADDR <= "0000110";
			T <= RAM_DATA_OUT;
      elsif(rising_edge(Clock)) then
         if Clock_enable_B='0' then
				Y <= Perceptron(unsigned(HPC1),unsigned(HPC2),unsigned(HPC3),unsigned(HPC4),unsigned(HPC5),unsigned(Support1),unsigned(Support2),unsigned(Support3),unsigned(Support4),unsigned(Support5),unsigned(B),unsigned(T));
				if Y > 0 then
               temp <= '1';
            else
               temp <= '0';
            end if;
         end if;
      end if;
   end process;
   Detection <= temp;
end Behavioral;
