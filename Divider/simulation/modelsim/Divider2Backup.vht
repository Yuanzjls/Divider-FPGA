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
-- Generated on "02/16/2017 11:26:56"
                                                            
-- Vhdl Test Bench template for design  :  Divider2
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;                             

ENTITY Divider2_vhd_tst IS
generic(Data_Width:integer:=8);
END Divider2_vhd_tst;
ARCHITECTURE Divider2_arch OF Divider2_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Dividen_In : STD_LOGIC_VECTOR(Data_Width-1 DOWNTO 0):=(others=>'1');
SIGNAL Divider_In : STD_LOGIC_VECTOR(Data_Width-1 DOWNTO 0):=(0=>'1', 1=>'1', others=>'0');
SIGNAL Quotient : STD_LOGIC_VECTOR(Data_Width-1 DOWNTO 0);
SIGNAL Remainder : STD_LOGIC_VECTOR(Data_Width-1 DOWNTO 0);
COMPONENT Divider2
	generic(N:integer:=Data_Width);
	PORT (
	Dividen_In : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	Divider_In : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	Quotient : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	Remainder : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Divider2
	generic map(Data_Width)
	PORT MAP (
-- list connections between master ports and signals
	Dividen_In => Dividen_In,
	Divider_In => Divider_In,
	Quotient => Quotient,
	Remainder => Remainder
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                       
	wait for 5ns;
	Divider_In<=Divider_In+1;          
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END Divider2_arch;
