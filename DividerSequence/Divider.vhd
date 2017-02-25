library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity Divider is
generic(N:integer:=8);
port(Divider_In, Dividen_In: in std_logic_vector(N-1 downto 0);
	Quotient, Remainder: out std_logic_vector(N-1 downto 0);
	Start, Clk: in std_logic;
	Done, error: out std_logic);
end Divider;

architecture Divider_Structure of divider is
type states is (InitState, AddState, SubstractState, ShiftState, DoneState, CheckState);
signal State:states:=DoneState;
signal Signal_Remainder , Signal_Divider: std_logic_vector(N+1 downto 0);
signal Signal_Quotient: std_logic_vector(N-1 downto 0):=(others=>'0');
signal CNT:integer range 0 to N:=N;
	begin
		Done <= '1' when State=DoneState else '0';
		
		process(Clk)
		begin
			if (rising_edge(Clk)) then
				case state is 
					when DoneState => if (Start='1') then
											state<=InitState;
											end if;
					when InitState => state<=SubstractState;
	
					when substractState=> if (CNT=0) then
													state<= CheckState;
												 else		
													state<=shiftState;
												 end if;												 
					when addState =>		if (CNT=0) then
													state<= CheckState;
												 else		
												 state<=shiftState;
												 end if;
				
					when shiftState=> if (Signal_Remainder<0) then
												state<=addState;
											else
												state<=substractState;
											end if;
					when CheckState=> state<=DoneState;
											
				end case;
			end if;
		end process;
		
		process(Clk)
		begin
			if (Rising_edge(Clk)) then
			
				if (state=InitState) then
					Signal_Divider<= "00" & Divider_In;
					Signal_Remainder<=(0=>Dividen_In(N-1),others=>'0');
					Signal_Quotient<=(others=>'0');
					CNT<=N-1;
					
				elsif (state=substractState) then
					Signal_Remainder<=Signal_Remainder - Signal_Divider;
					
				elsif (state=addState) then
					Signal_Remainder<=Signal_Remainder + Signal_Divider;
					
				elsif (state=shiftState) then
					if (Signal_Remainder>=0) then
						signal_Quotient(CNT)<='1';
					end if;	
					Signal_Remainder<=Signal_Remainder(N+1) & signal_Remainder(N-1 downto 0) & Dividen_In(CNT-1);
					CNT<=CNT-1;
					
				elsif (state=checkState) then
					if (signal_Remainder<0) then
						signal_Remainder<= signal_Remainder+signal_Divider;
					else
						signal_Quotient(0)<='1';
					end if;
				end if;							
			end if;
		end process;
		
		Quotient<= signal_Quotient when State=doneState;		
		Remainder<= signal_Remainder(N-1 downto 0) when State=doneState;
		
		error<='1' when Divider_In=0 else '0';
	end Divider_Structure;
			
		
	
	
	