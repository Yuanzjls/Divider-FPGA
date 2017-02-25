library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity CAS_1 is
port(A_In, B_In, C_In, P_In: in std_logic;
Sum_Out, C_Out: out std_logic);
end CAS_1;

architecture CAS_Structure of CAS_1 is
begin
		process(A_In, B_In, C_In, P_In)
			variable Var_Sum: std_logic;
			variable Var_C: std_logic;
		begin

		
		Var_Sum := (A_In xor (B_In xor P_In)) xor C_In;
		Var_C := ((A_In or C_In) and (B_In xor P_In)) or (A_In and C_In);
		
		Sum_Out<=Var_Sum;
		C_Out<=Var_C;
		end process;

end CAS_Structure;