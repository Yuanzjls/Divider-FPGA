-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "02/19/2017 16:30:28"
                                                            
-- Vhdl Test Bench template for design  :  Divider
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;      
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;                    

ENTITY Divider_vhd_tst IS
generic(Data_Width:integer:=8);
END Divider_vhd_tst;
ARCHITECTURE Divider_arch OF Divider_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC:='1';
SIGNAL Dividen_In : STD_LOGIC_VECTOR(Data_Width-1 DOWNTO 0):=(others=>'1');
SIGNAL Divider_In : STD_LOGIC_VECTOR(Data_Width-1 DOWNTO 0):=(0=>'1', 1=>'1', others=>'0');
SIGNAL Done : STD_LOGIC:='0';
SIGNAL error : STD_LOGIC:='0';
SIGNAL Quotient : STD_LOGIC_VECTOR(Data_Width-1 DOWNTO 0);
SIGNAL Remainder : STD_LOGIC_VECTOR(Data_Width-1 DOWNTO 0):=(others=>'0');
SIGNAL Start : STD_LOGIC:='1';
COMPONENT Divider
	generic(N:integer:=Data_Width);
	PORT (
	Clk : IN STD_LOGIC;
	Dividen_In : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	Divider_In : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	Done : OUT STD_LOGIC;
	error : OUT STD_LOGIC;
	Quotient : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	Remainder : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	Start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Divider
	generic map(Data_Width)
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	Dividen_In => Dividen_In,
	Divider_In => Divider_In,
	Done => Done,
	error => error,
	Quotient => Quotient,
	Remainder => Remainder,
	Start => Start
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
wait for 3ns;
Clk<=not Clk;                                                    
END PROCESS init;                                           
always : PROCESS(Done)                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
	if (Done='1') then
		start <= '1';		
	else	
		Start<='0' after 5ns;
		Divider_In<=Divider_In+1 after 6ns;
	end if;
END PROCESS always;                                          
END Divider_arch;
