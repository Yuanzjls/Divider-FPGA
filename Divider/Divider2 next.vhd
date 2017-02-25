library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Divider2 is
generic(N:integer:=8);
port(Divider_In, Dividen_In: in std_logic_vector(N-1 downto 0);
	Quotient, Remainder: out std_logic_vector(N-1 downto 0));
end Divider2;

architecture Divider_Structure of Divider2 is
begin 
	process (Divider_In, Dividen_In)
		variable Var_Divider_In: std_logic_vector(N-1 downto 0);
		variable Var_Dividen_In: std_logic_vector(2*N-1 downto 0);
		--variable temp_a, temp_b: std_logic_vector(15 downto 0);
		begin
			Var_Dividen_In:=(others=>'0');
			Var_Divider_In:=(others=>'0');
			Var_Dividen_In(N-1 downto 0):= Dividen_In;
			Var_Divider_In:= Divider_In;
			for i in 0 to N-1 loop
				Var_Dividen_In := Var_Dividen_In(2*N-2 downto 0) & "0";
				if (Var_Dividen_In(2*N-1 downto N) >= Divider_In) then
					Var_Dividen_In(2*N-1 downto N):= (Var_Dividen_In(2*N-1 downto N) - Var_Divider_In);
					Var_Dividen_In(0):='1';
				else
					Var_Dividen_In:= Var_Dividen_In;
				end if;
			end loop;
			Quotient<=Var_Dividen_In(N-1 downto 0);
			Remainder<= Var_Dividen_In(2*N-1 downto N);
		end process;

end Divider_Structure;
		
		
