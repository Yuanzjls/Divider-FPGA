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
-- Generated on "02/19/2017 00:50:19"
                                                            
-- Vhdl Test Bench template for design  :  CAS
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY CAS_vhd_tst IS
generic(Data_Width:integer:=8);
END CAS_vhd_tst;
ARCHITECTURE CAS_arch OF CAS_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL In_A : STD_LOGIC_VECTOR(Data_Width-1 DOWNTO 0):=(others=>'1');
SIGNAL In_B : STD_LOGIC_VECTOR(Data_Width-1 DOWNTO 0):=(0=>'1', others=>'0');
SIGNAL Quotient : STD_LOGIC_VECTOR(Data_Width-1 DOWNTO 0);
SIGNAL Remainder : STD_LOGIC_VECTOR(Data_Width-1 DOWNTO 0);
COMPONENT CAS
	generic(N:integer:=Data_Width);
	PORT (
	In_A : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	In_B : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	Quotient : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	Remainder : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : CAS
	generic map(Data_Width)
	PORT MAP (
-- list connections between master ports and signals
	In_A => In_A,
	In_B => In_B,
	Quotient => Quotient,
	Remainder => Remainder
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT for 5ns;
In_A<= x"ff";      
In_B<= x"2d";                                                  
END PROCESS always;                                          
END CAS_arch;
