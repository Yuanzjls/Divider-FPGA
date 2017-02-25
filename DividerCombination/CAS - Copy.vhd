library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity CAS is
generic(N:integer:=4);
port(In_A, In_B: in std_logic_vector(N-1 downto 0);
Quotient, Remainder: Out std_logic_vector(N-1 downto 0));
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

procedure CAS1_Out(variable A_In, B_In: in std_logic_vector(N-1 downto 0);
variable P_In: in std_logic;
variable C_Out: out std_logic;
variable Sum_Out: out std_logic_vector(N-1 downto 0)) is
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
			C_Out:=Var_C(N-1);
			Sum_Out:=Var_Sum;
end procedure;
begin 
	process(In_A, In_B)
		variable Var_A_In, Var_B_In: std_logic_vector(N-1 downto 0);
		variable Var_Quotient, Var_Remainder:std_logic_vector(N-1 downto 0);
		variable Var_P: std_logic;
		begin
		Var_A_In:= (0=>In_A(N-1), others=>'0');
		Var_B_In:= In_B;
		Var_P:='1';		
		
		CAS1_Out( Var_A_In, Var_B_In, Var_P, Var_Quotient(N-1), Var_Remainder);
		
		for i in N-2 downto 0 loop
		Var_Remainder:=Var_Remainder(N-2 downto 0) & In_A(i);
		Var_P:=  Var_Quotient(i+1);
		CAS1_Out( Var_Remainder, Var_B_In, Var_P, Var_Quotient(i), Var_Remainder);
		
		end loop;
--		Var_Remainder:=Var_Remainder(N-2 downto 0) & In_A(2);
--		Var_P:=  Var_Quotient(N-1);
--		CAS1_Out( Var_Remainder, Var_B_In, Var_P, Var_Quotient(N-2), Var_Remainder);
--		
--		Var_Remainder:=Var_Remainder(N-2 downto 0) & In_A(1);
--		Var_P:=  Var_Quotient(N-2);
--		CAS1_Out( Var_Remainder, Var_B_In, Var_P, Var_Quotient(N-3), Var_Remainder);
--		
--		Var_Remainder:=Var_Remainder(N-2 downto 0) & In_A(0);
--		Var_P:= Var_Quotient(N-3);
--		CAS1_Out( Var_Remainder, Var_B_In, Var_P, Var_Quotient(N-4), Var_Remainder);
--		
		if (Var_Quotient(0)='0') then
			Var_Remainder:=Var_Remainder+Var_B_In;
		end if;		
		Quotient<=Var_Quotient;
		Remainder<=Var_Remainder;
		
	end process;
end CAS_Structure;