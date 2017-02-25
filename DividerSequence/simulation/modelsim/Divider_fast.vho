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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "02/20/2017 15:20:23"

-- 
-- Device: Altera EP2S15F484C3 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY STRATIXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE STRATIXII.STRATIXII_COMPONENTS.ALL;

ENTITY 	Divider IS
    PORT (
	Divider_In : IN std_logic_vector(31 DOWNTO 0);
	Dividen_In : IN std_logic_vector(31 DOWNTO 0);
	Quotient : OUT std_logic_vector(31 DOWNTO 0);
	Remainder : OUT std_logic_vector(31 DOWNTO 0);
	Start : IN std_logic;
	Clk : IN std_logic;
	Done : OUT std_logic;
	error : OUT std_logic
	);
END Divider;

-- Design Ports Information
-- Quotient[0]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[1]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[2]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[3]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[4]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[5]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[6]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[7]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[8]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[9]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- Quotient[10]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[11]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- Quotient[12]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[13]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- Quotient[14]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[15]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[16]	=>  Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[17]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[18]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- Quotient[19]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[20]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[21]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[22]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[23]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[24]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[25]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[26]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- Quotient[27]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[28]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[29]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[30]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Quotient[31]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Remainder[0]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Remainder[1]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- Remainder[2]	=>  Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- Remainder[3]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- Remainder[4]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Remainder[5]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- Remainder[6]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- Remainder[7]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- Remainder[8]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- Remainder[9]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- Remainder[10]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Remainder[11]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- Remainder[12]	=>  Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- Remainder[13]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- Remainder[14]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Remainder[15]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Remainder[16]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- Remainder[17]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Remainder[18]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Remainder[19]	=>  Location: PIN_P20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- Remainder[20]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Remainder[21]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- Remainder[22]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Remainder[23]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Remainder[24]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Remainder[25]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Remainder[26]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Remainder[27]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Remainder[28]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Remainder[29]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Remainder[30]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Remainder[31]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Done	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- error	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- Divider_In[30]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[31]	=>  Location: PIN_W13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[29]	=>  Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[28]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[27]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[26]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[24]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[25]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[23]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[22]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[21]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[20]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[18]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[19]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[17]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[16]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[15]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[14]	=>  Location: PIN_N19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[12]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[13]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[5]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[4]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[3]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[2]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[0]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[1]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[11]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[10]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[9]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[8]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[6]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Divider_In[7]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Start	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clk	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[28]	=>  Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[30]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[29]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[24]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[26]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[25]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[27]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[31]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[20]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[22]	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[21]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[16]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[18]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[17]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[19]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[23]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[12]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[14]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[13]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[8]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[10]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[9]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[11]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[15]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[4]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[6]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[5]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[0]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[2]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[1]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[3]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dividen_In[7]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Divider IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Divider_In : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Dividen_In : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Quotient : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Remainder : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Start : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Done : std_logic;
SIGNAL ww_error : std_logic;
SIGNAL \Clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \State.DoneState~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux0~16_combout\ : std_logic;
SIGNAL \Mux0~20_combout\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Signal_Remainder[1]~1_combout\ : std_logic;
SIGNAL \Signal_Remainder~15_combout\ : std_logic;
SIGNAL \Clk~combout\ : std_logic;
SIGNAL \Clk~clkctrl_outclk\ : std_logic;
SIGNAL \Start~combout\ : std_logic;
SIGNAL \State~13_combout\ : std_logic;
SIGNAL \State.InitState~regout\ : std_logic;
SIGNAL \CNT~2_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \CNT~3_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \CNT~4_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \CNT~5_combout\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \CNT~1_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \CNT~6_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \State.ShiftState~regout\ : std_logic;
SIGNAL \CNT[1]~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \State.CheckState~regout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \State.DoneState~regout\ : std_logic;
SIGNAL \State.DoneState~clkctrl_outclk\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \State.AddState~regout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Signal_Remainder~0_combout\ : std_logic;
SIGNAL \Signal_Remainder~2_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \Mux0~24_combout\ : std_logic;
SIGNAL \Mux0~28_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~32_combout\ : std_logic;
SIGNAL \Signal_Remainder~3_combout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Signal_Remainder~4_combout\ : std_logic;
SIGNAL \Signal_Remainder[1]~5_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Signal_Remainder~6_combout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Signal_Remainder~7_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Signal_Remainder~8_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Signal_Remainder~9_combout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Signal_Remainder~10_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Signal_Remainder~10DUPLICATE_combout\ : std_logic;
SIGNAL \Signal_Remainder[6]~DUPLICATE_regout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Signal_Remainder~11_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Signal_Remainder~11DUPLICATE_combout\ : std_logic;
SIGNAL \Signal_Remainder[7]~DUPLICATE_regout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Signal_Remainder~12_combout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Signal_Remainder~12DUPLICATE_combout\ : std_logic;
SIGNAL \Signal_Remainder[8]~DUPLICATE_regout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Signal_Remainder~13_combout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Signal_Remainder~14_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \Signal_Remainder~15DUPLICATE_combout\ : std_logic;
SIGNAL \Signal_Remainder[11]~DUPLICATE_regout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Signal_Remainder~16DUPLICATE_combout\ : std_logic;
SIGNAL \Signal_Remainder[12]~DUPLICATE_regout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Signal_Remainder~17_combout\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \Signal_Remainder~18_combout\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Signal_Remainder~19_combout\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~63\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Signal_Remainder~20_combout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \Signal_Remainder~21_combout\ : std_logic;
SIGNAL \Add2~70\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~71\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Signal_Remainder~22_combout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~75\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add2~74\ : std_logic;
SIGNAL \Add2~77_sumout\ : std_logic;
SIGNAL \Signal_Remainder~23_combout\ : std_logic;
SIGNAL \Add2~78\ : std_logic;
SIGNAL \Add2~81_sumout\ : std_logic;
SIGNAL \Signal_Remainder~24_combout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~79\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~83\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~85_sumout\ : std_logic;
SIGNAL \Signal_Remainder~25_combout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add2~86\ : std_logic;
SIGNAL \Add2~89_sumout\ : std_logic;
SIGNAL \Signal_Remainder~26_combout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~91\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add2~90\ : std_logic;
SIGNAL \Add2~93_sumout\ : std_logic;
SIGNAL \Signal_Remainder~27_combout\ : std_logic;
SIGNAL \Add2~94\ : std_logic;
SIGNAL \Add2~97_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~95\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Signal_Remainder~28_combout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~99\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add2~98\ : std_logic;
SIGNAL \Add2~101_sumout\ : std_logic;
SIGNAL \Signal_Remainder~29_combout\ : std_logic;
SIGNAL \Add2~102\ : std_logic;
SIGNAL \Add2~105_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~103\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Signal_Remainder~30_combout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add2~106\ : std_logic;
SIGNAL \Add2~109_sumout\ : std_logic;
SIGNAL \Signal_Remainder~31_combout\ : std_logic;
SIGNAL \Add2~110\ : std_logic;
SIGNAL \Add2~113_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~111\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Signal_Remainder~32_combout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~115\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~119\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add2~114\ : std_logic;
SIGNAL \Add2~117_sumout\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Signal_Remainder~33_combout\ : std_logic;
SIGNAL \Add2~118\ : std_logic;
SIGNAL \Add2~121_sumout\ : std_logic;
SIGNAL \Signal_Remainder~34_combout\ : std_logic;
SIGNAL \Add2~122\ : std_logic;
SIGNAL \Add2~125_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~123\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Signal_Remainder~35_combout\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~127\ : std_logic;
SIGNAL \Add0~129_sumout\ : std_logic;
SIGNAL \Add2~126\ : std_logic;
SIGNAL \Add2~129_sumout\ : std_logic;
SIGNAL \Signal_Remainder~36_combout\ : std_logic;
SIGNAL \Add0~130\ : std_logic;
SIGNAL \Add0~131\ : std_logic;
SIGNAL \Add0~133_sumout\ : std_logic;
SIGNAL \Add2~130\ : std_logic;
SIGNAL \Add2~133_sumout\ : std_logic;
SIGNAL \Signal_Remainder~37_combout\ : std_logic;
SIGNAL \Signal_Quotient~3_combout\ : std_logic;
SIGNAL \State.SubstractState~regout\ : std_logic;
SIGNAL \Signal_Quotient~0_combout\ : std_logic;
SIGNAL \Signal_Quotient~1_combout\ : std_logic;
SIGNAL \Quotient[0]$latch~combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Signal_Quotient~2_combout\ : std_logic;
SIGNAL \Quotient[1]$latch~combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \Signal_Quotient~4_combout\ : std_logic;
SIGNAL \Quotient[2]$latch~combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \Signal_Quotient~5_combout\ : std_logic;
SIGNAL \Quotient[3]$latch~combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \Signal_Quotient~6_combout\ : std_logic;
SIGNAL \Quotient[4]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~7_combout\ : std_logic;
SIGNAL \Quotient[5]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~8_combout\ : std_logic;
SIGNAL \Quotient[6]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~9_combout\ : std_logic;
SIGNAL \Quotient[7]$latch~combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \Signal_Quotient~10_combout\ : std_logic;
SIGNAL \Quotient[8]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~11_combout\ : std_logic;
SIGNAL \Quotient[9]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~12_combout\ : std_logic;
SIGNAL \Quotient[10]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~13_combout\ : std_logic;
SIGNAL \Quotient[11]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~14_combout\ : std_logic;
SIGNAL \Quotient[12]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~15_combout\ : std_logic;
SIGNAL \Quotient[13]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~16_combout\ : std_logic;
SIGNAL \Quotient[14]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~17_combout\ : std_logic;
SIGNAL \Quotient[15]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~18_combout\ : std_logic;
SIGNAL \Quotient[16]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~19_combout\ : std_logic;
SIGNAL \Quotient[17]$latch~combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \Signal_Quotient~20_combout\ : std_logic;
SIGNAL \Quotient[18]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~21_combout\ : std_logic;
SIGNAL \Quotient[19]$latch~combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \Signal_Quotient~22_combout\ : std_logic;
SIGNAL \Quotient[20]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~23_combout\ : std_logic;
SIGNAL \Quotient[21]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~24_combout\ : std_logic;
SIGNAL \Quotient[22]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~25_combout\ : std_logic;
SIGNAL \Quotient[23]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~26_combout\ : std_logic;
SIGNAL \Quotient[24]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~27_combout\ : std_logic;
SIGNAL \Quotient[25]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~28_combout\ : std_logic;
SIGNAL \Quotient[26]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~29_combout\ : std_logic;
SIGNAL \Quotient[27]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~30_combout\ : std_logic;
SIGNAL \Quotient[28]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~31_combout\ : std_logic;
SIGNAL \Quotient[29]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~32_combout\ : std_logic;
SIGNAL \Quotient[30]$latch~combout\ : std_logic;
SIGNAL \Signal_Quotient~33_combout\ : std_logic;
SIGNAL \Quotient[31]$latch~combout\ : std_logic;
SIGNAL \Remainder[0]$latch~combout\ : std_logic;
SIGNAL \Remainder[1]$latch~combout\ : std_logic;
SIGNAL \Remainder[2]$latch~combout\ : std_logic;
SIGNAL \Remainder[3]$latch~combout\ : std_logic;
SIGNAL \Remainder[4]$latch~combout\ : std_logic;
SIGNAL \Remainder[5]$latch~combout\ : std_logic;
SIGNAL \Remainder[6]$latch~combout\ : std_logic;
SIGNAL \Remainder[7]$latch~combout\ : std_logic;
SIGNAL \Remainder[8]$latch~combout\ : std_logic;
SIGNAL \Signal_Remainder~13DUPLICATE_combout\ : std_logic;
SIGNAL \Signal_Remainder[9]~DUPLICATE_regout\ : std_logic;
SIGNAL \Remainder[9]$latch~combout\ : std_logic;
SIGNAL \Remainder[10]$latch~combout\ : std_logic;
SIGNAL \Remainder[11]$latch~combout\ : std_logic;
SIGNAL \Signal_Remainder~16_combout\ : std_logic;
SIGNAL \Remainder[12]$latch~combout\ : std_logic;
SIGNAL \Remainder[13]$latch~combout\ : std_logic;
SIGNAL \Remainder[14]$latch~combout\ : std_logic;
SIGNAL \Remainder[15]$latch~combout\ : std_logic;
SIGNAL \Remainder[16]$latch~combout\ : std_logic;
SIGNAL \Remainder[17]$latch~combout\ : std_logic;
SIGNAL \Remainder[18]$latch~combout\ : std_logic;
SIGNAL \Remainder[19]$latch~combout\ : std_logic;
SIGNAL \Remainder[20]$latch~combout\ : std_logic;
SIGNAL \Remainder[21]$latch~combout\ : std_logic;
SIGNAL \Remainder[22]$latch~combout\ : std_logic;
SIGNAL \Remainder[23]$latch~combout\ : std_logic;
SIGNAL \Remainder[24]$latch~combout\ : std_logic;
SIGNAL \Signal_Remainder~29DUPLICATE_combout\ : std_logic;
SIGNAL \Signal_Remainder[25]~DUPLICATE_regout\ : std_logic;
SIGNAL \Remainder[25]$latch~combout\ : std_logic;
SIGNAL \Remainder[26]$latch~combout\ : std_logic;
SIGNAL \Remainder[27]$latch~combout\ : std_logic;
SIGNAL \Remainder[28]$latch~combout\ : std_logic;
SIGNAL \Remainder[29]$latch~combout\ : std_logic;
SIGNAL \Remainder[30]$latch~combout\ : std_logic;
SIGNAL \Remainder[31]$latch~combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL Signal_Remainder : std_logic_vector(33 DOWNTO 0);
SIGNAL Signal_Quotient : std_logic_vector(31 DOWNTO 0);
SIGNAL Signal_Divider : std_logic_vector(33 DOWNTO 0);
SIGNAL CNT : std_logic_vector(5 DOWNTO 0);
SIGNAL \Divider_In~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Dividen_In~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Signal_Remainder[25]~DUPLICATE_regout\ : std_logic;
SIGNAL \ALT_INV_Signal_Remainder[12]~DUPLICATE_regout\ : std_logic;
SIGNAL \ALT_INV_Signal_Remainder[11]~DUPLICATE_regout\ : std_logic;
SIGNAL \ALT_INV_Signal_Remainder[9]~DUPLICATE_regout\ : std_logic;
SIGNAL \ALT_INV_Signal_Remainder[8]~DUPLICATE_regout\ : std_logic;
SIGNAL \ALT_INV_Signal_Remainder[7]~DUPLICATE_regout\ : std_logic;
SIGNAL \ALT_INV_Signal_Remainder[6]~DUPLICATE_regout\ : std_logic;
SIGNAL \ALT_INV_State.DoneState~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Dividen_In~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Start~combout\ : std_logic;
SIGNAL \ALT_INV_Divider_In~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Remainder[31]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[30]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[29]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[28]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[27]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[26]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[25]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[24]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[23]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[22]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[21]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[20]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[19]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[18]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[17]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[16]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[15]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[14]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[13]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[12]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[11]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[10]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[9]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[8]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Remainder[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[31]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[30]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[29]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[28]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[27]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[26]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[25]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[24]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[23]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[22]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[21]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[20]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[19]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[18]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[17]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[16]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[15]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[14]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[13]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[12]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[11]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[10]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[9]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[8]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Quotient[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Add1~4_combout\ : std_logic;
SIGNAL \ALT_INV_CNT[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL ALT_INV_CNT : std_logic_vector(5 DOWNTO 0);
SIGNAL ALT_INV_Signal_Divider : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Signal_Remainder~2_combout\ : std_logic;
SIGNAL \ALT_INV_Signal_Remainder[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Signal_Remainder~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~32_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \ALT_INV_State.InitState~regout\ : std_logic;
SIGNAL \ALT_INV_State.AddState~regout\ : std_logic;
SIGNAL \ALT_INV_State.SubstractState~regout\ : std_logic;
SIGNAL \ALT_INV_Signal_Quotient~0_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \ALT_INV_State.ShiftState~regout\ : std_logic;
SIGNAL \ALT_INV_State.CheckState~regout\ : std_logic;
SIGNAL \ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_State.DoneState~regout\ : std_logic;
SIGNAL \ALT_INV_Add0~133_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~129_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~133_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~129_sumout\ : std_logic;
SIGNAL ALT_INV_Signal_Remainder : std_logic_vector(33 DOWNTO 0);
SIGNAL \ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Mux0~28_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~24_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~20_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL ALT_INV_Signal_Quotient : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_Divider_In <= Divider_In;
ww_Dividen_In <= Dividen_In;
Quotient <= ww_Quotient;
Remainder <= ww_Remainder;
ww_Start <= Start;
ww_Clk <= Clk;
Done <= ww_Done;
error <= ww_error;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clk~combout\);

\State.DoneState~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \State.DoneState~regout\);
\ALT_INV_Signal_Remainder[25]~DUPLICATE_regout\ <= NOT \Signal_Remainder[25]~DUPLICATE_regout\;
\ALT_INV_Signal_Remainder[12]~DUPLICATE_regout\ <= NOT \Signal_Remainder[12]~DUPLICATE_regout\;
\ALT_INV_Signal_Remainder[11]~DUPLICATE_regout\ <= NOT \Signal_Remainder[11]~DUPLICATE_regout\;
\ALT_INV_Signal_Remainder[9]~DUPLICATE_regout\ <= NOT \Signal_Remainder[9]~DUPLICATE_regout\;
\ALT_INV_Signal_Remainder[8]~DUPLICATE_regout\ <= NOT \Signal_Remainder[8]~DUPLICATE_regout\;
\ALT_INV_Signal_Remainder[7]~DUPLICATE_regout\ <= NOT \Signal_Remainder[7]~DUPLICATE_regout\;
\ALT_INV_Signal_Remainder[6]~DUPLICATE_regout\ <= NOT \Signal_Remainder[6]~DUPLICATE_regout\;
\ALT_INV_State.DoneState~clkctrl_outclk\ <= NOT \State.DoneState~clkctrl_outclk\;
\ALT_INV_Dividen_In~combout\(7) <= NOT \Dividen_In~combout\(7);
\ALT_INV_Dividen_In~combout\(3) <= NOT \Dividen_In~combout\(3);
\ALT_INV_Dividen_In~combout\(1) <= NOT \Dividen_In~combout\(1);
\ALT_INV_Dividen_In~combout\(2) <= NOT \Dividen_In~combout\(2);
\ALT_INV_Dividen_In~combout\(0) <= NOT \Dividen_In~combout\(0);
\ALT_INV_Dividen_In~combout\(5) <= NOT \Dividen_In~combout\(5);
\ALT_INV_Dividen_In~combout\(6) <= NOT \Dividen_In~combout\(6);
\ALT_INV_Dividen_In~combout\(4) <= NOT \Dividen_In~combout\(4);
\ALT_INV_Dividen_In~combout\(15) <= NOT \Dividen_In~combout\(15);
\ALT_INV_Dividen_In~combout\(11) <= NOT \Dividen_In~combout\(11);
\ALT_INV_Dividen_In~combout\(9) <= NOT \Dividen_In~combout\(9);
\ALT_INV_Dividen_In~combout\(10) <= NOT \Dividen_In~combout\(10);
\ALT_INV_Dividen_In~combout\(8) <= NOT \Dividen_In~combout\(8);
\ALT_INV_Dividen_In~combout\(13) <= NOT \Dividen_In~combout\(13);
\ALT_INV_Dividen_In~combout\(14) <= NOT \Dividen_In~combout\(14);
\ALT_INV_Dividen_In~combout\(12) <= NOT \Dividen_In~combout\(12);
\ALT_INV_Dividen_In~combout\(23) <= NOT \Dividen_In~combout\(23);
\ALT_INV_Dividen_In~combout\(19) <= NOT \Dividen_In~combout\(19);
\ALT_INV_Dividen_In~combout\(17) <= NOT \Dividen_In~combout\(17);
\ALT_INV_Dividen_In~combout\(18) <= NOT \Dividen_In~combout\(18);
\ALT_INV_Dividen_In~combout\(16) <= NOT \Dividen_In~combout\(16);
\ALT_INV_Dividen_In~combout\(21) <= NOT \Dividen_In~combout\(21);
\ALT_INV_Dividen_In~combout\(22) <= NOT \Dividen_In~combout\(22);
\ALT_INV_Dividen_In~combout\(20) <= NOT \Dividen_In~combout\(20);
\ALT_INV_Dividen_In~combout\(31) <= NOT \Dividen_In~combout\(31);
\ALT_INV_Dividen_In~combout\(27) <= NOT \Dividen_In~combout\(27);
\ALT_INV_Dividen_In~combout\(25) <= NOT \Dividen_In~combout\(25);
\ALT_INV_Dividen_In~combout\(26) <= NOT \Dividen_In~combout\(26);
\ALT_INV_Dividen_In~combout\(24) <= NOT \Dividen_In~combout\(24);
\ALT_INV_Dividen_In~combout\(29) <= NOT \Dividen_In~combout\(29);
\ALT_INV_Dividen_In~combout\(30) <= NOT \Dividen_In~combout\(30);
\ALT_INV_Dividen_In~combout\(28) <= NOT \Dividen_In~combout\(28);
\ALT_INV_Start~combout\ <= NOT \Start~combout\;
\ALT_INV_Divider_In~combout\(7) <= NOT \Divider_In~combout\(7);
\ALT_INV_Divider_In~combout\(6) <= NOT \Divider_In~combout\(6);
\ALT_INV_Divider_In~combout\(8) <= NOT \Divider_In~combout\(8);
\ALT_INV_Divider_In~combout\(9) <= NOT \Divider_In~combout\(9);
\ALT_INV_Divider_In~combout\(10) <= NOT \Divider_In~combout\(10);
\ALT_INV_Divider_In~combout\(11) <= NOT \Divider_In~combout\(11);
\ALT_INV_Divider_In~combout\(1) <= NOT \Divider_In~combout\(1);
\ALT_INV_Divider_In~combout\(0) <= NOT \Divider_In~combout\(0);
\ALT_INV_Divider_In~combout\(2) <= NOT \Divider_In~combout\(2);
\ALT_INV_Divider_In~combout\(3) <= NOT \Divider_In~combout\(3);
\ALT_INV_Divider_In~combout\(4) <= NOT \Divider_In~combout\(4);
\ALT_INV_Divider_In~combout\(5) <= NOT \Divider_In~combout\(5);
\ALT_INV_Divider_In~combout\(13) <= NOT \Divider_In~combout\(13);
\ALT_INV_Divider_In~combout\(12) <= NOT \Divider_In~combout\(12);
\ALT_INV_Divider_In~combout\(14) <= NOT \Divider_In~combout\(14);
\ALT_INV_Divider_In~combout\(15) <= NOT \Divider_In~combout\(15);
\ALT_INV_Divider_In~combout\(16) <= NOT \Divider_In~combout\(16);
\ALT_INV_Divider_In~combout\(17) <= NOT \Divider_In~combout\(17);
\ALT_INV_Divider_In~combout\(19) <= NOT \Divider_In~combout\(19);
\ALT_INV_Divider_In~combout\(18) <= NOT \Divider_In~combout\(18);
\ALT_INV_Divider_In~combout\(20) <= NOT \Divider_In~combout\(20);
\ALT_INV_Divider_In~combout\(21) <= NOT \Divider_In~combout\(21);
\ALT_INV_Divider_In~combout\(22) <= NOT \Divider_In~combout\(22);
\ALT_INV_Divider_In~combout\(23) <= NOT \Divider_In~combout\(23);
\ALT_INV_Divider_In~combout\(25) <= NOT \Divider_In~combout\(25);
\ALT_INV_Divider_In~combout\(24) <= NOT \Divider_In~combout\(24);
\ALT_INV_Divider_In~combout\(26) <= NOT \Divider_In~combout\(26);
\ALT_INV_Divider_In~combout\(27) <= NOT \Divider_In~combout\(27);
\ALT_INV_Divider_In~combout\(28) <= NOT \Divider_In~combout\(28);
\ALT_INV_Divider_In~combout\(29) <= NOT \Divider_In~combout\(29);
\ALT_INV_Divider_In~combout\(31) <= NOT \Divider_In~combout\(31);
\ALT_INV_Divider_In~combout\(30) <= NOT \Divider_In~combout\(30);
\ALT_INV_Remainder[31]$latch~combout\ <= NOT \Remainder[31]$latch~combout\;
\ALT_INV_Remainder[30]$latch~combout\ <= NOT \Remainder[30]$latch~combout\;
\ALT_INV_Remainder[29]$latch~combout\ <= NOT \Remainder[29]$latch~combout\;
\ALT_INV_Remainder[28]$latch~combout\ <= NOT \Remainder[28]$latch~combout\;
\ALT_INV_Remainder[27]$latch~combout\ <= NOT \Remainder[27]$latch~combout\;
\ALT_INV_Remainder[26]$latch~combout\ <= NOT \Remainder[26]$latch~combout\;
\ALT_INV_Remainder[25]$latch~combout\ <= NOT \Remainder[25]$latch~combout\;
\ALT_INV_Remainder[24]$latch~combout\ <= NOT \Remainder[24]$latch~combout\;
\ALT_INV_Remainder[23]$latch~combout\ <= NOT \Remainder[23]$latch~combout\;
\ALT_INV_Remainder[22]$latch~combout\ <= NOT \Remainder[22]$latch~combout\;
\ALT_INV_Remainder[21]$latch~combout\ <= NOT \Remainder[21]$latch~combout\;
\ALT_INV_Remainder[20]$latch~combout\ <= NOT \Remainder[20]$latch~combout\;
\ALT_INV_Remainder[19]$latch~combout\ <= NOT \Remainder[19]$latch~combout\;
\ALT_INV_Remainder[18]$latch~combout\ <= NOT \Remainder[18]$latch~combout\;
\ALT_INV_Remainder[17]$latch~combout\ <= NOT \Remainder[17]$latch~combout\;
\ALT_INV_Remainder[16]$latch~combout\ <= NOT \Remainder[16]$latch~combout\;
\ALT_INV_Remainder[15]$latch~combout\ <= NOT \Remainder[15]$latch~combout\;
\ALT_INV_Remainder[14]$latch~combout\ <= NOT \Remainder[14]$latch~combout\;
\ALT_INV_Remainder[13]$latch~combout\ <= NOT \Remainder[13]$latch~combout\;
\ALT_INV_Remainder[12]$latch~combout\ <= NOT \Remainder[12]$latch~combout\;
\ALT_INV_Remainder[11]$latch~combout\ <= NOT \Remainder[11]$latch~combout\;
\ALT_INV_Remainder[10]$latch~combout\ <= NOT \Remainder[10]$latch~combout\;
\ALT_INV_Remainder[9]$latch~combout\ <= NOT \Remainder[9]$latch~combout\;
\ALT_INV_Remainder[8]$latch~combout\ <= NOT \Remainder[8]$latch~combout\;
\ALT_INV_Remainder[7]$latch~combout\ <= NOT \Remainder[7]$latch~combout\;
\ALT_INV_Remainder[6]$latch~combout\ <= NOT \Remainder[6]$latch~combout\;
\ALT_INV_Remainder[5]$latch~combout\ <= NOT \Remainder[5]$latch~combout\;
\ALT_INV_Remainder[4]$latch~combout\ <= NOT \Remainder[4]$latch~combout\;
\ALT_INV_Remainder[3]$latch~combout\ <= NOT \Remainder[3]$latch~combout\;
\ALT_INV_Remainder[2]$latch~combout\ <= NOT \Remainder[2]$latch~combout\;
\ALT_INV_Remainder[1]$latch~combout\ <= NOT \Remainder[1]$latch~combout\;
\ALT_INV_Remainder[0]$latch~combout\ <= NOT \Remainder[0]$latch~combout\;
\ALT_INV_Quotient[31]$latch~combout\ <= NOT \Quotient[31]$latch~combout\;
\ALT_INV_Quotient[30]$latch~combout\ <= NOT \Quotient[30]$latch~combout\;
\ALT_INV_Quotient[29]$latch~combout\ <= NOT \Quotient[29]$latch~combout\;
\ALT_INV_Quotient[28]$latch~combout\ <= NOT \Quotient[28]$latch~combout\;
\ALT_INV_Quotient[27]$latch~combout\ <= NOT \Quotient[27]$latch~combout\;
\ALT_INV_Quotient[26]$latch~combout\ <= NOT \Quotient[26]$latch~combout\;
\ALT_INV_Quotient[25]$latch~combout\ <= NOT \Quotient[25]$latch~combout\;
\ALT_INV_Quotient[24]$latch~combout\ <= NOT \Quotient[24]$latch~combout\;
\ALT_INV_Quotient[23]$latch~combout\ <= NOT \Quotient[23]$latch~combout\;
\ALT_INV_Quotient[22]$latch~combout\ <= NOT \Quotient[22]$latch~combout\;
\ALT_INV_Quotient[21]$latch~combout\ <= NOT \Quotient[21]$latch~combout\;
\ALT_INV_Quotient[20]$latch~combout\ <= NOT \Quotient[20]$latch~combout\;
\ALT_INV_Quotient[19]$latch~combout\ <= NOT \Quotient[19]$latch~combout\;
\ALT_INV_Quotient[18]$latch~combout\ <= NOT \Quotient[18]$latch~combout\;
\ALT_INV_Quotient[17]$latch~combout\ <= NOT \Quotient[17]$latch~combout\;
\ALT_INV_Quotient[16]$latch~combout\ <= NOT \Quotient[16]$latch~combout\;
\ALT_INV_Quotient[15]$latch~combout\ <= NOT \Quotient[15]$latch~combout\;
\ALT_INV_Quotient[14]$latch~combout\ <= NOT \Quotient[14]$latch~combout\;
\ALT_INV_Quotient[13]$latch~combout\ <= NOT \Quotient[13]$latch~combout\;
\ALT_INV_Quotient[12]$latch~combout\ <= NOT \Quotient[12]$latch~combout\;
\ALT_INV_Quotient[11]$latch~combout\ <= NOT \Quotient[11]$latch~combout\;
\ALT_INV_Quotient[10]$latch~combout\ <= NOT \Quotient[10]$latch~combout\;
\ALT_INV_Quotient[9]$latch~combout\ <= NOT \Quotient[9]$latch~combout\;
\ALT_INV_Quotient[8]$latch~combout\ <= NOT \Quotient[8]$latch~combout\;
\ALT_INV_Quotient[7]$latch~combout\ <= NOT \Quotient[7]$latch~combout\;
\ALT_INV_Quotient[6]$latch~combout\ <= NOT \Quotient[6]$latch~combout\;
\ALT_INV_Quotient[5]$latch~combout\ <= NOT \Quotient[5]$latch~combout\;
\ALT_INV_Quotient[4]$latch~combout\ <= NOT \Quotient[4]$latch~combout\;
\ALT_INV_Quotient[3]$latch~combout\ <= NOT \Quotient[3]$latch~combout\;
\ALT_INV_Quotient[2]$latch~combout\ <= NOT \Quotient[2]$latch~combout\;
\ALT_INV_Quotient[1]$latch~combout\ <= NOT \Quotient[1]$latch~combout\;
\ALT_INV_Quotient[0]$latch~combout\ <= NOT \Quotient[0]$latch~combout\;
\ALT_INV_Add1~4_combout\ <= NOT \Add1~4_combout\;
\ALT_INV_CNT[1]~0_combout\ <= NOT \CNT[1]~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_CNT(5) <= NOT CNT(5);
ALT_INV_Signal_Divider(31) <= NOT Signal_Divider(31);
ALT_INV_Signal_Divider(30) <= NOT Signal_Divider(30);
ALT_INV_Signal_Divider(29) <= NOT Signal_Divider(29);
ALT_INV_Signal_Divider(28) <= NOT Signal_Divider(28);
ALT_INV_Signal_Divider(27) <= NOT Signal_Divider(27);
ALT_INV_Signal_Divider(26) <= NOT Signal_Divider(26);
ALT_INV_Signal_Divider(25) <= NOT Signal_Divider(25);
ALT_INV_Signal_Divider(24) <= NOT Signal_Divider(24);
ALT_INV_Signal_Divider(23) <= NOT Signal_Divider(23);
ALT_INV_Signal_Divider(22) <= NOT Signal_Divider(22);
ALT_INV_Signal_Divider(21) <= NOT Signal_Divider(21);
ALT_INV_Signal_Divider(20) <= NOT Signal_Divider(20);
ALT_INV_Signal_Divider(19) <= NOT Signal_Divider(19);
ALT_INV_Signal_Divider(18) <= NOT Signal_Divider(18);
ALT_INV_Signal_Divider(17) <= NOT Signal_Divider(17);
ALT_INV_Signal_Divider(16) <= NOT Signal_Divider(16);
ALT_INV_Signal_Divider(15) <= NOT Signal_Divider(15);
ALT_INV_Signal_Divider(14) <= NOT Signal_Divider(14);
ALT_INV_Signal_Divider(13) <= NOT Signal_Divider(13);
ALT_INV_Signal_Divider(12) <= NOT Signal_Divider(12);
ALT_INV_Signal_Divider(11) <= NOT Signal_Divider(11);
ALT_INV_Signal_Divider(10) <= NOT Signal_Divider(10);
ALT_INV_Signal_Divider(9) <= NOT Signal_Divider(9);
ALT_INV_Signal_Divider(8) <= NOT Signal_Divider(8);
ALT_INV_Signal_Divider(7) <= NOT Signal_Divider(7);
ALT_INV_Signal_Divider(6) <= NOT Signal_Divider(6);
ALT_INV_Signal_Divider(5) <= NOT Signal_Divider(5);
ALT_INV_Signal_Divider(4) <= NOT Signal_Divider(4);
ALT_INV_Signal_Divider(3) <= NOT Signal_Divider(3);
ALT_INV_Signal_Divider(2) <= NOT Signal_Divider(2);
ALT_INV_Signal_Divider(1) <= NOT Signal_Divider(1);
\ALT_INV_Signal_Remainder~2_combout\ <= NOT \Signal_Remainder~2_combout\;
\ALT_INV_Signal_Remainder[1]~1_combout\ <= NOT \Signal_Remainder[1]~1_combout\;
\ALT_INV_Signal_Remainder~0_combout\ <= NOT \Signal_Remainder~0_combout\;
ALT_INV_Signal_Divider(0) <= NOT Signal_Divider(0);
\ALT_INV_Mux0~32_combout\ <= NOT \Mux0~32_combout\;
\ALT_INV_Add1~3_combout\ <= NOT \Add1~3_combout\;
\ALT_INV_Add1~2_combout\ <= NOT \Add1~2_combout\;
\ALT_INV_Add1~1_combout\ <= NOT \Add1~1_combout\;
\ALT_INV_Add1~0_combout\ <= NOT \Add1~0_combout\;
\ALT_INV_Decoder0~7_combout\ <= NOT \Decoder0~7_combout\;
\ALT_INV_Decoder0~6_combout\ <= NOT \Decoder0~6_combout\;
\ALT_INV_Decoder0~5_combout\ <= NOT \Decoder0~5_combout\;
\ALT_INV_Decoder0~4_combout\ <= NOT \Decoder0~4_combout\;
\ALT_INV_Decoder0~3_combout\ <= NOT \Decoder0~3_combout\;
\ALT_INV_Decoder0~2_combout\ <= NOT \Decoder0~2_combout\;
\ALT_INV_Decoder0~1_combout\ <= NOT \Decoder0~1_combout\;
\ALT_INV_State.InitState~regout\ <= NOT \State.InitState~regout\;
\ALT_INV_State.AddState~regout\ <= NOT \State.AddState~regout\;
\ALT_INV_State.SubstractState~regout\ <= NOT \State.SubstractState~regout\;
\ALT_INV_Signal_Quotient~0_combout\ <= NOT \Signal_Quotient~0_combout\;
\ALT_INV_Decoder0~0_combout\ <= NOT \Decoder0~0_combout\;
ALT_INV_CNT(3) <= NOT CNT(3);
ALT_INV_CNT(2) <= NOT CNT(2);
ALT_INV_CNT(1) <= NOT CNT(1);
ALT_INV_CNT(0) <= NOT CNT(0);
ALT_INV_CNT(4) <= NOT CNT(4);
\ALT_INV_State.ShiftState~regout\ <= NOT \State.ShiftState~regout\;
\ALT_INV_State.CheckState~regout\ <= NOT \State.CheckState~regout\;
\ALT_INV_Equal1~5_combout\ <= NOT \Equal1~5_combout\;
\ALT_INV_Equal1~4_combout\ <= NOT \Equal1~4_combout\;
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_State.DoneState~regout\ <= NOT \State.DoneState~regout\;
\ALT_INV_Add0~133_sumout\ <= NOT \Add0~133_sumout\;
\ALT_INV_Add0~129_sumout\ <= NOT \Add0~129_sumout\;
\ALT_INV_Add2~133_sumout\ <= NOT \Add2~133_sumout\;
\ALT_INV_Add2~129_sumout\ <= NOT \Add2~129_sumout\;
ALT_INV_Signal_Remainder(32) <= NOT Signal_Remainder(32);
\ALT_INV_Add0~125_sumout\ <= NOT \Add0~125_sumout\;
\ALT_INV_Add2~125_sumout\ <= NOT \Add2~125_sumout\;
\ALT_INV_Add0~121_sumout\ <= NOT \Add0~121_sumout\;
\ALT_INV_Add2~121_sumout\ <= NOT \Add2~121_sumout\;
\ALT_INV_Add0~117_sumout\ <= NOT \Add0~117_sumout\;
\ALT_INV_Add2~117_sumout\ <= NOT \Add2~117_sumout\;
\ALT_INV_Add0~113_sumout\ <= NOT \Add0~113_sumout\;
\ALT_INV_Add2~113_sumout\ <= NOT \Add2~113_sumout\;
\ALT_INV_Add0~109_sumout\ <= NOT \Add0~109_sumout\;
\ALT_INV_Add2~109_sumout\ <= NOT \Add2~109_sumout\;
\ALT_INV_Add0~105_sumout\ <= NOT \Add0~105_sumout\;
\ALT_INV_Add2~105_sumout\ <= NOT \Add2~105_sumout\;
\ALT_INV_Add0~101_sumout\ <= NOT \Add0~101_sumout\;
\ALT_INV_Add2~101_sumout\ <= NOT \Add2~101_sumout\;
\ALT_INV_Add0~97_sumout\ <= NOT \Add0~97_sumout\;
\ALT_INV_Add2~97_sumout\ <= NOT \Add2~97_sumout\;
\ALT_INV_Add0~93_sumout\ <= NOT \Add0~93_sumout\;
\ALT_INV_Add2~93_sumout\ <= NOT \Add2~93_sumout\;
\ALT_INV_Add0~89_sumout\ <= NOT \Add0~89_sumout\;
\ALT_INV_Add2~89_sumout\ <= NOT \Add2~89_sumout\;
\ALT_INV_Add0~85_sumout\ <= NOT \Add0~85_sumout\;
\ALT_INV_Add2~85_sumout\ <= NOT \Add2~85_sumout\;
\ALT_INV_Add0~81_sumout\ <= NOT \Add0~81_sumout\;
\ALT_INV_Add2~81_sumout\ <= NOT \Add2~81_sumout\;
\ALT_INV_Add0~77_sumout\ <= NOT \Add0~77_sumout\;
\ALT_INV_Add2~77_sumout\ <= NOT \Add2~77_sumout\;
\ALT_INV_Add0~73_sumout\ <= NOT \Add0~73_sumout\;
\ALT_INV_Add2~73_sumout\ <= NOT \Add2~73_sumout\;
\ALT_INV_Add0~69_sumout\ <= NOT \Add0~69_sumout\;
\ALT_INV_Add2~69_sumout\ <= NOT \Add2~69_sumout\;
\ALT_INV_Add0~65_sumout\ <= NOT \Add0~65_sumout\;
\ALT_INV_Add2~65_sumout\ <= NOT \Add2~65_sumout\;
\ALT_INV_Add2~61_sumout\ <= NOT \Add2~61_sumout\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add2~57_sumout\ <= NOT \Add2~57_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add2~53_sumout\ <= NOT \Add2~53_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add2~49_sumout\ <= NOT \Add2~49_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add2~45_sumout\ <= NOT \Add2~45_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add2~41_sumout\ <= NOT \Add2~41_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add2~37_sumout\ <= NOT \Add2~37_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add2~33_sumout\ <= NOT \Add2~33_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add2~29_sumout\ <= NOT \Add2~29_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
\ALT_INV_Mux0~28_combout\ <= NOT \Mux0~28_combout\;
\ALT_INV_Mux0~24_combout\ <= NOT \Mux0~24_combout\;
\ALT_INV_Mux0~20_combout\ <= NOT \Mux0~20_combout\;
\ALT_INV_Mux0~16_combout\ <= NOT \Mux0~16_combout\;
\ALT_INV_Mux0~12_combout\ <= NOT \Mux0~12_combout\;
\ALT_INV_Mux0~8_combout\ <= NOT \Mux0~8_combout\;
\ALT_INV_Mux0~4_combout\ <= NOT \Mux0~4_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
ALT_INV_Signal_Remainder(33) <= NOT Signal_Remainder(33);
ALT_INV_Signal_Remainder(31) <= NOT Signal_Remainder(31);
ALT_INV_Signal_Remainder(30) <= NOT Signal_Remainder(30);
ALT_INV_Signal_Remainder(29) <= NOT Signal_Remainder(29);
ALT_INV_Signal_Remainder(28) <= NOT Signal_Remainder(28);
ALT_INV_Signal_Remainder(27) <= NOT Signal_Remainder(27);
ALT_INV_Signal_Remainder(26) <= NOT Signal_Remainder(26);
ALT_INV_Signal_Remainder(25) <= NOT Signal_Remainder(25);
ALT_INV_Signal_Remainder(24) <= NOT Signal_Remainder(24);
ALT_INV_Signal_Remainder(23) <= NOT Signal_Remainder(23);
ALT_INV_Signal_Remainder(22) <= NOT Signal_Remainder(22);
ALT_INV_Signal_Remainder(21) <= NOT Signal_Remainder(21);
ALT_INV_Signal_Remainder(20) <= NOT Signal_Remainder(20);
ALT_INV_Signal_Remainder(19) <= NOT Signal_Remainder(19);
ALT_INV_Signal_Remainder(18) <= NOT Signal_Remainder(18);
ALT_INV_Signal_Remainder(17) <= NOT Signal_Remainder(17);
ALT_INV_Signal_Remainder(16) <= NOT Signal_Remainder(16);
ALT_INV_Signal_Remainder(15) <= NOT Signal_Remainder(15);
ALT_INV_Signal_Remainder(14) <= NOT Signal_Remainder(14);
ALT_INV_Signal_Remainder(13) <= NOT Signal_Remainder(13);
ALT_INV_Signal_Remainder(12) <= NOT Signal_Remainder(12);
ALT_INV_Signal_Remainder(11) <= NOT Signal_Remainder(11);
ALT_INV_Signal_Remainder(10) <= NOT Signal_Remainder(10);
ALT_INV_Signal_Remainder(9) <= NOT Signal_Remainder(9);
ALT_INV_Signal_Remainder(8) <= NOT Signal_Remainder(8);
ALT_INV_Signal_Remainder(7) <= NOT Signal_Remainder(7);
ALT_INV_Signal_Remainder(6) <= NOT Signal_Remainder(6);
ALT_INV_Signal_Remainder(5) <= NOT Signal_Remainder(5);
ALT_INV_Signal_Remainder(4) <= NOT Signal_Remainder(4);
ALT_INV_Signal_Remainder(3) <= NOT Signal_Remainder(3);
ALT_INV_Signal_Remainder(2) <= NOT Signal_Remainder(2);
ALT_INV_Signal_Remainder(1) <= NOT Signal_Remainder(1);
ALT_INV_Signal_Remainder(0) <= NOT Signal_Remainder(0);
ALT_INV_Signal_Quotient(31) <= NOT Signal_Quotient(31);
ALT_INV_Signal_Quotient(30) <= NOT Signal_Quotient(30);
ALT_INV_Signal_Quotient(29) <= NOT Signal_Quotient(29);
ALT_INV_Signal_Quotient(28) <= NOT Signal_Quotient(28);
ALT_INV_Signal_Quotient(27) <= NOT Signal_Quotient(27);
ALT_INV_Signal_Quotient(26) <= NOT Signal_Quotient(26);
ALT_INV_Signal_Quotient(25) <= NOT Signal_Quotient(25);
ALT_INV_Signal_Quotient(24) <= NOT Signal_Quotient(24);
ALT_INV_Signal_Quotient(23) <= NOT Signal_Quotient(23);
ALT_INV_Signal_Quotient(22) <= NOT Signal_Quotient(22);
ALT_INV_Signal_Quotient(21) <= NOT Signal_Quotient(21);
ALT_INV_Signal_Quotient(20) <= NOT Signal_Quotient(20);
ALT_INV_Signal_Quotient(19) <= NOT Signal_Quotient(19);
ALT_INV_Signal_Quotient(18) <= NOT Signal_Quotient(18);
ALT_INV_Signal_Quotient(17) <= NOT Signal_Quotient(17);
ALT_INV_Signal_Quotient(16) <= NOT Signal_Quotient(16);
ALT_INV_Signal_Quotient(15) <= NOT Signal_Quotient(15);
ALT_INV_Signal_Quotient(14) <= NOT Signal_Quotient(14);
ALT_INV_Signal_Quotient(13) <= NOT Signal_Quotient(13);
ALT_INV_Signal_Quotient(12) <= NOT Signal_Quotient(12);
ALT_INV_Signal_Quotient(11) <= NOT Signal_Quotient(11);
ALT_INV_Signal_Quotient(10) <= NOT Signal_Quotient(10);
ALT_INV_Signal_Quotient(9) <= NOT Signal_Quotient(9);
ALT_INV_Signal_Quotient(8) <= NOT Signal_Quotient(8);
ALT_INV_Signal_Quotient(7) <= NOT Signal_Quotient(7);
ALT_INV_Signal_Quotient(6) <= NOT Signal_Quotient(6);
ALT_INV_Signal_Quotient(5) <= NOT Signal_Quotient(5);
ALT_INV_Signal_Quotient(4) <= NOT Signal_Quotient(4);
ALT_INV_Signal_Quotient(3) <= NOT Signal_Quotient(3);
ALT_INV_Signal_Quotient(2) <= NOT Signal_Quotient(2);
ALT_INV_Signal_Quotient(1) <= NOT Signal_Quotient(1);
ALT_INV_Signal_Quotient(0) <= NOT Signal_Quotient(0);

-- Location: LCFF_X17_Y17_N13
\Signal_Remainder[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~15_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(11));

-- Location: LCCOMB_X21_Y17_N20
\Mux0~16\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux0~16_combout\ = ( !\Add1~1_combout\ & ( (!\Add1~0_combout\ & (((!CNT(0) & ((\Dividen_In~combout\(9)))) # (CNT(0) & (\Dividen_In~combout\(8)))))) # (\Add1~0_combout\ & ((((CNT(0)))))) ) ) # ( \Add1~1_combout\ & ( (!\Add1~0_combout\ & (((!CNT(0) & 
-- (\Dividen_In~combout\(11))) # (CNT(0) & ((\Dividen_In~combout\(10))))))) # (\Add1~0_combout\ & ((((CNT(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000010100000101001110111011101110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~0_combout\,
	datab => \ALT_INV_Dividen_In~combout\(8),
	datac => \ALT_INV_Dividen_In~combout\(11),
	datad => \ALT_INV_Dividen_In~combout\(10),
	datae => \ALT_INV_Add1~1_combout\,
	dataf => ALT_INV_CNT(0),
	datag => \ALT_INV_Dividen_In~combout\(9),
	combout => \Mux0~16_combout\);

-- Location: LCCOMB_X21_Y17_N10
\Mux0~20\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux0~20_combout\ = ( !\Add1~1_combout\ & ( (!\Add1~0_combout\ & ((((\Mux0~16_combout\))))) # (\Add1~0_combout\ & (((!\Mux0~16_combout\ & ((\Dividen_In~combout\(13)))) # (\Mux0~16_combout\ & (\Dividen_In~combout\(12)))))) ) ) # ( \Add1~1_combout\ & ( 
-- (!\Add1~0_combout\ & ((((\Mux0~16_combout\))))) # (\Add1~0_combout\ & (((!\Mux0~16_combout\ & (\Dividen_In~combout\(15))) # (\Mux0~16_combout\ & ((\Dividen_In~combout\(14))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110111011101110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~0_combout\,
	datab => \ALT_INV_Dividen_In~combout\(12),
	datac => \ALT_INV_Dividen_In~combout\(15),
	datad => \ALT_INV_Dividen_In~combout\(14),
	datae => \ALT_INV_Add1~1_combout\,
	dataf => \ALT_INV_Mux0~16_combout\,
	datag => \ALT_INV_Dividen_In~combout\(13),
	combout => \Mux0~20_combout\);

-- Location: LCCOMB_X19_Y17_N8
\Add2~17\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( Signal_Divider(4) ) + ( Signal_Remainder(4) ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( Signal_Divider(4) ) + ( Signal_Remainder(4) ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Signal_Divider(4),
	dataf => ALT_INV_Signal_Remainder(4),
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: LCCOMB_X18_Y16_N24
\Add0~81\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( !Signal_Remainder(20) $ (Signal_Divider(20)) ) + ( \Add0~79\ ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( !Signal_Remainder(20) $ (Signal_Divider(20)) ) + ( \Add0~79\ ) + ( \Add0~78\ ))
-- \Add0~83\ = SHARE((Signal_Remainder(20) & !Signal_Divider(20)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Remainder(20),
	datad => ALT_INV_Signal_Divider(20),
	cin => \Add0~78\,
	sharein => \Add0~79\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\,
	shareout => \Add0~83\);

-- Location: LCCOMB_X18_Y18_N16
\Signal_Remainder[1]~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder[1]~1_combout\ = ( !\State.SubstractState~regout\ & ( (!\State.AddState~regout\ & (!\State.ShiftState~regout\ & ((!Signal_Remainder(33)) # (!\State.CheckState~regout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.AddState~regout\,
	datab => \ALT_INV_State.ShiftState~regout\,
	datac => ALT_INV_Signal_Remainder(33),
	datad => \ALT_INV_State.CheckState~regout\,
	dataf => \ALT_INV_State.SubstractState~regout\,
	combout => \Signal_Remainder[1]~1_combout\);

-- Location: LCCOMB_X17_Y17_N12
\Signal_Remainder~15\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~15_combout\ = ( \Add0~45_sumout\ & ( \Add2~45_sumout\ & ( (!\State.ShiftState~regout\) # ((\State.SubstractState~regout\) # (Signal_Remainder(10))) ) ) ) # ( !\Add0~45_sumout\ & ( \Add2~45_sumout\ & ( (!\State.SubstractState~regout\ & 
-- ((!\State.ShiftState~regout\) # (Signal_Remainder(10)))) ) ) ) # ( \Add0~45_sumout\ & ( !\Add2~45_sumout\ & ( ((\State.ShiftState~regout\ & Signal_Remainder(10))) # (\State.SubstractState~regout\) ) ) ) # ( !\Add0~45_sumout\ & ( !\Add2~45_sumout\ & ( 
-- (\State.ShiftState~regout\ & (Signal_Remainder(10) & !\State.SubstractState~regout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000111111111111001111000000001100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State.ShiftState~regout\,
	datac => ALT_INV_Signal_Remainder(10),
	datad => \ALT_INV_State.SubstractState~regout\,
	datae => \ALT_INV_Add0~45_sumout\,
	dataf => \ALT_INV_Add2~45_sumout\,
	combout => \Signal_Remainder~15_combout\);

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Clk,
	combout => \Clk~combout\);

-- Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[28]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(28),
	combout => \Dividen_In~combout\(28));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[24]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(24),
	combout => \Dividen_In~combout\(24));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[20]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(20),
	combout => \Dividen_In~combout\(20));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[12]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(12),
	combout => \Dividen_In~combout\(12));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[14]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(14),
	combout => \Dividen_In~combout\(14));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[13]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(13),
	combout => \Dividen_In~combout\(13));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[8]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(8),
	combout => \Dividen_In~combout\(8));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[10]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(10),
	combout => \Dividen_In~combout\(10));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[9]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(9),
	combout => \Dividen_In~combout\(9));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[11]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(11),
	combout => \Dividen_In~combout\(11));

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[15]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(15),
	combout => \Dividen_In~combout\(15));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(4),
	combout => \Dividen_In~combout\(4));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(0),
	combout => \Dividen_In~combout\(0));

-- Location: CLKCTRL_G3
\Clk~clkctrl\ : stratixii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~clkctrl_outclk\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Start~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Start,
	combout => \Start~combout\);

-- Location: LCCOMB_X18_Y18_N10
\State~13\ : stratixii_lcell_comb
-- Equation(s):
-- \State~13_combout\ = ( \Start~combout\ & ( !\State.DoneState~regout\ ) ) # ( !\Start~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.DoneState~regout\,
	dataf => \ALT_INV_Start~combout\,
	combout => \State~13_combout\);

-- Location: LCFF_X18_Y18_N11
\State.InitState\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \State~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \State.InitState~regout\);

-- Location: LCCOMB_X22_Y17_N20
\CNT~2\ : stratixii_lcell_comb
-- Equation(s):
-- \CNT~2_combout\ = ( !CNT(0) & ( \State.InitState~regout\ ) ) # ( CNT(0) & ( !\State.InitState~regout\ ) ) # ( !CNT(0) & ( !\State.InitState~regout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_CNT(0),
	dataf => \ALT_INV_State.InitState~regout\,
	combout => \CNT~2_combout\);

-- Location: LCFF_X22_Y17_N21
\CNT[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \CNT~2_combout\,
	ena => \CNT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT(0));

-- Location: LCCOMB_X21_Y17_N12
\Add1~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = ( CNT(0) & ( CNT(1) ) ) # ( !CNT(0) & ( !CNT(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CNT(1),
	dataf => ALT_INV_CNT(0),
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X21_Y17_N4
\CNT~3\ : stratixii_lcell_comb
-- Equation(s):
-- \CNT~3_combout\ = ( \Add1~1_combout\ ) # ( !\Add1~1_combout\ & ( !\State.InitState~regout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100111111111111111111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State.InitState~regout\,
	datae => \ALT_INV_Add1~1_combout\,
	combout => \CNT~3_combout\);

-- Location: LCFF_X21_Y17_N5
\CNT[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \CNT~3_combout\,
	ena => \CNT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT(1));

-- Location: LCCOMB_X21_Y17_N2
\Add1~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ( CNT(0) & ( CNT(2) ) ) # ( !CNT(0) & ( !CNT(2) $ (CNT(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_CNT(2),
	datac => ALT_INV_CNT(1),
	dataf => ALT_INV_CNT(0),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X21_Y17_N0
\CNT~4\ : stratixii_lcell_comb
-- Equation(s):
-- \CNT~4_combout\ = (!\State.InitState~regout\) # (\Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~0_combout\,
	datad => \ALT_INV_State.InitState~regout\,
	combout => \CNT~4_combout\);

-- Location: LCFF_X21_Y17_N1
\CNT[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \CNT~4_combout\,
	ena => \CNT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT(2));

-- Location: LCCOMB_X23_Y17_N8
\Add1~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = ( !CNT(3) & ( CNT(0) ) ) # ( CNT(3) & ( !CNT(0) & ( (!CNT(2) & !CNT(1)) ) ) ) # ( !CNT(3) & ( !CNT(0) & ( (CNT(1)) # (CNT(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111110000001100000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_CNT(2),
	datac => ALT_INV_CNT(1),
	datae => ALT_INV_CNT(3),
	dataf => ALT_INV_CNT(0),
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X22_Y17_N18
\CNT~5\ : stratixii_lcell_comb
-- Equation(s):
-- \CNT~5_combout\ = ( \Add1~2_combout\ & ( !\State.InitState~regout\ ) ) # ( !\Add1~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.InitState~regout\,
	dataf => \ALT_INV_Add1~2_combout\,
	combout => \CNT~5_combout\);

-- Location: LCFF_X22_Y17_N19
\CNT[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \CNT~5_combout\,
	ena => \CNT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT(3));

-- Location: LCCOMB_X22_Y19_N24
\Add1~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = ( CNT(1) & ( !CNT(4) ) ) # ( !CNT(1) & ( !CNT(4) $ (((!CNT(2) & (!CNT(0) & !CNT(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100011110000011110001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CNT(2),
	datab => ALT_INV_CNT(0),
	datac => ALT_INV_CNT(4),
	datad => ALT_INV_CNT(3),
	dataf => ALT_INV_CNT(1),
	combout => \Add1~3_combout\);

-- Location: LCCOMB_X22_Y17_N8
\CNT~1\ : stratixii_lcell_comb
-- Equation(s):
-- \CNT~1_combout\ = ( \Add1~3_combout\ & ( !\State.InitState~regout\ ) ) # ( !\Add1~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_State.InitState~regout\,
	dataf => \ALT_INV_Add1~3_combout\,
	combout => \CNT~1_combout\);

-- Location: LCFF_X22_Y17_N9
\CNT[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \CNT~1_combout\,
	ena => \CNT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT(4));

-- Location: LCCOMB_X21_Y15_N10
\Add1~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ( !CNT(0) & ( !CNT(3) & ( (!CNT(2) & !CNT(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_CNT(2),
	datad => ALT_INV_CNT(1),
	datae => ALT_INV_CNT(0),
	dataf => ALT_INV_CNT(3),
	combout => \Add1~4_combout\);

-- Location: LCCOMB_X21_Y15_N6
\CNT~6\ : stratixii_lcell_comb
-- Equation(s):
-- \CNT~6_combout\ = ( CNT(4) & ( (!\State.InitState~regout\) # (CNT(5)) ) ) # ( !CNT(4) & ( (!\State.InitState~regout\) # (!CNT(5) $ (((!\State.ShiftState~regout\) # (!\Add1~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111110110011011111111011001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.ShiftState~regout\,
	datab => \ALT_INV_State.InitState~regout\,
	datac => \ALT_INV_Add1~4_combout\,
	datad => ALT_INV_CNT(5),
	dataf => ALT_INV_CNT(4),
	combout => \CNT~6_combout\);

-- Location: LCFF_X21_Y15_N7
\CNT[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \CNT~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT(5));

-- Location: LCCOMB_X21_Y15_N4
\Decoder0~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = ( !CNT(2) & ( (!CNT(1) & !CNT(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_CNT(1),
	datad => ALT_INV_CNT(3),
	dataf => ALT_INV_CNT(2),
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X21_Y15_N20
\Equal0~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !CNT(0) & ( \Decoder0~0_combout\ & ( (!CNT(4) & CNT(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_CNT(4),
	datac => ALT_INV_CNT(5),
	datae => ALT_INV_CNT(0),
	dataf => \ALT_INV_Decoder0~0_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X18_Y18_N28
\Selector2~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( !\CNT[1]~0_combout\ & ( !\Equal0~0_combout\ & ( (!\State.CheckState~regout\ & !\State.DoneState~regout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.CheckState~regout\,
	datac => \ALT_INV_State.DoneState~regout\,
	datae => \ALT_INV_CNT[1]~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCFF_X18_Y18_N29
\State.ShiftState\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \State.ShiftState~regout\);

-- Location: LCCOMB_X18_Y18_N18
\CNT[1]~0\ : stratixii_lcell_comb
-- Equation(s):
-- \CNT[1]~0_combout\ = ( \State.InitState~regout\ & ( \State.ShiftState~regout\ ) ) # ( !\State.InitState~regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State.ShiftState~regout\,
	dataf => \ALT_INV_State.InitState~regout\,
	combout => \CNT[1]~0_combout\);

-- Location: LCCOMB_X18_Y18_N8
\Selector4~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \Equal0~0_combout\ & ( (!\State.DoneState~regout\ & (!\CNT[1]~0_combout\ & !\State.CheckState~regout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.DoneState~regout\,
	datab => \ALT_INV_CNT[1]~0_combout\,
	datad => \ALT_INV_State.CheckState~regout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCFF_X18_Y18_N9
\State.CheckState\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \State.CheckState~regout\);

-- Location: LCCOMB_X18_Y26_N18
\Selector3~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \State.DoneState~regout\ & ( \State.CheckState~regout\ ) ) # ( !\State.DoneState~regout\ & ( \State.CheckState~regout\ ) ) # ( \State.DoneState~regout\ & ( !\State.CheckState~regout\ & ( !\Start~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start~combout\,
	datae => \ALT_INV_State.DoneState~regout\,
	dataf => \ALT_INV_State.CheckState~regout\,
	combout => \Selector3~0_combout\);

-- Location: LCFF_X18_Y26_N19
\State.DoneState\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \State.DoneState~regout\);

-- Location: CLKCTRL_G13
\State.DoneState~clkctrl\ : stratixii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock")
-- pragma translate_on
PORT MAP (
	inclk => \State.DoneState~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \State.DoneState~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y18_N20
\Selector0~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (Signal_Remainder(33) & \State.ShiftState~regout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Signal_Remainder(33),
	datab => \ALT_INV_State.ShiftState~regout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X18_Y18_N21
\State.AddState\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \State.AddState~regout\);

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[30]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(30),
	combout => \Divider_In~combout\(30));

-- Location: LCFF_X18_Y15_N11
\Signal_Divider[30]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(30),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(30));

-- Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[29]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(29),
	combout => \Divider_In~combout\(29));

-- Location: LCFF_X18_Y15_N29
\Signal_Divider[29]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(29),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(29));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[27]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(27),
	combout => \Divider_In~combout\(27));

-- Location: LCFF_X18_Y15_N7
\Signal_Divider[27]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(27),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(27));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[26]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(26),
	combout => \Divider_In~combout\(26));

-- Location: LCFF_X18_Y15_N5
\Signal_Divider[26]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(26),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(26));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[24]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(24),
	combout => \Divider_In~combout\(24));

-- Location: LCFF_X18_Y15_N31
\Signal_Divider[24]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(24),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(24));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[23]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(23),
	combout => \Divider_In~combout\(23));

-- Location: LCFF_X18_Y16_N31
\Signal_Divider[23]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(23),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(23));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[21]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(21),
	combout => \Divider_In~combout\(21));

-- Location: LCFF_X18_Y16_N27
\Signal_Divider[21]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(21),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(21));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[19]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(19),
	combout => \Divider_In~combout\(19));

-- Location: LCFF_X18_Y16_N23
\Signal_Divider[19]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(19),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(19));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[18]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(18),
	combout => \Divider_In~combout\(18));

-- Location: LCFF_X18_Y16_N21
\Signal_Divider[18]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(18),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(18));

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[17]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(17),
	combout => \Divider_In~combout\(17));

-- Location: LCFF_X18_Y16_N19
\Signal_Divider[17]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(17),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(17));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[16]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(16),
	combout => \Divider_In~combout\(16));

-- Location: LCFF_X18_Y16_N17
\Signal_Divider[16]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(16),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(16));

-- Location: PIN_N19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[14]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(14),
	combout => \Divider_In~combout\(14));

-- Location: LCFF_X18_Y16_N13
\Signal_Divider[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(14),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(14));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[13]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(13),
	combout => \Divider_In~combout\(13));

-- Location: LCFF_X18_Y16_N11
\Signal_Divider[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(13),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(13));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[12]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(12),
	combout => \Divider_In~combout\(12));

-- Location: LCFF_X18_Y16_N9
\Signal_Divider[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(12),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(12));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[11]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(11),
	combout => \Divider_In~combout\(11));

-- Location: LCFF_X18_Y16_N7
\Signal_Divider[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(11),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(11));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[9]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(9),
	combout => \Divider_In~combout\(9));

-- Location: LCFF_X18_Y16_N3
\Signal_Divider[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(9),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(9));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(5),
	combout => \Divider_In~combout\(5));

-- Location: LCFF_X18_Y17_N1
\Signal_Divider[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(5),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(5));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(4),
	combout => \Divider_In~combout\(4));

-- Location: LCFF_X18_Y17_N9
\Signal_Divider[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(4),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(4));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(2),
	combout => \Divider_In~combout\(2));

-- Location: LCFF_X18_Y17_N11
\Signal_Divider[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(2),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(2));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(0),
	combout => \Divider_In~combout\(0));

-- Location: LCFF_X18_Y17_N3
\Signal_Divider[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(0),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(0));

-- Location: LCCOMB_X18_Y17_N16
\Add0~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !Signal_Divider(0) $ (!Signal_Remainder(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( !Signal_Divider(0) $ (!Signal_Remainder(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add0~3\ = SHARE((!Signal_Divider(0)) # (Signal_Remainder(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Divider(0),
	datad => ALT_INV_Signal_Remainder(0),
	cin => GND,
	sharein => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\,
	shareout => \Add0~3\);

-- Location: LCCOMB_X19_Y17_N0
\Add2~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( Signal_Remainder(0) ) + ( Signal_Divider(0) ) + ( !VCC ))
-- \Add2~2\ = CARRY(( Signal_Remainder(0) ) + ( Signal_Divider(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Signal_Remainder(0),
	dataf => ALT_INV_Signal_Divider(0),
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: LCCOMB_X18_Y18_N22
\Signal_Remainder~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~0_combout\ = ( !\State.AddState~regout\ & ( (!Signal_Remainder(33)) # ((!\State.CheckState~regout\) # (\State.ShiftState~regout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111011111111111011101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Signal_Remainder(33),
	datab => \ALT_INV_State.ShiftState~regout\,
	datad => \ALT_INV_State.CheckState~regout\,
	dataf => \ALT_INV_State.AddState~regout\,
	combout => \Signal_Remainder~0_combout\);

-- Location: LCCOMB_X18_Y17_N0
\Signal_Remainder~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~2_combout\ = ( \Add2~1_sumout\ & ( \Signal_Remainder~0_combout\ & ( (!\Signal_Remainder[1]~1_combout\ & ((!\State.SubstractState~regout\) # ((!\Add0~1_sumout\)))) # (\Signal_Remainder[1]~1_combout\ & (!Signal_Remainder(0) & 
-- ((!\State.SubstractState~regout\) # (!\Add0~1_sumout\)))) ) ) ) # ( !\Add2~1_sumout\ & ( \Signal_Remainder~0_combout\ & ( (!\Signal_Remainder[1]~1_combout\ & ((!\State.SubstractState~regout\) # ((!\Add0~1_sumout\)))) # (\Signal_Remainder[1]~1_combout\ & 
-- (!Signal_Remainder(0) & ((!\State.SubstractState~regout\) # (!\Add0~1_sumout\)))) ) ) ) # ( \Add2~1_sumout\ & ( !\Signal_Remainder~0_combout\ & ( (\State.SubstractState~regout\ & (!\Add0~1_sumout\ & ((!\Signal_Remainder[1]~1_combout\) # 
-- (!Signal_Remainder(0))))) ) ) ) # ( !\Add2~1_sumout\ & ( !\Signal_Remainder~0_combout\ & ( (!\Signal_Remainder[1]~1_combout\ & ((!\State.SubstractState~regout\) # ((!\Add0~1_sumout\)))) # (\Signal_Remainder[1]~1_combout\ & (!Signal_Remainder(0) & 
-- ((!\State.SubstractState~regout\) # (!\Add0~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110010101000001100000010000011111100101010001111110010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Signal_Remainder[1]~1_combout\,
	datab => \ALT_INV_State.SubstractState~regout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => ALT_INV_Signal_Remainder(0),
	datae => \ALT_INV_Add2~1_sumout\,
	dataf => \ALT_INV_Signal_Remainder~0_combout\,
	combout => \Signal_Remainder~2_combout\);

-- Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[22]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(22),
	combout => \Dividen_In~combout\(22));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[23]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(23),
	combout => \Dividen_In~combout\(23));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[18]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(18),
	combout => \Dividen_In~combout\(18));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[19]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(19),
	combout => \Dividen_In~combout\(19));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[16]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(16),
	combout => \Dividen_In~combout\(16));

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[17]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(17),
	combout => \Dividen_In~combout\(17));

-- Location: LCCOMB_X21_Y17_N16
\Mux0~8\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = ( !\Add1~1_combout\ & ( (!\Add1~0_combout\ & (((!CNT(0) & (\Dividen_In~combout\(17))) # (CNT(0) & ((\Dividen_In~combout\(16))))))) # (\Add1~0_combout\ & ((((CNT(0)))))) ) ) # ( \Add1~1_combout\ & ( (!\Add1~0_combout\ & (((!CNT(0) & 
-- ((\Dividen_In~combout\(19)))) # (CNT(0) & (\Dividen_In~combout\(18)))))) # (\Add1~0_combout\ & ((((CNT(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000010100000101001010101111111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~0_combout\,
	datab => \ALT_INV_Dividen_In~combout\(18),
	datac => \ALT_INV_Dividen_In~combout\(19),
	datad => \ALT_INV_Dividen_In~combout\(16),
	datae => \ALT_INV_Add1~1_combout\,
	dataf => ALT_INV_CNT(0),
	datag => \ALT_INV_Dividen_In~combout\(17),
	combout => \Mux0~8_combout\);

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[21]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(21),
	combout => \Dividen_In~combout\(21));

-- Location: LCCOMB_X22_Y17_N4
\Mux0~12\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = ( !\Add1~1_combout\ & ( ((!\Add1~0_combout\ & (((\Mux0~8_combout\)))) # (\Add1~0_combout\ & ((!\Mux0~8_combout\ & ((\Dividen_In~combout\(21)))) # (\Mux0~8_combout\ & (\Dividen_In~combout\(20)))))) ) ) # ( \Add1~1_combout\ & ( 
-- ((!\Add1~0_combout\ & (((\Mux0~8_combout\)))) # (\Add1~0_combout\ & ((!\Mux0~8_combout\ & ((\Dividen_In~combout\(23)))) # (\Mux0~8_combout\ & (\Dividen_In~combout\(22)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Dividen_In~combout\(20),
	datab => \ALT_INV_Dividen_In~combout\(22),
	datac => \ALT_INV_Dividen_In~combout\(23),
	datad => \ALT_INV_Add1~0_combout\,
	datae => \ALT_INV_Add1~1_combout\,
	dataf => \ALT_INV_Mux0~8_combout\,
	datag => \ALT_INV_Dividen_In~combout\(21),
	combout => \Mux0~12_combout\);

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(6),
	combout => \Dividen_In~combout\(6));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[7]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(7),
	combout => \Dividen_In~combout\(7));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(2),
	combout => \Dividen_In~combout\(2));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(3),
	combout => \Dividen_In~combout\(3));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(1),
	combout => \Dividen_In~combout\(1));

-- Location: LCCOMB_X22_Y17_N0
\Mux0~24\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux0~24_combout\ = ( !\Add1~1_combout\ & ( ((!\Add1~0_combout\ & ((!CNT(0) & ((\Dividen_In~combout\(1)))) # (CNT(0) & (\Dividen_In~combout\(0))))) # (\Add1~0_combout\ & (((CNT(0)))))) ) ) # ( \Add1~1_combout\ & ( ((!\Add1~0_combout\ & ((!CNT(0) & 
-- ((\Dividen_In~combout\(3)))) # (CNT(0) & (\Dividen_In~combout\(2))))) # (\Add1~0_combout\ & (((CNT(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000001010101111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Dividen_In~combout\(0),
	datab => \ALT_INV_Dividen_In~combout\(2),
	datac => \ALT_INV_Dividen_In~combout\(3),
	datad => \ALT_INV_Add1~0_combout\,
	datae => \ALT_INV_Add1~1_combout\,
	dataf => ALT_INV_CNT(0),
	datag => \ALT_INV_Dividen_In~combout\(1),
	combout => \Mux0~24_combout\);

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(5),
	combout => \Dividen_In~combout\(5));

-- Location: LCCOMB_X22_Y17_N28
\Mux0~28\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux0~28_combout\ = ( !\Add1~1_combout\ & ( ((!\Add1~0_combout\ & (((\Mux0~24_combout\)))) # (\Add1~0_combout\ & ((!\Mux0~24_combout\ & ((\Dividen_In~combout\(5)))) # (\Mux0~24_combout\ & (\Dividen_In~combout\(4)))))) ) ) # ( \Add1~1_combout\ & ( 
-- ((!\Add1~0_combout\ & (((\Mux0~24_combout\)))) # (\Add1~0_combout\ & ((!\Mux0~24_combout\ & ((\Dividen_In~combout\(7)))) # (\Mux0~24_combout\ & (\Dividen_In~combout\(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Dividen_In~combout\(4),
	datab => \ALT_INV_Dividen_In~combout\(6),
	datac => \ALT_INV_Dividen_In~combout\(7),
	datad => \ALT_INV_Add1~0_combout\,
	datae => \ALT_INV_Add1~1_combout\,
	dataf => \ALT_INV_Mux0~24_combout\,
	datag => \ALT_INV_Dividen_In~combout\(5),
	combout => \Mux0~28_combout\);

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[30]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(30),
	combout => \Dividen_In~combout\(30));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[31]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(31),
	combout => \Dividen_In~combout\(31));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[26]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(26),
	combout => \Dividen_In~combout\(26));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[27]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(27),
	combout => \Dividen_In~combout\(27));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[25]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(25),
	combout => \Dividen_In~combout\(25));

-- Location: LCCOMB_X22_Y17_N26
\Mux0~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !\Add1~1_combout\ & ( ((!CNT(0) & (((\Dividen_In~combout\(25) & !\Add1~0_combout\)))) # (CNT(0) & (((\Add1~0_combout\)) # (\Dividen_In~combout\(24))))) ) ) # ( \Add1~1_combout\ & ( ((!CNT(0) & (((\Dividen_In~combout\(27) & 
-- !\Add1~0_combout\)))) # (CNT(0) & (((\Add1~0_combout\)) # (\Dividen_In~combout\(26))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Dividen_In~combout\(24),
	datab => \ALT_INV_Dividen_In~combout\(26),
	datac => \ALT_INV_Dividen_In~combout\(27),
	datad => ALT_INV_CNT(0),
	datae => \ALT_INV_Add1~1_combout\,
	dataf => \ALT_INV_Add1~0_combout\,
	datag => \ALT_INV_Dividen_In~combout\(25),
	combout => \Mux0~0_combout\);

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dividen_In[29]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dividen_In(29),
	combout => \Dividen_In~combout\(29));

-- Location: LCCOMB_X21_Y17_N30
\Mux0~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = ( !\Add1~1_combout\ & ( ((!\Add1~0_combout\ & (((\Mux0~0_combout\)))) # (\Add1~0_combout\ & ((!\Mux0~0_combout\ & ((\Dividen_In~combout\(29)))) # (\Mux0~0_combout\ & (\Dividen_In~combout\(28)))))) ) ) # ( \Add1~1_combout\ & ( 
-- ((!\Add1~0_combout\ & (((\Mux0~0_combout\)))) # (\Add1~0_combout\ & ((!\Mux0~0_combout\ & ((\Dividen_In~combout\(31)))) # (\Mux0~0_combout\ & (\Dividen_In~combout\(30)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Dividen_In~combout\(28),
	datab => \ALT_INV_Dividen_In~combout\(30),
	datac => \ALT_INV_Dividen_In~combout\(31),
	datad => \ALT_INV_Add1~0_combout\,
	datae => \ALT_INV_Add1~1_combout\,
	dataf => \ALT_INV_Mux0~0_combout\,
	datag => \ALT_INV_Dividen_In~combout\(29),
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X22_Y17_N14
\Mux0~32\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux0~32_combout\ = ( \Mux0~28_combout\ & ( \Mux0~4_combout\ & ( (!\Add1~2_combout\ & (((!\Add1~3_combout\)) # (\Mux0~20_combout\))) # (\Add1~2_combout\ & (((\Add1~3_combout\) # (\Mux0~12_combout\)))) ) ) ) # ( !\Mux0~28_combout\ & ( \Mux0~4_combout\ & ( 
-- (!\Add1~2_combout\ & (((!\Add1~3_combout\)) # (\Mux0~20_combout\))) # (\Add1~2_combout\ & (((\Mux0~12_combout\ & !\Add1~3_combout\)))) ) ) ) # ( \Mux0~28_combout\ & ( !\Mux0~4_combout\ & ( (!\Add1~2_combout\ & (\Mux0~20_combout\ & ((\Add1~3_combout\)))) # 
-- (\Add1~2_combout\ & (((\Add1~3_combout\) # (\Mux0~12_combout\)))) ) ) ) # ( !\Mux0~28_combout\ & ( !\Mux0~4_combout\ & ( (!\Add1~2_combout\ & (\Mux0~20_combout\ & ((\Add1~3_combout\)))) # (\Add1~2_combout\ & (((\Mux0~12_combout\ & !\Add1~3_combout\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110111011111001111010001001100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~20_combout\,
	datab => \ALT_INV_Add1~2_combout\,
	datac => \ALT_INV_Mux0~12_combout\,
	datad => \ALT_INV_Add1~3_combout\,
	datae => \ALT_INV_Mux0~28_combout\,
	dataf => \ALT_INV_Mux0~4_combout\,
	combout => \Mux0~32_combout\);

-- Location: LCCOMB_X21_Y17_N26
\Signal_Remainder~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~3_combout\ = ( \Signal_Remainder~2_combout\ & ( \Mux0~32_combout\ & ( (!\State.SubstractState~regout\ & (!\State.AddState~regout\ & \State.ShiftState~regout\)) ) ) ) # ( !\Signal_Remainder~2_combout\ & ( \Mux0~32_combout\ ) ) # ( 
-- !\Signal_Remainder~2_combout\ & ( !\Mux0~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State.SubstractState~regout\,
	datac => \ALT_INV_State.AddState~regout\,
	datad => \ALT_INV_State.ShiftState~regout\,
	datae => \ALT_INV_Signal_Remainder~2_combout\,
	dataf => \ALT_INV_Mux0~32_combout\,
	combout => \Signal_Remainder~3_combout\);

-- Location: LCFF_X21_Y17_N27
\Signal_Remainder[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~3_combout\,
	adatasdata => \Dividen_In~combout\(31),
	sload => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(0));

-- Location: LCCOMB_X19_Y17_N2
\Add2~5\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( Signal_Remainder(1) ) + ( Signal_Divider(1) ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( Signal_Remainder(1) ) + ( Signal_Divider(1) ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Signal_Divider(1),
	datad => ALT_INV_Signal_Remainder(1),
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(1),
	combout => \Divider_In~combout\(1));

-- Location: LCFF_X18_Y17_N7
\Signal_Divider[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(1),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(1));

-- Location: LCCOMB_X18_Y17_N18
\Add0~5\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !Signal_Remainder(1) $ (Signal_Divider(1)) ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !Signal_Remainder(1) $ (Signal_Divider(1)) ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~7\ = SHARE((Signal_Remainder(1) & !Signal_Divider(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Remainder(1),
	datad => ALT_INV_Signal_Divider(1),
	cin => \Add0~2\,
	sharein => \Add0~3\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\,
	shareout => \Add0~7\);

-- Location: LCCOMB_X19_Y17_N16
\Signal_Remainder~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~4_combout\ = ( \Add0~5_sumout\ & ( ((!\State.ShiftState~regout\ & (\Add2~5_sumout\)) # (\State.ShiftState~regout\ & ((Signal_Remainder(0))))) # (\State.SubstractState~regout\) ) ) # ( !\Add0~5_sumout\ & ( (!\State.SubstractState~regout\ 
-- & ((!\State.ShiftState~regout\ & (\Add2~5_sumout\)) # (\State.ShiftState~regout\ & ((Signal_Remainder(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.ShiftState~regout\,
	datab => \ALT_INV_State.SubstractState~regout\,
	datac => \ALT_INV_Add2~5_sumout\,
	datad => ALT_INV_Signal_Remainder(0),
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \Signal_Remainder~4_combout\);

-- Location: LCCOMB_X18_Y18_N12
\Signal_Remainder[1]~5\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder[1]~5_combout\ = ( Signal_Remainder(33) & ( \State.SubstractState~regout\ ) ) # ( !Signal_Remainder(33) & ( \State.SubstractState~regout\ ) ) # ( Signal_Remainder(33) & ( !\State.SubstractState~regout\ & ( (((!\State.InitState~regout\) # 
-- (\State.AddState~regout\)) # (\State.ShiftState~regout\)) # (\State.CheckState~regout\) ) ) ) # ( !Signal_Remainder(33) & ( !\State.SubstractState~regout\ & ( ((!\State.InitState~regout\) # (\State.AddState~regout\)) # (\State.ShiftState~regout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111111111111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.CheckState~regout\,
	datab => \ALT_INV_State.ShiftState~regout\,
	datac => \ALT_INV_State.AddState~regout\,
	datad => \ALT_INV_State.InitState~regout\,
	datae => ALT_INV_Signal_Remainder(33),
	dataf => \ALT_INV_State.SubstractState~regout\,
	combout => \Signal_Remainder[1]~5_combout\);

-- Location: LCFF_X19_Y17_N17
\Signal_Remainder[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~4_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(1));

-- Location: LCCOMB_X18_Y17_N20
\Add0~9\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !Signal_Remainder(2) $ (Signal_Divider(2)) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !Signal_Remainder(2) $ (Signal_Divider(2)) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~11\ = SHARE((Signal_Remainder(2) & !Signal_Divider(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Remainder(2),
	datad => ALT_INV_Signal_Divider(2),
	cin => \Add0~6\,
	sharein => \Add0~7\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\,
	shareout => \Add0~11\);

-- Location: LCCOMB_X19_Y17_N4
\Add2~9\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( Signal_Divider(2) ) + ( Signal_Remainder(2) ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( Signal_Divider(2) ) + ( Signal_Remainder(2) ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Signal_Divider(2),
	dataf => ALT_INV_Signal_Remainder(2),
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: LCCOMB_X19_Y17_N20
\Signal_Remainder~6\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~6_combout\ = ( \Add2~9_sumout\ & ( (!\State.SubstractState~regout\ & (((!\State.ShiftState~regout\)) # (Signal_Remainder(1)))) # (\State.SubstractState~regout\ & (((\Add0~9_sumout\)))) ) ) # ( !\Add2~9_sumout\ & ( 
-- (!\State.SubstractState~regout\ & (Signal_Remainder(1) & ((\State.ShiftState~regout\)))) # (\State.SubstractState~regout\ & (((\Add0~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011111001111010001111100111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Signal_Remainder(1),
	datab => \ALT_INV_State.SubstractState~regout\,
	datac => \ALT_INV_Add0~9_sumout\,
	datad => \ALT_INV_State.ShiftState~regout\,
	dataf => \ALT_INV_Add2~9_sumout\,
	combout => \Signal_Remainder~6_combout\);

-- Location: LCFF_X19_Y17_N21
\Signal_Remainder[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~6_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(2));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(3),
	combout => \Divider_In~combout\(3));

-- Location: LCFF_X18_Y17_N15
\Signal_Divider[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(3),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(3));

-- Location: LCCOMB_X19_Y17_N6
\Add2~13\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( Signal_Remainder(3) ) + ( Signal_Divider(3) ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( Signal_Remainder(3) ) + ( Signal_Divider(3) ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Remainder(3),
	dataf => ALT_INV_Signal_Divider(3),
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: LCCOMB_X18_Y17_N22
\Add0~13\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !Signal_Divider(3) $ (Signal_Remainder(3)) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( !Signal_Divider(3) $ (Signal_Remainder(3)) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~15\ = SHARE((!Signal_Divider(3) & Signal_Remainder(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Divider(3),
	datad => ALT_INV_Signal_Remainder(3),
	cin => \Add0~10\,
	sharein => \Add0~11\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\,
	shareout => \Add0~15\);

-- Location: LCCOMB_X19_Y17_N24
\Signal_Remainder~7\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~7_combout\ = ( \Add0~13_sumout\ & ( ((!\State.ShiftState~regout\ & ((\Add2~13_sumout\))) # (\State.ShiftState~regout\ & (Signal_Remainder(2)))) # (\State.SubstractState~regout\) ) ) # ( !\Add0~13_sumout\ & ( 
-- (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\ & ((\Add2~13_sumout\))) # (\State.ShiftState~regout\ & (Signal_Remainder(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.ShiftState~regout\,
	datab => \ALT_INV_State.SubstractState~regout\,
	datac => ALT_INV_Signal_Remainder(2),
	datad => \ALT_INV_Add2~13_sumout\,
	dataf => \ALT_INV_Add0~13_sumout\,
	combout => \Signal_Remainder~7_combout\);

-- Location: LCFF_X19_Y17_N25
\Signal_Remainder[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~7_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(3));

-- Location: LCCOMB_X18_Y17_N24
\Add0~17\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !Signal_Divider(4) $ (Signal_Remainder(4)) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( !Signal_Divider(4) $ (Signal_Remainder(4)) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~19\ = SHARE((!Signal_Divider(4) & Signal_Remainder(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Signal_Divider(4),
	datac => ALT_INV_Signal_Remainder(4),
	cin => \Add0~14\,
	sharein => \Add0~15\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\,
	shareout => \Add0~19\);

-- Location: LCCOMB_X19_Y17_N30
\Signal_Remainder~8\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~8_combout\ = ( \Add0~17_sumout\ & ( ((!\State.ShiftState~regout\ & (\Add2~17_sumout\)) # (\State.ShiftState~regout\ & ((Signal_Remainder(3))))) # (\State.SubstractState~regout\) ) ) # ( !\Add0~17_sumout\ & ( 
-- (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\ & (\Add2~17_sumout\)) # (\State.ShiftState~regout\ & ((Signal_Remainder(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011000001011111001111110101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~17_sumout\,
	datab => ALT_INV_Signal_Remainder(3),
	datac => \ALT_INV_State.SubstractState~regout\,
	datad => \ALT_INV_State.ShiftState~regout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \Signal_Remainder~8_combout\);

-- Location: LCFF_X19_Y17_N31
\Signal_Remainder[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~8_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(4));

-- Location: LCCOMB_X18_Y17_N26
\Add0~21\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !Signal_Divider(5) $ (Signal_Remainder(5)) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( !Signal_Divider(5) $ (Signal_Remainder(5)) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~23\ = SHARE((!Signal_Divider(5) & Signal_Remainder(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Divider(5),
	datad => ALT_INV_Signal_Remainder(5),
	cin => \Add0~18\,
	sharein => \Add0~19\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\,
	shareout => \Add0~23\);

-- Location: LCCOMB_X19_Y17_N10
\Add2~21\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( Signal_Divider(5) ) + ( Signal_Remainder(5) ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( Signal_Divider(5) ) + ( Signal_Remainder(5) ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Divider(5),
	dataf => ALT_INV_Signal_Remainder(5),
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: LCCOMB_X19_Y17_N26
\Signal_Remainder~9\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~9_combout\ = ( Signal_Remainder(4) & ( (!\State.SubstractState~regout\ & (((\Add2~21_sumout\)) # (\State.ShiftState~regout\))) # (\State.SubstractState~regout\ & (((\Add0~21_sumout\)))) ) ) # ( !Signal_Remainder(4) & ( 
-- (!\State.SubstractState~regout\ & (!\State.ShiftState~regout\ & ((\Add2~21_sumout\)))) # (\State.SubstractState~regout\ & (((\Add0~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.ShiftState~regout\,
	datab => \ALT_INV_State.SubstractState~regout\,
	datac => \ALT_INV_Add0~21_sumout\,
	datad => \ALT_INV_Add2~21_sumout\,
	dataf => ALT_INV_Signal_Remainder(4),
	combout => \Signal_Remainder~9_combout\);

-- Location: LCFF_X19_Y17_N27
\Signal_Remainder[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~9_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(5));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(6),
	combout => \Divider_In~combout\(6));

-- Location: LCFF_X18_Y17_N13
\Signal_Divider[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(6),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(6));

-- Location: LCCOMB_X19_Y17_N12
\Add2~25\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( Signal_Remainder(6) ) + ( Signal_Divider(6) ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( Signal_Remainder(6) ) + ( Signal_Divider(6) ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Signal_Remainder(6),
	dataf => ALT_INV_Signal_Divider(6),
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: LCCOMB_X17_Y17_N16
\Signal_Remainder~10\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~10_combout\ = ( \Add0~25_sumout\ & ( \Add2~25_sumout\ & ( ((!\State.ShiftState~regout\) # (Signal_Remainder(5))) # (\State.SubstractState~regout\) ) ) ) # ( !\Add0~25_sumout\ & ( \Add2~25_sumout\ & ( (!\State.SubstractState~regout\ & 
-- ((!\State.ShiftState~regout\) # (Signal_Remainder(5)))) ) ) ) # ( \Add0~25_sumout\ & ( !\Add2~25_sumout\ & ( ((Signal_Remainder(5) & \State.ShiftState~regout\)) # (\State.SubstractState~regout\) ) ) ) # ( !\Add0~25_sumout\ & ( !\Add2~25_sumout\ & ( 
-- (!\State.SubstractState~regout\ & (Signal_Remainder(5) & \State.ShiftState~regout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100001100110011111111001100000011001111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State.SubstractState~regout\,
	datac => ALT_INV_Signal_Remainder(5),
	datad => \ALT_INV_State.ShiftState~regout\,
	datae => \ALT_INV_Add0~25_sumout\,
	dataf => \ALT_INV_Add2~25_sumout\,
	combout => \Signal_Remainder~10_combout\);

-- Location: LCFF_X17_Y17_N17
\Signal_Remainder[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~10_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(6));

-- Location: LCCOMB_X18_Y17_N28
\Add0~25\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( !Signal_Remainder(6) $ (Signal_Divider(6)) ) + ( \Add0~23\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( !Signal_Remainder(6) $ (Signal_Divider(6)) ) + ( \Add0~23\ ) + ( \Add0~22\ ))
-- \Add0~27\ = SHARE((Signal_Remainder(6) & !Signal_Divider(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Remainder(6),
	datad => ALT_INV_Signal_Divider(6),
	cin => \Add0~22\,
	sharein => \Add0~23\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\,
	shareout => \Add0~27\);

-- Location: LCCOMB_X17_Y17_N18
\Signal_Remainder~10DUPLICATE\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~10DUPLICATE_combout\ = ( \Add0~25_sumout\ & ( \Add2~25_sumout\ & ( ((!\State.ShiftState~regout\) # (Signal_Remainder(5))) # (\State.SubstractState~regout\) ) ) ) # ( !\Add0~25_sumout\ & ( \Add2~25_sumout\ & ( 
-- (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\) # (Signal_Remainder(5)))) ) ) ) # ( \Add0~25_sumout\ & ( !\Add2~25_sumout\ & ( ((\State.ShiftState~regout\ & Signal_Remainder(5))) # (\State.SubstractState~regout\) ) ) ) # ( 
-- !\Add0~25_sumout\ & ( !\Add2~25_sumout\ & ( (!\State.SubstractState~regout\ & (\State.ShiftState~regout\ & Signal_Remainder(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100001100110011111111000000110011001111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State.SubstractState~regout\,
	datac => \ALT_INV_State.ShiftState~regout\,
	datad => ALT_INV_Signal_Remainder(5),
	datae => \ALT_INV_Add0~25_sumout\,
	dataf => \ALT_INV_Add2~25_sumout\,
	combout => \Signal_Remainder~10DUPLICATE_combout\);

-- Location: LCFF_X17_Y17_N19
\Signal_Remainder[6]~DUPLICATE\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~10DUPLICATE_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Signal_Remainder[6]~DUPLICATE_regout\);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[7]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(7),
	combout => \Divider_In~combout\(7));

-- Location: LCFF_X18_Y17_N5
\Signal_Divider[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(7),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(7));

-- Location: LCCOMB_X19_Y17_N14
\Add2~29\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( Signal_Divider(7) ) + ( Signal_Remainder(7) ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( Signal_Divider(7) ) + ( Signal_Remainder(7) ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Divider(7),
	dataf => ALT_INV_Signal_Remainder(7),
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: LCCOMB_X17_Y17_N28
\Signal_Remainder~11\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~11_combout\ = ( \Signal_Remainder[6]~DUPLICATE_regout\ & ( \Add2~29_sumout\ & ( (!\State.SubstractState~regout\) # (\Add0~29_sumout\) ) ) ) # ( !\Signal_Remainder[6]~DUPLICATE_regout\ & ( \Add2~29_sumout\ & ( 
-- (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\))) # (\State.SubstractState~regout\ & (\Add0~29_sumout\)) ) ) ) # ( \Signal_Remainder[6]~DUPLICATE_regout\ & ( !\Add2~29_sumout\ & ( (!\State.SubstractState~regout\ & 
-- ((\State.ShiftState~regout\))) # (\State.SubstractState~regout\ & (\Add0~29_sumout\)) ) ) ) # ( !\Signal_Remainder[6]~DUPLICATE_regout\ & ( !\Add2~29_sumout\ & ( (\State.SubstractState~regout\ & \Add0~29_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000111100111111001111000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State.SubstractState~regout\,
	datac => \ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_State.ShiftState~regout\,
	datae => \ALT_INV_Signal_Remainder[6]~DUPLICATE_regout\,
	dataf => \ALT_INV_Add2~29_sumout\,
	combout => \Signal_Remainder~11_combout\);

-- Location: LCFF_X17_Y17_N29
\Signal_Remainder[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~11_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(7));

-- Location: LCCOMB_X18_Y17_N30
\Add0~29\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !Signal_Remainder(7) $ (Signal_Divider(7)) ) + ( \Add0~27\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( !Signal_Remainder(7) $ (Signal_Divider(7)) ) + ( \Add0~27\ ) + ( \Add0~26\ ))
-- \Add0~31\ = SHARE((Signal_Remainder(7) & !Signal_Divider(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Remainder(7),
	datad => ALT_INV_Signal_Divider(7),
	cin => \Add0~26\,
	sharein => \Add0~27\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\,
	shareout => \Add0~31\);

-- Location: LCCOMB_X17_Y17_N30
\Signal_Remainder~11DUPLICATE\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~11DUPLICATE_combout\ = ( \Signal_Remainder[6]~DUPLICATE_regout\ & ( \Add2~29_sumout\ & ( (!\State.SubstractState~regout\) # (\Add0~29_sumout\) ) ) ) # ( !\Signal_Remainder[6]~DUPLICATE_regout\ & ( \Add2~29_sumout\ & ( 
-- (!\State.SubstractState~regout\ & (!\State.ShiftState~regout\)) # (\State.SubstractState~regout\ & ((\Add0~29_sumout\))) ) ) ) # ( \Signal_Remainder[6]~DUPLICATE_regout\ & ( !\Add2~29_sumout\ & ( (!\State.SubstractState~regout\ & 
-- (\State.ShiftState~regout\)) # (\State.SubstractState~regout\ & ((\Add0~29_sumout\))) ) ) ) # ( !\Signal_Remainder[6]~DUPLICATE_regout\ & ( !\Add2~29_sumout\ & ( (\State.SubstractState~regout\ & \Add0~29_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011000011111111000000111100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State.SubstractState~regout\,
	datac => \ALT_INV_State.ShiftState~regout\,
	datad => \ALT_INV_Add0~29_sumout\,
	datae => \ALT_INV_Signal_Remainder[6]~DUPLICATE_regout\,
	dataf => \ALT_INV_Add2~29_sumout\,
	combout => \Signal_Remainder~11DUPLICATE_combout\);

-- Location: LCFF_X17_Y17_N31
\Signal_Remainder[7]~DUPLICATE\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~11DUPLICATE_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Signal_Remainder[7]~DUPLICATE_regout\);

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[8]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(8),
	combout => \Divider_In~combout\(8));

-- Location: LCFF_X18_Y16_N1
\Signal_Divider[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(8),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(8));

-- Location: LCCOMB_X18_Y16_N0
\Add0~33\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( !\Signal_Remainder[8]~DUPLICATE_regout\ $ (Signal_Divider(8)) ) + ( \Add0~31\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( !\Signal_Remainder[8]~DUPLICATE_regout\ $ (Signal_Divider(8)) ) + ( \Add0~31\ ) + ( \Add0~30\ ))
-- \Add0~35\ = SHARE((\Signal_Remainder[8]~DUPLICATE_regout\ & !Signal_Divider(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Signal_Remainder[8]~DUPLICATE_regout\,
	datad => ALT_INV_Signal_Divider(8),
	cin => \Add0~30\,
	sharein => \Add0~31\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\,
	shareout => \Add0~35\);

-- Location: LCCOMB_X22_Y16_N24
\Signal_Remainder~12\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~12_combout\ = ( \Add0~33_sumout\ & ( \Add2~33_sumout\ & ( (!\State.ShiftState~regout\) # ((\State.SubstractState~regout\) # (\Signal_Remainder[7]~DUPLICATE_regout\)) ) ) ) # ( !\Add0~33_sumout\ & ( \Add2~33_sumout\ & ( 
-- (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\) # (\Signal_Remainder[7]~DUPLICATE_regout\))) ) ) ) # ( \Add0~33_sumout\ & ( !\Add2~33_sumout\ & ( ((\State.ShiftState~regout\ & \Signal_Remainder[7]~DUPLICATE_regout\)) # 
-- (\State.SubstractState~regout\) ) ) ) # ( !\Add0~33_sumout\ & ( !\Add2~33_sumout\ & ( (\State.ShiftState~regout\ & (\Signal_Remainder[7]~DUPLICATE_regout\ & !\State.SubstractState~regout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001011111111110101111000000001010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.ShiftState~regout\,
	datac => \ALT_INV_Signal_Remainder[7]~DUPLICATE_regout\,
	datad => \ALT_INV_State.SubstractState~regout\,
	datae => \ALT_INV_Add0~33_sumout\,
	dataf => \ALT_INV_Add2~33_sumout\,
	combout => \Signal_Remainder~12_combout\);

-- Location: LCFF_X22_Y16_N25
\Signal_Remainder[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~12_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(8));

-- Location: LCCOMB_X19_Y16_N0
\Add2~33\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( Signal_Remainder(8) ) + ( Signal_Divider(8) ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( Signal_Remainder(8) ) + ( Signal_Divider(8) ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Signal_Remainder(8),
	dataf => ALT_INV_Signal_Divider(8),
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: LCCOMB_X22_Y16_N26
\Signal_Remainder~12DUPLICATE\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~12DUPLICATE_combout\ = ( \Add0~33_sumout\ & ( \Add2~33_sumout\ & ( (!\State.ShiftState~regout\) # ((\Signal_Remainder[7]~DUPLICATE_regout\) # (\State.SubstractState~regout\)) ) ) ) # ( !\Add0~33_sumout\ & ( \Add2~33_sumout\ & ( 
-- (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\) # (\Signal_Remainder[7]~DUPLICATE_regout\))) ) ) ) # ( \Add0~33_sumout\ & ( !\Add2~33_sumout\ & ( ((\State.ShiftState~regout\ & \Signal_Remainder[7]~DUPLICATE_regout\)) # 
-- (\State.SubstractState~regout\) ) ) ) # ( !\Add0~33_sumout\ & ( !\Add2~33_sumout\ & ( (\State.ShiftState~regout\ & (!\State.SubstractState~regout\ & \Signal_Remainder[7]~DUPLICATE_regout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000011110101111110100000111100001010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.ShiftState~regout\,
	datac => \ALT_INV_State.SubstractState~regout\,
	datad => \ALT_INV_Signal_Remainder[7]~DUPLICATE_regout\,
	datae => \ALT_INV_Add0~33_sumout\,
	dataf => \ALT_INV_Add2~33_sumout\,
	combout => \Signal_Remainder~12DUPLICATE_combout\);

-- Location: LCFF_X22_Y16_N27
\Signal_Remainder[8]~DUPLICATE\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~12DUPLICATE_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Signal_Remainder[8]~DUPLICATE_regout\);

-- Location: LCCOMB_X18_Y16_N2
\Add0~37\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( !Signal_Remainder(9) $ (Signal_Divider(9)) ) + ( \Add0~35\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( !Signal_Remainder(9) $ (Signal_Divider(9)) ) + ( \Add0~35\ ) + ( \Add0~34\ ))
-- \Add0~39\ = SHARE((Signal_Remainder(9) & !Signal_Divider(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Remainder(9),
	datad => ALT_INV_Signal_Divider(9),
	cin => \Add0~34\,
	sharein => \Add0~35\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\,
	shareout => \Add0~39\);

-- Location: LCCOMB_X19_Y16_N2
\Add2~37\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( Signal_Divider(9) ) + ( Signal_Remainder(9) ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( Signal_Divider(9) ) + ( Signal_Remainder(9) ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Divider(9),
	dataf => ALT_INV_Signal_Remainder(9),
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: LCCOMB_X17_Y17_N24
\Signal_Remainder~13\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~13_combout\ = ( \State.SubstractState~regout\ & ( \Add2~37_sumout\ & ( \Add0~37_sumout\ ) ) ) # ( !\State.SubstractState~regout\ & ( \Add2~37_sumout\ & ( (!\State.ShiftState~regout\) # (Signal_Remainder(8)) ) ) ) # ( 
-- \State.SubstractState~regout\ & ( !\Add2~37_sumout\ & ( \Add0~37_sumout\ ) ) ) # ( !\State.SubstractState~regout\ & ( !\Add2~37_sumout\ & ( (\State.ShiftState~regout\ & Signal_Remainder(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110000111111001100111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State.ShiftState~regout\,
	datac => \ALT_INV_Add0~37_sumout\,
	datad => ALT_INV_Signal_Remainder(8),
	datae => \ALT_INV_State.SubstractState~regout\,
	dataf => \ALT_INV_Add2~37_sumout\,
	combout => \Signal_Remainder~13_combout\);

-- Location: LCFF_X17_Y17_N25
\Signal_Remainder[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~13_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(9));

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[10]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(10),
	combout => \Divider_In~combout\(10));

-- Location: LCFF_X18_Y16_N5
\Signal_Divider[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(10),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(10));

-- Location: LCCOMB_X19_Y16_N4
\Add2~41\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( Signal_Remainder(10) ) + ( Signal_Divider(10) ) + ( \Add2~38\ ))
-- \Add2~42\ = CARRY(( Signal_Remainder(10) ) + ( Signal_Divider(10) ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Remainder(10),
	dataf => ALT_INV_Signal_Divider(10),
	cin => \Add2~38\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: LCCOMB_X18_Y16_N4
\Add0~41\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( !Signal_Remainder(10) $ (Signal_Divider(10)) ) + ( \Add0~39\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( !Signal_Remainder(10) $ (Signal_Divider(10)) ) + ( \Add0~39\ ) + ( \Add0~38\ ))
-- \Add0~43\ = SHARE((Signal_Remainder(10) & !Signal_Divider(10)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Signal_Remainder(10),
	datad => ALT_INV_Signal_Divider(10),
	cin => \Add0~38\,
	sharein => \Add0~39\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\,
	shareout => \Add0~43\);

-- Location: LCCOMB_X19_Y17_N18
\Signal_Remainder~14\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~14_combout\ = ( \Add0~41_sumout\ & ( ((!\State.ShiftState~regout\ & ((\Add2~41_sumout\))) # (\State.ShiftState~regout\ & (Signal_Remainder(9)))) # (\State.SubstractState~regout\) ) ) # ( !\Add0~41_sumout\ & ( 
-- (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\ & ((\Add2~41_sumout\))) # (\State.ShiftState~regout\ & (Signal_Remainder(9))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.ShiftState~regout\,
	datab => \ALT_INV_State.SubstractState~regout\,
	datac => ALT_INV_Signal_Remainder(9),
	datad => \ALT_INV_Add2~41_sumout\,
	dataf => \ALT_INV_Add0~41_sumout\,
	combout => \Signal_Remainder~14_combout\);

-- Location: LCFF_X19_Y17_N19
\Signal_Remainder[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~14_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(10));

-- Location: LCCOMB_X18_Y16_N6
\Add0~45\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( !\Signal_Remainder[11]~DUPLICATE_regout\ $ (Signal_Divider(11)) ) + ( \Add0~43\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( !\Signal_Remainder[11]~DUPLICATE_regout\ $ (Signal_Divider(11)) ) + ( \Add0~43\ ) + ( \Add0~42\ ))
-- \Add0~47\ = SHARE((\Signal_Remainder[11]~DUPLICATE_regout\ & !Signal_Divider(11)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Signal_Remainder[11]~DUPLICATE_regout\,
	datad => ALT_INV_Signal_Divider(11),
	cin => \Add0~42\,
	sharein => \Add0~43\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\,
	shareout => \Add0~47\);

-- Location: LCCOMB_X19_Y16_N6
\Add2~45\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( Signal_Divider(11) ) + ( \Signal_Remainder[11]~DUPLICATE_regout\ ) + ( \Add2~42\ ))
-- \Add2~46\ = CARRY(( Signal_Divider(11) ) + ( \Signal_Remainder[11]~DUPLICATE_regout\ ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Signal_Divider(11),
	dataf => \ALT_INV_Signal_Remainder[11]~DUPLICATE_regout\,
	cin => \Add2~42\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: LCCOMB_X17_Y17_N14
\Signal_Remainder~15DUPLICATE\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~15DUPLICATE_combout\ = ( \Add0~45_sumout\ & ( \Add2~45_sumout\ & ( (!\State.ShiftState~regout\) # ((Signal_Remainder(10)) # (\State.SubstractState~regout\)) ) ) ) # ( !\Add0~45_sumout\ & ( \Add2~45_sumout\ & ( 
-- (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\) # (Signal_Remainder(10)))) ) ) ) # ( \Add0~45_sumout\ & ( !\Add2~45_sumout\ & ( ((\State.ShiftState~regout\ & Signal_Remainder(10))) # (\State.SubstractState~regout\) ) ) ) # ( 
-- !\Add0~45_sumout\ & ( !\Add2~45_sumout\ & ( (\State.ShiftState~regout\ & (!\State.SubstractState~regout\ & Signal_Remainder(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000011110011111111000000111100001100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State.ShiftState~regout\,
	datac => \ALT_INV_State.SubstractState~regout\,
	datad => ALT_INV_Signal_Remainder(10),
	datae => \ALT_INV_Add0~45_sumout\,
	dataf => \ALT_INV_Add2~45_sumout\,
	combout => \Signal_Remainder~15DUPLICATE_combout\);

-- Location: LCFF_X17_Y17_N15
\Signal_Remainder[11]~DUPLICATE\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~15DUPLICATE_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Signal_Remainder[11]~DUPLICATE_regout\);

-- Location: LCCOMB_X19_Y16_N8
\Add2~49\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( \Signal_Remainder[12]~DUPLICATE_regout\ ) + ( Signal_Divider(12) ) + ( \Add2~46\ ))
-- \Add2~50\ = CARRY(( \Signal_Remainder[12]~DUPLICATE_regout\ ) + ( Signal_Divider(12) ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Divider(12),
	datad => \ALT_INV_Signal_Remainder[12]~DUPLICATE_regout\,
	cin => \Add2~46\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: LCCOMB_X18_Y16_N8
\Add0~49\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( !\Signal_Remainder[12]~DUPLICATE_regout\ $ (Signal_Divider(12)) ) + ( \Add0~47\ ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( !\Signal_Remainder[12]~DUPLICATE_regout\ $ (Signal_Divider(12)) ) + ( \Add0~47\ ) + ( \Add0~46\ ))
-- \Add0~51\ = SHARE((\Signal_Remainder[12]~DUPLICATE_regout\ & !Signal_Divider(12)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Signal_Remainder[12]~DUPLICATE_regout\,
	datad => ALT_INV_Signal_Divider(12),
	cin => \Add0~46\,
	sharein => \Add0~47\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\,
	shareout => \Add0~51\);

-- Location: LCCOMB_X17_Y17_N2
\Signal_Remainder~16DUPLICATE\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~16DUPLICATE_combout\ = ( \Add2~49_sumout\ & ( \Add0~49_sumout\ & ( ((!\State.ShiftState~regout\) # (\State.SubstractState~regout\)) # (Signal_Remainder(11)) ) ) ) # ( !\Add2~49_sumout\ & ( \Add0~49_sumout\ & ( ((Signal_Remainder(11) & 
-- \State.ShiftState~regout\)) # (\State.SubstractState~regout\) ) ) ) # ( \Add2~49_sumout\ & ( !\Add0~49_sumout\ & ( (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\) # (Signal_Remainder(11)))) ) ) ) # ( !\Add2~49_sumout\ & ( !\Add0~49_sumout\ 
-- & ( (Signal_Remainder(11) & (!\State.SubstractState~regout\ & \State.ShiftState~regout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100110001001100010000110111001101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Signal_Remainder(11),
	datab => \ALT_INV_State.SubstractState~regout\,
	datac => \ALT_INV_State.ShiftState~regout\,
	datae => \ALT_INV_Add2~49_sumout\,
	dataf => \ALT_INV_Add0~49_sumout\,
	combout => \Signal_Remainder~16DUPLICATE_combout\);

-- Location: LCFF_X17_Y17_N3
\Signal_Remainder[12]~DUPLICATE\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~16DUPLICATE_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Signal_Remainder[12]~DUPLICATE_regout\);

-- Location: LCCOMB_X18_Y16_N10
\Add0~53\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( !Signal_Remainder(13) $ (Signal_Divider(13)) ) + ( \Add0~51\ ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( !Signal_Remainder(13) $ (Signal_Divider(13)) ) + ( \Add0~51\ ) + ( \Add0~50\ ))
-- \Add0~55\ = SHARE((Signal_Remainder(13) & !Signal_Divider(13)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Signal_Remainder(13),
	datad => ALT_INV_Signal_Divider(13),
	cin => \Add0~50\,
	sharein => \Add0~51\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\,
	shareout => \Add0~55\);

-- Location: LCCOMB_X18_Y16_N12
\Add0~57\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( !Signal_Remainder(14) $ (Signal_Divider(14)) ) + ( \Add0~55\ ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( !Signal_Remainder(14) $ (Signal_Divider(14)) ) + ( \Add0~55\ ) + ( \Add0~54\ ))
-- \Add0~59\ = SHARE((Signal_Remainder(14) & !Signal_Divider(14)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Signal_Remainder(14),
	datad => ALT_INV_Signal_Divider(14),
	cin => \Add0~54\,
	sharein => \Add0~55\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\,
	shareout => \Add0~59\);

-- Location: LCCOMB_X19_Y16_N10
\Add2~53\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( Signal_Divider(13) ) + ( Signal_Remainder(13) ) + ( \Add2~50\ ))
-- \Add2~54\ = CARRY(( Signal_Divider(13) ) + ( Signal_Remainder(13) ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Signal_Divider(13),
	dataf => ALT_INV_Signal_Remainder(13),
	cin => \Add2~50\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: LCCOMB_X17_Y16_N16
\Signal_Remainder~17\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~17_combout\ = ( \Add0~53_sumout\ & ( ((!\State.ShiftState~regout\ & ((\Add2~53_sumout\))) # (\State.ShiftState~regout\ & (\Signal_Remainder[12]~DUPLICATE_regout\))) # (\State.SubstractState~regout\) ) ) # ( !\Add0~53_sumout\ & ( 
-- (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\ & ((\Add2~53_sumout\))) # (\State.ShiftState~regout\ & (\Signal_Remainder[12]~DUPLICATE_regout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000100010000111111011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Signal_Remainder[12]~DUPLICATE_regout\,
	datab => \ALT_INV_State.SubstractState~regout\,
	datac => \ALT_INV_Add2~53_sumout\,
	datad => \ALT_INV_State.ShiftState~regout\,
	dataf => \ALT_INV_Add0~53_sumout\,
	combout => \Signal_Remainder~17_combout\);

-- Location: LCFF_X17_Y16_N17
\Signal_Remainder[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~17_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(13));

-- Location: LCCOMB_X19_Y16_N12
\Add2~57\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( Signal_Divider(14) ) + ( Signal_Remainder(14) ) + ( \Add2~54\ ))
-- \Add2~58\ = CARRY(( Signal_Divider(14) ) + ( Signal_Remainder(14) ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Signal_Divider(14),
	dataf => ALT_INV_Signal_Remainder(14),
	cin => \Add2~54\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: LCCOMB_X17_Y16_N4
\Signal_Remainder~18\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~18_combout\ = ( \Add2~57_sumout\ & ( (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\) # ((Signal_Remainder(13))))) # (\State.SubstractState~regout\ & (((\Add0~57_sumout\)))) ) ) # ( !\Add2~57_sumout\ & ( 
-- (!\State.SubstractState~regout\ & (\State.ShiftState~regout\ & ((Signal_Remainder(13))))) # (\State.SubstractState~regout\ & (((\Add0~57_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.ShiftState~regout\,
	datab => \ALT_INV_State.SubstractState~regout\,
	datac => \ALT_INV_Add0~57_sumout\,
	datad => ALT_INV_Signal_Remainder(13),
	dataf => \ALT_INV_Add2~57_sumout\,
	combout => \Signal_Remainder~18_combout\);

-- Location: LCFF_X17_Y16_N5
\Signal_Remainder[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~18_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(14));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[15]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(15),
	combout => \Divider_In~combout\(15));

-- Location: LCFF_X18_Y16_N15
\Signal_Divider[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(15),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(15));

-- Location: LCCOMB_X19_Y16_N14
\Add2~61\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( Signal_Remainder(15) ) + ( Signal_Divider(15) ) + ( \Add2~58\ ))
-- \Add2~62\ = CARRY(( Signal_Remainder(15) ) + ( Signal_Divider(15) ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Signal_Remainder(15),
	dataf => ALT_INV_Signal_Divider(15),
	cin => \Add2~58\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: LCCOMB_X18_Y16_N14
\Add0~61\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( !Signal_Remainder(15) $ (Signal_Divider(15)) ) + ( \Add0~59\ ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( !Signal_Remainder(15) $ (Signal_Divider(15)) ) + ( \Add0~59\ ) + ( \Add0~58\ ))
-- \Add0~63\ = SHARE((Signal_Remainder(15) & !Signal_Divider(15)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Remainder(15),
	datad => ALT_INV_Signal_Divider(15),
	cin => \Add0~58\,
	sharein => \Add0~59\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\,
	shareout => \Add0~63\);

-- Location: LCCOMB_X17_Y16_N26
\Signal_Remainder~19\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~19_combout\ = ( \Add0~61_sumout\ & ( ((!\State.ShiftState~regout\ & ((\Add2~61_sumout\))) # (\State.ShiftState~regout\ & (Signal_Remainder(14)))) # (\State.SubstractState~regout\) ) ) # ( !\Add0~61_sumout\ & ( 
-- (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\ & ((\Add2~61_sumout\))) # (\State.ShiftState~regout\ & (Signal_Remainder(14))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000100001011000000011111101111110001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.ShiftState~regout\,
	datab => ALT_INV_Signal_Remainder(14),
	datac => \ALT_INV_State.SubstractState~regout\,
	datad => \ALT_INV_Add2~61_sumout\,
	dataf => \ALT_INV_Add0~61_sumout\,
	combout => \Signal_Remainder~19_combout\);

-- Location: LCFF_X17_Y16_N27
\Signal_Remainder[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~19_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(15));

-- Location: LCCOMB_X19_Y16_N16
\Add2~65\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( Signal_Remainder(16) ) + ( Signal_Divider(16) ) + ( \Add2~62\ ))
-- \Add2~66\ = CARRY(( Signal_Remainder(16) ) + ( Signal_Divider(16) ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Signal_Remainder(16),
	dataf => ALT_INV_Signal_Divider(16),
	cin => \Add2~62\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: LCCOMB_X18_Y16_N16
\Add0~65\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( !Signal_Remainder(16) $ (Signal_Divider(16)) ) + ( \Add0~63\ ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( !Signal_Remainder(16) $ (Signal_Divider(16)) ) + ( \Add0~63\ ) + ( \Add0~62\ ))
-- \Add0~67\ = SHARE((Signal_Remainder(16) & !Signal_Divider(16)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Remainder(16),
	datad => ALT_INV_Signal_Divider(16),
	cin => \Add0~62\,
	sharein => \Add0~63\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\,
	shareout => \Add0~67\);

-- Location: LCCOMB_X17_Y16_N20
\Signal_Remainder~20\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~20_combout\ = ( \Add0~65_sumout\ & ( ((!\State.ShiftState~regout\ & (\Add2~65_sumout\)) # (\State.ShiftState~regout\ & ((Signal_Remainder(15))))) # (\State.SubstractState~regout\) ) ) # ( !\Add0~65_sumout\ & ( 
-- (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\ & (\Add2~65_sumout\)) # (\State.ShiftState~regout\ & ((Signal_Remainder(15)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.ShiftState~regout\,
	datab => \ALT_INV_State.SubstractState~regout\,
	datac => \ALT_INV_Add2~65_sumout\,
	datad => ALT_INV_Signal_Remainder(15),
	dataf => \ALT_INV_Add0~65_sumout\,
	combout => \Signal_Remainder~20_combout\);

-- Location: LCFF_X17_Y16_N21
\Signal_Remainder[16]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~20_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(16));

-- Location: LCCOMB_X18_Y16_N18
\Add0~69\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( !Signal_Remainder(17) $ (Signal_Divider(17)) ) + ( \Add0~67\ ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( !Signal_Remainder(17) $ (Signal_Divider(17)) ) + ( \Add0~67\ ) + ( \Add0~66\ ))
-- \Add0~71\ = SHARE((Signal_Remainder(17) & !Signal_Divider(17)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Signal_Remainder(17),
	datad => ALT_INV_Signal_Divider(17),
	cin => \Add0~66\,
	sharein => \Add0~67\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\,
	shareout => \Add0~71\);

-- Location: LCCOMB_X19_Y16_N18
\Add2~69\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( Signal_Divider(17) ) + ( Signal_Remainder(17) ) + ( \Add2~66\ ))
-- \Add2~70\ = CARRY(( Signal_Divider(17) ) + ( Signal_Remainder(17) ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Signal_Divider(17),
	dataf => ALT_INV_Signal_Remainder(17),
	cin => \Add2~66\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

-- Location: LCCOMB_X17_Y16_N10
\Signal_Remainder~21\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~21_combout\ = ( \Add2~69_sumout\ & ( (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\) # ((Signal_Remainder(16))))) # (\State.SubstractState~regout\ & (((\Add0~69_sumout\)))) ) ) # ( !\Add2~69_sumout\ & ( 
-- (!\State.SubstractState~regout\ & (\State.ShiftState~regout\ & ((Signal_Remainder(16))))) # (\State.SubstractState~regout\ & (((\Add0~69_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.ShiftState~regout\,
	datab => \ALT_INV_State.SubstractState~regout\,
	datac => \ALT_INV_Add0~69_sumout\,
	datad => ALT_INV_Signal_Remainder(16),
	dataf => \ALT_INV_Add2~69_sumout\,
	combout => \Signal_Remainder~21_combout\);

-- Location: LCFF_X17_Y16_N11
\Signal_Remainder[17]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~21_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(17));

-- Location: LCCOMB_X19_Y16_N20
\Add2~73\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( Signal_Divider(18) ) + ( Signal_Remainder(18) ) + ( \Add2~70\ ))
-- \Add2~74\ = CARRY(( Signal_Divider(18) ) + ( Signal_Remainder(18) ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Divider(18),
	dataf => ALT_INV_Signal_Remainder(18),
	cin => \Add2~70\,
	sumout => \Add2~73_sumout\,
	cout => \Add2~74\);

-- Location: LCCOMB_X18_Y16_N20
\Add0~73\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( !Signal_Remainder(18) $ (Signal_Divider(18)) ) + ( \Add0~71\ ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( !Signal_Remainder(18) $ (Signal_Divider(18)) ) + ( \Add0~71\ ) + ( \Add0~70\ ))
-- \Add0~75\ = SHARE((Signal_Remainder(18) & !Signal_Divider(18)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Remainder(18),
	datad => ALT_INV_Signal_Divider(18),
	cin => \Add0~70\,
	sharein => \Add0~71\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\,
	shareout => \Add0~75\);

-- Location: LCCOMB_X17_Y16_N30
\Signal_Remainder~22\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~22_combout\ = ( \Add0~73_sumout\ & ( ((!\State.ShiftState~regout\ & (\Add2~73_sumout\)) # (\State.ShiftState~regout\ & ((Signal_Remainder(17))))) # (\State.SubstractState~regout\) ) ) # ( !\Add0~73_sumout\ & ( 
-- (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\ & (\Add2~73_sumout\)) # (\State.ShiftState~regout\ & ((Signal_Remainder(17)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.ShiftState~regout\,
	datab => \ALT_INV_State.SubstractState~regout\,
	datac => \ALT_INV_Add2~73_sumout\,
	datad => ALT_INV_Signal_Remainder(17),
	dataf => \ALT_INV_Add0~73_sumout\,
	combout => \Signal_Remainder~22_combout\);

-- Location: LCFF_X17_Y16_N31
\Signal_Remainder[18]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~22_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(18));

-- Location: LCCOMB_X18_Y16_N22
\Add0~77\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( !Signal_Remainder(19) $ (Signal_Divider(19)) ) + ( \Add0~75\ ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( !Signal_Remainder(19) $ (Signal_Divider(19)) ) + ( \Add0~75\ ) + ( \Add0~74\ ))
-- \Add0~79\ = SHARE((Signal_Remainder(19) & !Signal_Divider(19)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Remainder(19),
	datad => ALT_INV_Signal_Divider(19),
	cin => \Add0~74\,
	sharein => \Add0~75\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\,
	shareout => \Add0~79\);

-- Location: LCCOMB_X19_Y16_N22
\Add2~77\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~77_sumout\ = SUM(( Signal_Remainder(19) ) + ( Signal_Divider(19) ) + ( \Add2~74\ ))
-- \Add2~78\ = CARRY(( Signal_Remainder(19) ) + ( Signal_Divider(19) ) + ( \Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Remainder(19),
	dataf => ALT_INV_Signal_Divider(19),
	cin => \Add2~74\,
	sumout => \Add2~77_sumout\,
	cout => \Add2~78\);

-- Location: LCCOMB_X17_Y16_N0
\Signal_Remainder~23\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~23_combout\ = ( \Add2~77_sumout\ & ( (!\State.SubstractState~regout\ & (((!\State.ShiftState~regout\)) # (Signal_Remainder(18)))) # (\State.SubstractState~regout\ & (((\Add0~77_sumout\)))) ) ) # ( !\Add2~77_sumout\ & ( 
-- (!\State.SubstractState~regout\ & (Signal_Remainder(18) & (\State.ShiftState~regout\))) # (\State.SubstractState~regout\ & (((\Add0~77_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011111000100111101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Signal_Remainder(18),
	datab => \ALT_INV_State.SubstractState~regout\,
	datac => \ALT_INV_State.ShiftState~regout\,
	datad => \ALT_INV_Add0~77_sumout\,
	dataf => \ALT_INV_Add2~77_sumout\,
	combout => \Signal_Remainder~23_combout\);

-- Location: LCFF_X17_Y16_N1
\Signal_Remainder[19]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~23_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(19));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[20]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(20),
	combout => \Divider_In~combout\(20));

-- Location: LCFF_X18_Y16_N25
\Signal_Divider[20]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(20),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(20));

-- Location: LCCOMB_X19_Y16_N24
\Add2~81\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~81_sumout\ = SUM(( Signal_Divider(20) ) + ( Signal_Remainder(20) ) + ( \Add2~78\ ))
-- \Add2~82\ = CARRY(( Signal_Divider(20) ) + ( Signal_Remainder(20) ) + ( \Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Signal_Divider(20),
	dataf => ALT_INV_Signal_Remainder(20),
	cin => \Add2~78\,
	sumout => \Add2~81_sumout\,
	cout => \Add2~82\);

-- Location: LCCOMB_X17_Y16_N14
\Signal_Remainder~24\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~24_combout\ = ( \Add2~81_sumout\ & ( (!\State.SubstractState~regout\ & (((!\State.ShiftState~regout\) # (Signal_Remainder(19))))) # (\State.SubstractState~regout\ & (\Add0~81_sumout\)) ) ) # ( !\Add2~81_sumout\ & ( 
-- (!\State.SubstractState~regout\ & (((Signal_Remainder(19) & \State.ShiftState~regout\)))) # (\State.SubstractState~regout\ & (\Add0~81_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110101000001010011010111110101001101011111010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~81_sumout\,
	datab => ALT_INV_Signal_Remainder(19),
	datac => \ALT_INV_State.SubstractState~regout\,
	datad => \ALT_INV_State.ShiftState~regout\,
	dataf => \ALT_INV_Add2~81_sumout\,
	combout => \Signal_Remainder~24_combout\);

-- Location: LCFF_X17_Y16_N15
\Signal_Remainder[20]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~24_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(20));

-- Location: LCCOMB_X18_Y16_N26
\Add0~85\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( !Signal_Remainder(21) $ (Signal_Divider(21)) ) + ( \Add0~83\ ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( !Signal_Remainder(21) $ (Signal_Divider(21)) ) + ( \Add0~83\ ) + ( \Add0~82\ ))
-- \Add0~87\ = SHARE((Signal_Remainder(21) & !Signal_Divider(21)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Signal_Remainder(21),
	datad => ALT_INV_Signal_Divider(21),
	cin => \Add0~82\,
	sharein => \Add0~83\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\,
	shareout => \Add0~87\);

-- Location: LCCOMB_X19_Y16_N26
\Add2~85\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~85_sumout\ = SUM(( Signal_Remainder(21) ) + ( Signal_Divider(21) ) + ( \Add2~82\ ))
-- \Add2~86\ = CARRY(( Signal_Remainder(21) ) + ( Signal_Divider(21) ) + ( \Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Signal_Remainder(21),
	dataf => ALT_INV_Signal_Divider(21),
	cin => \Add2~82\,
	sumout => \Add2~85_sumout\,
	cout => \Add2~86\);

-- Location: LCCOMB_X17_Y15_N16
\Signal_Remainder~25\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~25_combout\ = ( \Add2~85_sumout\ & ( (!\State.SubstractState~regout\ & (((!\State.ShiftState~regout\)) # (Signal_Remainder(20)))) # (\State.SubstractState~regout\ & (((\Add0~85_sumout\)))) ) ) # ( !\Add2~85_sumout\ & ( 
-- (!\State.SubstractState~regout\ & (Signal_Remainder(20) & ((\State.ShiftState~regout\)))) # (\State.SubstractState~regout\ & (((\Add0~85_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011111001111010001111100111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Signal_Remainder(20),
	datab => \ALT_INV_State.SubstractState~regout\,
	datac => \ALT_INV_Add0~85_sumout\,
	datad => \ALT_INV_State.ShiftState~regout\,
	dataf => \ALT_INV_Add2~85_sumout\,
	combout => \Signal_Remainder~25_combout\);

-- Location: LCFF_X17_Y15_N17
\Signal_Remainder[21]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~25_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(21));

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[22]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(22),
	combout => \Divider_In~combout\(22));

-- Location: LCFF_X18_Y16_N29
\Signal_Divider[22]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(22),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(22));

-- Location: LCCOMB_X18_Y16_N28
\Add0~89\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( !Signal_Remainder(22) $ (Signal_Divider(22)) ) + ( \Add0~87\ ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( !Signal_Remainder(22) $ (Signal_Divider(22)) ) + ( \Add0~87\ ) + ( \Add0~86\ ))
-- \Add0~91\ = SHARE((Signal_Remainder(22) & !Signal_Divider(22)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Remainder(22),
	datad => ALT_INV_Signal_Divider(22),
	cin => \Add0~86\,
	sharein => \Add0~87\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\,
	shareout => \Add0~91\);

-- Location: LCCOMB_X19_Y16_N28
\Add2~89\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~89_sumout\ = SUM(( Signal_Remainder(22) ) + ( Signal_Divider(22) ) + ( \Add2~86\ ))
-- \Add2~90\ = CARRY(( Signal_Remainder(22) ) + ( Signal_Divider(22) ) + ( \Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Signal_Remainder(22),
	dataf => ALT_INV_Signal_Divider(22),
	cin => \Add2~86\,
	sumout => \Add2~89_sumout\,
	cout => \Add2~90\);

-- Location: LCCOMB_X17_Y15_N20
\Signal_Remainder~26\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~26_combout\ = ( \Add2~89_sumout\ & ( (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\) # ((Signal_Remainder(21))))) # (\State.SubstractState~regout\ & (((\Add0~89_sumout\)))) ) ) # ( !\Add2~89_sumout\ & ( 
-- (!\State.SubstractState~regout\ & (\State.ShiftState~regout\ & (Signal_Remainder(21)))) # (\State.SubstractState~regout\ & (((\Add0~89_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011110001100101111111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.ShiftState~regout\,
	datab => \ALT_INV_State.SubstractState~regout\,
	datac => ALT_INV_Signal_Remainder(21),
	datad => \ALT_INV_Add0~89_sumout\,
	dataf => \ALT_INV_Add2~89_sumout\,
	combout => \Signal_Remainder~26_combout\);

-- Location: LCFF_X17_Y15_N21
\Signal_Remainder[22]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~26_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(22));

-- Location: LCCOMB_X18_Y16_N30
\Add0~93\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( !Signal_Remainder(23) $ (Signal_Divider(23)) ) + ( \Add0~91\ ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( !Signal_Remainder(23) $ (Signal_Divider(23)) ) + ( \Add0~91\ ) + ( \Add0~90\ ))
-- \Add0~95\ = SHARE((Signal_Remainder(23) & !Signal_Divider(23)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Signal_Remainder(23),
	datad => ALT_INV_Signal_Divider(23),
	cin => \Add0~90\,
	sharein => \Add0~91\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\,
	shareout => \Add0~95\);

-- Location: LCCOMB_X19_Y16_N30
\Add2~93\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~93_sumout\ = SUM(( Signal_Remainder(23) ) + ( Signal_Divider(23) ) + ( \Add2~90\ ))
-- \Add2~94\ = CARRY(( Signal_Remainder(23) ) + ( Signal_Divider(23) ) + ( \Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Signal_Remainder(23),
	dataf => ALT_INV_Signal_Divider(23),
	cin => \Add2~90\,
	sumout => \Add2~93_sumout\,
	cout => \Add2~94\);

-- Location: LCCOMB_X17_Y15_N10
\Signal_Remainder~27\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~27_combout\ = ( \Add2~93_sumout\ & ( (!\State.SubstractState~regout\ & (((!\State.ShiftState~regout\)) # (Signal_Remainder(22)))) # (\State.SubstractState~regout\ & (((\Add0~93_sumout\)))) ) ) # ( !\Add2~93_sumout\ & ( 
-- (!\State.SubstractState~regout\ & (Signal_Remainder(22) & (\State.ShiftState~regout\))) # (\State.SubstractState~regout\ & (((\Add0~93_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001111000100010000111111011101000011111101110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Signal_Remainder(22),
	datab => \ALT_INV_State.ShiftState~regout\,
	datac => \ALT_INV_Add0~93_sumout\,
	datad => \ALT_INV_State.SubstractState~regout\,
	dataf => \ALT_INV_Add2~93_sumout\,
	combout => \Signal_Remainder~27_combout\);

-- Location: LCFF_X17_Y15_N11
\Signal_Remainder[23]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~27_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(23));

-- Location: LCCOMB_X19_Y15_N0
\Add2~97\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~97_sumout\ = SUM(( Signal_Remainder(24) ) + ( Signal_Divider(24) ) + ( \Add2~94\ ))
-- \Add2~98\ = CARRY(( Signal_Remainder(24) ) + ( Signal_Divider(24) ) + ( \Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Signal_Remainder(24),
	dataf => ALT_INV_Signal_Divider(24),
	cin => \Add2~94\,
	sumout => \Add2~97_sumout\,
	cout => \Add2~98\);

-- Location: LCCOMB_X18_Y15_N0
\Add0~97\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( !Signal_Remainder(24) $ (Signal_Divider(24)) ) + ( \Add0~95\ ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( !Signal_Remainder(24) $ (Signal_Divider(24)) ) + ( \Add0~95\ ) + ( \Add0~94\ ))
-- \Add0~99\ = SHARE((Signal_Remainder(24) & !Signal_Divider(24)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Signal_Remainder(24),
	datac => ALT_INV_Signal_Divider(24),
	cin => \Add0~94\,
	sharein => \Add0~95\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\,
	shareout => \Add0~99\);

-- Location: LCCOMB_X21_Y15_N16
\Signal_Remainder~28\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~28_combout\ = ( \Add2~97_sumout\ & ( \Add0~97_sumout\ & ( ((!\State.ShiftState~regout\) # (\State.SubstractState~regout\)) # (Signal_Remainder(23)) ) ) ) # ( !\Add2~97_sumout\ & ( \Add0~97_sumout\ & ( ((Signal_Remainder(23) & 
-- \State.ShiftState~regout\)) # (\State.SubstractState~regout\) ) ) ) # ( \Add2~97_sumout\ & ( !\Add0~97_sumout\ & ( (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\) # (Signal_Remainder(23)))) ) ) ) # ( !\Add2~97_sumout\ & ( !\Add0~97_sumout\ 
-- & ( (Signal_Remainder(23) & (\State.ShiftState~regout\ & !\State.SubstractState~regout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000111101010000000000000101111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Signal_Remainder(23),
	datac => \ALT_INV_State.ShiftState~regout\,
	datad => \ALT_INV_State.SubstractState~regout\,
	datae => \ALT_INV_Add2~97_sumout\,
	dataf => \ALT_INV_Add0~97_sumout\,
	combout => \Signal_Remainder~28_combout\);

-- Location: LCFF_X21_Y15_N17
\Signal_Remainder[24]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~28_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(24));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[25]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(25),
	combout => \Divider_In~combout\(25));

-- Location: LCFF_X18_Y15_N3
\Signal_Divider[25]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(25),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(25));

-- Location: LCCOMB_X18_Y15_N2
\Add0~101\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( !Signal_Remainder(25) $ (Signal_Divider(25)) ) + ( \Add0~99\ ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( !Signal_Remainder(25) $ (Signal_Divider(25)) ) + ( \Add0~99\ ) + ( \Add0~98\ ))
-- \Add0~103\ = SHARE((Signal_Remainder(25) & !Signal_Divider(25)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Remainder(25),
	datad => ALT_INV_Signal_Divider(25),
	cin => \Add0~98\,
	sharein => \Add0~99\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\,
	shareout => \Add0~103\);

-- Location: LCCOMB_X19_Y15_N2
\Add2~101\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~101_sumout\ = SUM(( Signal_Remainder(25) ) + ( Signal_Divider(25) ) + ( \Add2~98\ ))
-- \Add2~102\ = CARRY(( Signal_Remainder(25) ) + ( Signal_Divider(25) ) + ( \Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Signal_Remainder(25),
	dataf => ALT_INV_Signal_Divider(25),
	cin => \Add2~98\,
	sumout => \Add2~101_sumout\,
	cout => \Add2~102\);

-- Location: LCCOMB_X17_Y15_N28
\Signal_Remainder~29\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~29_combout\ = ( \Add0~101_sumout\ & ( \Add2~101_sumout\ & ( (!\State.ShiftState~regout\) # ((\State.SubstractState~regout\) # (Signal_Remainder(24))) ) ) ) # ( !\Add0~101_sumout\ & ( \Add2~101_sumout\ & ( (!\State.SubstractState~regout\ 
-- & ((!\State.ShiftState~regout\) # (Signal_Remainder(24)))) ) ) ) # ( \Add0~101_sumout\ & ( !\Add2~101_sumout\ & ( ((\State.ShiftState~regout\ & Signal_Remainder(24))) # (\State.SubstractState~regout\) ) ) ) # ( !\Add0~101_sumout\ & ( !\Add2~101_sumout\ & 
-- ( (\State.ShiftState~regout\ & (Signal_Remainder(24) & !\State.SubstractState~regout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100011111111110111011000000001011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.ShiftState~regout\,
	datab => ALT_INV_Signal_Remainder(24),
	datad => \ALT_INV_State.SubstractState~regout\,
	datae => \ALT_INV_Add0~101_sumout\,
	dataf => \ALT_INV_Add2~101_sumout\,
	combout => \Signal_Remainder~29_combout\);

-- Location: LCFF_X17_Y15_N29
\Signal_Remainder[25]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~29_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(25));

-- Location: LCCOMB_X19_Y15_N4
\Add2~105\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~105_sumout\ = SUM(( Signal_Divider(26) ) + ( Signal_Remainder(26) ) + ( \Add2~102\ ))
-- \Add2~106\ = CARRY(( Signal_Divider(26) ) + ( Signal_Remainder(26) ) + ( \Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Signal_Divider(26),
	dataf => ALT_INV_Signal_Remainder(26),
	cin => \Add2~102\,
	sumout => \Add2~105_sumout\,
	cout => \Add2~106\);

-- Location: LCCOMB_X18_Y15_N4
\Add0~105\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( !Signal_Remainder(26) $ (Signal_Divider(26)) ) + ( \Add0~103\ ) + ( \Add0~102\ ))
-- \Add0~106\ = CARRY(( !Signal_Remainder(26) $ (Signal_Divider(26)) ) + ( \Add0~103\ ) + ( \Add0~102\ ))
-- \Add0~107\ = SHARE((Signal_Remainder(26) & !Signal_Divider(26)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Signal_Remainder(26),
	datad => ALT_INV_Signal_Divider(26),
	cin => \Add0~102\,
	sharein => \Add0~103\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\,
	shareout => \Add0~107\);

-- Location: LCCOMB_X17_Y15_N26
\Signal_Remainder~30\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~30_combout\ = ( \Add0~105_sumout\ & ( ((!\State.ShiftState~regout\ & ((\Add2~105_sumout\))) # (\State.ShiftState~regout\ & (\Signal_Remainder[25]~DUPLICATE_regout\))) # (\State.SubstractState~regout\) ) ) # ( !\Add0~105_sumout\ & ( 
-- (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\ & ((\Add2~105_sumout\))) # (\State.ShiftState~regout\ & (\Signal_Remainder[25]~DUPLICATE_regout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100001101000000011111110111110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Signal_Remainder[25]~DUPLICATE_regout\,
	datab => \ALT_INV_State.ShiftState~regout\,
	datac => \ALT_INV_State.SubstractState~regout\,
	datad => \ALT_INV_Add2~105_sumout\,
	dataf => \ALT_INV_Add0~105_sumout\,
	combout => \Signal_Remainder~30_combout\);

-- Location: LCFF_X17_Y15_N27
\Signal_Remainder[26]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~30_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(26));

-- Location: LCCOMB_X18_Y15_N6
\Add0~109\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( !Signal_Remainder(27) $ (Signal_Divider(27)) ) + ( \Add0~107\ ) + ( \Add0~106\ ))
-- \Add0~110\ = CARRY(( !Signal_Remainder(27) $ (Signal_Divider(27)) ) + ( \Add0~107\ ) + ( \Add0~106\ ))
-- \Add0~111\ = SHARE((Signal_Remainder(27) & !Signal_Divider(27)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Remainder(27),
	datad => ALT_INV_Signal_Divider(27),
	cin => \Add0~106\,
	sharein => \Add0~107\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\,
	shareout => \Add0~111\);

-- Location: LCCOMB_X19_Y15_N6
\Add2~109\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~109_sumout\ = SUM(( Signal_Remainder(27) ) + ( Signal_Divider(27) ) + ( \Add2~106\ ))
-- \Add2~110\ = CARRY(( Signal_Remainder(27) ) + ( Signal_Divider(27) ) + ( \Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Signal_Remainder(27),
	dataf => ALT_INV_Signal_Divider(27),
	cin => \Add2~106\,
	sumout => \Add2~109_sumout\,
	cout => \Add2~110\);

-- Location: LCCOMB_X19_Y15_N30
\Signal_Remainder~31\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~31_combout\ = ( \Add2~109_sumout\ & ( (!\State.SubstractState~regout\ & (((!\State.ShiftState~regout\)) # (Signal_Remainder(26)))) # (\State.SubstractState~regout\ & (((\Add0~109_sumout\)))) ) ) # ( !\Add2~109_sumout\ & ( 
-- (!\State.SubstractState~regout\ & (Signal_Remainder(26) & (\State.ShiftState~regout\))) # (\State.SubstractState~regout\ & (((\Add0~109_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111111010000110111111101000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Signal_Remainder(26),
	datab => \ALT_INV_State.ShiftState~regout\,
	datac => \ALT_INV_State.SubstractState~regout\,
	datad => \ALT_INV_Add0~109_sumout\,
	dataf => \ALT_INV_Add2~109_sumout\,
	combout => \Signal_Remainder~31_combout\);

-- Location: LCFF_X19_Y15_N31
\Signal_Remainder[27]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~31_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(27));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[28]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(28),
	combout => \Divider_In~combout\(28));

-- Location: LCFF_X18_Y15_N9
\Signal_Divider[28]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(28),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(28));

-- Location: LCCOMB_X19_Y15_N8
\Add2~113\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~113_sumout\ = SUM(( Signal_Remainder(28) ) + ( Signal_Divider(28) ) + ( \Add2~110\ ))
-- \Add2~114\ = CARRY(( Signal_Remainder(28) ) + ( Signal_Divider(28) ) + ( \Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Signal_Remainder(28),
	dataf => ALT_INV_Signal_Divider(28),
	cin => \Add2~110\,
	sumout => \Add2~113_sumout\,
	cout => \Add2~114\);

-- Location: LCCOMB_X18_Y15_N8
\Add0~113\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( !Signal_Remainder(28) $ (Signal_Divider(28)) ) + ( \Add0~111\ ) + ( \Add0~110\ ))
-- \Add0~114\ = CARRY(( !Signal_Remainder(28) $ (Signal_Divider(28)) ) + ( \Add0~111\ ) + ( \Add0~110\ ))
-- \Add0~115\ = SHARE((Signal_Remainder(28) & !Signal_Divider(28)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Remainder(28),
	datad => ALT_INV_Signal_Divider(28),
	cin => \Add0~110\,
	sharein => \Add0~111\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\,
	shareout => \Add0~115\);

-- Location: LCCOMB_X19_Y15_N26
\Signal_Remainder~32\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~32_combout\ = ( \Add0~113_sumout\ & ( ((!\State.ShiftState~regout\ & ((\Add2~113_sumout\))) # (\State.ShiftState~regout\ & (Signal_Remainder(27)))) # (\State.SubstractState~regout\) ) ) # ( !\Add0~113_sumout\ & ( 
-- (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\ & ((\Add2~113_sumout\))) # (\State.ShiftState~regout\ & (Signal_Remainder(27))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.SubstractState~regout\,
	datab => \ALT_INV_State.ShiftState~regout\,
	datac => ALT_INV_Signal_Remainder(27),
	datad => \ALT_INV_Add2~113_sumout\,
	dataf => \ALT_INV_Add0~113_sumout\,
	combout => \Signal_Remainder~32_combout\);

-- Location: LCFF_X19_Y15_N27
\Signal_Remainder[28]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~32_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(28));

-- Location: LCCOMB_X18_Y15_N10
\Add0~117\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( !Signal_Remainder(29) $ (Signal_Divider(29)) ) + ( \Add0~115\ ) + ( \Add0~114\ ))
-- \Add0~118\ = CARRY(( !Signal_Remainder(29) $ (Signal_Divider(29)) ) + ( \Add0~115\ ) + ( \Add0~114\ ))
-- \Add0~119\ = SHARE((Signal_Remainder(29) & !Signal_Divider(29)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Signal_Remainder(29),
	datac => ALT_INV_Signal_Divider(29),
	cin => \Add0~114\,
	sharein => \Add0~115\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\,
	shareout => \Add0~119\);

-- Location: LCCOMB_X18_Y15_N12
\Add0~121\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( !Signal_Divider(30) $ (Signal_Remainder(30)) ) + ( \Add0~119\ ) + ( \Add0~118\ ))
-- \Add0~122\ = CARRY(( !Signal_Divider(30) $ (Signal_Remainder(30)) ) + ( \Add0~119\ ) + ( \Add0~118\ ))
-- \Add0~123\ = SHARE((!Signal_Divider(30) & Signal_Remainder(30)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Signal_Divider(30),
	datac => ALT_INV_Signal_Remainder(30),
	cin => \Add0~118\,
	sharein => \Add0~119\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\,
	shareout => \Add0~123\);

-- Location: LCCOMB_X19_Y15_N10
\Add2~117\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~117_sumout\ = SUM(( Signal_Remainder(29) ) + ( Signal_Divider(29) ) + ( \Add2~114\ ))
-- \Add2~118\ = CARRY(( Signal_Remainder(29) ) + ( Signal_Divider(29) ) + ( \Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Signal_Remainder(29),
	dataf => ALT_INV_Signal_Divider(29),
	cin => \Add2~114\,
	sumout => \Add2~117_sumout\,
	cout => \Add2~118\);

-- Location: LCCOMB_X17_Y15_N4
\Signal_Remainder~33\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~33_combout\ = ( \Add2~117_sumout\ & ( \Add0~117_sumout\ & ( ((!\State.ShiftState~regout\) # (\State.SubstractState~regout\)) # (Signal_Remainder(28)) ) ) ) # ( !\Add2~117_sumout\ & ( \Add0~117_sumout\ & ( ((Signal_Remainder(28) & 
-- \State.ShiftState~regout\)) # (\State.SubstractState~regout\) ) ) ) # ( \Add2~117_sumout\ & ( !\Add0~117_sumout\ & ( (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\) # (Signal_Remainder(28)))) ) ) ) # ( !\Add2~117_sumout\ & ( 
-- !\Add0~117_sumout\ & ( (Signal_Remainder(28) & (\State.ShiftState~regout\ & !\State.SubstractState~regout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000110111010000000000010001111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Signal_Remainder(28),
	datab => \ALT_INV_State.ShiftState~regout\,
	datad => \ALT_INV_State.SubstractState~regout\,
	datae => \ALT_INV_Add2~117_sumout\,
	dataf => \ALT_INV_Add0~117_sumout\,
	combout => \Signal_Remainder~33_combout\);

-- Location: LCFF_X17_Y15_N5
\Signal_Remainder[29]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~33_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(29));

-- Location: LCCOMB_X19_Y15_N12
\Add2~121\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~121_sumout\ = SUM(( Signal_Remainder(30) ) + ( Signal_Divider(30) ) + ( \Add2~118\ ))
-- \Add2~122\ = CARRY(( Signal_Remainder(30) ) + ( Signal_Divider(30) ) + ( \Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Divider(30),
	datad => ALT_INV_Signal_Remainder(30),
	cin => \Add2~118\,
	sumout => \Add2~121_sumout\,
	cout => \Add2~122\);

-- Location: LCCOMB_X19_Y15_N20
\Signal_Remainder~34\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~34_combout\ = ( \Add2~121_sumout\ & ( (!\State.SubstractState~regout\ & (((!\State.ShiftState~regout\)) # (Signal_Remainder(29)))) # (\State.SubstractState~regout\ & (((\Add0~121_sumout\)))) ) ) # ( !\Add2~121_sumout\ & ( 
-- (!\State.SubstractState~regout\ & (Signal_Remainder(29) & (\State.ShiftState~regout\))) # (\State.SubstractState~regout\ & (((\Add0~121_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001111000100010000111111011101000011111101110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Signal_Remainder(29),
	datab => \ALT_INV_State.ShiftState~regout\,
	datac => \ALT_INV_Add0~121_sumout\,
	datad => \ALT_INV_State.SubstractState~regout\,
	dataf => \ALT_INV_Add2~121_sumout\,
	combout => \Signal_Remainder~34_combout\);

-- Location: LCFF_X19_Y15_N21
\Signal_Remainder[30]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~34_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(30));

-- Location: PIN_W13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Divider_In[31]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Divider_In(31),
	combout => \Divider_In~combout\(31));

-- Location: LCFF_X18_Y15_N13
\Signal_Divider[31]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	adatasdata => \Divider_In~combout\(31),
	sload => VCC,
	ena => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Divider(31));

-- Location: LCCOMB_X19_Y15_N14
\Add2~125\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~125_sumout\ = SUM(( Signal_Remainder(31) ) + ( Signal_Divider(31) ) + ( \Add2~122\ ))
-- \Add2~126\ = CARRY(( Signal_Remainder(31) ) + ( Signal_Divider(31) ) + ( \Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Signal_Remainder(31),
	dataf => ALT_INV_Signal_Divider(31),
	cin => \Add2~122\,
	sumout => \Add2~125_sumout\,
	cout => \Add2~126\);

-- Location: LCCOMB_X18_Y15_N14
\Add0~125\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( !Signal_Remainder(31) $ (Signal_Divider(31)) ) + ( \Add0~123\ ) + ( \Add0~122\ ))
-- \Add0~126\ = CARRY(( !Signal_Remainder(31) $ (Signal_Divider(31)) ) + ( \Add0~123\ ) + ( \Add0~122\ ))
-- \Add0~127\ = SHARE((Signal_Remainder(31) & !Signal_Divider(31)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Remainder(31),
	datad => ALT_INV_Signal_Divider(31),
	cin => \Add0~122\,
	sharein => \Add0~123\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\,
	shareout => \Add0~127\);

-- Location: LCCOMB_X17_Y15_N2
\Signal_Remainder~35\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~35_combout\ = ( \Add0~125_sumout\ & ( ((!\State.ShiftState~regout\ & ((\Add2~125_sumout\))) # (\State.ShiftState~regout\ & (Signal_Remainder(30)))) # (\State.SubstractState~regout\) ) ) # ( !\Add0~125_sumout\ & ( 
-- (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\ & ((\Add2~125_sumout\))) # (\State.ShiftState~regout\ & (Signal_Remainder(30))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.ShiftState~regout\,
	datab => \ALT_INV_State.SubstractState~regout\,
	datac => ALT_INV_Signal_Remainder(30),
	datad => \ALT_INV_Add2~125_sumout\,
	dataf => \ALT_INV_Add0~125_sumout\,
	combout => \Signal_Remainder~35_combout\);

-- Location: LCFF_X17_Y15_N3
\Signal_Remainder[31]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~35_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(31));

-- Location: LCCOMB_X18_Y15_N16
\Add0~129\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~129_sumout\ = SUM(( !Signal_Remainder(32) ) + ( \Add0~127\ ) + ( \Add0~126\ ))
-- \Add0~130\ = CARRY(( !Signal_Remainder(32) ) + ( \Add0~127\ ) + ( \Add0~126\ ))
-- \Add0~131\ = SHARE(Signal_Remainder(32))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Remainder(32),
	cin => \Add0~126\,
	sharein => \Add0~127\,
	sumout => \Add0~129_sumout\,
	cout => \Add0~130\,
	shareout => \Add0~131\);

-- Location: LCCOMB_X19_Y15_N16
\Add2~129\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~129_sumout\ = SUM(( Signal_Remainder(32) ) + ( GND ) + ( \Add2~126\ ))
-- \Add2~130\ = CARRY(( Signal_Remainder(32) ) + ( GND ) + ( \Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Signal_Remainder(32),
	cin => \Add2~126\,
	sumout => \Add2~129_sumout\,
	cout => \Add2~130\);

-- Location: LCCOMB_X17_Y15_N0
\Signal_Remainder~36\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~36_combout\ = ( \Add2~129_sumout\ & ( (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\) # ((Signal_Remainder(31))))) # (\State.SubstractState~regout\ & (((\Add0~129_sumout\)))) ) ) # ( !\Add2~129_sumout\ & ( 
-- (!\State.SubstractState~regout\ & (\State.ShiftState~regout\ & ((Signal_Remainder(31))))) # (\State.SubstractState~regout\ & (((\Add0~129_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.ShiftState~regout\,
	datab => \ALT_INV_State.SubstractState~regout\,
	datac => \ALT_INV_Add0~129_sumout\,
	datad => ALT_INV_Signal_Remainder(31),
	dataf => \ALT_INV_Add2~129_sumout\,
	combout => \Signal_Remainder~36_combout\);

-- Location: LCFF_X17_Y15_N1
\Signal_Remainder[32]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~36_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(32));

-- Location: LCCOMB_X18_Y15_N18
\Add0~133\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~133_sumout\ = SUM(( !Signal_Remainder(33) ) + ( \Add0~131\ ) + ( \Add0~130\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Signal_Remainder(33),
	cin => \Add0~130\,
	sharein => \Add0~131\,
	sumout => \Add0~133_sumout\);

-- Location: LCCOMB_X19_Y15_N18
\Add2~133\ : stratixii_lcell_comb
-- Equation(s):
-- \Add2~133_sumout\ = SUM(( Signal_Remainder(33) ) + ( GND ) + ( \Add2~130\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Signal_Remainder(33),
	cin => \Add2~130\,
	sumout => \Add2~133_sumout\);

-- Location: LCCOMB_X17_Y15_N12
\Signal_Remainder~37\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~37_combout\ = ( !\State.SubstractState~regout\ & ( (!\State.AddState~regout\ & (Signal_Remainder(33) & (((!\State.CheckState~regout\) # (\Add2~133_sumout\)) # (\State.ShiftState~regout\)))) # (\State.AddState~regout\ & 
-- ((((\Add2~133_sumout\))))) ) ) # ( \State.SubstractState~regout\ & ( (((\Add0~133_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100010000000100000011110000111101110111011101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Signal_Remainder(33),
	datab => \ALT_INV_State.AddState~regout\,
	datac => \ALT_INV_Add0~133_sumout\,
	datad => \ALT_INV_State.CheckState~regout\,
	datae => \ALT_INV_State.SubstractState~regout\,
	dataf => \ALT_INV_Add2~133_sumout\,
	datag => \ALT_INV_State.ShiftState~regout\,
	combout => \Signal_Remainder~37_combout\);

-- Location: LCFF_X17_Y15_N13
\Signal_Remainder[33]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~37_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(33));

-- Location: LCCOMB_X18_Y18_N26
\Signal_Quotient~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~3_combout\ = ( \State.InitState~regout\ & ( (\State.ShiftState~regout\ & !Signal_Remainder(33)) ) ) # ( !\State.InitState~regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.ShiftState~regout\,
	datad => ALT_INV_Signal_Remainder(33),
	dataf => \ALT_INV_State.InitState~regout\,
	combout => \Signal_Quotient~3_combout\);

-- Location: LCFF_X18_Y18_N27
\State.SubstractState\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \State.SubstractState~regout\);

-- Location: LCCOMB_X21_Y15_N26
\Signal_Quotient~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~0_combout\ = ( CNT(0) & ( \Decoder0~0_combout\ & ( (!\State.ShiftState~regout\ & \State.CheckState~regout\) ) ) ) # ( !CNT(0) & ( \Decoder0~0_combout\ & ( (!\State.ShiftState~regout\ & (\State.CheckState~regout\)) # 
-- (\State.ShiftState~regout\ & ((!CNT(4)))) ) ) ) # ( CNT(0) & ( !\Decoder0~0_combout\ & ( (!\State.ShiftState~regout\ & \State.CheckState~regout\) ) ) ) # ( !CNT(0) & ( !\Decoder0~0_combout\ & ( (!\State.ShiftState~regout\ & \State.CheckState~regout\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110010011100100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.ShiftState~regout\,
	datab => \ALT_INV_State.CheckState~regout\,
	datac => ALT_INV_CNT(4),
	datae => ALT_INV_CNT(0),
	dataf => \ALT_INV_Decoder0~0_combout\,
	combout => \Signal_Quotient~0_combout\);

-- Location: LCCOMB_X21_Y15_N0
\Signal_Quotient~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~1_combout\ = ( Signal_Quotient(0) & ( \Signal_Quotient~0_combout\ ) ) # ( !Signal_Quotient(0) & ( \Signal_Quotient~0_combout\ & ( (!Signal_Remainder(33) & (!\State.AddState~regout\ & !\State.SubstractState~regout\)) ) ) ) # ( 
-- Signal_Quotient(0) & ( !\Signal_Quotient~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110001000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Signal_Remainder(33),
	datab => \ALT_INV_State.AddState~regout\,
	datad => \ALT_INV_State.SubstractState~regout\,
	datae => ALT_INV_Signal_Quotient(0),
	dataf => \ALT_INV_Signal_Quotient~0_combout\,
	combout => \Signal_Quotient~1_combout\);

-- Location: LCFF_X21_Y15_N1
\Signal_Quotient[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~1_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(0));

-- Location: LCCOMB_X22_Y15_N18
\Quotient[0]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[0]$latch~combout\ = ( GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Quotient(0) ) ) # ( !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Quotient(0) & ( \Quotient[0]$latch~combout\ ) ) ) # ( !GLOBAL(\State.DoneState~clkctrl_outclk\) & 
-- ( !Signal_Quotient(0) & ( \Quotient[0]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Quotient[0]$latch~combout\,
	datae => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Quotient(0),
	combout => \Quotient[0]$latch~combout\);

-- Location: LCCOMB_X26_Y19_N6
\Decoder0~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = ( !CNT(4) & ( CNT(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CNT(0),
	dataf => ALT_INV_CNT(4),
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X22_Y15_N2
\Signal_Quotient~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~2_combout\ = ( Signal_Quotient(1) & ( \Decoder0~1_combout\ ) ) # ( !Signal_Quotient(1) & ( \Decoder0~1_combout\ & ( \Decoder0~0_combout\ ) ) ) # ( Signal_Quotient(1) & ( !\Decoder0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Decoder0~0_combout\,
	datae => ALT_INV_Signal_Quotient(1),
	dataf => \ALT_INV_Decoder0~1_combout\,
	combout => \Signal_Quotient~2_combout\);

-- Location: LCFF_X22_Y15_N3
\Signal_Quotient[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~2_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(1));

-- Location: LCCOMB_X23_Y15_N2
\Quotient[1]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[1]$latch~combout\ = ( GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Quotient(1) ) ) # ( !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Quotient(1) & ( \Quotient[1]$latch~combout\ ) ) ) # ( !GLOBAL(\State.DoneState~clkctrl_outclk\) & 
-- ( !Signal_Quotient(1) & ( \Quotient[1]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Quotient[1]$latch~combout\,
	datae => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Quotient(1),
	combout => \Quotient[1]$latch~combout\);

-- Location: LCCOMB_X25_Y19_N12
\Decoder0~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = ( !CNT(2) & ( !CNT(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_CNT(3),
	dataf => ALT_INV_CNT(2),
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X25_Y19_N16
\Signal_Quotient~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~4_combout\ = ( Signal_Quotient(2) & ( CNT(1) ) ) # ( !Signal_Quotient(2) & ( CNT(1) & ( (!CNT(4) & (\Decoder0~2_combout\ & !CNT(0))) ) ) ) # ( Signal_Quotient(2) & ( !CNT(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001010000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CNT(4),
	datac => \ALT_INV_Decoder0~2_combout\,
	datad => ALT_INV_CNT(0),
	datae => ALT_INV_Signal_Quotient(2),
	dataf => ALT_INV_CNT(1),
	combout => \Signal_Quotient~4_combout\);

-- Location: LCFF_X25_Y19_N17
\Signal_Quotient[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~4_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(2));

-- Location: LCCOMB_X26_Y19_N22
\Quotient[2]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[2]$latch~combout\ = ( Signal_Quotient(2) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Quotient[2]$latch~combout\) ) ) # ( !Signal_Quotient(2) & ( (\Quotient[2]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Quotient[2]$latch~combout\,
	datad => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Quotient(2),
	combout => \Quotient[2]$latch~combout\);

-- Location: LCCOMB_X26_Y19_N24
\Decoder0~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = ( !CNT(4) & ( (CNT(1) & CNT(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_CNT(1),
	datac => ALT_INV_CNT(0),
	dataf => ALT_INV_CNT(4),
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X25_Y19_N30
\Signal_Quotient~5\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~5_combout\ = ( \Decoder0~3_combout\ & ( (Signal_Quotient(3)) # (\Decoder0~2_combout\) ) ) # ( !\Decoder0~3_combout\ & ( Signal_Quotient(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~2_combout\,
	datad => ALT_INV_Signal_Quotient(3),
	dataf => \ALT_INV_Decoder0~3_combout\,
	combout => \Signal_Quotient~5_combout\);

-- Location: LCFF_X25_Y19_N31
\Signal_Quotient[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~5_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(3));

-- Location: LCCOMB_X26_Y19_N8
\Quotient[3]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[3]$latch~combout\ = ( Signal_Quotient(3) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Quotient[3]$latch~combout\) ) ) # ( !Signal_Quotient(3) & ( (\Quotient[3]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Quotient[3]$latch~combout\,
	datad => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Quotient(3),
	combout => \Quotient[3]$latch~combout\);

-- Location: LCCOMB_X23_Y19_N16
\Decoder0~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = ( !CNT(3) & ( (CNT(2) & !CNT(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_CNT(2),
	datad => ALT_INV_CNT(0),
	dataf => ALT_INV_CNT(3),
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X23_Y19_N8
\Signal_Quotient~6\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~6_combout\ = ( Signal_Quotient(4) & ( \Decoder0~4_combout\ ) ) # ( !Signal_Quotient(4) & ( \Decoder0~4_combout\ & ( (!CNT(4) & !CNT(1)) ) ) ) # ( Signal_Quotient(4) & ( !\Decoder0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110101010000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CNT(4),
	datad => ALT_INV_CNT(1),
	datae => ALT_INV_Signal_Quotient(4),
	dataf => \ALT_INV_Decoder0~4_combout\,
	combout => \Signal_Quotient~6_combout\);

-- Location: LCFF_X23_Y19_N9
\Signal_Quotient[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~6_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(4));

-- Location: LCCOMB_X22_Y19_N10
\Quotient[4]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[4]$latch~combout\ = ( Signal_Quotient(4) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Quotient[4]$latch~combout\) ) ) # ( !Signal_Quotient(4) & ( (\Quotient[4]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Quotient[4]$latch~combout\,
	datad => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Quotient(4),
	combout => \Quotient[4]$latch~combout\);

-- Location: LCCOMB_X26_Y19_N16
\Signal_Quotient~7\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~7_combout\ = ( CNT(1) & ( Signal_Quotient(5) ) ) # ( !CNT(1) & ( ((\Decoder0~1_combout\ & (!CNT(3) & CNT(2)))) # (Signal_Quotient(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~1_combout\,
	datab => ALT_INV_CNT(3),
	datac => ALT_INV_CNT(2),
	datad => ALT_INV_Signal_Quotient(5),
	dataf => ALT_INV_CNT(1),
	combout => \Signal_Quotient~7_combout\);

-- Location: LCFF_X26_Y19_N17
\Signal_Quotient[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~7_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(5));

-- Location: LCCOMB_X27_Y19_N14
\Quotient[5]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[5]$latch~combout\ = ( Signal_Quotient(5) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Quotient[5]$latch~combout\) ) ) # ( !Signal_Quotient(5) & ( (\Quotient[5]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Quotient[5]$latch~combout\,
	datad => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Quotient(5),
	combout => \Quotient[5]$latch~combout\);

-- Location: LCCOMB_X23_Y19_N20
\Signal_Quotient~8\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~8_combout\ = ( \Decoder0~4_combout\ & ( ((CNT(1) & !CNT(4))) # (Signal_Quotient(6)) ) ) # ( !\Decoder0~4_combout\ & ( Signal_Quotient(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110000111111110011000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_CNT(1),
	datac => ALT_INV_CNT(4),
	datad => ALT_INV_Signal_Quotient(6),
	dataf => \ALT_INV_Decoder0~4_combout\,
	combout => \Signal_Quotient~8_combout\);

-- Location: LCFF_X23_Y19_N21
\Signal_Quotient[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~8_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(6));

-- Location: LCCOMB_X22_Y19_N12
\Quotient[6]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[6]$latch~combout\ = ( Signal_Quotient(6) & ( (\Quotient[6]$latch~combout\) # (GLOBAL(\State.DoneState~clkctrl_outclk\)) ) ) # ( !Signal_Quotient(6) & ( (!GLOBAL(\State.DoneState~clkctrl_outclk\) & \Quotient[6]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	datad => \ALT_INV_Quotient[6]$latch~combout\,
	dataf => ALT_INV_Signal_Quotient(6),
	combout => \Quotient[6]$latch~combout\);

-- Location: LCCOMB_X25_Y19_N26
\Signal_Quotient~9\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~9_combout\ = ( \Decoder0~3_combout\ & ( ((!CNT(3) & CNT(2))) # (Signal_Quotient(7)) ) ) # ( !\Decoder0~3_combout\ & ( Signal_Quotient(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100100010111111110010001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CNT(3),
	datab => ALT_INV_CNT(2),
	datad => ALT_INV_Signal_Quotient(7),
	dataf => \ALT_INV_Decoder0~3_combout\,
	combout => \Signal_Quotient~9_combout\);

-- Location: LCFF_X25_Y19_N27
\Signal_Quotient[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~9_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(7));

-- Location: LCCOMB_X26_Y19_N28
\Quotient[7]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[7]$latch~combout\ = ( Signal_Quotient(7) & ( (\Quotient[7]$latch~combout\) # (GLOBAL(\State.DoneState~clkctrl_outclk\)) ) ) # ( !Signal_Quotient(7) & ( (!GLOBAL(\State.DoneState~clkctrl_outclk\) & \Quotient[7]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	datad => \ALT_INV_Quotient[7]$latch~combout\,
	dataf => ALT_INV_Signal_Quotient(7),
	combout => \Quotient[7]$latch~combout\);

-- Location: LCCOMB_X25_Y19_N24
\Decoder0~5\ : stratixii_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = ( !CNT(0) & ( (CNT(3) & !CNT(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CNT(3),
	datab => ALT_INV_CNT(2),
	dataf => ALT_INV_CNT(0),
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X26_Y19_N4
\Signal_Quotient~10\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~10_combout\ = ( CNT(1) & ( Signal_Quotient(8) ) ) # ( !CNT(1) & ( ((!CNT(4) & \Decoder0~5_combout\)) # (Signal_Quotient(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111111000011001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_CNT(4),
	datac => \ALT_INV_Decoder0~5_combout\,
	datad => ALT_INV_Signal_Quotient(8),
	dataf => ALT_INV_CNT(1),
	combout => \Signal_Quotient~10_combout\);

-- Location: LCFF_X26_Y19_N5
\Signal_Quotient[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~10_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(8));

-- Location: LCCOMB_X27_Y19_N24
\Quotient[8]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[8]$latch~combout\ = ( GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Quotient(8) ) ) # ( !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Quotient(8) & ( \Quotient[8]$latch~combout\ ) ) ) # ( !GLOBAL(\State.DoneState~clkctrl_outclk\) & 
-- ( !Signal_Quotient(8) & ( \Quotient[8]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Quotient[8]$latch~combout\,
	datae => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Quotient(8),
	combout => \Quotient[8]$latch~combout\);

-- Location: LCCOMB_X26_Y19_N2
\Signal_Quotient~11\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~11_combout\ = ( CNT(3) & ( ((\Decoder0~1_combout\ & (!CNT(1) & !CNT(2)))) # (Signal_Quotient(9)) ) ) # ( !CNT(3) & ( Signal_Quotient(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101000000111111110100000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~1_combout\,
	datab => ALT_INV_CNT(1),
	datac => ALT_INV_CNT(2),
	datad => ALT_INV_Signal_Quotient(9),
	dataf => ALT_INV_CNT(3),
	combout => \Signal_Quotient~11_combout\);

-- Location: LCFF_X26_Y19_N3
\Signal_Quotient[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~11_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(9));

-- Location: LCCOMB_X27_Y19_N30
\Quotient[9]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[9]$latch~combout\ = ( Signal_Quotient(9) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Quotient[9]$latch~combout\) ) ) # ( !Signal_Quotient(9) & ( (\Quotient[9]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Quotient[9]$latch~combout\,
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Quotient(9),
	combout => \Quotient[9]$latch~combout\);

-- Location: LCCOMB_X26_Y19_N14
\Signal_Quotient~12\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~12_combout\ = ( CNT(4) & ( Signal_Quotient(10) ) ) # ( !CNT(4) & ( ((\Decoder0~5_combout\ & CNT(1))) # (Signal_Quotient(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~5_combout\,
	datac => ALT_INV_CNT(1),
	datad => ALT_INV_Signal_Quotient(10),
	dataf => ALT_INV_CNT(4),
	combout => \Signal_Quotient~12_combout\);

-- Location: LCFF_X26_Y19_N15
\Signal_Quotient[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~12_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(10));

-- Location: LCCOMB_X27_Y19_N18
\Quotient[10]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[10]$latch~combout\ = ( GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Quotient(10) ) ) # ( !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Quotient(10) & ( \Quotient[10]$latch~combout\ ) ) ) # ( 
-- !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( !Signal_Quotient(10) & ( \Quotient[10]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Quotient[10]$latch~combout\,
	datae => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Quotient(10),
	combout => \Quotient[10]$latch~combout\);

-- Location: LCCOMB_X26_Y19_N26
\Signal_Quotient~13\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~13_combout\ = ( CNT(3) & ( ((\Decoder0~3_combout\ & !CNT(2))) # (Signal_Quotient(11)) ) ) # ( !CNT(3) & ( Signal_Quotient(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~3_combout\,
	datac => ALT_INV_CNT(2),
	datad => ALT_INV_Signal_Quotient(11),
	dataf => ALT_INV_CNT(3),
	combout => \Signal_Quotient~13_combout\);

-- Location: LCFF_X26_Y19_N27
\Signal_Quotient[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~13_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(11));

-- Location: LCCOMB_X27_Y19_N28
\Quotient[11]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[11]$latch~combout\ = ( Signal_Quotient(11) & ( (\Quotient[11]$latch~combout\) # (GLOBAL(\State.DoneState~clkctrl_outclk\)) ) ) # ( !Signal_Quotient(11) & ( (!GLOBAL(\State.DoneState~clkctrl_outclk\) & \Quotient[11]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	datad => \ALT_INV_Quotient[11]$latch~combout\,
	dataf => ALT_INV_Signal_Quotient(11),
	combout => \Quotient[11]$latch~combout\);

-- Location: LCCOMB_X25_Y19_N20
\Signal_Quotient~14\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~14_combout\ = ( Signal_Quotient(12) & ( CNT(2) ) ) # ( !Signal_Quotient(12) & ( CNT(2) & ( (CNT(3) & (!CNT(1) & (!CNT(4) & !CNT(0)))) ) ) ) # ( Signal_Quotient(12) & ( !CNT(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CNT(3),
	datab => ALT_INV_CNT(1),
	datac => ALT_INV_CNT(4),
	datad => ALT_INV_CNT(0),
	datae => ALT_INV_Signal_Quotient(12),
	dataf => ALT_INV_CNT(2),
	combout => \Signal_Quotient~14_combout\);

-- Location: LCFF_X25_Y19_N21
\Signal_Quotient[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~14_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(12));

-- Location: LCCOMB_X26_Y19_N18
\Quotient[12]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[12]$latch~combout\ = ( Signal_Quotient(12) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Quotient[12]$latch~combout\) ) ) # ( !Signal_Quotient(12) & ( (\Quotient[12]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Quotient[12]$latch~combout\,
	datad => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Quotient(12),
	combout => \Quotient[12]$latch~combout\);

-- Location: LCCOMB_X26_Y19_N30
\Signal_Quotient~15\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~15_combout\ = ( \Decoder0~1_combout\ & ( ((!CNT(1) & (CNT(3) & CNT(2)))) # (Signal_Quotient(13)) ) ) # ( !\Decoder0~1_combout\ & ( Signal_Quotient(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000010111111110000001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CNT(1),
	datab => ALT_INV_CNT(3),
	datac => ALT_INV_CNT(2),
	datad => ALT_INV_Signal_Quotient(13),
	dataf => \ALT_INV_Decoder0~1_combout\,
	combout => \Signal_Quotient~15_combout\);

-- Location: LCFF_X26_Y19_N31
\Signal_Quotient[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~15_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(13));

-- Location: LCCOMB_X27_Y19_N22
\Quotient[13]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[13]$latch~combout\ = ( GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Quotient(13) ) ) # ( !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Quotient(13) & ( \Quotient[13]$latch~combout\ ) ) ) # ( 
-- !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( !Signal_Quotient(13) & ( \Quotient[13]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Quotient[13]$latch~combout\,
	datae => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Quotient(13),
	combout => \Quotient[13]$latch~combout\);

-- Location: LCCOMB_X25_Y19_N10
\Signal_Quotient~16\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~16_combout\ = ( Signal_Quotient(14) & ( CNT(2) ) ) # ( !Signal_Quotient(14) & ( CNT(2) & ( (CNT(3) & (CNT(1) & (!CNT(0) & !CNT(4)))) ) ) ) # ( Signal_Quotient(14) & ( !CNT(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100010000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CNT(3),
	datab => ALT_INV_CNT(1),
	datac => ALT_INV_CNT(0),
	datad => ALT_INV_CNT(4),
	datae => ALT_INV_Signal_Quotient(14),
	dataf => ALT_INV_CNT(2),
	combout => \Signal_Quotient~16_combout\);

-- Location: LCFF_X25_Y19_N11
\Signal_Quotient[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~16_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(14));

-- Location: LCCOMB_X25_Y19_N28
\Quotient[14]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[14]$latch~combout\ = ( Signal_Quotient(14) & ( (\Quotient[14]$latch~combout\) # (GLOBAL(\State.DoneState~clkctrl_outclk\)) ) ) # ( !Signal_Quotient(14) & ( (!GLOBAL(\State.DoneState~clkctrl_outclk\) & \Quotient[14]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	datad => \ALT_INV_Quotient[14]$latch~combout\,
	dataf => ALT_INV_Signal_Quotient(14),
	combout => \Quotient[14]$latch~combout\);

-- Location: LCCOMB_X26_Y19_N12
\Signal_Quotient~17\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~17_combout\ = ( \Decoder0~3_combout\ & ( ((CNT(3) & CNT(2))) # (Signal_Quotient(15)) ) ) # ( !\Decoder0~3_combout\ & ( Signal_Quotient(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_CNT(3),
	datac => ALT_INV_CNT(2),
	datad => ALT_INV_Signal_Quotient(15),
	dataf => \ALT_INV_Decoder0~3_combout\,
	combout => \Signal_Quotient~17_combout\);

-- Location: LCFF_X26_Y19_N13
\Signal_Quotient[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~17_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(15));

-- Location: LCCOMB_X27_Y19_N0
\Quotient[15]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[15]$latch~combout\ = ( Signal_Quotient(15) & ( GLOBAL(\State.DoneState~clkctrl_outclk\) ) ) # ( Signal_Quotient(15) & ( !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( \Quotient[15]$latch~combout\ ) ) ) # ( !Signal_Quotient(15) & ( 
-- !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( \Quotient[15]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Quotient[15]$latch~combout\,
	datae => ALT_INV_Signal_Quotient(15),
	dataf => \ALT_INV_State.DoneState~clkctrl_outclk\,
	combout => \Quotient[15]$latch~combout\);

-- Location: LCCOMB_X22_Y15_N30
\Signal_Quotient~18\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~18_combout\ = ( Signal_Quotient(16) & ( \Decoder0~0_combout\ ) ) # ( !Signal_Quotient(16) & ( \Decoder0~0_combout\ & ( (CNT(4) & !CNT(0)) ) ) ) # ( Signal_Quotient(16) & ( !\Decoder0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CNT(4),
	datad => ALT_INV_CNT(0),
	datae => ALT_INV_Signal_Quotient(16),
	dataf => \ALT_INV_Decoder0~0_combout\,
	combout => \Signal_Quotient~18_combout\);

-- Location: LCFF_X22_Y15_N31
\Signal_Quotient[16]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~18_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(16));

-- Location: LCCOMB_X23_Y15_N28
\Quotient[16]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[16]$latch~combout\ = ( GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Quotient(16) ) ) # ( !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Quotient(16) & ( \Quotient[16]$latch~combout\ ) ) ) # ( 
-- !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( !Signal_Quotient(16) & ( \Quotient[16]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Quotient[16]$latch~combout\,
	datae => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Quotient(16),
	combout => \Quotient[16]$latch~combout\);

-- Location: LCCOMB_X21_Y15_N30
\Signal_Quotient~19\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~19_combout\ = ( Signal_Quotient(17) & ( CNT(4) ) ) # ( !Signal_Quotient(17) & ( CNT(4) & ( (\Decoder0~0_combout\ & CNT(0)) ) ) ) # ( Signal_Quotient(17) & ( !CNT(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000011000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Decoder0~0_combout\,
	datac => ALT_INV_CNT(0),
	datae => ALT_INV_Signal_Quotient(17),
	dataf => ALT_INV_CNT(4),
	combout => \Signal_Quotient~19_combout\);

-- Location: LCFF_X21_Y15_N31
\Signal_Quotient[17]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~19_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(17));

-- Location: LCCOMB_X22_Y15_N22
\Quotient[17]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[17]$latch~combout\ = ( GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Quotient(17) ) ) # ( !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Quotient(17) & ( \Quotient[17]$latch~combout\ ) ) ) # ( 
-- !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( !Signal_Quotient(17) & ( \Quotient[17]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Quotient[17]$latch~combout\,
	datae => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Quotient(17),
	combout => \Quotient[17]$latch~combout\);

-- Location: LCCOMB_X22_Y19_N22
\Decoder0~6\ : stratixii_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (CNT(1) & CNT(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_CNT(1),
	datad => ALT_INV_CNT(4),
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X25_Y19_N4
\Signal_Quotient~20\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~20_combout\ = ( Signal_Quotient(18) & ( \Decoder0~6_combout\ ) ) # ( !Signal_Quotient(18) & ( \Decoder0~6_combout\ & ( (!CNT(0) & \Decoder0~2_combout\) ) ) ) # ( Signal_Quotient(18) & ( !\Decoder0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001100000011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_CNT(0),
	datac => \ALT_INV_Decoder0~2_combout\,
	datae => ALT_INV_Signal_Quotient(18),
	dataf => \ALT_INV_Decoder0~6_combout\,
	combout => \Signal_Quotient~20_combout\);

-- Location: LCFF_X25_Y19_N5
\Signal_Quotient[18]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~20_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(18));

-- Location: LCCOMB_X25_Y19_N14
\Quotient[18]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[18]$latch~combout\ = ( Signal_Quotient(18) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Quotient[18]$latch~combout\) ) ) # ( !Signal_Quotient(18) & ( (\Quotient[18]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Quotient[18]$latch~combout\,
	datad => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Quotient(18),
	combout => \Quotient[18]$latch~combout\);

-- Location: LCCOMB_X25_Y19_N0
\Signal_Quotient~21\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~21_combout\ = ( Signal_Quotient(19) & ( CNT(1) ) ) # ( !Signal_Quotient(19) & ( CNT(1) & ( (\Decoder0~2_combout\ & (CNT(0) & CNT(4))) ) ) ) # ( Signal_Quotient(19) & ( !CNT(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~2_combout\,
	datab => ALT_INV_CNT(0),
	datac => ALT_INV_CNT(4),
	datae => ALT_INV_Signal_Quotient(19),
	dataf => ALT_INV_CNT(1),
	combout => \Signal_Quotient~21_combout\);

-- Location: LCFF_X25_Y19_N1
\Signal_Quotient[19]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~21_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(19));

-- Location: LCCOMB_X26_Y19_N0
\Quotient[19]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[19]$latch~combout\ = ( Signal_Quotient(19) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Quotient[19]$latch~combout\) ) ) # ( !Signal_Quotient(19) & ( (\Quotient[19]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Quotient[19]$latch~combout\,
	datad => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Quotient(19),
	combout => \Quotient[19]$latch~combout\);

-- Location: LCCOMB_X23_Y19_N28
\Decoder0~7\ : stratixii_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = ( !CNT(1) & ( CNT(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CNT(4),
	dataf => ALT_INV_CNT(1),
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X23_Y19_N18
\Signal_Quotient~22\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~22_combout\ = ( \Decoder0~4_combout\ & ( (Signal_Quotient(20)) # (\Decoder0~7_combout\) ) ) # ( !\Decoder0~4_combout\ & ( Signal_Quotient(20) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Decoder0~7_combout\,
	datad => ALT_INV_Signal_Quotient(20),
	dataf => \ALT_INV_Decoder0~4_combout\,
	combout => \Signal_Quotient~22_combout\);

-- Location: LCFF_X23_Y19_N19
\Signal_Quotient[20]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~22_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(20));

-- Location: LCCOMB_X22_Y19_N20
\Quotient[20]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[20]$latch~combout\ = ( Signal_Quotient(20) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Quotient[20]$latch~combout\) ) ) # ( !Signal_Quotient(20) & ( (\Quotient[20]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Quotient[20]$latch~combout\,
	datad => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Quotient(20),
	combout => \Quotient[20]$latch~combout\);

-- Location: LCCOMB_X23_Y19_N4
\Signal_Quotient~23\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~23_combout\ = ( CNT(3) & ( Signal_Quotient(21) ) ) # ( !CNT(3) & ( ((CNT(0) & (\Decoder0~7_combout\ & CNT(2)))) # (Signal_Quotient(21)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111111000000011111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CNT(0),
	datab => \ALT_INV_Decoder0~7_combout\,
	datac => ALT_INV_CNT(2),
	datad => ALT_INV_Signal_Quotient(21),
	dataf => ALT_INV_CNT(3),
	combout => \Signal_Quotient~23_combout\);

-- Location: LCFF_X23_Y19_N5
\Signal_Quotient[21]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~23_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(21));

-- Location: LCCOMB_X22_Y19_N28
\Quotient[21]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[21]$latch~combout\ = ( Signal_Quotient(21) & ( (\Quotient[21]$latch~combout\) # (GLOBAL(\State.DoneState~clkctrl_outclk\)) ) ) # ( !Signal_Quotient(21) & ( (!GLOBAL(\State.DoneState~clkctrl_outclk\) & \Quotient[21]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	datad => \ALT_INV_Quotient[21]$latch~combout\,
	dataf => ALT_INV_Signal_Quotient(21),
	combout => \Quotient[21]$latch~combout\);

-- Location: LCCOMB_X23_Y19_N26
\Signal_Quotient~24\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~24_combout\ = ( \Decoder0~4_combout\ & ( (Signal_Quotient(22)) # (\Decoder0~6_combout\) ) ) # ( !\Decoder0~4_combout\ & ( Signal_Quotient(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Decoder0~6_combout\,
	datad => ALT_INV_Signal_Quotient(22),
	dataf => \ALT_INV_Decoder0~4_combout\,
	combout => \Signal_Quotient~24_combout\);

-- Location: LCFF_X23_Y19_N27
\Signal_Quotient[22]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~24_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(22));

-- Location: LCCOMB_X22_Y19_N8
\Quotient[22]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[22]$latch~combout\ = ( Signal_Quotient(22) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Quotient[22]$latch~combout\) ) ) # ( !Signal_Quotient(22) & ( (\Quotient[22]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Quotient[22]$latch~combout\,
	datad => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Quotient(22),
	combout => \Quotient[22]$latch~combout\);

-- Location: LCCOMB_X22_Y19_N26
\Signal_Quotient~25\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~25_combout\ = ( \Decoder0~6_combout\ & ( ((CNT(2) & (CNT(0) & !CNT(3)))) # (Signal_Quotient(23)) ) ) # ( !\Decoder0~6_combout\ & ( Signal_Quotient(23) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100010000111111110001000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CNT(2),
	datab => ALT_INV_CNT(0),
	datac => ALT_INV_CNT(3),
	datad => ALT_INV_Signal_Quotient(23),
	dataf => \ALT_INV_Decoder0~6_combout\,
	combout => \Signal_Quotient~25_combout\);

-- Location: LCFF_X22_Y19_N27
\Signal_Quotient[23]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~25_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(23));

-- Location: LCCOMB_X23_Y19_N22
\Quotient[23]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[23]$latch~combout\ = ( Signal_Quotient(23) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Quotient[23]$latch~combout\) ) ) # ( !Signal_Quotient(23) & ( (\Quotient[23]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Quotient[23]$latch~combout\,
	datad => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Quotient(23),
	combout => \Quotient[23]$latch~combout\);

-- Location: LCCOMB_X26_Y19_N10
\Signal_Quotient~26\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~26_combout\ = ( \Decoder0~5_combout\ & ( (Signal_Quotient(24)) # (\Decoder0~7_combout\) ) ) # ( !\Decoder0~5_combout\ & ( Signal_Quotient(24) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Decoder0~7_combout\,
	datad => ALT_INV_Signal_Quotient(24),
	dataf => \ALT_INV_Decoder0~5_combout\,
	combout => \Signal_Quotient~26_combout\);

-- Location: LCFF_X26_Y19_N11
\Signal_Quotient[24]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~26_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(24));

-- Location: LCCOMB_X27_Y19_N6
\Quotient[24]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[24]$latch~combout\ = ( Signal_Quotient(24) & ( GLOBAL(\State.DoneState~clkctrl_outclk\) ) ) # ( Signal_Quotient(24) & ( !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( \Quotient[24]$latch~combout\ ) ) ) # ( !Signal_Quotient(24) & ( 
-- !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( \Quotient[24]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Quotient[24]$latch~combout\,
	datae => ALT_INV_Signal_Quotient(24),
	dataf => \ALT_INV_State.DoneState~clkctrl_outclk\,
	combout => \Quotient[24]$latch~combout\);

-- Location: LCCOMB_X22_Y19_N14
\Signal_Quotient~27\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~27_combout\ = ( CNT(0) & ( ((!CNT(2) & (\Decoder0~7_combout\ & CNT(3)))) # (Signal_Quotient(25)) ) ) # ( !CNT(0) & ( Signal_Quotient(25) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000010111111110000001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CNT(2),
	datab => \ALT_INV_Decoder0~7_combout\,
	datac => ALT_INV_CNT(3),
	datad => ALT_INV_Signal_Quotient(25),
	dataf => ALT_INV_CNT(0),
	combout => \Signal_Quotient~27_combout\);

-- Location: LCFF_X22_Y19_N15
\Signal_Quotient[25]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~27_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(25));

-- Location: LCCOMB_X23_Y19_N2
\Quotient[25]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[25]$latch~combout\ = ( GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Quotient(25) ) ) # ( !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Quotient(25) & ( \Quotient[25]$latch~combout\ ) ) ) # ( 
-- !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( !Signal_Quotient(25) & ( \Quotient[25]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Quotient[25]$latch~combout\,
	datae => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Quotient(25),
	combout => \Quotient[25]$latch~combout\);

-- Location: LCCOMB_X27_Y19_N10
\Signal_Quotient~28\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~28_combout\ = ( \Decoder0~5_combout\ & ( (Signal_Quotient(26)) # (\Decoder0~6_combout\) ) ) # ( !\Decoder0~5_combout\ & ( Signal_Quotient(26) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Decoder0~6_combout\,
	datad => ALT_INV_Signal_Quotient(26),
	dataf => \ALT_INV_Decoder0~5_combout\,
	combout => \Signal_Quotient~28_combout\);

-- Location: LCFF_X27_Y19_N11
\Signal_Quotient[26]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~28_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(26));

-- Location: LCCOMB_X27_Y19_N8
\Quotient[26]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[26]$latch~combout\ = ( Signal_Quotient(26) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Quotient[26]$latch~combout\) ) ) # ( !Signal_Quotient(26) & ( (\Quotient[26]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Quotient[26]$latch~combout\,
	datad => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Quotient(26),
	combout => \Quotient[26]$latch~combout\);

-- Location: LCCOMB_X22_Y19_N16
\Signal_Quotient~29\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~29_combout\ = ( Signal_Quotient(27) & ( CNT(0) ) ) # ( !Signal_Quotient(27) & ( CNT(0) & ( (!CNT(2) & (\Decoder0~6_combout\ & CNT(3))) ) ) ) # ( Signal_Quotient(27) & ( !CNT(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000001000101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CNT(2),
	datab => \ALT_INV_Decoder0~6_combout\,
	datad => ALT_INV_CNT(3),
	datae => ALT_INV_Signal_Quotient(27),
	dataf => ALT_INV_CNT(0),
	combout => \Signal_Quotient~29_combout\);

-- Location: LCFF_X22_Y19_N17
\Signal_Quotient[27]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~29_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(27));

-- Location: LCCOMB_X23_Y19_N24
\Quotient[27]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[27]$latch~combout\ = ( Signal_Quotient(27) & ( (\Quotient[27]$latch~combout\) # (GLOBAL(\State.DoneState~clkctrl_outclk\)) ) ) # ( !Signal_Quotient(27) & ( (!GLOBAL(\State.DoneState~clkctrl_outclk\) & \Quotient[27]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	datad => \ALT_INV_Quotient[27]$latch~combout\,
	dataf => ALT_INV_Signal_Quotient(27),
	combout => \Quotient[27]$latch~combout\);

-- Location: LCCOMB_X26_Y19_N20
\Signal_Quotient~30\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~30_combout\ = ( \Decoder0~7_combout\ & ( ((!CNT(0) & (CNT(3) & CNT(2)))) # (Signal_Quotient(28)) ) ) # ( !\Decoder0~7_combout\ & ( Signal_Quotient(28) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000010111111110000001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CNT(0),
	datab => ALT_INV_CNT(3),
	datac => ALT_INV_CNT(2),
	datad => ALT_INV_Signal_Quotient(28),
	dataf => \ALT_INV_Decoder0~7_combout\,
	combout => \Signal_Quotient~30_combout\);

-- Location: LCFF_X26_Y19_N21
\Signal_Quotient[28]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~30_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(28));

-- Location: LCCOMB_X27_Y19_N12
\Quotient[28]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[28]$latch~combout\ = ( Signal_Quotient(28) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Quotient[28]$latch~combout\) ) ) # ( !Signal_Quotient(28) & ( (\Quotient[28]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Quotient[28]$latch~combout\,
	datad => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Quotient(28),
	combout => \Quotient[28]$latch~combout\);

-- Location: LCCOMB_X22_Y19_N30
\Signal_Quotient~31\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~31_combout\ = ( CNT(0) & ( ((CNT(2) & (\Decoder0~7_combout\ & CNT(3)))) # (Signal_Quotient(29)) ) ) # ( !CNT(0) & ( Signal_Quotient(29) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CNT(2),
	datab => \ALT_INV_Decoder0~7_combout\,
	datac => ALT_INV_CNT(3),
	datad => ALT_INV_Signal_Quotient(29),
	dataf => ALT_INV_CNT(0),
	combout => \Signal_Quotient~31_combout\);

-- Location: LCFF_X22_Y19_N31
\Signal_Quotient[29]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~31_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(29));

-- Location: LCCOMB_X23_Y19_N14
\Quotient[29]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[29]$latch~combout\ = ( GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Quotient(29) ) ) # ( !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Quotient(29) & ( \Quotient[29]$latch~combout\ ) ) ) # ( 
-- !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( !Signal_Quotient(29) & ( \Quotient[29]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Quotient[29]$latch~combout\,
	datae => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Quotient(29),
	combout => \Quotient[29]$latch~combout\);

-- Location: LCCOMB_X22_Y19_N2
\Signal_Quotient~32\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~32_combout\ = ( Signal_Quotient(30) & ( CNT(0) ) ) # ( Signal_Quotient(30) & ( !CNT(0) ) ) # ( !Signal_Quotient(30) & ( !CNT(0) & ( (CNT(2) & (\Decoder0~6_combout\ & CNT(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CNT(2),
	datab => \ALT_INV_Decoder0~6_combout\,
	datac => ALT_INV_CNT(3),
	datae => ALT_INV_Signal_Quotient(30),
	dataf => ALT_INV_CNT(0),
	combout => \Signal_Quotient~32_combout\);

-- Location: LCFF_X22_Y19_N3
\Signal_Quotient[30]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~32_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(30));

-- Location: LCCOMB_X23_Y19_N6
\Quotient[30]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[30]$latch~combout\ = ( Signal_Quotient(30) & ( (\Quotient[30]$latch~combout\) # (GLOBAL(\State.DoneState~clkctrl_outclk\)) ) ) # ( !Signal_Quotient(30) & ( (!GLOBAL(\State.DoneState~clkctrl_outclk\) & \Quotient[30]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	datad => \ALT_INV_Quotient[30]$latch~combout\,
	dataf => ALT_INV_Signal_Quotient(30),
	combout => \Quotient[30]$latch~combout\);

-- Location: LCCOMB_X23_Y19_N30
\Signal_Quotient~33\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Quotient~33_combout\ = ( CNT(3) & ( ((CNT(0) & (\Decoder0~6_combout\ & CNT(2)))) # (Signal_Quotient(31)) ) ) # ( !CNT(3) & ( Signal_Quotient(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CNT(0),
	datab => \ALT_INV_Decoder0~6_combout\,
	datac => ALT_INV_CNT(2),
	datad => ALT_INV_Signal_Quotient(31),
	dataf => ALT_INV_CNT(3),
	combout => \Signal_Quotient~33_combout\);

-- Location: LCFF_X23_Y19_N31
\Signal_Quotient[31]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Quotient~33_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Quotient~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Quotient(31));

-- Location: LCCOMB_X22_Y19_N6
\Quotient[31]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Quotient[31]$latch~combout\ = ( GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Quotient(31) ) ) # ( !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Quotient(31) & ( \Quotient[31]$latch~combout\ ) ) ) # ( 
-- !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( !Signal_Quotient(31) & ( \Quotient[31]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Quotient[31]$latch~combout\,
	datae => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Quotient(31),
	combout => \Quotient[31]$latch~combout\);

-- Location: LCCOMB_X22_Y17_N16
\Remainder[0]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[0]$latch~combout\ = ( Signal_Remainder(0) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Remainder[0]$latch~combout\) ) ) # ( !Signal_Remainder(0) & ( (\Remainder[0]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Remainder[0]$latch~combout\,
	datad => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Remainder(0),
	combout => \Remainder[0]$latch~combout\);

-- Location: LCCOMB_X19_Y17_N22
\Remainder[1]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[1]$latch~combout\ = ( Signal_Remainder(1) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Remainder[1]$latch~combout\) ) ) # ( !Signal_Remainder(1) & ( (\Remainder[1]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Remainder[1]$latch~combout\,
	datad => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Remainder(1),
	combout => \Remainder[1]$latch~combout\);

-- Location: LCCOMB_X18_Y17_N10
\Remainder[2]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[2]$latch~combout\ = ( Signal_Remainder(2) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Remainder[2]$latch~combout\) ) ) # ( !Signal_Remainder(2) & ( (\Remainder[2]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Remainder[2]$latch~combout\,
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Remainder(2),
	combout => \Remainder[2]$latch~combout\);

-- Location: LCCOMB_X19_Y17_N28
\Remainder[3]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[3]$latch~combout\ = ( Signal_Remainder(3) & ( (\Remainder[3]$latch~combout\) # (GLOBAL(\State.DoneState~clkctrl_outclk\)) ) ) # ( !Signal_Remainder(3) & ( (!GLOBAL(\State.DoneState~clkctrl_outclk\) & \Remainder[3]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	datad => \ALT_INV_Remainder[3]$latch~combout\,
	dataf => ALT_INV_Signal_Remainder(3),
	combout => \Remainder[3]$latch~combout\);

-- Location: LCCOMB_X18_Y17_N6
\Remainder[4]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[4]$latch~combout\ = ( Signal_Remainder(4) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Remainder[4]$latch~combout\) ) ) # ( !Signal_Remainder(4) & ( (\Remainder[4]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Remainder[4]$latch~combout\,
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Remainder(4),
	combout => \Remainder[4]$latch~combout\);

-- Location: LCCOMB_X18_Y17_N12
\Remainder[5]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[5]$latch~combout\ = ( Signal_Remainder(5) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Remainder[5]$latch~combout\) ) ) # ( !Signal_Remainder(5) & ( (\Remainder[5]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Remainder[5]$latch~combout\,
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Remainder(5),
	combout => \Remainder[5]$latch~combout\);

-- Location: LCCOMB_X17_Y17_N22
\Remainder[6]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[6]$latch~combout\ = ( GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Remainder(6) ) ) # ( !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Remainder(6) & ( \Remainder[6]$latch~combout\ ) ) ) # ( 
-- !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( !Signal_Remainder(6) & ( \Remainder[6]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Remainder[6]$latch~combout\,
	datae => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Remainder(6),
	combout => \Remainder[6]$latch~combout\);

-- Location: LCCOMB_X17_Y17_N10
\Remainder[7]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[7]$latch~combout\ = ( GLOBAL(\State.DoneState~clkctrl_outclk\) & ( \Signal_Remainder[7]~DUPLICATE_regout\ ) ) # ( !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( \Signal_Remainder[7]~DUPLICATE_regout\ & ( \Remainder[7]$latch~combout\ ) ) ) # ( 
-- !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( !\Signal_Remainder[7]~DUPLICATE_regout\ & ( \Remainder[7]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Remainder[7]$latch~combout\,
	datae => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => \ALT_INV_Signal_Remainder[7]~DUPLICATE_regout\,
	combout => \Remainder[7]$latch~combout\);

-- Location: LCCOMB_X21_Y16_N22
\Remainder[8]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[8]$latch~combout\ = ( GLOBAL(\State.DoneState~clkctrl_outclk\) & ( \Signal_Remainder[8]~DUPLICATE_regout\ ) ) # ( !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( \Signal_Remainder[8]~DUPLICATE_regout\ & ( \Remainder[8]$latch~combout\ ) ) ) # ( 
-- !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( !\Signal_Remainder[8]~DUPLICATE_regout\ & ( \Remainder[8]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Remainder[8]$latch~combout\,
	datae => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => \ALT_INV_Signal_Remainder[8]~DUPLICATE_regout\,
	combout => \Remainder[8]$latch~combout\);

-- Location: LCCOMB_X17_Y17_N26
\Signal_Remainder~13DUPLICATE\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~13DUPLICATE_combout\ = ( \State.SubstractState~regout\ & ( \Add2~37_sumout\ & ( \Add0~37_sumout\ ) ) ) # ( !\State.SubstractState~regout\ & ( \Add2~37_sumout\ & ( (!\State.ShiftState~regout\) # (Signal_Remainder(8)) ) ) ) # ( 
-- \State.SubstractState~regout\ & ( !\Add2~37_sumout\ & ( \Add0~37_sumout\ ) ) ) # ( !\State.SubstractState~regout\ & ( !\Add2~37_sumout\ & ( (\State.ShiftState~regout\ & Signal_Remainder(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000001111111111001111110011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State.ShiftState~regout\,
	datac => ALT_INV_Signal_Remainder(8),
	datad => \ALT_INV_Add0~37_sumout\,
	datae => \ALT_INV_State.SubstractState~regout\,
	dataf => \ALT_INV_Add2~37_sumout\,
	combout => \Signal_Remainder~13DUPLICATE_combout\);

-- Location: LCFF_X17_Y17_N27
\Signal_Remainder[9]~DUPLICATE\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~13DUPLICATE_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Signal_Remainder[9]~DUPLICATE_regout\);

-- Location: LCCOMB_X18_Y17_N14
\Remainder[9]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[9]$latch~combout\ = ( \Signal_Remainder[9]~DUPLICATE_regout\ & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Remainder[9]$latch~combout\) ) ) # ( !\Signal_Remainder[9]~DUPLICATE_regout\ & ( (\Remainder[9]$latch~combout\ & 
-- !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder[9]$latch~combout\,
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => \ALT_INV_Signal_Remainder[9]~DUPLICATE_regout\,
	combout => \Remainder[9]$latch~combout\);

-- Location: LCCOMB_X18_Y17_N4
\Remainder[10]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[10]$latch~combout\ = ( Signal_Remainder(10) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Remainder[10]$latch~combout\) ) ) # ( !Signal_Remainder(10) & ( (\Remainder[10]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder[10]$latch~combout\,
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Remainder(10),
	combout => \Remainder[10]$latch~combout\);

-- Location: LCCOMB_X17_Y17_N6
\Remainder[11]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[11]$latch~combout\ = ( GLOBAL(\State.DoneState~clkctrl_outclk\) & ( \Signal_Remainder[11]~DUPLICATE_regout\ ) ) # ( !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( \Signal_Remainder[11]~DUPLICATE_regout\ & ( \Remainder[11]$latch~combout\ ) ) ) # 
-- ( !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( !\Signal_Remainder[11]~DUPLICATE_regout\ & ( \Remainder[11]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Remainder[11]$latch~combout\,
	datae => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => \ALT_INV_Signal_Remainder[11]~DUPLICATE_regout\,
	combout => \Remainder[11]$latch~combout\);

-- Location: LCCOMB_X17_Y17_N0
\Signal_Remainder~16\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~16_combout\ = ( \Add2~49_sumout\ & ( \Add0~49_sumout\ & ( ((!\State.ShiftState~regout\) # (\State.SubstractState~regout\)) # (Signal_Remainder(11)) ) ) ) # ( !\Add2~49_sumout\ & ( \Add0~49_sumout\ & ( ((Signal_Remainder(11) & 
-- \State.ShiftState~regout\)) # (\State.SubstractState~regout\) ) ) ) # ( \Add2~49_sumout\ & ( !\Add0~49_sumout\ & ( (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\) # (Signal_Remainder(11)))) ) ) ) # ( !\Add2~49_sumout\ & ( !\Add0~49_sumout\ 
-- & ( (Signal_Remainder(11) & (!\State.SubstractState~regout\ & \State.ShiftState~regout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100110011000100010000110011011101111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Signal_Remainder(11),
	datab => \ALT_INV_State.SubstractState~regout\,
	datad => \ALT_INV_State.ShiftState~regout\,
	datae => \ALT_INV_Add2~49_sumout\,
	dataf => \ALT_INV_Add0~49_sumout\,
	combout => \Signal_Remainder~16_combout\);

-- Location: LCFF_X17_Y17_N1
\Signal_Remainder[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~16_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Signal_Remainder(12));

-- Location: LCCOMB_X18_Y17_N8
\Remainder[12]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[12]$latch~combout\ = ( Signal_Remainder(12) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Remainder[12]$latch~combout\) ) ) # ( !Signal_Remainder(12) & ( (\Remainder[12]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder[12]$latch~combout\,
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Remainder(12),
	combout => \Remainder[12]$latch~combout\);

-- Location: LCCOMB_X17_Y16_N18
\Remainder[13]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[13]$latch~combout\ = ( Signal_Remainder(13) & ( (\Remainder[13]$latch~combout\) # (GLOBAL(\State.DoneState~clkctrl_outclk\)) ) ) # ( !Signal_Remainder(13) & ( (!GLOBAL(\State.DoneState~clkctrl_outclk\) & \Remainder[13]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	datad => \ALT_INV_Remainder[13]$latch~combout\,
	dataf => ALT_INV_Signal_Remainder(13),
	combout => \Remainder[13]$latch~combout\);

-- Location: LCCOMB_X17_Y16_N6
\Remainder[14]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[14]$latch~combout\ = ( Signal_Remainder(14) & ( (\Remainder[14]$latch~combout\) # (GLOBAL(\State.DoneState~clkctrl_outclk\)) ) ) # ( !Signal_Remainder(14) & ( (!GLOBAL(\State.DoneState~clkctrl_outclk\) & \Remainder[14]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	datad => \ALT_INV_Remainder[14]$latch~combout\,
	dataf => ALT_INV_Signal_Remainder(14),
	combout => \Remainder[14]$latch~combout\);

-- Location: LCCOMB_X17_Y16_N24
\Remainder[15]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[15]$latch~combout\ = ( Signal_Remainder(15) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Remainder[15]$latch~combout\) ) ) # ( !Signal_Remainder(15) & ( (\Remainder[15]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Remainder[15]$latch~combout\,
	datad => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Remainder(15),
	combout => \Remainder[15]$latch~combout\);

-- Location: LCCOMB_X17_Y16_N22
\Remainder[16]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[16]$latch~combout\ = ( Signal_Remainder(16) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Remainder[16]$latch~combout\) ) ) # ( !Signal_Remainder(16) & ( (\Remainder[16]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Remainder[16]$latch~combout\,
	datad => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Remainder(16),
	combout => \Remainder[16]$latch~combout\);

-- Location: LCCOMB_X17_Y16_N8
\Remainder[17]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[17]$latch~combout\ = ( Signal_Remainder(17) & ( (\Remainder[17]$latch~combout\) # (GLOBAL(\State.DoneState~clkctrl_outclk\)) ) ) # ( !Signal_Remainder(17) & ( (!GLOBAL(\State.DoneState~clkctrl_outclk\) & \Remainder[17]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	datad => \ALT_INV_Remainder[17]$latch~combout\,
	dataf => ALT_INV_Signal_Remainder(17),
	combout => \Remainder[17]$latch~combout\);

-- Location: LCCOMB_X17_Y16_N28
\Remainder[18]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[18]$latch~combout\ = ( Signal_Remainder(18) & ( (\Remainder[18]$latch~combout\) # (GLOBAL(\State.DoneState~clkctrl_outclk\)) ) ) # ( !Signal_Remainder(18) & ( (!GLOBAL(\State.DoneState~clkctrl_outclk\) & \Remainder[18]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	datad => \ALT_INV_Remainder[18]$latch~combout\,
	dataf => ALT_INV_Signal_Remainder(18),
	combout => \Remainder[18]$latch~combout\);

-- Location: LCCOMB_X17_Y16_N2
\Remainder[19]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[19]$latch~combout\ = ( Signal_Remainder(19) & ( (\Remainder[19]$latch~combout\) # (GLOBAL(\State.DoneState~clkctrl_outclk\)) ) ) # ( !Signal_Remainder(19) & ( (!GLOBAL(\State.DoneState~clkctrl_outclk\) & \Remainder[19]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	datad => \ALT_INV_Remainder[19]$latch~combout\,
	dataf => ALT_INV_Signal_Remainder(19),
	combout => \Remainder[19]$latch~combout\);

-- Location: LCCOMB_X17_Y16_N12
\Remainder[20]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[20]$latch~combout\ = ( Signal_Remainder(20) & ( (\Remainder[20]$latch~combout\) # (GLOBAL(\State.DoneState~clkctrl_outclk\)) ) ) # ( !Signal_Remainder(20) & ( (!GLOBAL(\State.DoneState~clkctrl_outclk\) & \Remainder[20]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	datad => \ALT_INV_Remainder[20]$latch~combout\,
	dataf => ALT_INV_Signal_Remainder(20),
	combout => \Remainder[20]$latch~combout\);

-- Location: LCCOMB_X17_Y15_N18
\Remainder[21]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[21]$latch~combout\ = ( Signal_Remainder(21) & ( (\Remainder[21]$latch~combout\) # (GLOBAL(\State.DoneState~clkctrl_outclk\)) ) ) # ( !Signal_Remainder(21) & ( (!GLOBAL(\State.DoneState~clkctrl_outclk\) & \Remainder[21]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	datad => \ALT_INV_Remainder[21]$latch~combout\,
	dataf => ALT_INV_Signal_Remainder(21),
	combout => \Remainder[21]$latch~combout\);

-- Location: LCCOMB_X18_Y15_N26
\Remainder[22]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[22]$latch~combout\ = ( Signal_Remainder(22) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Remainder[22]$latch~combout\) ) ) # ( !Signal_Remainder(22) & ( (\Remainder[22]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Remainder[22]$latch~combout\,
	datad => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Remainder(22),
	combout => \Remainder[22]$latch~combout\);

-- Location: LCCOMB_X17_Y15_N8
\Remainder[23]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[23]$latch~combout\ = ( Signal_Remainder(23) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Remainder[23]$latch~combout\) ) ) # ( !Signal_Remainder(23) & ( (\Remainder[23]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Remainder[23]$latch~combout\,
	datad => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Remainder(23),
	combout => \Remainder[23]$latch~combout\);

-- Location: LCCOMB_X22_Y15_N24
\Remainder[24]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[24]$latch~combout\ = ( GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Remainder(24) ) ) # ( !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( Signal_Remainder(24) & ( \Remainder[24]$latch~combout\ ) ) ) # ( 
-- !GLOBAL(\State.DoneState~clkctrl_outclk\) & ( !Signal_Remainder(24) & ( \Remainder[24]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Remainder[24]$latch~combout\,
	datae => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Remainder(24),
	combout => \Remainder[24]$latch~combout\);

-- Location: LCCOMB_X17_Y15_N30
\Signal_Remainder~29DUPLICATE\ : stratixii_lcell_comb
-- Equation(s):
-- \Signal_Remainder~29DUPLICATE_combout\ = ( \Add0~101_sumout\ & ( \Add2~101_sumout\ & ( (!\State.ShiftState~regout\) # ((\State.SubstractState~regout\) # (Signal_Remainder(24))) ) ) ) # ( !\Add0~101_sumout\ & ( \Add2~101_sumout\ & ( 
-- (!\State.SubstractState~regout\ & ((!\State.ShiftState~regout\) # (Signal_Remainder(24)))) ) ) ) # ( \Add0~101_sumout\ & ( !\Add2~101_sumout\ & ( ((\State.ShiftState~regout\ & Signal_Remainder(24))) # (\State.SubstractState~regout\) ) ) ) # ( 
-- !\Add0~101_sumout\ & ( !\Add2~101_sumout\ & ( (\State.ShiftState~regout\ & (Signal_Remainder(24) & !\State.SubstractState~regout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000111110001111110110000101100001011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.ShiftState~regout\,
	datab => ALT_INV_Signal_Remainder(24),
	datac => \ALT_INV_State.SubstractState~regout\,
	datae => \ALT_INV_Add0~101_sumout\,
	dataf => \ALT_INV_Add2~101_sumout\,
	combout => \Signal_Remainder~29DUPLICATE_combout\);

-- Location: LCFF_X17_Y15_N31
\Signal_Remainder[25]~DUPLICATE\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Signal_Remainder~29DUPLICATE_combout\,
	sclr => \ALT_INV_State.InitState~regout\,
	ena => \Signal_Remainder[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Signal_Remainder[25]~DUPLICATE_regout\);

-- Location: LCCOMB_X18_Y15_N22
\Remainder[25]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[25]$latch~combout\ = ( \Signal_Remainder[25]~DUPLICATE_regout\ & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Remainder[25]$latch~combout\) ) ) # ( !\Signal_Remainder[25]~DUPLICATE_regout\ & ( (\Remainder[25]$latch~combout\ & 
-- !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Remainder[25]$latch~combout\,
	datad => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => \ALT_INV_Signal_Remainder[25]~DUPLICATE_regout\,
	combout => \Remainder[25]$latch~combout\);

-- Location: LCCOMB_X17_Y15_N24
\Remainder[26]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[26]$latch~combout\ = ( Signal_Remainder(26) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Remainder[26]$latch~combout\) ) ) # ( !Signal_Remainder(26) & ( (\Remainder[26]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Remainder[26]$latch~combout\,
	datad => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Remainder(26),
	combout => \Remainder[26]$latch~combout\);

-- Location: LCCOMB_X19_Y15_N28
\Remainder[27]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[27]$latch~combout\ = ( Signal_Remainder(27) & ( (\Remainder[27]$latch~combout\) # (GLOBAL(\State.DoneState~clkctrl_outclk\)) ) ) # ( !Signal_Remainder(27) & ( (!GLOBAL(\State.DoneState~clkctrl_outclk\) & \Remainder[27]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	datad => \ALT_INV_Remainder[27]$latch~combout\,
	dataf => ALT_INV_Signal_Remainder(27),
	combout => \Remainder[27]$latch~combout\);

-- Location: LCCOMB_X19_Y15_N24
\Remainder[28]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[28]$latch~combout\ = ( Signal_Remainder(28) & ( (\Remainder[28]$latch~combout\) # (GLOBAL(\State.DoneState~clkctrl_outclk\)) ) ) # ( !Signal_Remainder(28) & ( (!GLOBAL(\State.DoneState~clkctrl_outclk\) & \Remainder[28]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	datad => \ALT_INV_Remainder[28]$latch~combout\,
	dataf => ALT_INV_Signal_Remainder(28),
	combout => \Remainder[28]$latch~combout\);

-- Location: LCCOMB_X18_Y15_N24
\Remainder[29]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[29]$latch~combout\ = ( Signal_Remainder(29) & ( (\Remainder[29]$latch~combout\) # (GLOBAL(\State.DoneState~clkctrl_outclk\)) ) ) # ( !Signal_Remainder(29) & ( (!GLOBAL(\State.DoneState~clkctrl_outclk\) & \Remainder[29]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	datad => \ALT_INV_Remainder[29]$latch~combout\,
	dataf => ALT_INV_Signal_Remainder(29),
	combout => \Remainder[29]$latch~combout\);

-- Location: LCCOMB_X19_Y15_N22
\Remainder[30]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[30]$latch~combout\ = ( Signal_Remainder(30) & ( (\Remainder[30]$latch~combout\) # (GLOBAL(\State.DoneState~clkctrl_outclk\)) ) ) # ( !Signal_Remainder(30) & ( (!GLOBAL(\State.DoneState~clkctrl_outclk\) & \Remainder[30]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.DoneState~clkctrl_outclk\,
	datad => \ALT_INV_Remainder[30]$latch~combout\,
	dataf => ALT_INV_Signal_Remainder(30),
	combout => \Remainder[30]$latch~combout\);

-- Location: LCCOMB_X18_Y15_N20
\Remainder[31]$latch\ : stratixii_lcell_comb
-- Equation(s):
-- \Remainder[31]$latch~combout\ = ( Signal_Remainder(31) & ( (GLOBAL(\State.DoneState~clkctrl_outclk\)) # (\Remainder[31]$latch~combout\) ) ) # ( !Signal_Remainder(31) & ( (\Remainder[31]$latch~combout\ & !GLOBAL(\State.DoneState~clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Remainder[31]$latch~combout\,
	datad => \ALT_INV_State.DoneState~clkctrl_outclk\,
	dataf => ALT_INV_Signal_Remainder(31),
	combout => \Remainder[31]$latch~combout\);

-- Location: LCCOMB_X17_Y15_N22
\Equal1~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !\Divider_In~combout\(31) & ( !\Divider_In~combout\(30) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Divider_In~combout\(30),
	dataf => \ALT_INV_Divider_In~combout\(31),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X21_Y16_N18
\Equal1~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = ( !\Divider_In~combout\(5) & ( !\Divider_In~combout\(3) & ( (!\Divider_In~combout\(1) & (!\Divider_In~combout\(0) & (!\Divider_In~combout\(2) & !\Divider_In~combout\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Divider_In~combout\(1),
	datab => \ALT_INV_Divider_In~combout\(0),
	datac => \ALT_INV_Divider_In~combout\(2),
	datad => \ALT_INV_Divider_In~combout\(4),
	datae => \ALT_INV_Divider_In~combout\(5),
	dataf => \ALT_INV_Divider_In~combout\(3),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X21_Y16_N30
\Equal1~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( !\Divider_In~combout\(13) & ( !\Divider_In~combout\(15) & ( (!\Divider_In~combout\(12) & (!\Divider_In~combout\(14) & (!\Divider_In~combout\(17) & !\Divider_In~combout\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Divider_In~combout\(12),
	datab => \ALT_INV_Divider_In~combout\(14),
	datac => \ALT_INV_Divider_In~combout\(17),
	datad => \ALT_INV_Divider_In~combout\(16),
	datae => \ALT_INV_Divider_In~combout\(13),
	dataf => \ALT_INV_Divider_In~combout\(15),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X18_Y15_N30
\Equal1~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !\Divider_In~combout\(24) & ( !\Divider_In~combout\(26) & ( (!\Divider_In~combout\(29) & (!\Divider_In~combout\(28) & (!\Divider_In~combout\(25) & !\Divider_In~combout\(27)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Divider_In~combout\(29),
	datab => \ALT_INV_Divider_In~combout\(28),
	datac => \ALT_INV_Divider_In~combout\(25),
	datad => \ALT_INV_Divider_In~combout\(27),
	datae => \ALT_INV_Divider_In~combout\(24),
	dataf => \ALT_INV_Divider_In~combout\(26),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X21_Y16_N12
\Equal1~5\ : stratixii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = ( !\Divider_In~combout\(9) & ( !\Divider_In~combout\(11) & ( (!\Divider_In~combout\(8) & (!\Divider_In~combout\(7) & (!\Divider_In~combout\(6) & !\Divider_In~combout\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Divider_In~combout\(8),
	datab => \ALT_INV_Divider_In~combout\(7),
	datac => \ALT_INV_Divider_In~combout\(6),
	datad => \ALT_INV_Divider_In~combout\(10),
	datae => \ALT_INV_Divider_In~combout\(9),
	dataf => \ALT_INV_Divider_In~combout\(11),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X21_Y16_N26
\Equal1~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !\Divider_In~combout\(18) & ( !\Divider_In~combout\(21) & ( (!\Divider_In~combout\(23) & (!\Divider_In~combout\(22) & (!\Divider_In~combout\(20) & !\Divider_In~combout\(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Divider_In~combout\(23),
	datab => \ALT_INV_Divider_In~combout\(22),
	datac => \ALT_INV_Divider_In~combout\(20),
	datad => \ALT_INV_Divider_In~combout\(19),
	datae => \ALT_INV_Divider_In~combout\(18),
	dataf => \ALT_INV_Divider_In~combout\(21),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X21_Y16_N8
\Equal1~6\ : stratixii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = ( \Equal1~5_combout\ & ( \Equal1~2_combout\ & ( (\Equal1~0_combout\ & (\Equal1~4_combout\ & (\Equal1~3_combout\ & \Equal1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal1~4_combout\,
	datac => \ALT_INV_Equal1~3_combout\,
	datad => \ALT_INV_Equal1~1_combout\,
	datae => \ALT_INV_Equal1~5_combout\,
	dataf => \ALT_INV_Equal1~2_combout\,
	combout => \Equal1~6_combout\);

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[0]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(0));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[1]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(1));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[2]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(2));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[3]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(3));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[4]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(4));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[5]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(5));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[6]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(6));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[7]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[7]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(7));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[8]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[8]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(8));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\Quotient[9]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[9]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(9));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[10]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[10]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(10));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\Quotient[11]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[11]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(11));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[12]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[12]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(12));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\Quotient[13]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[13]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(13));

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[14]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[14]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(14));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[15]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[15]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(15));

-- Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[16]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[16]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(16));

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[17]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[17]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(17));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\Quotient[18]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[18]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(18));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[19]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[19]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(19));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[20]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[20]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(20));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[21]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[21]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(21));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[22]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[22]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(22));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[23]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[23]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(23));

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[24]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[24]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(24));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[25]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[25]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(25));

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\Quotient[26]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[26]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(26));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[27]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[27]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(27));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[28]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[28]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(28));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[29]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[29]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(29));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[30]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[30]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(30));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Quotient[31]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Quotient[31]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Quotient(31));

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Remainder[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[0]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(0));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\Remainder[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[1]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(1));

-- Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\Remainder[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[2]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(2));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\Remainder[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[3]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(3));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Remainder[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[4]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(4));

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\Remainder[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[5]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(5));

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\Remainder[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[6]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(6));

-- Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\Remainder[7]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[7]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(7));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\Remainder[8]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[8]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(8));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\Remainder[9]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[9]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(9));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Remainder[10]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[10]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(10));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\Remainder[11]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[11]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(11));

-- Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\Remainder[12]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[12]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(12));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\Remainder[13]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[13]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(13));

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Remainder[14]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[14]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(14));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Remainder[15]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[15]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(15));

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\Remainder[16]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[16]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(16));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Remainder[17]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[17]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(17));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Remainder[18]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[18]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(18));

-- Location: PIN_P20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\Remainder[19]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[19]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(19));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Remainder[20]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[20]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(20));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\Remainder[21]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[21]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(21));

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Remainder[22]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[22]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(22));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Remainder[23]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[23]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(23));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Remainder[24]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[24]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(24));

-- Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Remainder[25]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[25]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(25));

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Remainder[26]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[26]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(26));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Remainder[27]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[27]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(27));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Remainder[28]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[28]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(28));

-- Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Remainder[29]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[29]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(29));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Remainder[30]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[30]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(30));

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Remainder[31]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Remainder[31]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Remainder(31));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Done~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \State.DoneState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Done);

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\error~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_error);
END structure;


