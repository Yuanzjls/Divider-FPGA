library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Divider2 is
generic(N:integer:=32);
port(Divider_In, Dividen_In: in std_logic_vector(N-1 downto 0);
	Quotient, Remainder: out std_logic_vector(N-1 downto 0));
end Divider2;

architecture Divider_Structure of Divider2 is
begin 
	process (Divider_In, Dividen_In)
		variable Var_Divider_In: signed(N+1 downto 0);
		variable Var_Dividen_In: signed(2*N+1 downto 0);
		variable temp: std_logic_vector(N-1 downto 0);

		begin
			Var_Dividen_In:=(others=>'0');
			Var_Dividen_In(N downto 0) := signed("0" & Dividen_In);
			Var_Divider_In := signed("00" & Divider_In);
			for i in N-1 downto 0 loop
				Var_Dividen_In(2*N+1 downto 0) := Var_Dividen_In(2*N+1) & Var_Dividen_In(2*N-1 downto 0) & '0';
				if (signed(Var_Dividen_In(2*N+1 downto N)) >= 0) then
					Var_Dividen_In(2*N+1 downto N) := signed(Var_Dividen_In(2*N+1 downto N)) - signed(Var_Divider_In);
				else
					Var_Dividen_In(2*N+1 downto N) := signed(Var_Dividen_In(2*N+1 downto N)) + signed(Var_Divider_In);
				end if;
				if (signed(Var_Dividen_In(2*N+1 downto N)) >= 0) then
					Var_Dividen_In(0):='1';
				end if;
			end loop;
			if (signed(Var_Dividen_In(2*N+1 downto N))<0) then
				Var_Dividen_In(2*N+1 downto N) := signed(Var_Dividen_In(2*N+1 downto N)) + signed(Var_Divider_In);
			end if;
			Quotient<=std_logic_vector(Var_Dividen_In(N-1 downto 0));
			Remainder<= std_logic_vector(Var_Dividen_In(2*N-1 downto N));
		end process;

end Divider_Structure;
		
		
