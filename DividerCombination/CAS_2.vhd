library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity CAS is 
generic(N:integer:=4);
port(A_In, B_In: in std_logic_vector(N-1 downto 0);
	P_In: in std_logic;
	C_Out: out std_logic;
	Sum_Out: out std_logic_vector(N-1 downto 0));
end CAS;

architecture CAS_Structure of CAS is

function Func_Sum_Out(I1, I2, I3, I4:std_logic) return std_logic is --I1 A_In, I2 B_In, I3 C_In, I4 P_In
begin 
	return (I1 xor (I2 xor I4)) xor I3;
end Func_Sum_Out;

function Func_C_Out(I1, I2, I3, I4:std_logic) return std_logic is --I1 A_In, I2 B_In, I3 C_In, I4 P_In
begin 
	return ((I1 or I3) and (I2 xor I4)) or (I1 and I3);
end func_C_Out;

procedure CAS_Out(signal A_In, B_In: in std_logic_vector(N-1 downto 0);
signal P_In: in std_logic;
signal C_Out: out std_logic;
signal Sum_Out: out std_logic_vector(N-1 downto 0)) is
variable Var_A_In, Var_B_In, Var_Sum, Var_C: std_logic_vector(N-1 downto 0);
variable Var_P: std_logic;
begin 


			Var_A_In:=A_In;
			Var_B_In:=B_In;
			Var_P:=P_In;

			Var_Sum(0):=Func_Sum_Out(Var_A_In(0), B_In(0), Var_P, Var_P);
			Var_C(0):=Func_C_Out(Var_A_In(0), B_In(0), Var_P, Var_P);
			for i in 1 to N-1 loop	
				Var_Sum(i):=Func_Sum_Out(Var_A_In(i), B_In(i), Var_C(i-1), Var_P);
				Var_C(i):=Func_C_Out(Var_A_In(i), B_In(i), Var_C(i-1), Var_P);
			end loop;
			C_Out<=Var_C(N-1);
			Sum_Out<=Var_Sum;
end procedure;



begin
		CAS_Out(A_In, B_In, P_In, C_Out, Sum_Out);
--			variable Var_A_In, Var_B_In: std_logic_vector(N-1 downto 0);
--			variable Var_C: std_logic_vector(N-1 downto 0);
--			variable Var_Sum: std_logic_vector(N-1 downto 0);
--			variable Var_P: std_logic;
--		begin
--			Var_A_In:=A_In;
--			Var_B_In:=B_In;
--			Var_P:=P_In;
--			
--			Var_Sum(0):=Func_Sum_Out(Var_A_In(0), B_In(0), Var_P, Var_P);
--			Var_C(0):=Func_C_Out(Var_A_In(0), B_In(0), Var_P, Var_P);
--			for i in 1 to N-1 loop	
--				Var_Sum(i):=Func_Sum_Out(Var_A_In(i), B_In(i), Var_C(i-1), Var_P);
--				Var_C(i):=Func_C_Out(Var_A_In(i), B_In(i), Var_C(i-1), Var_P);
--	
----		N1: CAS_1 port map(A_In(0), B_In(0), P_In, P_In, Sum_Out(0), C_temp(0));
----			Var_Sum(0):=Func_Sum_Out(Var_A_In(0), B_In(0), Var_P, Var_P);
----			Var_C(0):=Func_C_Out(Var_A_In(0), B_In(0), Var_P, Var_P);	
----		
----	
----		N2: CAS_1 port map(A_In(1), B_In(1), C_temp(0), P_In, Sum_Out(1), C_temp(1));
----			Var_Sum(1):=Func_Sum_Out(Var_A_In(1), B_In(1), Var_C(0), Var_P);
----			Var_C(1):=Func_C_Out(Var_A_In(1), B_In(1), Var_C(0), Var_P);
----			
----		N3: CAS_1 port map(A_In(2), B_In(2), C_temp(1), P_In, Sum_Out(2), C_temp(2));
----			Var_Sum(2):=Func_Sum_Out(Var_A_In(2), B_In(2), Var_C(1), Var_P);
----			Var_C(2):=Func_C_Out(Var_A_In(2), B_In(2), Var_C(1), Var_P);
----			
----		N4: CAS_1 port map(A_In(3), B_In(3), C_temp(2), P_In, Sum_Out(3), C_Out);
----			Var_Sum(3):=Func_Sum_Out(Var_A_In(3), B_In(3), Var_C(2), Var_P);
----			Var_C(3):=Func_C_Out(Var_A_In(3), B_In(3), Var_C(2), Var_P);
--			end loop;
--			
--			C_Out<=Var_C(N-1);
--			Sum_Out<=Var_Sum;
--		end process;
		
end CAS_Structure;
