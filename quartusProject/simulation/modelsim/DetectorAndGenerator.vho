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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "08/12/2022 20:56:06"

-- 
-- Device: Altera EP2C5T144C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DetectorAndGenerator IS
    PORT (
	clk : IN std_logic;
	resetn : IN std_logic;
	valid_out : OUT std_logic;
	message : OUT std_logic_vector(0 TO 7)
	);
END DetectorAndGenerator;

-- Design Ports Information
-- valid_out	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- message[7]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- message[6]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- message[5]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- message[4]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- message[3]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- message[2]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- message[1]	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- message[0]	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- resetn	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF DetectorAndGenerator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_valid_out : std_logic;
SIGNAL ww_message : std_logic_vector(0 TO 7);
SIGNAL \g|control|state~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \g|m|counter[0]~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d|c|Add0~55_combout\ : std_logic;
SIGNAL \d|c|Add0~58_combout\ : std_logic;
SIGNAL \d|c|Add0~64_combout\ : std_logic;
SIGNAL \d|c|Add0~70_combout\ : std_logic;
SIGNAL \d|c|Add0~74_combout\ : std_logic;
SIGNAL \d|c|Add0~76_combout\ : std_logic;
SIGNAL \d|c|Add0~96_combout\ : std_logic;
SIGNAL \d|c|Add0~106_combout\ : std_logic;
SIGNAL \g|control|Add0~10_combout\ : std_logic;
SIGNAL \g|control|Add0~12_combout\ : std_logic;
SIGNAL \g|control|Add0~16_combout\ : std_logic;
SIGNAL \g|control|Add0~20_combout\ : std_logic;
SIGNAL \g|control|Add0~24_combout\ : std_logic;
SIGNAL \g|control|Add0~44_combout\ : std_logic;
SIGNAL \g|control|Add0~48_combout\ : std_logic;
SIGNAL \g|m|Add0~4_combout\ : std_logic;
SIGNAL \g|m|Add0~22_combout\ : std_logic;
SIGNAL \g|m|Add0~24_combout\ : std_logic;
SIGNAL \g|m|Add0~26_combout\ : std_logic;
SIGNAL \g|m|Add0~28_combout\ : std_logic;
SIGNAL \g|m|Add0~36_combout\ : std_logic;
SIGNAL \g|m|Add0~60_combout\ : std_logic;
SIGNAL \d|c|headerFound~regout\ : std_logic;
SIGNAL \d|c|process_0~1_combout\ : std_logic;
SIGNAL \d|c|process_0~3_combout\ : std_logic;
SIGNAL \d|c|Add0~57_combout\ : std_logic;
SIGNAL \d|c|Add0~60_combout\ : std_logic;
SIGNAL \d|c|process_0~4_combout\ : std_logic;
SIGNAL \d|c|Add0~66_combout\ : std_logic;
SIGNAL \d|c|process_0~5_combout\ : std_logic;
SIGNAL \d|c|process_0~6_combout\ : std_logic;
SIGNAL \d|c|process_0~7_combout\ : std_logic;
SIGNAL \d|c|process_0~9_combout\ : std_logic;
SIGNAL \g|control|Equal0~0_combout\ : std_logic;
SIGNAL \g|control|Equal0~1_combout\ : std_logic;
SIGNAL \g|control|Equal0~2_combout\ : std_logic;
SIGNAL \g|control|Equal0~3_combout\ : std_logic;
SIGNAL \g|control|Equal0~4_combout\ : std_logic;
SIGNAL \g|m|Equal0~3_combout\ : std_logic;
SIGNAL \g|m|Equal0~8_combout\ : std_logic;
SIGNAL \g|m|Equal0~13_combout\ : std_logic;
SIGNAL \g|m|Equal0~18_combout\ : std_logic;
SIGNAL \g|m|Equal0~24_combout\ : std_logic;
SIGNAL \g|m|counter[29]~8_combout\ : std_logic;
SIGNAL \g|m|counter[28]~9_combout\ : std_logic;
SIGNAL \g|m|counter[27]~10_combout\ : std_logic;
SIGNAL \g|m|counter[26]~11_combout\ : std_logic;
SIGNAL \g|m|counter[24]~13_combout\ : std_logic;
SIGNAL \g|m|counter[23]~14_combout\ : std_logic;
SIGNAL \g|m|counter[19]~18_combout\ : std_logic;
SIGNAL \g|m|counter[18]~19_combout\ : std_logic;
SIGNAL \g|m|counter[17]~20_combout\ : std_logic;
SIGNAL \g|m|counter[16]~21_combout\ : std_logic;
SIGNAL \g|m|counter[14]~23_combout\ : std_logic;
SIGNAL \g|m|counter[13]~24_combout\ : std_logic;
SIGNAL \g|m|counter[12]~25_combout\ : std_logic;
SIGNAL \g|m|counter[11]~26_combout\ : std_logic;
SIGNAL \g|m|counter[30]~36_combout\ : std_logic;
SIGNAL \g|m|message[0]~1_combout\ : std_logic;
SIGNAL \g|h|transmissionBus[0]~0_combout\ : std_logic;
SIGNAL \g|t|f2|data~_emulated_regout\ : std_logic;
SIGNAL \g|t|f2|data~3_combout\ : std_logic;
SIGNAL \g|t|f1|data~_emulated_regout\ : std_logic;
SIGNAL \g|t|f1|data~2_combout\ : std_logic;
SIGNAL \g|t|f1|data~3_combout\ : std_logic;
SIGNAL \g|m|message[8]~6_combout\ : std_logic;
SIGNAL \g|t|f0|data~_emulated_regout\ : std_logic;
SIGNAL \g|t|f0|data~2_combout\ : std_logic;
SIGNAL \g|m|message[9]~7_combout\ : std_logic;
SIGNAL \d|c|Add0~116_combout\ : std_logic;
SIGNAL \d|c|Add0~118_combout\ : std_logic;
SIGNAL \d|c|Add0~119_combout\ : std_logic;
SIGNAL \d|c|Add0~129_combout\ : std_logic;
SIGNAL \d|c|Add0~134_combout\ : std_logic;
SIGNAL \d|c|headerFound~2_combout\ : std_logic;
SIGNAL \g|t|f1|data~1_combout\ : std_logic;
SIGNAL \g|t|f0|data~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \resetn~combout\ : std_logic;
SIGNAL \g|control|Add0~0_combout\ : std_logic;
SIGNAL \g|control|Add0~1\ : std_logic;
SIGNAL \g|control|Add0~2_combout\ : std_logic;
SIGNAL \g|control|counter~0_combout\ : std_logic;
SIGNAL \g|control|Add0~3\ : std_logic;
SIGNAL \g|control|Add0~4_combout\ : std_logic;
SIGNAL \g|control|counter~1_combout\ : std_logic;
SIGNAL \g|control|Add0~5\ : std_logic;
SIGNAL \g|control|Add0~6_combout\ : std_logic;
SIGNAL \g|control|counter~2_combout\ : std_logic;
SIGNAL \g|control|Add0~7\ : std_logic;
SIGNAL \g|control|Add0~8_combout\ : std_logic;
SIGNAL \g|control|Add0~9\ : std_logic;
SIGNAL \g|control|Add0~11\ : std_logic;
SIGNAL \g|control|Add0~13\ : std_logic;
SIGNAL \g|control|Add0~14_combout\ : std_logic;
SIGNAL \g|control|Add0~15\ : std_logic;
SIGNAL \g|control|Add0~17\ : std_logic;
SIGNAL \g|control|Add0~18_combout\ : std_logic;
SIGNAL \g|control|Add0~19\ : std_logic;
SIGNAL \g|control|Add0~21\ : std_logic;
SIGNAL \g|control|Add0~22_combout\ : std_logic;
SIGNAL \g|control|Add0~23\ : std_logic;
SIGNAL \g|control|Add0~25\ : std_logic;
SIGNAL \g|control|Add0~26_combout\ : std_logic;
SIGNAL \g|control|Add0~27\ : std_logic;
SIGNAL \g|control|Add0~28_combout\ : std_logic;
SIGNAL \g|control|Add0~29\ : std_logic;
SIGNAL \g|control|Add0~30_combout\ : std_logic;
SIGNAL \g|control|Add0~31\ : std_logic;
SIGNAL \g|control|Add0~32_combout\ : std_logic;
SIGNAL \g|control|Add0~33\ : std_logic;
SIGNAL \g|control|Add0~34_combout\ : std_logic;
SIGNAL \g|control|Add0~35\ : std_logic;
SIGNAL \g|control|Add0~36_combout\ : std_logic;
SIGNAL \g|control|Add0~37\ : std_logic;
SIGNAL \g|control|Add0~39\ : std_logic;
SIGNAL \g|control|Add0~40_combout\ : std_logic;
SIGNAL \g|control|Add0~41\ : std_logic;
SIGNAL \g|control|Add0~43\ : std_logic;
SIGNAL \g|control|Add0~45\ : std_logic;
SIGNAL \g|control|Add0~46_combout\ : std_logic;
SIGNAL \g|control|Add0~47\ : std_logic;
SIGNAL \g|control|Add0~49\ : std_logic;
SIGNAL \g|control|Add0~50_combout\ : std_logic;
SIGNAL \g|control|Add0~51\ : std_logic;
SIGNAL \g|control|Add0~52_combout\ : std_logic;
SIGNAL \g|control|Add0~53\ : std_logic;
SIGNAL \g|control|Add0~54_combout\ : std_logic;
SIGNAL \g|control|Equal0~8_combout\ : std_logic;
SIGNAL \g|control|Add0~42_combout\ : std_logic;
SIGNAL \g|control|Equal0~6_combout\ : std_logic;
SIGNAL \g|control|Add0~38_combout\ : std_logic;
SIGNAL \g|control|Equal0~5_combout\ : std_logic;
SIGNAL \g|control|Equal0~7_combout\ : std_logic;
SIGNAL \g|control|Add0~55\ : std_logic;
SIGNAL \g|control|Add0~56_combout\ : std_logic;
SIGNAL \g|control|Add0~57\ : std_logic;
SIGNAL \g|control|Add0~58_combout\ : std_logic;
SIGNAL \g|control|Add0~59\ : std_logic;
SIGNAL \g|control|Add0~60_combout\ : std_logic;
SIGNAL \g|control|Add0~61\ : std_logic;
SIGNAL \g|control|Add0~62_combout\ : std_logic;
SIGNAL \g|control|Equal0~9_combout\ : std_logic;
SIGNAL \g|control|Equal0~10_combout\ : std_logic;
SIGNAL \g|control|state~feeder_combout\ : std_logic;
SIGNAL \g|control|state~regout\ : std_logic;
SIGNAL \g|control|state~clkctrl_outclk\ : std_logic;
SIGNAL \g|m|counter[2]~7_combout\ : std_logic;
SIGNAL \g|m|counter~2_combout\ : std_logic;
SIGNAL \g|m|counter[7]~30_combout\ : std_logic;
SIGNAL \g|m|Add0~0_combout\ : std_logic;
SIGNAL \g|m|counter[0]~4_combout\ : std_logic;
SIGNAL \g|m|Add0~1\ : std_logic;
SIGNAL \g|m|Add0~3\ : std_logic;
SIGNAL \g|m|Add0~5\ : std_logic;
SIGNAL \g|m|Add0~6_combout\ : std_logic;
SIGNAL \g|m|counter[3]~34_combout\ : std_logic;
SIGNAL \g|m|Add0~7\ : std_logic;
SIGNAL \g|m|Add0~8_combout\ : std_logic;
SIGNAL \g|m|counter[4]~33_combout\ : std_logic;
SIGNAL \g|m|Add0~9\ : std_logic;
SIGNAL \g|m|Add0~10_combout\ : std_logic;
SIGNAL \g|m|counter[5]~32_combout\ : std_logic;
SIGNAL \g|m|Add0~11\ : std_logic;
SIGNAL \g|m|Add0~12_combout\ : std_logic;
SIGNAL \g|m|counter[6]~31_combout\ : std_logic;
SIGNAL \g|m|Add0~13\ : std_logic;
SIGNAL \g|m|Add0~15\ : std_logic;
SIGNAL \g|m|Add0~16_combout\ : std_logic;
SIGNAL \g|m|counter[8]~29_combout\ : std_logic;
SIGNAL \g|m|Add0~17\ : std_logic;
SIGNAL \g|m|Add0~18_combout\ : std_logic;
SIGNAL \g|m|counter[9]~28_combout\ : std_logic;
SIGNAL \g|m|Add0~19\ : std_logic;
SIGNAL \g|m|Add0~21\ : std_logic;
SIGNAL \g|m|Add0~23\ : std_logic;
SIGNAL \g|m|Add0~25\ : std_logic;
SIGNAL \g|m|Add0~27\ : std_logic;
SIGNAL \g|m|Add0~29\ : std_logic;
SIGNAL \g|m|Add0~30_combout\ : std_logic;
SIGNAL \g|m|counter[15]~22_combout\ : std_logic;
SIGNAL \g|m|Add0~31\ : std_logic;
SIGNAL \g|m|Add0~33\ : std_logic;
SIGNAL \g|m|Add0~35\ : std_logic;
SIGNAL \g|m|Add0~37\ : std_logic;
SIGNAL \g|m|Add0~39\ : std_logic;
SIGNAL \g|m|Add0~40_combout\ : std_logic;
SIGNAL \g|m|counter[20]~17_combout\ : std_logic;
SIGNAL \g|m|Add0~41\ : std_logic;
SIGNAL \g|m|Add0~42_combout\ : std_logic;
SIGNAL \g|m|counter[21]~16_combout\ : std_logic;
SIGNAL \g|m|Add0~43\ : std_logic;
SIGNAL \g|m|Add0~44_combout\ : std_logic;
SIGNAL \g|m|counter[22]~15_combout\ : std_logic;
SIGNAL \g|m|Add0~45\ : std_logic;
SIGNAL \g|m|Add0~47\ : std_logic;
SIGNAL \g|m|Add0~49\ : std_logic;
SIGNAL \g|m|Add0~50_combout\ : std_logic;
SIGNAL \g|m|counter[25]~12_combout\ : std_logic;
SIGNAL \g|m|Add0~51\ : std_logic;
SIGNAL \g|m|Add0~53\ : std_logic;
SIGNAL \g|m|Add0~55\ : std_logic;
SIGNAL \g|m|Add0~57\ : std_logic;
SIGNAL \g|m|Add0~58_combout\ : std_logic;
SIGNAL \g|m|Add0~20_combout\ : std_logic;
SIGNAL \g|m|counter[10]~27_combout\ : std_logic;
SIGNAL \g|m|Equal0~0_combout\ : std_logic;
SIGNAL \g|m|Equal0~1_combout\ : std_logic;
SIGNAL \g|m|Equal0~2_combout\ : std_logic;
SIGNAL \g|m|Equal0~4_combout\ : std_logic;
SIGNAL \g|m|Add0~38_combout\ : std_logic;
SIGNAL \g|m|Equal0~12_combout\ : std_logic;
SIGNAL \g|m|Add0~46_combout\ : std_logic;
SIGNAL \g|m|Equal0~10_combout\ : std_logic;
SIGNAL \g|m|Equal0~11_combout\ : std_logic;
SIGNAL \g|m|Equal0~14_combout\ : std_logic;
SIGNAL \g|m|Equal0~21_combout\ : std_logic;
SIGNAL \g|m|Add0~14_combout\ : std_logic;
SIGNAL \g|m|Equal0~20_combout\ : std_logic;
SIGNAL \g|m|Equal0~22_combout\ : std_logic;
SIGNAL \g|m|Equal0~17_combout\ : std_logic;
SIGNAL \g|m|Equal0~16_combout\ : std_logic;
SIGNAL \g|m|Add0~32_combout\ : std_logic;
SIGNAL \g|m|Add0~34_combout\ : std_logic;
SIGNAL \g|m|Equal0~15_combout\ : std_logic;
SIGNAL \g|m|Equal0~19_combout\ : std_logic;
SIGNAL \g|m|counter[31]~35_combout\ : std_logic;
SIGNAL \g|m|Add0~59\ : std_logic;
SIGNAL \g|m|Add0~61\ : std_logic;
SIGNAL \g|m|Add0~62_combout\ : std_logic;
SIGNAL \g|m|Equal0~23_combout\ : std_logic;
SIGNAL \g|m|Equal0~25_combout\ : std_logic;
SIGNAL \g|m|Equal0~26_combout\ : std_logic;
SIGNAL \g|m|counter[28]~3_combout\ : std_logic;
SIGNAL \g|m|counter[0]~5_combout\ : std_logic;
SIGNAL \g|m|counter[0]~5clkctrl_outclk\ : std_logic;
SIGNAL \g|m|Add0~2_combout\ : std_logic;
SIGNAL \g|m|counter[1]~6_combout\ : std_logic;
SIGNAL \g|m|counter~1_combout\ : std_logic;
SIGNAL \g|m|counter~0_combout\ : std_logic;
SIGNAL \g|h|comb~0_combout\ : std_logic;
SIGNAL \g|t|f12|data~1_combout\ : std_logic;
SIGNAL \g|m|message[0]~0_combout\ : std_logic;
SIGNAL \g|t|f10|data~1_combout\ : std_logic;
SIGNAL \g|t|f9|data~1_combout\ : std_logic;
SIGNAL \g|t|f8|data~1_combout\ : std_logic;
SIGNAL \g|m|message[4]~2_combout\ : std_logic;
SIGNAL \g|t|f5|data~1_combout\ : std_logic;
SIGNAL \g|m|Add0~48_combout\ : std_logic;
SIGNAL \g|m|Equal0~7_combout\ : std_logic;
SIGNAL \g|m|Add0~52_combout\ : std_logic;
SIGNAL \g|m|Equal0~6_combout\ : std_logic;
SIGNAL \g|m|Add0~54_combout\ : std_logic;
SIGNAL \g|m|Add0~56_combout\ : std_logic;
SIGNAL \g|m|Equal0~5_combout\ : std_logic;
SIGNAL \g|m|Equal0~9_combout\ : std_logic;
SIGNAL \g|m|message[6]~3_combout\ : std_logic;
SIGNAL \g|m|message[6]~4_combout\ : std_logic;
SIGNAL \g|t|f3|data~1_combout\ : std_logic;
SIGNAL \g|m|message[7]~5_combout\ : std_logic;
SIGNAL \g|t|f2|data~1_combout\ : std_logic;
SIGNAL \g|t|f2|data~2_combout\ : std_logic;
SIGNAL \g|t|f3|data~3_combout\ : std_logic;
SIGNAL \g|t|f3|data~_emulated_regout\ : std_logic;
SIGNAL \g|t|f3|data~2_combout\ : std_logic;
SIGNAL \g|t|f4|data~1_combout\ : std_logic;
SIGNAL \g|t|f4|data~_emulated_regout\ : std_logic;
SIGNAL \g|t|f4|data~0_combout\ : std_logic;
SIGNAL \g|t|f5|data~3_combout\ : std_logic;
SIGNAL \g|t|f5|data~_emulated_regout\ : std_logic;
SIGNAL \g|t|f5|data~2_combout\ : std_logic;
SIGNAL \g|t|f6|data~regout\ : std_logic;
SIGNAL \g|t|f7|data~0_combout\ : std_logic;
SIGNAL \g|t|f7|data~regout\ : std_logic;
SIGNAL \g|t|f8|data~3_combout\ : std_logic;
SIGNAL \g|t|f8|data~_emulated_regout\ : std_logic;
SIGNAL \g|t|f8|data~2_combout\ : std_logic;
SIGNAL \g|t|f9|data~3_combout\ : std_logic;
SIGNAL \g|t|f9|data~_emulated_regout\ : std_logic;
SIGNAL \g|t|f9|data~2_combout\ : std_logic;
SIGNAL \g|t|f10|data~3_combout\ : std_logic;
SIGNAL \g|t|f10|data~_emulated_regout\ : std_logic;
SIGNAL \g|t|f10|data~2_combout\ : std_logic;
SIGNAL \g|t|f11|data~regout\ : std_logic;
SIGNAL \g|t|f12|data~3_combout\ : std_logic;
SIGNAL \g|t|f12|data~_emulated_regout\ : std_logic;
SIGNAL \g|t|f12|data~2_combout\ : std_logic;
SIGNAL \g|t|serial|data~regout\ : std_logic;
SIGNAL \d|r|f0|data~regout\ : std_logic;
SIGNAL \d|r|f1|data~regout\ : std_logic;
SIGNAL \d|r|f2|data~regout\ : std_logic;
SIGNAL \d|r|f3|data~feeder_combout\ : std_logic;
SIGNAL \d|r|f3|data~regout\ : std_logic;
SIGNAL \d|r|f4|data~regout\ : std_logic;
SIGNAL \d|c|process_0~0_combout\ : std_logic;
SIGNAL \d|c|process_0~2_combout\ : std_logic;
SIGNAL \d|c|Add0~44_combout\ : std_logic;
SIGNAL \d|c|Add0~115_combout\ : std_logic;
SIGNAL \d|c|Add0~45\ : std_logic;
SIGNAL \d|c|Add0~46_combout\ : std_logic;
SIGNAL \d|c|Add0~114_combout\ : std_logic;
SIGNAL \d|c|Add0~47\ : std_logic;
SIGNAL \d|c|Add0~48_combout\ : std_logic;
SIGNAL \d|c|countClock~3_combout\ : std_logic;
SIGNAL \d|c|Add0~49\ : std_logic;
SIGNAL \d|c|Add0~51\ : std_logic;
SIGNAL \d|c|Add0~52_combout\ : std_logic;
SIGNAL \d|c|Add0~54_combout\ : std_logic;
SIGNAL \d|c|Add0~53\ : std_logic;
SIGNAL \d|c|Add0~56\ : std_logic;
SIGNAL \d|c|Add0~59\ : std_logic;
SIGNAL \d|c|Add0~61_combout\ : std_logic;
SIGNAL \d|c|Add0~63_combout\ : std_logic;
SIGNAL \d|c|Add0~62\ : std_logic;
SIGNAL \d|c|Add0~65\ : std_logic;
SIGNAL \d|c|Add0~67_combout\ : std_logic;
SIGNAL \d|c|Add0~69_combout\ : std_logic;
SIGNAL \d|c|Add0~68\ : std_logic;
SIGNAL \d|c|Add0~71\ : std_logic;
SIGNAL \d|c|Add0~72_combout\ : std_logic;
SIGNAL \d|c|Add0~117_combout\ : std_logic;
SIGNAL \d|c|Add0~73\ : std_logic;
SIGNAL \d|c|Add0~75\ : std_logic;
SIGNAL \d|c|Add0~77\ : std_logic;
SIGNAL \d|c|Add0~78_combout\ : std_logic;
SIGNAL \d|c|Add0~120_combout\ : std_logic;
SIGNAL \d|c|Add0~79\ : std_logic;
SIGNAL \d|c|Add0~80_combout\ : std_logic;
SIGNAL \d|c|Add0~121_combout\ : std_logic;
SIGNAL \d|c|Add0~81\ : std_logic;
SIGNAL \d|c|Add0~82_combout\ : std_logic;
SIGNAL \d|c|Add0~122_combout\ : std_logic;
SIGNAL \d|c|Add0~83\ : std_logic;
SIGNAL \d|c|Add0~84_combout\ : std_logic;
SIGNAL \d|c|Add0~123_combout\ : std_logic;
SIGNAL \d|c|Add0~85\ : std_logic;
SIGNAL \d|c|Add0~86_combout\ : std_logic;
SIGNAL \d|c|Add0~124_combout\ : std_logic;
SIGNAL \d|c|Add0~87\ : std_logic;
SIGNAL \d|c|Add0~88_combout\ : std_logic;
SIGNAL \d|c|Add0~125_combout\ : std_logic;
SIGNAL \d|c|process_0~8_combout\ : std_logic;
SIGNAL \d|c|countClock[24]~feeder_combout\ : std_logic;
SIGNAL \d|c|Add0~89\ : std_logic;
SIGNAL \d|c|Add0~90_combout\ : std_logic;
SIGNAL \d|c|Add0~126_combout\ : std_logic;
SIGNAL \d|c|Add0~91\ : std_logic;
SIGNAL \d|c|Add0~92_combout\ : std_logic;
SIGNAL \d|c|Add0~127_combout\ : std_logic;
SIGNAL \d|c|countClock[21]~feeder_combout\ : std_logic;
SIGNAL \d|c|Add0~93\ : std_logic;
SIGNAL \d|c|Add0~94_combout\ : std_logic;
SIGNAL \d|c|Add0~128_combout\ : std_logic;
SIGNAL \d|c|Add0~95\ : std_logic;
SIGNAL \d|c|Add0~97\ : std_logic;
SIGNAL \d|c|Add0~98_combout\ : std_logic;
SIGNAL \d|c|Add0~130_combout\ : std_logic;
SIGNAL \d|c|Add0~99\ : std_logic;
SIGNAL \d|c|Add0~100_combout\ : std_logic;
SIGNAL \d|c|Add0~131_combout\ : std_logic;
SIGNAL \d|c|Add0~101\ : std_logic;
SIGNAL \d|c|Add0~103\ : std_logic;
SIGNAL \d|c|Add0~104_combout\ : std_logic;
SIGNAL \d|c|Add0~133_combout\ : std_logic;
SIGNAL \d|c|Add0~102_combout\ : std_logic;
SIGNAL \d|c|Add0~132_combout\ : std_logic;
SIGNAL \d|c|process_0~10_combout\ : std_logic;
SIGNAL \d|c|Add0~105\ : std_logic;
SIGNAL \d|c|Add0~107\ : std_logic;
SIGNAL \d|c|Add0~108_combout\ : std_logic;
SIGNAL \d|c|Add0~135_combout\ : std_logic;
SIGNAL \d|c|Add0~109\ : std_logic;
SIGNAL \d|c|Add0~110_combout\ : std_logic;
SIGNAL \d|c|Add0~136_combout\ : std_logic;
SIGNAL \d|c|Add0~111\ : std_logic;
SIGNAL \d|c|Add0~112_combout\ : std_logic;
SIGNAL \d|c|Add0~137_combout\ : std_logic;
SIGNAL \d|c|process_0~11_combout\ : std_logic;
SIGNAL \d|c|process_0~12_combout\ : std_logic;
SIGNAL \d|c|countClock~2_combout\ : std_logic;
SIGNAL \d|c|Add0~50_combout\ : std_logic;
SIGNAL \d|c|process_0~13_combout\ : std_logic;
SIGNAL \d|c|validOut~regout\ : std_logic;
SIGNAL \d|r|f5|data~regout\ : std_logic;
SIGNAL \d|r|f6|data~regout\ : std_logic;
SIGNAL \d|r|f7|data~feeder_combout\ : std_logic;
SIGNAL \d|r|f7|data~regout\ : std_logic;
SIGNAL \d|r|f8|data~feeder_combout\ : std_logic;
SIGNAL \d|r|f8|data~regout\ : std_logic;
SIGNAL \d|r|f9|data~feeder_combout\ : std_logic;
SIGNAL \d|r|f9|data~regout\ : std_logic;
SIGNAL \d|r|f10|data~feeder_combout\ : std_logic;
SIGNAL \d|r|f10|data~regout\ : std_logic;
SIGNAL \d|r|f11|data~feeder_combout\ : std_logic;
SIGNAL \d|r|f11|data~regout\ : std_logic;
SIGNAL \d|r|f12|data~regout\ : std_logic;
SIGNAL \g|control|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \g|m|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \g|h|transmissionBus\ : std_logic_vector(0 TO 12);
SIGNAL \d|c|countClock\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \d|d|decodedMessage\ : std_logic_vector(0 TO 7);
SIGNAL \g|control|ALT_INV_state~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_resetn~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_resetn <= resetn;
valid_out <= ww_valid_out;
message <= ww_message;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\g|control|state~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \g|control|state~regout\);

\g|m|counter[0]~5clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \g|m|counter[0]~5_combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\g|control|ALT_INV_state~clkctrl_outclk\ <= NOT \g|control|state~clkctrl_outclk\;
\ALT_INV_resetn~combout\ <= NOT \resetn~combout\;

-- Location: LCCOMB_X7_Y6_N10
\d|c|Add0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~55_combout\ = (\d|c|countClock\(5) & (!\d|c|Add0~53\)) # (!\d|c|countClock\(5) & ((\d|c|Add0~53\) # (GND)))
-- \d|c|Add0~56\ = CARRY((!\d|c|Add0~53\) # (!\d|c|countClock\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|countClock\(5),
	datad => VCC,
	cin => \d|c|Add0~53\,
	combout => \d|c|Add0~55_combout\,
	cout => \d|c|Add0~56\);

-- Location: LCCOMB_X7_Y6_N12
\d|c|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~58_combout\ = (\d|c|countClock\(6) & (\d|c|Add0~56\ $ (GND))) # (!\d|c|countClock\(6) & (!\d|c|Add0~56\ & VCC))
-- \d|c|Add0~59\ = CARRY((\d|c|countClock\(6) & !\d|c|Add0~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|countClock\(6),
	datad => VCC,
	cin => \d|c|Add0~56\,
	combout => \d|c|Add0~58_combout\,
	cout => \d|c|Add0~59\);

-- Location: LCCOMB_X7_Y6_N16
\d|c|Add0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~64_combout\ = (\d|c|countClock\(8) & (\d|c|Add0~62\ $ (GND))) # (!\d|c|countClock\(8) & (!\d|c|Add0~62\ & VCC))
-- \d|c|Add0~65\ = CARRY((\d|c|countClock\(8) & !\d|c|Add0~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|countClock\(8),
	datad => VCC,
	cin => \d|c|Add0~62\,
	combout => \d|c|Add0~64_combout\,
	cout => \d|c|Add0~65\);

-- Location: LCCOMB_X7_Y6_N20
\d|c|Add0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~70_combout\ = (\d|c|countClock\(10) & (\d|c|Add0~68\ $ (GND))) # (!\d|c|countClock\(10) & (!\d|c|Add0~68\ & VCC))
-- \d|c|Add0~71\ = CARRY((\d|c|countClock\(10) & !\d|c|Add0~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|countClock\(10),
	datad => VCC,
	cin => \d|c|Add0~68\,
	combout => \d|c|Add0~70_combout\,
	cout => \d|c|Add0~71\);

-- Location: LCCOMB_X7_Y6_N24
\d|c|Add0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~74_combout\ = (\d|c|countClock\(12) & (\d|c|Add0~73\ $ (GND))) # (!\d|c|countClock\(12) & (!\d|c|Add0~73\ & VCC))
-- \d|c|Add0~75\ = CARRY((\d|c|countClock\(12) & !\d|c|Add0~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|countClock\(12),
	datad => VCC,
	cin => \d|c|Add0~73\,
	combout => \d|c|Add0~74_combout\,
	cout => \d|c|Add0~75\);

-- Location: LCCOMB_X7_Y6_N26
\d|c|Add0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~76_combout\ = (\d|c|countClock\(13) & (!\d|c|Add0~75\)) # (!\d|c|countClock\(13) & ((\d|c|Add0~75\) # (GND)))
-- \d|c|Add0~77\ = CARRY((!\d|c|Add0~75\) # (!\d|c|countClock\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|countClock\(13),
	datad => VCC,
	cin => \d|c|Add0~75\,
	combout => \d|c|Add0~76_combout\,
	cout => \d|c|Add0~77\);

-- Location: LCCOMB_X7_Y5_N14
\d|c|Add0~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~96_combout\ = (\d|c|countClock\(23) & (!\d|c|Add0~95\)) # (!\d|c|countClock\(23) & ((\d|c|Add0~95\) # (GND)))
-- \d|c|Add0~97\ = CARRY((!\d|c|Add0~95\) # (!\d|c|countClock\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|countClock\(23),
	datad => VCC,
	cin => \d|c|Add0~95\,
	combout => \d|c|Add0~96_combout\,
	cout => \d|c|Add0~97\);

-- Location: LCCOMB_X7_Y5_N24
\d|c|Add0~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~106_combout\ = (\d|c|countClock\(28) & (\d|c|Add0~105\ $ (GND))) # (!\d|c|countClock\(28) & (!\d|c|Add0~105\ & VCC))
-- \d|c|Add0~107\ = CARRY((\d|c|countClock\(28) & !\d|c|Add0~105\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|countClock\(28),
	datad => VCC,
	cin => \d|c|Add0~105\,
	combout => \d|c|Add0~106_combout\,
	cout => \d|c|Add0~107\);

-- Location: LCCOMB_X1_Y12_N10
\g|control|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~10_combout\ = (\g|control|counter\(5) & (!\g|control|Add0~9\)) # (!\g|control|counter\(5) & ((\g|control|Add0~9\) # (GND)))
-- \g|control|Add0~11\ = CARRY((!\g|control|Add0~9\) # (!\g|control|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|counter\(5),
	datad => VCC,
	cin => \g|control|Add0~9\,
	combout => \g|control|Add0~10_combout\,
	cout => \g|control|Add0~11\);

-- Location: LCCOMB_X1_Y12_N12
\g|control|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~12_combout\ = (\g|control|counter\(6) & (\g|control|Add0~11\ $ (GND))) # (!\g|control|counter\(6) & (!\g|control|Add0~11\ & VCC))
-- \g|control|Add0~13\ = CARRY((\g|control|counter\(6) & !\g|control|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|counter\(6),
	datad => VCC,
	cin => \g|control|Add0~11\,
	combout => \g|control|Add0~12_combout\,
	cout => \g|control|Add0~13\);

-- Location: LCCOMB_X1_Y12_N16
\g|control|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~16_combout\ = (\g|control|counter\(8) & (\g|control|Add0~15\ $ (GND))) # (!\g|control|counter\(8) & (!\g|control|Add0~15\ & VCC))
-- \g|control|Add0~17\ = CARRY((\g|control|counter\(8) & !\g|control|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|counter\(8),
	datad => VCC,
	cin => \g|control|Add0~15\,
	combout => \g|control|Add0~16_combout\,
	cout => \g|control|Add0~17\);

-- Location: LCCOMB_X1_Y12_N20
\g|control|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~20_combout\ = (\g|control|counter\(10) & (\g|control|Add0~19\ $ (GND))) # (!\g|control|counter\(10) & (!\g|control|Add0~19\ & VCC))
-- \g|control|Add0~21\ = CARRY((\g|control|counter\(10) & !\g|control|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|counter\(10),
	datad => VCC,
	cin => \g|control|Add0~19\,
	combout => \g|control|Add0~20_combout\,
	cout => \g|control|Add0~21\);

-- Location: LCCOMB_X1_Y12_N24
\g|control|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~24_combout\ = (\g|control|counter\(12) & (\g|control|Add0~23\ $ (GND))) # (!\g|control|counter\(12) & (!\g|control|Add0~23\ & VCC))
-- \g|control|Add0~25\ = CARRY((\g|control|counter\(12) & !\g|control|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|counter\(12),
	datad => VCC,
	cin => \g|control|Add0~23\,
	combout => \g|control|Add0~24_combout\,
	cout => \g|control|Add0~25\);

-- Location: LCCOMB_X1_Y11_N12
\g|control|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~44_combout\ = (\g|control|counter\(22) & (\g|control|Add0~43\ $ (GND))) # (!\g|control|counter\(22) & (!\g|control|Add0~43\ & VCC))
-- \g|control|Add0~45\ = CARRY((\g|control|counter\(22) & !\g|control|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|counter\(22),
	datad => VCC,
	cin => \g|control|Add0~43\,
	combout => \g|control|Add0~44_combout\,
	cout => \g|control|Add0~45\);

-- Location: LCCOMB_X1_Y11_N16
\g|control|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~48_combout\ = (\g|control|counter\(24) & (\g|control|Add0~47\ $ (GND))) # (!\g|control|counter\(24) & (!\g|control|Add0~47\ & VCC))
-- \g|control|Add0~49\ = CARRY((\g|control|counter\(24) & !\g|control|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|counter\(24),
	datad => VCC,
	cin => \g|control|Add0~47\,
	combout => \g|control|Add0~48_combout\,
	cout => \g|control|Add0~49\);

-- Location: LCCOMB_X14_Y12_N4
\g|m|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~4_combout\ = (\g|m|counter\(2) & (\g|m|Add0~3\ $ (GND))) # (!\g|m|counter\(2) & (!\g|m|Add0~3\ & VCC))
-- \g|m|Add0~5\ = CARRY((\g|m|counter\(2) & !\g|m|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(2),
	datad => VCC,
	cin => \g|m|Add0~3\,
	combout => \g|m|Add0~4_combout\,
	cout => \g|m|Add0~5\);

-- Location: LCCOMB_X14_Y12_N22
\g|m|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~22_combout\ = (\g|m|counter\(11) & (!\g|m|Add0~21\)) # (!\g|m|counter\(11) & ((\g|m|Add0~21\) # (GND)))
-- \g|m|Add0~23\ = CARRY((!\g|m|Add0~21\) # (!\g|m|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(11),
	datad => VCC,
	cin => \g|m|Add0~21\,
	combout => \g|m|Add0~22_combout\,
	cout => \g|m|Add0~23\);

-- Location: LCCOMB_X14_Y12_N24
\g|m|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~24_combout\ = (\g|m|counter\(12) & (\g|m|Add0~23\ $ (GND))) # (!\g|m|counter\(12) & (!\g|m|Add0~23\ & VCC))
-- \g|m|Add0~25\ = CARRY((\g|m|counter\(12) & !\g|m|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(12),
	datad => VCC,
	cin => \g|m|Add0~23\,
	combout => \g|m|Add0~24_combout\,
	cout => \g|m|Add0~25\);

-- Location: LCCOMB_X14_Y12_N26
\g|m|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~26_combout\ = (\g|m|counter\(13) & (!\g|m|Add0~25\)) # (!\g|m|counter\(13) & ((\g|m|Add0~25\) # (GND)))
-- \g|m|Add0~27\ = CARRY((!\g|m|Add0~25\) # (!\g|m|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(13),
	datad => VCC,
	cin => \g|m|Add0~25\,
	combout => \g|m|Add0~26_combout\,
	cout => \g|m|Add0~27\);

-- Location: LCCOMB_X14_Y12_N28
\g|m|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~28_combout\ = (\g|m|counter\(14) & (\g|m|Add0~27\ $ (GND))) # (!\g|m|counter\(14) & (!\g|m|Add0~27\ & VCC))
-- \g|m|Add0~29\ = CARRY((\g|m|counter\(14) & !\g|m|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(14),
	datad => VCC,
	cin => \g|m|Add0~27\,
	combout => \g|m|Add0~28_combout\,
	cout => \g|m|Add0~29\);

-- Location: LCCOMB_X14_Y11_N4
\g|m|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~36_combout\ = (\g|m|counter\(18) & (\g|m|Add0~35\ $ (GND))) # (!\g|m|counter\(18) & (!\g|m|Add0~35\ & VCC))
-- \g|m|Add0~37\ = CARRY((\g|m|counter\(18) & !\g|m|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(18),
	datad => VCC,
	cin => \g|m|Add0~35\,
	combout => \g|m|Add0~36_combout\,
	cout => \g|m|Add0~37\);

-- Location: LCCOMB_X14_Y11_N28
\g|m|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~60_combout\ = (\g|m|counter\(30) & (\g|m|Add0~59\ $ (GND))) # (!\g|m|counter\(30) & (!\g|m|Add0~59\ & VCC))
-- \g|m|Add0~61\ = CARRY((\g|m|counter\(30) & !\g|m|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(30),
	datad => VCC,
	cin => \g|m|Add0~59\,
	combout => \g|m|Add0~60_combout\,
	cout => \g|m|Add0~61\);

-- Location: LCFF_X8_Y6_N3
\d|c|headerFound\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \d|c|headerFound~2_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|headerFound~regout\);

-- Location: LCCOMB_X6_Y6_N12
\d|c|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|process_0~1_combout\ = (\d|c|headerFound~regout\ & (!\d|c|Add0~44_combout\ & ((!\d|c|process_0~0_combout\) # (!\d|r|f3|data~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|headerFound~regout\,
	datab => \d|c|Add0~44_combout\,
	datac => \d|r|f3|data~regout\,
	datad => \d|c|process_0~0_combout\,
	combout => \d|c|process_0~1_combout\);

-- Location: LCCOMB_X6_Y6_N10
\d|c|process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|process_0~3_combout\ = (!\d|c|Add0~46_combout\ & (\d|c|process_0~1_combout\ & (!\d|c|process_0~2_combout\ & \d|c|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|Add0~46_combout\,
	datab => \d|c|process_0~1_combout\,
	datac => \d|c|process_0~2_combout\,
	datad => \d|c|Add0~48_combout\,
	combout => \d|c|process_0~3_combout\);

-- Location: LCFF_X7_Y6_N11
\d|c|countClock[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|c|Add0~57_combout\,
	aclr => \ALT_INV_resetn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(5));

-- Location: LCCOMB_X6_Y6_N18
\d|c|Add0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~57_combout\ = (\d|c|Add0~55_combout\ & ((!\d|c|process_0~0_combout\) # (!\d|r|f3|data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|r|f3|data~regout\,
	datac => \d|c|Add0~55_combout\,
	datad => \d|c|process_0~0_combout\,
	combout => \d|c|Add0~57_combout\);

-- Location: LCFF_X7_Y6_N13
\d|c|countClock[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|c|Add0~60_combout\,
	aclr => \ALT_INV_resetn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(6));

-- Location: LCCOMB_X6_Y6_N2
\d|c|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~60_combout\ = (\d|c|Add0~58_combout\ & ((!\d|c|process_0~0_combout\) # (!\d|r|f3|data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|r|f3|data~regout\,
	datac => \d|c|Add0~58_combout\,
	datad => \d|c|process_0~0_combout\,
	combout => \d|c|Add0~60_combout\);

-- Location: LCCOMB_X6_Y6_N26
\d|c|process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|process_0~4_combout\ = (!\d|c|Add0~54_combout\ & (!\d|c|Add0~60_combout\ & (!\d|c|Add0~63_combout\ & !\d|c|Add0~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|Add0~54_combout\,
	datab => \d|c|Add0~60_combout\,
	datac => \d|c|Add0~63_combout\,
	datad => \d|c|Add0~57_combout\,
	combout => \d|c|process_0~4_combout\);

-- Location: LCFF_X7_Y6_N17
\d|c|countClock[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|c|Add0~66_combout\,
	aclr => \ALT_INV_resetn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(8));

-- Location: LCCOMB_X6_Y6_N6
\d|c|Add0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~66_combout\ = (\d|c|Add0~64_combout\ & ((!\d|c|process_0~0_combout\) # (!\d|r|f3|data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|r|f3|data~regout\,
	datac => \d|c|Add0~64_combout\,
	datad => \d|c|process_0~0_combout\,
	combout => \d|c|Add0~66_combout\);

-- Location: LCFF_X7_Y6_N21
\d|c|countClock[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|c|Add0~116_combout\,
	aclr => \ALT_INV_resetn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(10));

-- Location: LCCOMB_X6_Y6_N14
\d|c|process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|process_0~5_combout\ = (!\d|c|Add0~66_combout\ & (!\d|c|Add0~69_combout\ & (!\d|c|Add0~117_combout\ & !\d|c|Add0~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|Add0~66_combout\,
	datab => \d|c|Add0~69_combout\,
	datac => \d|c|Add0~117_combout\,
	datad => \d|c|Add0~116_combout\,
	combout => \d|c|process_0~5_combout\);

-- Location: LCFF_X7_Y6_N25
\d|c|countClock[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|c|Add0~118_combout\,
	aclr => \ALT_INV_resetn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(12));

-- Location: LCFF_X7_Y6_N7
\d|c|countClock[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|c|Add0~119_combout\,
	aclr => \ALT_INV_resetn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(13));

-- Location: LCCOMB_X8_Y6_N4
\d|c|process_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|process_0~6_combout\ = (!\d|c|Add0~118_combout\ & (!\d|c|Add0~121_combout\ & (!\d|c|Add0~120_combout\ & !\d|c|Add0~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|Add0~118_combout\,
	datab => \d|c|Add0~121_combout\,
	datac => \d|c|Add0~120_combout\,
	datad => \d|c|Add0~119_combout\,
	combout => \d|c|process_0~6_combout\);

-- Location: LCCOMB_X8_Y6_N6
\d|c|process_0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|process_0~7_combout\ = (\d|c|process_0~5_combout\ & (\d|c|process_0~3_combout\ & (\d|c|process_0~6_combout\ & \d|c|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|process_0~5_combout\,
	datab => \d|c|process_0~3_combout\,
	datac => \d|c|process_0~6_combout\,
	datad => \d|c|process_0~4_combout\,
	combout => \d|c|process_0~7_combout\);

-- Location: LCFF_X7_Y5_N21
\d|c|countClock[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|c|Add0~124_combout\,
	aclr => \ALT_INV_resetn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(18));

-- Location: LCFF_X7_Y5_N7
\d|c|countClock[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|c|Add0~125_combout\,
	aclr => \ALT_INV_resetn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(19));

-- Location: LCFF_X8_Y6_N21
\d|c|countClock[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|c|Add0~129_combout\,
	aclr => \ALT_INV_resetn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(23));

-- Location: LCCOMB_X8_Y6_N22
\d|c|process_0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|process_0~9_combout\ = (!\d|c|Add0~127_combout\ & (!\d|c|Add0~129_combout\ & (!\d|c|Add0~126_combout\ & !\d|c|Add0~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|Add0~127_combout\,
	datab => \d|c|Add0~129_combout\,
	datac => \d|c|Add0~126_combout\,
	datad => \d|c|Add0~128_combout\,
	combout => \d|c|process_0~9_combout\);

-- Location: LCFF_X8_Y5_N7
\d|c|countClock[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \d|c|Add0~132_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(26));

-- Location: LCFF_X8_Y6_N25
\d|c|countClock[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \d|c|Add0~134_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(28));

-- Location: LCFF_X8_Y6_N15
\d|c|countClock[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \d|c|Add0~135_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(29));

-- Location: LCCOMB_X2_Y11_N10
\g|control|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Equal0~0_combout\ = (\g|control|Add0~6_combout\ & (\g|control|Add0~2_combout\ & (!\g|control|Add0~0_combout\ & \g|control|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|Add0~6_combout\,
	datab => \g|control|Add0~2_combout\,
	datac => \g|control|Add0~0_combout\,
	datad => \g|control|Add0~4_combout\,
	combout => \g|control|Equal0~0_combout\);

-- Location: LCFF_X1_Y12_N11
\g|control|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~10_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(5));

-- Location: LCFF_X1_Y12_N13
\g|control|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~12_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(6));

-- Location: LCCOMB_X2_Y12_N28
\g|control|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Equal0~1_combout\ = (!\g|control|Add0~10_combout\ & (!\g|control|Add0~14_combout\ & (!\g|control|Add0~8_combout\ & !\g|control|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|Add0~10_combout\,
	datab => \g|control|Add0~14_combout\,
	datac => \g|control|Add0~8_combout\,
	datad => \g|control|Add0~12_combout\,
	combout => \g|control|Equal0~1_combout\);

-- Location: LCFF_X1_Y12_N17
\g|control|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~16_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(8));

-- Location: LCFF_X1_Y12_N21
\g|control|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~20_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(10));

-- Location: LCCOMB_X2_Y11_N24
\g|control|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Equal0~2_combout\ = (!\g|control|Add0~18_combout\ & (!\g|control|Add0~16_combout\ & (!\g|control|Add0~20_combout\ & !\g|control|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|Add0~18_combout\,
	datab => \g|control|Add0~16_combout\,
	datac => \g|control|Add0~20_combout\,
	datad => \g|control|Add0~22_combout\,
	combout => \g|control|Equal0~2_combout\);

-- Location: LCFF_X1_Y12_N25
\g|control|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~24_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(12));

-- Location: LCCOMB_X2_Y11_N12
\g|control|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Equal0~3_combout\ = (!\g|control|Add0~28_combout\ & (!\g|control|Add0~26_combout\ & (!\g|control|Add0~24_combout\ & !\g|control|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|Add0~28_combout\,
	datab => \g|control|Add0~26_combout\,
	datac => \g|control|Add0~24_combout\,
	datad => \g|control|Add0~30_combout\,
	combout => \g|control|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y11_N16
\g|control|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Equal0~4_combout\ = (\g|control|Equal0~0_combout\ & (\g|control|Equal0~1_combout\ & (\g|control|Equal0~2_combout\ & \g|control|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|Equal0~0_combout\,
	datab => \g|control|Equal0~1_combout\,
	datac => \g|control|Equal0~2_combout\,
	datad => \g|control|Equal0~3_combout\,
	combout => \g|control|Equal0~4_combout\);

-- Location: LCFF_X1_Y11_N7
\g|control|counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~38_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(19));

-- Location: LCFF_X1_Y11_N11
\g|control|counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~42_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(21));

-- Location: LCFF_X1_Y11_N13
\g|control|counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~44_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(22));

-- Location: LCFF_X1_Y11_N17
\g|control|counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~48_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(24));

-- Location: LCFF_X1_Y11_N21
\g|control|counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~52_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(26));

-- Location: LCFF_X1_Y11_N25
\g|control|counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~56_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(28));

-- Location: LCCOMB_X13_Y10_N30
\g|m|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~3_combout\ = (!\g|m|Add0~28_combout\ & (!\g|m|Add0~24_combout\ & !\g|m|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|Add0~28_combout\,
	datac => \g|m|Add0~24_combout\,
	datad => \g|m|Add0~26_combout\,
	combout => \g|m|Equal0~3_combout\);

-- Location: LCCOMB_X13_Y11_N18
\g|m|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~8_combout\ = (\g|control|state~regout\ & (!\g|m|counter\(11) & (!\g|m|counter\(24)))) # (!\g|control|state~regout\ & (((!\g|m|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(11),
	datab => \g|m|counter\(24),
	datac => \g|m|Add0~22_combout\,
	datad => \g|control|state~regout\,
	combout => \g|m|Equal0~8_combout\);

-- Location: LCCOMB_X15_Y11_N0
\g|m|Equal0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~13_combout\ = (\g|control|state~regout\ & (!\g|m|counter\(19) & (!\g|m|counter\(18)))) # (!\g|control|state~regout\ & (((!\g|m|Add0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(19),
	datab => \g|m|counter\(18),
	datac => \g|m|Add0~36_combout\,
	datad => \g|control|state~regout\,
	combout => \g|m|Equal0~13_combout\);

-- Location: LCCOMB_X13_Y12_N18
\g|m|Equal0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~18_combout\ = (\g|control|state~regout\ & (!\g|m|counter\(5) & (!\g|m|counter\(4)))) # (!\g|control|state~regout\ & (((!\g|m|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(5),
	datab => \g|m|counter\(4),
	datac => \g|m|Add0~10_combout\,
	datad => \g|control|state~regout\,
	combout => \g|m|Equal0~18_combout\);

-- Location: LCCOMB_X15_Y11_N28
\g|m|Equal0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~24_combout\ = (\g|control|state~regout\ & (!\g|m|counter\(31) & (!\g|m|counter\(30)))) # (!\g|control|state~regout\ & (((!\g|m|Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(31),
	datab => \g|m|counter\(30),
	datac => \g|control|state~regout\,
	datad => \g|m|Add0~60_combout\,
	combout => \g|m|Equal0~24_combout\);

-- Location: LCCOMB_X13_Y10_N28
\g|m|counter[29]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[29]~8_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~58_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter[28]~3_combout\,
	datab => \g|m|Add0~58_combout\,
	datac => \resetn~combout\,
	combout => \g|m|counter[29]~8_combout\);

-- Location: LCCOMB_X14_Y10_N16
\g|m|counter[28]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[28]~9_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~56_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter[28]~3_combout\,
	datac => \g|m|Add0~56_combout\,
	datad => \resetn~combout\,
	combout => \g|m|counter[28]~9_combout\);

-- Location: LCCOMB_X13_Y10_N6
\g|m|counter[27]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[27]~10_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~54_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter[28]~3_combout\,
	datac => \g|m|Add0~54_combout\,
	datad => \resetn~combout\,
	combout => \g|m|counter[27]~10_combout\);

-- Location: LCCOMB_X13_Y10_N12
\g|m|counter[26]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[26]~11_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~52_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter[28]~3_combout\,
	datac => \g|m|Add0~52_combout\,
	datad => \resetn~combout\,
	combout => \g|m|counter[26]~11_combout\);

-- Location: LCCOMB_X13_Y11_N14
\g|m|counter[24]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[24]~13_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~48_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|Add0~48_combout\,
	datac => \resetn~combout\,
	datad => \g|m|counter[28]~3_combout\,
	combout => \g|m|counter[24]~13_combout\);

-- Location: LCCOMB_X13_Y11_N12
\g|m|counter[23]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[23]~14_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~46_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetn~combout\,
	datac => \g|m|Add0~46_combout\,
	datad => \g|m|counter[28]~3_combout\,
	combout => \g|m|counter[23]~14_combout\);

-- Location: LCCOMB_X15_Y11_N24
\g|m|counter[19]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[19]~18_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~38_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|Add0~38_combout\,
	datac => \g|m|counter[28]~3_combout\,
	datad => \resetn~combout\,
	combout => \g|m|counter[19]~18_combout\);

-- Location: LCCOMB_X15_Y11_N16
\g|m|counter[18]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[18]~19_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~36_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|Add0~36_combout\,
	datac => \g|m|counter[28]~3_combout\,
	datad => \resetn~combout\,
	combout => \g|m|counter[18]~19_combout\);

-- Location: LCCOMB_X15_Y10_N10
\g|m|counter[17]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[17]~20_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~34_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetn~combout\,
	datac => \g|m|Add0~34_combout\,
	datad => \g|m|counter[28]~3_combout\,
	combout => \g|m|counter[17]~20_combout\);

-- Location: LCCOMB_X15_Y10_N24
\g|m|counter[16]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[16]~21_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~32_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetn~combout\,
	datac => \g|m|Add0~32_combout\,
	datad => \g|m|counter[28]~3_combout\,
	combout => \g|m|counter[16]~21_combout\);

-- Location: LCCOMB_X15_Y10_N26
\g|m|counter[14]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[14]~23_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~28_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetn~combout\,
	datac => \g|m|Add0~28_combout\,
	datad => \g|m|counter[28]~3_combout\,
	combout => \g|m|counter[14]~23_combout\);

-- Location: LCCOMB_X15_Y10_N20
\g|m|counter[13]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[13]~24_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~26_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetn~combout\,
	datac => \g|m|Add0~26_combout\,
	datad => \g|m|counter[28]~3_combout\,
	combout => \g|m|counter[13]~24_combout\);

-- Location: LCCOMB_X15_Y10_N16
\g|m|counter[12]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[12]~25_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~24_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetn~combout\,
	datac => \g|m|Add0~24_combout\,
	datad => \g|m|counter[28]~3_combout\,
	combout => \g|m|counter[12]~25_combout\);

-- Location: LCCOMB_X13_Y11_N28
\g|m|counter[11]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[11]~26_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~22_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetn~combout\,
	datac => \g|m|Add0~22_combout\,
	datad => \g|m|counter[28]~3_combout\,
	combout => \g|m|counter[11]~26_combout\);

-- Location: LCCOMB_X15_Y11_N14
\g|m|counter[30]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[30]~36_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~60_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetn~combout\,
	datac => \g|m|counter[28]~3_combout\,
	datad => \g|m|Add0~60_combout\,
	combout => \g|m|counter[30]~36_combout\);

-- Location: LCCOMB_X10_Y10_N26
\g|m|message[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|message[0]~1_combout\ = (\g|m|counter~2_combout\) # ((!\g|m|counter~1_combout\) # (!\g|m|Equal0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter~2_combout\,
	datac => \g|m|Equal0~26_combout\,
	datad => \g|m|counter~1_combout\,
	combout => \g|m|message[0]~1_combout\);

-- Location: LCCOMB_X10_Y10_N4
\g|h|transmissionBus[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|h|transmissionBus[0]~0_combout\ = (\g|m|Equal0~26_combout\ & ((\g|m|counter~1_combout\ & ((!\g|m|counter~2_combout\) # (!\g|m|counter~0_combout\))) # (!\g|m|counter~1_combout\ & ((\g|m|counter~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter~0_combout\,
	datab => \g|m|counter~1_combout\,
	datac => \g|m|Equal0~26_combout\,
	datad => \g|m|counter~2_combout\,
	combout => \g|h|transmissionBus[0]~0_combout\);

-- Location: LCFF_X12_Y10_N15
\g|t|f2|data~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|t|f2|data~3_combout\,
	aclr => \g|control|ALT_INV_state~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|t|f2|data~_emulated_regout\);

-- Location: LCCOMB_X12_Y10_N14
\g|t|f2|data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f2|data~3_combout\ = \g|t|f2|data~1_combout\ $ (\g|t|f1|data~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g|t|f2|data~1_combout\,
	datad => \g|t|f1|data~2_combout\,
	combout => \g|t|f2|data~3_combout\);

-- Location: LCFF_X12_Y10_N21
\g|t|f1|data~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|t|f1|data~3_combout\,
	aclr => \g|control|ALT_INV_state~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|t|f1|data~_emulated_regout\);

-- Location: LCCOMB_X12_Y10_N10
\g|t|f1|data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f1|data~2_combout\ = (\g|control|state~regout\ & (\g|t|f1|data~_emulated_regout\ $ ((\g|t|f1|data~1_combout\)))) # (!\g|control|state~regout\ & (((\g|m|message[8]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|t|f1|data~_emulated_regout\,
	datab => \g|t|f1|data~1_combout\,
	datac => \g|control|state~regout\,
	datad => \g|m|message[8]~6_combout\,
	combout => \g|t|f1|data~2_combout\);

-- Location: LCCOMB_X12_Y10_N20
\g|t|f1|data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f1|data~3_combout\ = \g|t|f1|data~1_combout\ $ (\g|t|f0|data~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|t|f1|data~1_combout\,
	datad => \g|t|f0|data~2_combout\,
	combout => \g|t|f1|data~3_combout\);

-- Location: LCCOMB_X12_Y10_N28
\g|m|message[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|message[8]~6_combout\ = (\g|m|Equal0~26_combout\ & ((\g|m|counter~1_combout\ & (!\g|m|counter~0_combout\ & !\g|m|counter~2_combout\)) # (!\g|m|counter~1_combout\ & (\g|m|counter~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter~1_combout\,
	datab => \g|m|counter~0_combout\,
	datac => \g|m|counter~2_combout\,
	datad => \g|m|Equal0~26_combout\,
	combout => \g|m|message[8]~6_combout\);

-- Location: LCFF_X12_Y10_N23
\g|t|f0|data~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \g|t|f0|data~1_combout\,
	aclr => \g|control|ALT_INV_state~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|t|f0|data~_emulated_regout\);

-- Location: LCCOMB_X12_Y10_N12
\g|t|f0|data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f0|data~2_combout\ = (\g|control|state~regout\ & (\g|t|f0|data~_emulated_regout\ $ ((\g|t|f0|data~1_combout\)))) # (!\g|control|state~regout\ & (((\g|m|message[9]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|state~regout\,
	datab => \g|t|f0|data~_emulated_regout\,
	datac => \g|t|f0|data~1_combout\,
	datad => \g|m|message[9]~7_combout\,
	combout => \g|t|f0|data~2_combout\);

-- Location: LCCOMB_X12_Y10_N6
\g|m|message[9]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|message[9]~7_combout\ = ((\g|m|counter~0_combout\) # ((!\g|m|Equal0~26_combout\) # (!\g|m|counter~2_combout\))) # (!\g|m|counter~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter~1_combout\,
	datab => \g|m|counter~0_combout\,
	datac => \g|m|counter~2_combout\,
	datad => \g|m|Equal0~26_combout\,
	combout => \g|m|message[9]~7_combout\);

-- Location: LCCOMB_X6_Y6_N22
\d|c|Add0~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~116_combout\ = (\d|c|Add0~70_combout\ & ((!\d|c|process_0~0_combout\) # (!\d|r|f3|data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|r|f3|data~regout\,
	datab => \d|c|process_0~0_combout\,
	datad => \d|c|Add0~70_combout\,
	combout => \d|c|Add0~116_combout\);

-- Location: LCCOMB_X8_Y6_N20
\d|c|Add0~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~118_combout\ = (\d|c|Add0~74_combout\ & ((!\d|c|process_0~0_combout\) # (!\d|r|f3|data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|r|f3|data~regout\,
	datab => \d|c|process_0~0_combout\,
	datad => \d|c|Add0~74_combout\,
	combout => \d|c|Add0~118_combout\);

-- Location: LCCOMB_X6_Y6_N28
\d|c|Add0~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~119_combout\ = (\d|c|Add0~76_combout\ & ((!\d|c|process_0~0_combout\) # (!\d|r|f3|data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|r|f3|data~regout\,
	datac => \d|c|Add0~76_combout\,
	datad => \d|c|process_0~0_combout\,
	combout => \d|c|Add0~119_combout\);

-- Location: LCCOMB_X8_Y6_N30
\d|c|Add0~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~129_combout\ = (\d|c|Add0~96_combout\ & ((!\d|r|f3|data~regout\) # (!\d|c|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d|c|process_0~0_combout\,
	datac => \d|r|f3|data~regout\,
	datad => \d|c|Add0~96_combout\,
	combout => \d|c|Add0~129_combout\);

-- Location: LCCOMB_X8_Y6_N24
\d|c|Add0~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~134_combout\ = (\d|c|Add0~106_combout\ & ((!\d|r|f3|data~regout\) # (!\d|c|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d|c|process_0~0_combout\,
	datac => \d|r|f3|data~regout\,
	datad => \d|c|Add0~106_combout\,
	combout => \d|c|Add0~134_combout\);

-- Location: LCCOMB_X8_Y6_N2
\d|c|headerFound~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|headerFound~2_combout\ = (!\d|c|process_0~13_combout\ & ((\d|c|headerFound~regout\) # ((\d|r|f3|data~regout\ & \d|c|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|r|f3|data~regout\,
	datab => \d|c|process_0~0_combout\,
	datac => \d|c|headerFound~regout\,
	datad => \d|c|process_0~13_combout\,
	combout => \d|c|headerFound~2_combout\);

-- Location: LCCOMB_X13_Y10_N20
\g|m|counter[29]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(29) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter[29]~8_combout\)) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter[29]~8_combout\,
	datac => \g|m|counter\(29),
	datad => \g|m|counter[0]~5clkctrl_outclk\,
	combout => \g|m|counter\(29));

-- Location: LCCOMB_X13_Y11_N30
\g|m|counter[24]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(24) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter[24]~13_combout\))) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(24),
	datac => \g|m|counter[24]~13_combout\,
	datad => \g|m|counter[0]~5clkctrl_outclk\,
	combout => \g|m|counter\(24));

-- Location: LCCOMB_X13_Y11_N20
\g|m|counter[23]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(23) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter[23]~14_combout\))) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(23),
	datac => \g|m|counter[0]~5clkctrl_outclk\,
	datad => \g|m|counter[23]~14_combout\,
	combout => \g|m|counter\(23));

-- Location: LCCOMB_X15_Y11_N22
\g|m|counter[19]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(19) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter[19]~18_combout\))) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(19),
	datac => \g|m|counter[19]~18_combout\,
	datad => \g|m|counter[0]~5clkctrl_outclk\,
	combout => \g|m|counter\(19));

-- Location: LCCOMB_X15_Y11_N2
\g|m|counter[18]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(18) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter[18]~19_combout\))) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(18),
	datac => \g|m|counter[18]~19_combout\,
	datad => \g|m|counter[0]~5clkctrl_outclk\,
	combout => \g|m|counter\(18));

-- Location: LCCOMB_X15_Y10_N6
\g|m|counter[14]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(14) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter[14]~23_combout\))) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(14),
	datac => \g|m|counter[14]~23_combout\,
	datad => \g|m|counter[0]~5clkctrl_outclk\,
	combout => \g|m|counter\(14));

-- Location: LCCOMB_X13_Y11_N0
\g|m|counter[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(11) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter[11]~26_combout\))) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(11),
	datac => \g|m|counter[0]~5clkctrl_outclk\,
	datad => \g|m|counter[11]~26_combout\,
	combout => \g|m|counter\(11));

-- Location: LCCOMB_X15_Y11_N26
\g|m|counter[30]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(30) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter[30]~36_combout\))) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(30),
	datac => \g|m|counter[30]~36_combout\,
	datad => \g|m|counter[0]~5clkctrl_outclk\,
	combout => \g|m|counter\(30));

-- Location: LCCOMB_X12_Y10_N26
\g|t|f1|data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f1|data~1_combout\ = (GLOBAL(\g|control|state~clkctrl_outclk\) & (\g|t|f1|data~1_combout\)) # (!GLOBAL(\g|control|state~clkctrl_outclk\) & ((\g|m|message[8]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|t|f1|data~1_combout\,
	datac => \g|control|state~clkctrl_outclk\,
	datad => \g|m|message[8]~6_combout\,
	combout => \g|t|f1|data~1_combout\);

-- Location: LCCOMB_X12_Y10_N8
\g|t|f0|data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f0|data~1_combout\ = (GLOBAL(\g|control|state~clkctrl_outclk\) & (\g|t|f0|data~1_combout\)) # (!GLOBAL(\g|control|state~clkctrl_outclk\) & ((\g|m|message[9]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|t|f0|data~1_combout\,
	datac => \g|control|state~clkctrl_outclk\,
	datad => \g|m|message[9]~7_combout\,
	combout => \g|t|f0|data~1_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
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
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\resetn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
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
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_resetn,
	combout => \resetn~combout\);

-- Location: LCFF_X1_Y11_N19
\g|control|counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~50_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(25));

-- Location: LCCOMB_X1_Y12_N0
\g|control|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~0_combout\ = \g|control|counter\(0) $ (VCC)
-- \g|control|Add0~1\ = CARRY(\g|control|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|control|counter\(0),
	datad => VCC,
	combout => \g|control|Add0~0_combout\,
	cout => \g|control|Add0~1\);

-- Location: LCFF_X1_Y12_N1
\g|control|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~0_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(0));

-- Location: LCCOMB_X1_Y12_N2
\g|control|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~2_combout\ = (\g|control|counter\(1) & (!\g|control|Add0~1\)) # (!\g|control|counter\(1) & ((\g|control|Add0~1\) # (GND)))
-- \g|control|Add0~3\ = CARRY((!\g|control|Add0~1\) # (!\g|control|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|control|counter\(1),
	datad => VCC,
	cin => \g|control|Add0~1\,
	combout => \g|control|Add0~2_combout\,
	cout => \g|control|Add0~3\);

-- Location: LCCOMB_X2_Y11_N0
\g|control|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|counter~0_combout\ = (\g|control|Add0~2_combout\ & \g|control|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|control|Add0~2_combout\,
	datad => \g|control|Equal0~10_combout\,
	combout => \g|control|counter~0_combout\);

-- Location: LCFF_X2_Y11_N1
\g|control|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|counter~0_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(1));

-- Location: LCCOMB_X1_Y12_N4
\g|control|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~4_combout\ = (\g|control|counter\(2) & (\g|control|Add0~3\ $ (GND))) # (!\g|control|counter\(2) & (!\g|control|Add0~3\ & VCC))
-- \g|control|Add0~5\ = CARRY((\g|control|counter\(2) & !\g|control|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|control|counter\(2),
	datad => VCC,
	cin => \g|control|Add0~3\,
	combout => \g|control|Add0~4_combout\,
	cout => \g|control|Add0~5\);

-- Location: LCCOMB_X2_Y11_N8
\g|control|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|counter~1_combout\ = (\g|control|Add0~4_combout\ & \g|control|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|control|Add0~4_combout\,
	datad => \g|control|Equal0~10_combout\,
	combout => \g|control|counter~1_combout\);

-- Location: LCFF_X2_Y11_N9
\g|control|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|counter~1_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(2));

-- Location: LCCOMB_X1_Y12_N6
\g|control|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~6_combout\ = (\g|control|counter\(3) & (!\g|control|Add0~5\)) # (!\g|control|counter\(3) & ((\g|control|Add0~5\) # (GND)))
-- \g|control|Add0~7\ = CARRY((!\g|control|Add0~5\) # (!\g|control|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|control|counter\(3),
	datad => VCC,
	cin => \g|control|Add0~5\,
	combout => \g|control|Add0~6_combout\,
	cout => \g|control|Add0~7\);

-- Location: LCCOMB_X2_Y11_N2
\g|control|counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|counter~2_combout\ = (\g|control|Add0~6_combout\ & \g|control|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g|control|Add0~6_combout\,
	datad => \g|control|Equal0~10_combout\,
	combout => \g|control|counter~2_combout\);

-- Location: LCFF_X2_Y11_N3
\g|control|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|counter~2_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(3));

-- Location: LCCOMB_X1_Y12_N8
\g|control|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~8_combout\ = (\g|control|counter\(4) & (\g|control|Add0~7\ $ (GND))) # (!\g|control|counter\(4) & (!\g|control|Add0~7\ & VCC))
-- \g|control|Add0~9\ = CARRY((\g|control|counter\(4) & !\g|control|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|control|counter\(4),
	datad => VCC,
	cin => \g|control|Add0~7\,
	combout => \g|control|Add0~8_combout\,
	cout => \g|control|Add0~9\);

-- Location: LCFF_X1_Y12_N9
\g|control|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~8_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(4));

-- Location: LCCOMB_X1_Y12_N14
\g|control|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~14_combout\ = (\g|control|counter\(7) & (!\g|control|Add0~13\)) # (!\g|control|counter\(7) & ((\g|control|Add0~13\) # (GND)))
-- \g|control|Add0~15\ = CARRY((!\g|control|Add0~13\) # (!\g|control|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|control|counter\(7),
	datad => VCC,
	cin => \g|control|Add0~13\,
	combout => \g|control|Add0~14_combout\,
	cout => \g|control|Add0~15\);

-- Location: LCFF_X1_Y12_N15
\g|control|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~14_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(7));

-- Location: LCCOMB_X1_Y12_N18
\g|control|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~18_combout\ = (\g|control|counter\(9) & (!\g|control|Add0~17\)) # (!\g|control|counter\(9) & ((\g|control|Add0~17\) # (GND)))
-- \g|control|Add0~19\ = CARRY((!\g|control|Add0~17\) # (!\g|control|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|control|counter\(9),
	datad => VCC,
	cin => \g|control|Add0~17\,
	combout => \g|control|Add0~18_combout\,
	cout => \g|control|Add0~19\);

-- Location: LCFF_X1_Y12_N19
\g|control|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~18_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(9));

-- Location: LCCOMB_X1_Y12_N22
\g|control|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~22_combout\ = (\g|control|counter\(11) & (!\g|control|Add0~21\)) # (!\g|control|counter\(11) & ((\g|control|Add0~21\) # (GND)))
-- \g|control|Add0~23\ = CARRY((!\g|control|Add0~21\) # (!\g|control|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|control|counter\(11),
	datad => VCC,
	cin => \g|control|Add0~21\,
	combout => \g|control|Add0~22_combout\,
	cout => \g|control|Add0~23\);

-- Location: LCFF_X1_Y12_N23
\g|control|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~22_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(11));

-- Location: LCCOMB_X1_Y12_N26
\g|control|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~26_combout\ = (\g|control|counter\(13) & (!\g|control|Add0~25\)) # (!\g|control|counter\(13) & ((\g|control|Add0~25\) # (GND)))
-- \g|control|Add0~27\ = CARRY((!\g|control|Add0~25\) # (!\g|control|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|control|counter\(13),
	datad => VCC,
	cin => \g|control|Add0~25\,
	combout => \g|control|Add0~26_combout\,
	cout => \g|control|Add0~27\);

-- Location: LCFF_X1_Y12_N27
\g|control|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~26_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(13));

-- Location: LCCOMB_X1_Y12_N28
\g|control|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~28_combout\ = (\g|control|counter\(14) & (\g|control|Add0~27\ $ (GND))) # (!\g|control|counter\(14) & (!\g|control|Add0~27\ & VCC))
-- \g|control|Add0~29\ = CARRY((\g|control|counter\(14) & !\g|control|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|control|counter\(14),
	datad => VCC,
	cin => \g|control|Add0~27\,
	combout => \g|control|Add0~28_combout\,
	cout => \g|control|Add0~29\);

-- Location: LCFF_X1_Y12_N29
\g|control|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~28_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(14));

-- Location: LCCOMB_X1_Y12_N30
\g|control|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~30_combout\ = (\g|control|counter\(15) & (!\g|control|Add0~29\)) # (!\g|control|counter\(15) & ((\g|control|Add0~29\) # (GND)))
-- \g|control|Add0~31\ = CARRY((!\g|control|Add0~29\) # (!\g|control|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|control|counter\(15),
	datad => VCC,
	cin => \g|control|Add0~29\,
	combout => \g|control|Add0~30_combout\,
	cout => \g|control|Add0~31\);

-- Location: LCFF_X1_Y12_N31
\g|control|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~30_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(15));

-- Location: LCCOMB_X1_Y11_N0
\g|control|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~32_combout\ = (\g|control|counter\(16) & (\g|control|Add0~31\ $ (GND))) # (!\g|control|counter\(16) & (!\g|control|Add0~31\ & VCC))
-- \g|control|Add0~33\ = CARRY((\g|control|counter\(16) & !\g|control|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|control|counter\(16),
	datad => VCC,
	cin => \g|control|Add0~31\,
	combout => \g|control|Add0~32_combout\,
	cout => \g|control|Add0~33\);

-- Location: LCFF_X1_Y11_N1
\g|control|counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~32_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(16));

-- Location: LCCOMB_X1_Y11_N2
\g|control|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~34_combout\ = (\g|control|counter\(17) & (!\g|control|Add0~33\)) # (!\g|control|counter\(17) & ((\g|control|Add0~33\) # (GND)))
-- \g|control|Add0~35\ = CARRY((!\g|control|Add0~33\) # (!\g|control|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|control|counter\(17),
	datad => VCC,
	cin => \g|control|Add0~33\,
	combout => \g|control|Add0~34_combout\,
	cout => \g|control|Add0~35\);

-- Location: LCFF_X1_Y11_N3
\g|control|counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~34_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(17));

-- Location: LCCOMB_X1_Y11_N4
\g|control|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~36_combout\ = (\g|control|counter\(18) & (\g|control|Add0~35\ $ (GND))) # (!\g|control|counter\(18) & (!\g|control|Add0~35\ & VCC))
-- \g|control|Add0~37\ = CARRY((\g|control|counter\(18) & !\g|control|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|control|counter\(18),
	datad => VCC,
	cin => \g|control|Add0~35\,
	combout => \g|control|Add0~36_combout\,
	cout => \g|control|Add0~37\);

-- Location: LCFF_X1_Y11_N5
\g|control|counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~36_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(18));

-- Location: LCCOMB_X1_Y11_N6
\g|control|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~38_combout\ = (\g|control|counter\(19) & (!\g|control|Add0~37\)) # (!\g|control|counter\(19) & ((\g|control|Add0~37\) # (GND)))
-- \g|control|Add0~39\ = CARRY((!\g|control|Add0~37\) # (!\g|control|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|counter\(19),
	datad => VCC,
	cin => \g|control|Add0~37\,
	combout => \g|control|Add0~38_combout\,
	cout => \g|control|Add0~39\);

-- Location: LCCOMB_X1_Y11_N8
\g|control|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~40_combout\ = (\g|control|counter\(20) & (\g|control|Add0~39\ $ (GND))) # (!\g|control|counter\(20) & (!\g|control|Add0~39\ & VCC))
-- \g|control|Add0~41\ = CARRY((\g|control|counter\(20) & !\g|control|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|control|counter\(20),
	datad => VCC,
	cin => \g|control|Add0~39\,
	combout => \g|control|Add0~40_combout\,
	cout => \g|control|Add0~41\);

-- Location: LCFF_X1_Y11_N9
\g|control|counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~40_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(20));

-- Location: LCCOMB_X1_Y11_N10
\g|control|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~42_combout\ = (\g|control|counter\(21) & (!\g|control|Add0~41\)) # (!\g|control|counter\(21) & ((\g|control|Add0~41\) # (GND)))
-- \g|control|Add0~43\ = CARRY((!\g|control|Add0~41\) # (!\g|control|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|counter\(21),
	datad => VCC,
	cin => \g|control|Add0~41\,
	combout => \g|control|Add0~42_combout\,
	cout => \g|control|Add0~43\);

-- Location: LCCOMB_X1_Y11_N14
\g|control|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~46_combout\ = (\g|control|counter\(23) & (!\g|control|Add0~45\)) # (!\g|control|counter\(23) & ((\g|control|Add0~45\) # (GND)))
-- \g|control|Add0~47\ = CARRY((!\g|control|Add0~45\) # (!\g|control|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|control|counter\(23),
	datad => VCC,
	cin => \g|control|Add0~45\,
	combout => \g|control|Add0~46_combout\,
	cout => \g|control|Add0~47\);

-- Location: LCFF_X1_Y11_N15
\g|control|counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~46_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(23));

-- Location: LCCOMB_X1_Y11_N18
\g|control|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~50_combout\ = (\g|control|counter\(25) & (!\g|control|Add0~49\)) # (!\g|control|counter\(25) & ((\g|control|Add0~49\) # (GND)))
-- \g|control|Add0~51\ = CARRY((!\g|control|Add0~49\) # (!\g|control|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|control|counter\(25),
	datad => VCC,
	cin => \g|control|Add0~49\,
	combout => \g|control|Add0~50_combout\,
	cout => \g|control|Add0~51\);

-- Location: LCCOMB_X1_Y11_N20
\g|control|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~52_combout\ = (\g|control|counter\(26) & (\g|control|Add0~51\ $ (GND))) # (!\g|control|counter\(26) & (!\g|control|Add0~51\ & VCC))
-- \g|control|Add0~53\ = CARRY((\g|control|counter\(26) & !\g|control|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|counter\(26),
	datad => VCC,
	cin => \g|control|Add0~51\,
	combout => \g|control|Add0~52_combout\,
	cout => \g|control|Add0~53\);

-- Location: LCFF_X1_Y11_N23
\g|control|counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~54_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(27));

-- Location: LCCOMB_X1_Y11_N22
\g|control|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~54_combout\ = (\g|control|counter\(27) & (!\g|control|Add0~53\)) # (!\g|control|counter\(27) & ((\g|control|Add0~53\) # (GND)))
-- \g|control|Add0~55\ = CARRY((!\g|control|Add0~53\) # (!\g|control|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|control|counter\(27),
	datad => VCC,
	cin => \g|control|Add0~53\,
	combout => \g|control|Add0~54_combout\,
	cout => \g|control|Add0~55\);

-- Location: LCCOMB_X2_Y11_N22
\g|control|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Equal0~8_combout\ = (!\g|control|Add0~48_combout\ & (!\g|control|Add0~50_combout\ & (!\g|control|Add0~52_combout\ & !\g|control|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|Add0~48_combout\,
	datab => \g|control|Add0~50_combout\,
	datac => \g|control|Add0~52_combout\,
	datad => \g|control|Add0~54_combout\,
	combout => \g|control|Equal0~8_combout\);

-- Location: LCCOMB_X2_Y11_N28
\g|control|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Equal0~6_combout\ = (!\g|control|Add0~40_combout\ & !\g|control|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|Add0~40_combout\,
	datad => \g|control|Add0~42_combout\,
	combout => \g|control|Equal0~6_combout\);

-- Location: LCCOMB_X2_Y11_N14
\g|control|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Equal0~5_combout\ = (!\g|control|Add0~32_combout\ & (!\g|control|Add0~36_combout\ & (!\g|control|Add0~38_combout\ & !\g|control|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|Add0~32_combout\,
	datab => \g|control|Add0~36_combout\,
	datac => \g|control|Add0~38_combout\,
	datad => \g|control|Add0~34_combout\,
	combout => \g|control|Equal0~5_combout\);

-- Location: LCCOMB_X2_Y11_N20
\g|control|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Equal0~7_combout\ = (!\g|control|Add0~44_combout\ & (\g|control|Equal0~6_combout\ & (\g|control|Equal0~5_combout\ & !\g|control|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|Add0~44_combout\,
	datab => \g|control|Equal0~6_combout\,
	datac => \g|control|Equal0~5_combout\,
	datad => \g|control|Add0~46_combout\,
	combout => \g|control|Equal0~7_combout\);

-- Location: LCCOMB_X1_Y11_N24
\g|control|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~56_combout\ = (\g|control|counter\(28) & (\g|control|Add0~55\ $ (GND))) # (!\g|control|counter\(28) & (!\g|control|Add0~55\ & VCC))
-- \g|control|Add0~57\ = CARRY((\g|control|counter\(28) & !\g|control|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|counter\(28),
	datad => VCC,
	cin => \g|control|Add0~55\,
	combout => \g|control|Add0~56_combout\,
	cout => \g|control|Add0~57\);

-- Location: LCFF_X1_Y11_N31
\g|control|counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~62_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(31));

-- Location: LCCOMB_X1_Y11_N26
\g|control|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~58_combout\ = (\g|control|counter\(29) & (!\g|control|Add0~57\)) # (!\g|control|counter\(29) & ((\g|control|Add0~57\) # (GND)))
-- \g|control|Add0~59\ = CARRY((!\g|control|Add0~57\) # (!\g|control|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|control|counter\(29),
	datad => VCC,
	cin => \g|control|Add0~57\,
	combout => \g|control|Add0~58_combout\,
	cout => \g|control|Add0~59\);

-- Location: LCFF_X1_Y11_N27
\g|control|counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~58_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(29));

-- Location: LCCOMB_X1_Y11_N28
\g|control|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~60_combout\ = (\g|control|counter\(30) & (\g|control|Add0~59\ $ (GND))) # (!\g|control|counter\(30) & (!\g|control|Add0~59\ & VCC))
-- \g|control|Add0~61\ = CARRY((\g|control|counter\(30) & !\g|control|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|control|counter\(30),
	datad => VCC,
	cin => \g|control|Add0~59\,
	combout => \g|control|Add0~60_combout\,
	cout => \g|control|Add0~61\);

-- Location: LCFF_X1_Y11_N29
\g|control|counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|Add0~60_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|counter\(30));

-- Location: LCCOMB_X1_Y11_N30
\g|control|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Add0~62_combout\ = \g|control|Add0~61\ $ (\g|control|counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \g|control|counter\(31),
	cin => \g|control|Add0~61\,
	combout => \g|control|Add0~62_combout\);

-- Location: LCCOMB_X2_Y11_N18
\g|control|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Equal0~9_combout\ = (!\g|control|Add0~58_combout\ & (!\g|control|Add0~56_combout\ & (!\g|control|Add0~62_combout\ & !\g|control|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|Add0~58_combout\,
	datab => \g|control|Add0~56_combout\,
	datac => \g|control|Add0~62_combout\,
	datad => \g|control|Add0~60_combout\,
	combout => \g|control|Equal0~9_combout\);

-- Location: LCCOMB_X2_Y11_N26
\g|control|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|Equal0~10_combout\ = (((!\g|control|Equal0~9_combout\) # (!\g|control|Equal0~7_combout\)) # (!\g|control|Equal0~8_combout\)) # (!\g|control|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|Equal0~4_combout\,
	datab => \g|control|Equal0~8_combout\,
	datac => \g|control|Equal0~7_combout\,
	datad => \g|control|Equal0~9_combout\,
	combout => \g|control|Equal0~10_combout\);

-- Location: LCCOMB_X2_Y11_N6
\g|control|state~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|control|state~feeder_combout\ = \g|control|Equal0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \g|control|Equal0~10_combout\,
	combout => \g|control|state~feeder_combout\);

-- Location: LCFF_X2_Y11_N7
\g|control|state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|control|state~feeder_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|control|state~regout\);

-- Location: CLKCTRL_G1
\g|control|state~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \g|control|state~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \g|control|state~clkctrl_outclk\);

-- Location: LCCOMB_X15_Y12_N20
\g|m|counter[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[2]~7_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~4_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|Add0~4_combout\,
	datac => \resetn~combout\,
	datad => \g|m|counter[28]~3_combout\,
	combout => \g|m|counter[2]~7_combout\);

-- Location: LCCOMB_X15_Y12_N28
\g|m|counter[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(2) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter[2]~7_combout\))) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(2),
	datac => \g|m|counter[2]~7_combout\,
	datad => \g|m|counter[0]~5clkctrl_outclk\,
	combout => \g|m|counter\(2));

-- Location: LCCOMB_X15_Y12_N2
\g|m|counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter~2_combout\ = ((\g|control|state~regout\ & ((\g|m|counter\(2)))) # (!\g|control|state~regout\ & (\g|m|Add0~4_combout\))) # (!\resetn~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|Add0~4_combout\,
	datab => \g|m|counter\(2),
	datac => \g|control|state~regout\,
	datad => \resetn~combout\,
	combout => \g|m|counter~2_combout\);

-- Location: LCCOMB_X13_Y10_N16
\g|m|counter[27]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(27) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter[27]~10_combout\)) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter[27]~10_combout\,
	datac => \g|m|counter\(27),
	datad => \g|m|counter[0]~5clkctrl_outclk\,
	combout => \g|m|counter\(27));

-- Location: LCCOMB_X15_Y10_N4
\g|m|counter[17]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(17) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter[17]~20_combout\)) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter[17]~20_combout\,
	datac => \g|m|counter\(17),
	datad => \g|m|counter[0]~5clkctrl_outclk\,
	combout => \g|m|counter\(17));

-- Location: LCCOMB_X15_Y10_N0
\g|m|counter[16]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(16) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter[16]~21_combout\)) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter[16]~21_combout\,
	datab => \g|m|counter\(16),
	datad => \g|m|counter[0]~5clkctrl_outclk\,
	combout => \g|m|counter\(16));

-- Location: LCCOMB_X15_Y10_N14
\g|m|counter[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(12) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter[12]~25_combout\)) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter[12]~25_combout\,
	datac => \g|m|counter\(12),
	datad => \g|m|counter[0]~5clkctrl_outclk\,
	combout => \g|m|counter\(12));

-- Location: LCCOMB_X15_Y12_N4
\g|m|counter[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[7]~30_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~14_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|Add0~14_combout\,
	datac => \resetn~combout\,
	datad => \g|m|counter[28]~3_combout\,
	combout => \g|m|counter[7]~30_combout\);

-- Location: LCCOMB_X15_Y12_N14
\g|m|counter[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(7) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter[7]~30_combout\))) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(7),
	datac => \g|m|counter[7]~30_combout\,
	datad => \g|m|counter[0]~5clkctrl_outclk\,
	combout => \g|m|counter\(7));

-- Location: LCCOMB_X14_Y12_N0
\g|m|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~0_combout\ = \g|m|counter\(0) $ (VCC)
-- \g|m|Add0~1\ = CARRY(\g|m|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(0),
	datad => VCC,
	combout => \g|m|Add0~0_combout\,
	cout => \g|m|Add0~1\);

-- Location: LCCOMB_X10_Y10_N14
\g|m|counter[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[0]~4_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~0_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~combout\,
	datab => \g|m|Add0~0_combout\,
	datac => \g|m|counter[28]~3_combout\,
	combout => \g|m|counter[0]~4_combout\);

-- Location: LCCOMB_X10_Y10_N2
\g|m|counter[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(0) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter[0]~4_combout\))) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(0),
	datac => \g|m|counter[0]~4_combout\,
	datad => \g|m|counter[0]~5clkctrl_outclk\,
	combout => \g|m|counter\(0));

-- Location: LCCOMB_X14_Y12_N2
\g|m|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~2_combout\ = (\g|m|counter\(1) & (!\g|m|Add0~1\)) # (!\g|m|counter\(1) & ((\g|m|Add0~1\) # (GND)))
-- \g|m|Add0~3\ = CARRY((!\g|m|Add0~1\) # (!\g|m|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(1),
	datad => VCC,
	cin => \g|m|Add0~1\,
	combout => \g|m|Add0~2_combout\,
	cout => \g|m|Add0~3\);

-- Location: LCCOMB_X14_Y12_N6
\g|m|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~6_combout\ = (\g|m|counter\(3) & (!\g|m|Add0~5\)) # (!\g|m|counter\(3) & ((\g|m|Add0~5\) # (GND)))
-- \g|m|Add0~7\ = CARRY((!\g|m|Add0~5\) # (!\g|m|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(3),
	datad => VCC,
	cin => \g|m|Add0~5\,
	combout => \g|m|Add0~6_combout\,
	cout => \g|m|Add0~7\);

-- Location: LCCOMB_X13_Y10_N22
\g|m|counter[3]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[3]~34_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~6_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter[28]~3_combout\,
	datac => \resetn~combout\,
	datad => \g|m|Add0~6_combout\,
	combout => \g|m|counter[3]~34_combout\);

-- Location: LCCOMB_X13_Y10_N8
\g|m|counter[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(3) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter[3]~34_combout\)) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter[3]~34_combout\,
	datac => \g|m|counter\(3),
	datad => \g|m|counter[0]~5clkctrl_outclk\,
	combout => \g|m|counter\(3));

-- Location: LCCOMB_X14_Y12_N8
\g|m|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~8_combout\ = (\g|m|counter\(4) & (\g|m|Add0~7\ $ (GND))) # (!\g|m|counter\(4) & (!\g|m|Add0~7\ & VCC))
-- \g|m|Add0~9\ = CARRY((\g|m|counter\(4) & !\g|m|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(4),
	datad => VCC,
	cin => \g|m|Add0~7\,
	combout => \g|m|Add0~8_combout\,
	cout => \g|m|Add0~9\);

-- Location: LCCOMB_X13_Y10_N18
\g|m|counter[4]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[4]~33_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~8_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter[28]~3_combout\,
	datab => \g|m|Add0~8_combout\,
	datac => \resetn~combout\,
	combout => \g|m|counter[4]~33_combout\);

-- Location: LCCOMB_X13_Y10_N26
\g|m|counter[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(4) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter[4]~33_combout\)) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter[4]~33_combout\,
	datac => \g|m|counter[0]~5clkctrl_outclk\,
	datad => \g|m|counter\(4),
	combout => \g|m|counter\(4));

-- Location: LCCOMB_X14_Y12_N10
\g|m|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~10_combout\ = (\g|m|counter\(5) & (!\g|m|Add0~9\)) # (!\g|m|counter\(5) & ((\g|m|Add0~9\) # (GND)))
-- \g|m|Add0~11\ = CARRY((!\g|m|Add0~9\) # (!\g|m|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(5),
	datad => VCC,
	cin => \g|m|Add0~9\,
	combout => \g|m|Add0~10_combout\,
	cout => \g|m|Add0~11\);

-- Location: LCCOMB_X13_Y12_N30
\g|m|counter[5]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[5]~32_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~10_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~combout\,
	datac => \g|m|Add0~10_combout\,
	datad => \g|m|counter[28]~3_combout\,
	combout => \g|m|counter[5]~32_combout\);

-- Location: LCCOMB_X13_Y12_N24
\g|m|counter[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(5) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter[5]~32_combout\))) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(5),
	datac => \g|m|counter[0]~5clkctrl_outclk\,
	datad => \g|m|counter[5]~32_combout\,
	combout => \g|m|counter\(5));

-- Location: LCCOMB_X14_Y12_N12
\g|m|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~12_combout\ = (\g|m|counter\(6) & (\g|m|Add0~11\ $ (GND))) # (!\g|m|counter\(6) & (!\g|m|Add0~11\ & VCC))
-- \g|m|Add0~13\ = CARRY((\g|m|counter\(6) & !\g|m|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(6),
	datad => VCC,
	cin => \g|m|Add0~11\,
	combout => \g|m|Add0~12_combout\,
	cout => \g|m|Add0~13\);

-- Location: LCCOMB_X15_Y12_N16
\g|m|counter[6]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[6]~31_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~12_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|Add0~12_combout\,
	datac => \resetn~combout\,
	datad => \g|m|counter[28]~3_combout\,
	combout => \g|m|counter[6]~31_combout\);

-- Location: LCCOMB_X15_Y12_N18
\g|m|counter[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(6) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter[6]~31_combout\))) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(6),
	datac => \g|m|counter[6]~31_combout\,
	datad => \g|m|counter[0]~5clkctrl_outclk\,
	combout => \g|m|counter\(6));

-- Location: LCCOMB_X14_Y12_N14
\g|m|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~14_combout\ = (\g|m|counter\(7) & (!\g|m|Add0~13\)) # (!\g|m|counter\(7) & ((\g|m|Add0~13\) # (GND)))
-- \g|m|Add0~15\ = CARRY((!\g|m|Add0~13\) # (!\g|m|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(7),
	datad => VCC,
	cin => \g|m|Add0~13\,
	combout => \g|m|Add0~14_combout\,
	cout => \g|m|Add0~15\);

-- Location: LCCOMB_X14_Y12_N16
\g|m|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~16_combout\ = (\g|m|counter\(8) & (\g|m|Add0~15\ $ (GND))) # (!\g|m|counter\(8) & (!\g|m|Add0~15\ & VCC))
-- \g|m|Add0~17\ = CARRY((\g|m|counter\(8) & !\g|m|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(8),
	datad => VCC,
	cin => \g|m|Add0~15\,
	combout => \g|m|Add0~16_combout\,
	cout => \g|m|Add0~17\);

-- Location: LCCOMB_X15_Y12_N24
\g|m|counter[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[8]~29_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~16_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|Add0~16_combout\,
	datac => \resetn~combout\,
	datad => \g|m|counter[28]~3_combout\,
	combout => \g|m|counter[8]~29_combout\);

-- Location: LCCOMB_X15_Y12_N30
\g|m|counter[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(8) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter[8]~29_combout\))) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(8),
	datac => \g|m|counter[8]~29_combout\,
	datad => \g|m|counter[0]~5clkctrl_outclk\,
	combout => \g|m|counter\(8));

-- Location: LCCOMB_X14_Y12_N18
\g|m|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~18_combout\ = (\g|m|counter\(9) & (!\g|m|Add0~17\)) # (!\g|m|counter\(9) & ((\g|m|Add0~17\) # (GND)))
-- \g|m|Add0~19\ = CARRY((!\g|m|Add0~17\) # (!\g|m|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(9),
	datad => VCC,
	cin => \g|m|Add0~17\,
	combout => \g|m|Add0~18_combout\,
	cout => \g|m|Add0~19\);

-- Location: LCCOMB_X13_Y12_N10
\g|m|counter[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[9]~28_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~18_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~combout\,
	datab => \g|m|Add0~18_combout\,
	datad => \g|m|counter[28]~3_combout\,
	combout => \g|m|counter[9]~28_combout\);

-- Location: LCCOMB_X13_Y12_N6
\g|m|counter[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(9) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter[9]~28_combout\))) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(9),
	datac => \g|m|counter[0]~5clkctrl_outclk\,
	datad => \g|m|counter[9]~28_combout\,
	combout => \g|m|counter\(9));

-- Location: LCCOMB_X14_Y12_N20
\g|m|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~20_combout\ = (\g|m|counter\(10) & (\g|m|Add0~19\ $ (GND))) # (!\g|m|counter\(10) & (!\g|m|Add0~19\ & VCC))
-- \g|m|Add0~21\ = CARRY((\g|m|counter\(10) & !\g|m|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(10),
	datad => VCC,
	cin => \g|m|Add0~19\,
	combout => \g|m|Add0~20_combout\,
	cout => \g|m|Add0~21\);

-- Location: LCCOMB_X14_Y12_N30
\g|m|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~30_combout\ = (\g|m|counter\(15) & (!\g|m|Add0~29\)) # (!\g|m|counter\(15) & ((\g|m|Add0~29\) # (GND)))
-- \g|m|Add0~31\ = CARRY((!\g|m|Add0~29\) # (!\g|m|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(15),
	datad => VCC,
	cin => \g|m|Add0~29\,
	combout => \g|m|Add0~30_combout\,
	cout => \g|m|Add0~31\);

-- Location: LCCOMB_X15_Y10_N30
\g|m|counter[15]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[15]~22_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~30_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetn~combout\,
	datac => \g|m|Add0~30_combout\,
	datad => \g|m|counter[28]~3_combout\,
	combout => \g|m|counter[15]~22_combout\);

-- Location: LCCOMB_X15_Y10_N12
\g|m|counter[15]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(15) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter[15]~22_combout\))) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(15),
	datac => \g|m|counter[15]~22_combout\,
	datad => \g|m|counter[0]~5clkctrl_outclk\,
	combout => \g|m|counter\(15));

-- Location: LCCOMB_X14_Y11_N0
\g|m|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~32_combout\ = (\g|m|counter\(16) & (\g|m|Add0~31\ $ (GND))) # (!\g|m|counter\(16) & (!\g|m|Add0~31\ & VCC))
-- \g|m|Add0~33\ = CARRY((\g|m|counter\(16) & !\g|m|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(16),
	datad => VCC,
	cin => \g|m|Add0~31\,
	combout => \g|m|Add0~32_combout\,
	cout => \g|m|Add0~33\);

-- Location: LCCOMB_X14_Y11_N2
\g|m|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~34_combout\ = (\g|m|counter\(17) & (!\g|m|Add0~33\)) # (!\g|m|counter\(17) & ((\g|m|Add0~33\) # (GND)))
-- \g|m|Add0~35\ = CARRY((!\g|m|Add0~33\) # (!\g|m|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(17),
	datad => VCC,
	cin => \g|m|Add0~33\,
	combout => \g|m|Add0~34_combout\,
	cout => \g|m|Add0~35\);

-- Location: LCCOMB_X14_Y11_N6
\g|m|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~38_combout\ = (\g|m|counter\(19) & (!\g|m|Add0~37\)) # (!\g|m|counter\(19) & ((\g|m|Add0~37\) # (GND)))
-- \g|m|Add0~39\ = CARRY((!\g|m|Add0~37\) # (!\g|m|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(19),
	datad => VCC,
	cin => \g|m|Add0~37\,
	combout => \g|m|Add0~38_combout\,
	cout => \g|m|Add0~39\);

-- Location: LCCOMB_X14_Y11_N8
\g|m|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~40_combout\ = (\g|m|counter\(20) & (\g|m|Add0~39\ $ (GND))) # (!\g|m|counter\(20) & (!\g|m|Add0~39\ & VCC))
-- \g|m|Add0~41\ = CARRY((\g|m|counter\(20) & !\g|m|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(20),
	datad => VCC,
	cin => \g|m|Add0~39\,
	combout => \g|m|Add0~40_combout\,
	cout => \g|m|Add0~41\);

-- Location: LCCOMB_X15_Y11_N20
\g|m|counter[20]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[20]~17_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~40_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetn~combout\,
	datac => \g|m|counter[28]~3_combout\,
	datad => \g|m|Add0~40_combout\,
	combout => \g|m|counter[20]~17_combout\);

-- Location: LCCOMB_X15_Y11_N30
\g|m|counter[20]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(20) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter[20]~17_combout\))) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(20),
	datac => \g|m|counter[20]~17_combout\,
	datad => \g|m|counter[0]~5clkctrl_outclk\,
	combout => \g|m|counter\(20));

-- Location: LCCOMB_X14_Y11_N10
\g|m|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~42_combout\ = (\g|m|counter\(21) & (!\g|m|Add0~41\)) # (!\g|m|counter\(21) & ((\g|m|Add0~41\) # (GND)))
-- \g|m|Add0~43\ = CARRY((!\g|m|Add0~41\) # (!\g|m|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(21),
	datad => VCC,
	cin => \g|m|Add0~41\,
	combout => \g|m|Add0~42_combout\,
	cout => \g|m|Add0~43\);

-- Location: LCCOMB_X13_Y11_N8
\g|m|counter[21]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[21]~16_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~42_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetn~combout\,
	datac => \g|m|Add0~42_combout\,
	datad => \g|m|counter[28]~3_combout\,
	combout => \g|m|counter[21]~16_combout\);

-- Location: LCCOMB_X13_Y11_N4
\g|m|counter[21]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(21) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter[21]~16_combout\))) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(21),
	datac => \g|m|counter[21]~16_combout\,
	datad => \g|m|counter[0]~5clkctrl_outclk\,
	combout => \g|m|counter\(21));

-- Location: LCCOMB_X14_Y11_N12
\g|m|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~44_combout\ = (\g|m|counter\(22) & (\g|m|Add0~43\ $ (GND))) # (!\g|m|counter\(22) & (!\g|m|Add0~43\ & VCC))
-- \g|m|Add0~45\ = CARRY((\g|m|counter\(22) & !\g|m|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(22),
	datad => VCC,
	cin => \g|m|Add0~43\,
	combout => \g|m|Add0~44_combout\,
	cout => \g|m|Add0~45\);

-- Location: LCCOMB_X13_Y11_N22
\g|m|counter[22]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[22]~15_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~44_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|Add0~44_combout\,
	datac => \resetn~combout\,
	datad => \g|m|counter[28]~3_combout\,
	combout => \g|m|counter[22]~15_combout\);

-- Location: LCCOMB_X13_Y11_N6
\g|m|counter[22]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(22) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter[22]~15_combout\))) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(22),
	datac => \g|m|counter[0]~5clkctrl_outclk\,
	datad => \g|m|counter[22]~15_combout\,
	combout => \g|m|counter\(22));

-- Location: LCCOMB_X14_Y11_N14
\g|m|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~46_combout\ = (\g|m|counter\(23) & (!\g|m|Add0~45\)) # (!\g|m|counter\(23) & ((\g|m|Add0~45\) # (GND)))
-- \g|m|Add0~47\ = CARRY((!\g|m|Add0~45\) # (!\g|m|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(23),
	datad => VCC,
	cin => \g|m|Add0~45\,
	combout => \g|m|Add0~46_combout\,
	cout => \g|m|Add0~47\);

-- Location: LCCOMB_X14_Y11_N16
\g|m|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~48_combout\ = (\g|m|counter\(24) & (\g|m|Add0~47\ $ (GND))) # (!\g|m|counter\(24) & (!\g|m|Add0~47\ & VCC))
-- \g|m|Add0~49\ = CARRY((\g|m|counter\(24) & !\g|m|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(24),
	datad => VCC,
	cin => \g|m|Add0~47\,
	combout => \g|m|Add0~48_combout\,
	cout => \g|m|Add0~49\);

-- Location: LCCOMB_X14_Y11_N18
\g|m|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~50_combout\ = (\g|m|counter\(25) & (!\g|m|Add0~49\)) # (!\g|m|counter\(25) & ((\g|m|Add0~49\) # (GND)))
-- \g|m|Add0~51\ = CARRY((!\g|m|Add0~49\) # (!\g|m|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(25),
	datad => VCC,
	cin => \g|m|Add0~49\,
	combout => \g|m|Add0~50_combout\,
	cout => \g|m|Add0~51\);

-- Location: LCCOMB_X13_Y11_N26
\g|m|counter[25]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[25]~12_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~50_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|Add0~50_combout\,
	datac => \resetn~combout\,
	datad => \g|m|counter[28]~3_combout\,
	combout => \g|m|counter[25]~12_combout\);

-- Location: LCCOMB_X13_Y11_N24
\g|m|counter[25]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(25) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter[25]~12_combout\))) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(25),
	datac => \g|m|counter[0]~5clkctrl_outclk\,
	datad => \g|m|counter[25]~12_combout\,
	combout => \g|m|counter\(25));

-- Location: LCCOMB_X14_Y11_N20
\g|m|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~52_combout\ = (\g|m|counter\(26) & (\g|m|Add0~51\ $ (GND))) # (!\g|m|counter\(26) & (!\g|m|Add0~51\ & VCC))
-- \g|m|Add0~53\ = CARRY((\g|m|counter\(26) & !\g|m|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(26),
	datad => VCC,
	cin => \g|m|Add0~51\,
	combout => \g|m|Add0~52_combout\,
	cout => \g|m|Add0~53\);

-- Location: LCCOMB_X14_Y11_N22
\g|m|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~54_combout\ = (\g|m|counter\(27) & (!\g|m|Add0~53\)) # (!\g|m|counter\(27) & ((\g|m|Add0~53\) # (GND)))
-- \g|m|Add0~55\ = CARRY((!\g|m|Add0~53\) # (!\g|m|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(27),
	datad => VCC,
	cin => \g|m|Add0~53\,
	combout => \g|m|Add0~54_combout\,
	cout => \g|m|Add0~55\);

-- Location: LCCOMB_X14_Y11_N24
\g|m|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~56_combout\ = (\g|m|counter\(28) & (\g|m|Add0~55\ $ (GND))) # (!\g|m|counter\(28) & (!\g|m|Add0~55\ & VCC))
-- \g|m|Add0~57\ = CARRY((\g|m|counter\(28) & !\g|m|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(28),
	datad => VCC,
	cin => \g|m|Add0~55\,
	combout => \g|m|Add0~56_combout\,
	cout => \g|m|Add0~57\);

-- Location: LCCOMB_X14_Y11_N26
\g|m|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~58_combout\ = (\g|m|counter\(29) & (!\g|m|Add0~57\)) # (!\g|m|counter\(29) & ((\g|m|Add0~57\) # (GND)))
-- \g|m|Add0~59\ = CARRY((!\g|m|Add0~57\) # (!\g|m|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(29),
	datad => VCC,
	cin => \g|m|Add0~57\,
	combout => \g|m|Add0~58_combout\,
	cout => \g|m|Add0~59\);

-- Location: LCCOMB_X13_Y12_N28
\g|m|counter[10]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[10]~27_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~20_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~combout\,
	datac => \g|m|Add0~20_combout\,
	datad => \g|m|counter[28]~3_combout\,
	combout => \g|m|counter[10]~27_combout\);

-- Location: LCCOMB_X13_Y12_N14
\g|m|counter[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(10) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter[10]~27_combout\))) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(10),
	datac => \g|m|counter[0]~5clkctrl_outclk\,
	datad => \g|m|counter[10]~27_combout\,
	combout => \g|m|counter\(10));

-- Location: LCCOMB_X15_Y10_N22
\g|m|counter[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(13) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter[13]~24_combout\)) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter[13]~24_combout\,
	datab => \g|m|counter\(13),
	datad => \g|m|counter[0]~5clkctrl_outclk\,
	combout => \g|m|counter\(13));

-- Location: LCCOMB_X15_Y10_N28
\g|m|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~0_combout\ = (!\g|m|counter\(14) & (!\g|m|counter\(13) & (!\g|m|counter\(12) & \resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(14),
	datab => \g|m|counter\(13),
	datac => \g|m|counter\(12),
	datad => \resetn~combout\,
	combout => \g|m|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y10_N28
\g|m|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~1_combout\ = (!\g|m|counter\(29) & (!\g|m|counter\(10) & \g|m|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(29),
	datab => \g|m|counter\(10),
	datad => \g|m|Equal0~0_combout\,
	combout => \g|m|Equal0~1_combout\);

-- Location: LCCOMB_X14_Y10_N10
\g|m|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~2_combout\ = (\g|control|state~regout\ & (((\g|m|Equal0~1_combout\)))) # (!\g|control|state~regout\ & (!\g|m|Add0~20_combout\ & (\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|Add0~20_combout\,
	datab => \resetn~combout\,
	datac => \g|control|state~regout\,
	datad => \g|m|Equal0~1_combout\,
	combout => \g|m|Equal0~2_combout\);

-- Location: LCCOMB_X14_Y10_N2
\g|m|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~4_combout\ = (\g|m|Equal0~2_combout\ & ((\g|control|state~regout\) # ((\g|m|Equal0~3_combout\ & !\g|m|Add0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|Equal0~3_combout\,
	datab => \g|m|Add0~58_combout\,
	datac => \g|control|state~regout\,
	datad => \g|m|Equal0~2_combout\,
	combout => \g|m|Equal0~4_combout\);

-- Location: LCCOMB_X15_Y11_N6
\g|m|Equal0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~12_combout\ = (\g|control|state~regout\ & (((!\g|m|counter\(20))))) # (!\g|control|state~regout\ & (!\g|m|Add0~40_combout\ & ((!\g|m|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|Add0~40_combout\,
	datab => \g|m|counter\(20),
	datac => \g|m|Add0~38_combout\,
	datad => \g|control|state~regout\,
	combout => \g|m|Equal0~12_combout\);

-- Location: LCCOMB_X13_Y11_N2
\g|m|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~10_combout\ = (\g|control|state~regout\ & (!\g|m|counter\(23))) # (!\g|control|state~regout\ & (((!\g|m|Add0~46_combout\ & !\g|m|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(23),
	datab => \g|m|Add0~46_combout\,
	datac => \g|m|Add0~44_combout\,
	datad => \g|control|state~regout\,
	combout => \g|m|Equal0~10_combout\);

-- Location: LCCOMB_X13_Y11_N10
\g|m|Equal0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~11_combout\ = (\g|control|state~regout\ & (!\g|m|counter\(22) & (!\g|m|counter\(21)))) # (!\g|control|state~regout\ & (((!\g|m|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(22),
	datab => \g|m|counter\(21),
	datac => \g|m|Add0~42_combout\,
	datad => \g|control|state~regout\,
	combout => \g|m|Equal0~11_combout\);

-- Location: LCCOMB_X14_Y10_N0
\g|m|Equal0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~14_combout\ = (\g|m|Equal0~13_combout\ & (\g|m|Equal0~12_combout\ & (\g|m|Equal0~10_combout\ & \g|m|Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|Equal0~13_combout\,
	datab => \g|m|Equal0~12_combout\,
	datac => \g|m|Equal0~10_combout\,
	datad => \g|m|Equal0~11_combout\,
	combout => \g|m|Equal0~14_combout\);

-- Location: LCCOMB_X15_Y12_N8
\g|m|Equal0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~21_combout\ = (\g|control|state~regout\ & (!\g|m|counter\(8) & (!\g|m|counter\(7)))) # (!\g|control|state~regout\ & (((!\g|m|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(8),
	datab => \g|m|counter\(7),
	datac => \g|control|state~regout\,
	datad => \g|m|Add0~16_combout\,
	combout => \g|m|Equal0~21_combout\);

-- Location: LCCOMB_X15_Y12_N12
\g|m|Equal0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~20_combout\ = (\g|control|state~regout\ & (((!\g|m|counter\(6))))) # (!\g|control|state~regout\ & (!\g|m|Add0~12_combout\ & ((!\g|m|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|Add0~12_combout\,
	datab => \g|m|counter\(6),
	datac => \g|control|state~regout\,
	datad => \g|m|Add0~14_combout\,
	combout => \g|m|Equal0~20_combout\);

-- Location: LCCOMB_X15_Y12_N22
\g|m|Equal0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~22_combout\ = (\g|m|Equal0~21_combout\ & \g|m|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g|m|Equal0~21_combout\,
	datad => \g|m|Equal0~20_combout\,
	combout => \g|m|Equal0~22_combout\);

-- Location: LCCOMB_X13_Y10_N24
\g|m|Equal0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~17_combout\ = (\g|control|state~regout\ & (!\g|m|counter\(3))) # (!\g|control|state~regout\ & (((!\g|m|Add0~8_combout\ & !\g|m|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(3),
	datab => \g|m|Add0~8_combout\,
	datac => \g|m|Add0~6_combout\,
	datad => \g|control|state~regout\,
	combout => \g|m|Equal0~17_combout\);

-- Location: LCCOMB_X15_Y10_N8
\g|m|Equal0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~16_combout\ = (\g|control|state~regout\ & (!\g|m|counter\(15) & (!\g|m|counter\(16)))) # (!\g|control|state~regout\ & (((!\g|m|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(15),
	datab => \g|m|counter\(16),
	datac => \g|m|Add0~30_combout\,
	datad => \g|control|state~regout\,
	combout => \g|m|Equal0~16_combout\);

-- Location: LCCOMB_X15_Y11_N8
\g|m|Equal0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~15_combout\ = (\g|control|state~regout\ & (!\g|m|counter\(17))) # (!\g|control|state~regout\ & (((!\g|m|Add0~32_combout\ & !\g|m|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(17),
	datab => \g|control|state~regout\,
	datac => \g|m|Add0~32_combout\,
	datad => \g|m|Add0~34_combout\,
	combout => \g|m|Equal0~15_combout\);

-- Location: LCCOMB_X14_Y10_N20
\g|m|Equal0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~19_combout\ = (\g|m|Equal0~18_combout\ & (\g|m|Equal0~17_combout\ & (\g|m|Equal0~16_combout\ & \g|m|Equal0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|Equal0~18_combout\,
	datab => \g|m|Equal0~17_combout\,
	datac => \g|m|Equal0~16_combout\,
	datad => \g|m|Equal0~15_combout\,
	combout => \g|m|Equal0~19_combout\);

-- Location: LCCOMB_X15_Y11_N4
\g|m|counter[31]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[31]~35_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~62_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|Add0~62_combout\,
	datac => \g|m|counter[28]~3_combout\,
	datad => \resetn~combout\,
	combout => \g|m|counter[31]~35_combout\);

-- Location: LCCOMB_X15_Y11_N18
\g|m|counter[31]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(31) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter[31]~35_combout\))) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(31),
	datac => \g|m|counter[31]~35_combout\,
	datad => \g|m|counter[0]~5clkctrl_outclk\,
	combout => \g|m|counter\(31));

-- Location: LCCOMB_X14_Y11_N30
\g|m|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Add0~62_combout\ = \g|m|Add0~61\ $ (\g|m|counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \g|m|counter\(31),
	cin => \g|m|Add0~61\,
	combout => \g|m|Add0~62_combout\);

-- Location: LCCOMB_X15_Y10_N2
\g|m|Equal0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~23_combout\ = (\g|control|state~regout\ & (((!\g|m|counter\(9))))) # (!\g|control|state~regout\ & (!\g|m|Add0~18_combout\ & ((!\g|m|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|Add0~18_combout\,
	datab => \g|m|counter\(9),
	datac => \g|m|Add0~62_combout\,
	datad => \g|control|state~regout\,
	combout => \g|m|Equal0~23_combout\);

-- Location: LCCOMB_X14_Y10_N12
\g|m|Equal0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~25_combout\ = (\g|m|Equal0~24_combout\ & (\g|m|Equal0~22_combout\ & (\g|m|Equal0~19_combout\ & \g|m|Equal0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|Equal0~24_combout\,
	datab => \g|m|Equal0~22_combout\,
	datac => \g|m|Equal0~19_combout\,
	datad => \g|m|Equal0~23_combout\,
	combout => \g|m|Equal0~25_combout\);

-- Location: LCCOMB_X14_Y10_N6
\g|m|Equal0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~26_combout\ = (\g|m|Equal0~9_combout\ & (\g|m|Equal0~4_combout\ & (\g|m|Equal0~14_combout\ & \g|m|Equal0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|Equal0~9_combout\,
	datab => \g|m|Equal0~4_combout\,
	datac => \g|m|Equal0~14_combout\,
	datad => \g|m|Equal0~25_combout\,
	combout => \g|m|Equal0~26_combout\);

-- Location: LCCOMB_X14_Y10_N4
\g|m|counter[28]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[28]~3_combout\ = (\g|m|Equal0~26_combout\ & (((!\g|m|counter~2_combout\) # (!\g|m|counter~1_combout\)) # (!\g|m|counter~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter~0_combout\,
	datab => \g|m|counter~1_combout\,
	datac => \g|m|counter~2_combout\,
	datad => \g|m|Equal0~26_combout\,
	combout => \g|m|counter[28]~3_combout\);

-- Location: LCCOMB_X27_Y7_N6
\g|m|counter[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[0]~5_combout\ = ((!\g|control|state~regout\) # (!\g|m|counter[28]~3_combout\)) # (!\resetn~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~combout\,
	datac => \g|m|counter[28]~3_combout\,
	datad => \g|control|state~regout\,
	combout => \g|m|counter[0]~5_combout\);

-- Location: CLKCTRL_G5
\g|m|counter[0]~5clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \g|m|counter[0]~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \g|m|counter[0]~5clkctrl_outclk\);

-- Location: LCCOMB_X13_Y12_N22
\g|m|counter[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter[1]~6_combout\ = (\g|m|counter[28]~3_combout\ & ((\g|m|Add0~2_combout\) # (!\resetn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~combout\,
	datac => \g|m|Add0~2_combout\,
	datad => \g|m|counter[28]~3_combout\,
	combout => \g|m|counter[1]~6_combout\);

-- Location: LCCOMB_X13_Y12_N8
\g|m|counter[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(1) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter[1]~6_combout\))) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter\(1),
	datac => \g|m|counter[0]~5clkctrl_outclk\,
	datad => \g|m|counter[1]~6_combout\,
	combout => \g|m|counter\(1));

-- Location: LCCOMB_X13_Y12_N16
\g|m|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter~1_combout\ = ((\g|control|state~regout\ & ((\g|m|counter\(1)))) # (!\g|control|state~regout\ & (\g|m|Add0~2_combout\))) # (!\resetn~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|Add0~2_combout\,
	datab => \g|m|counter\(1),
	datac => \resetn~combout\,
	datad => \g|control|state~regout\,
	combout => \g|m|counter~1_combout\);

-- Location: LCCOMB_X10_Y10_N22
\g|m|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter~0_combout\ = ((\g|control|state~regout\ & (\g|m|counter\(0))) # (!\g|control|state~regout\ & ((\g|m|Add0~0_combout\)))) # (!\resetn~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(0),
	datab => \g|m|Add0~0_combout\,
	datac => \resetn~combout\,
	datad => \g|control|state~regout\,
	combout => \g|m|counter~0_combout\);

-- Location: LCCOMB_X10_Y10_N6
\g|h|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|h|comb~0_combout\ = ((\g|m|counter~2_combout\ & (\g|m|counter~1_combout\ & \g|m|counter~0_combout\)) # (!\g|m|counter~2_combout\ & (!\g|m|counter~1_combout\))) # (!\g|m|Equal0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter~2_combout\,
	datab => \g|m|counter~1_combout\,
	datac => \g|m|counter~0_combout\,
	datad => \g|m|Equal0~26_combout\,
	combout => \g|h|comb~0_combout\);

-- Location: LCCOMB_X10_Y10_N20
\g|t|f12|data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f12|data~1_combout\ = (GLOBAL(\g|control|state~clkctrl_outclk\) & (\g|t|f12|data~1_combout\)) # (!GLOBAL(\g|control|state~clkctrl_outclk\) & ((\g|h|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|t|f12|data~1_combout\,
	datac => \g|control|state~clkctrl_outclk\,
	datad => \g|h|comb~0_combout\,
	combout => \g|t|f12|data~1_combout\);

-- Location: LCCOMB_X10_Y10_N10
\g|m|message[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|message[0]~0_combout\ = (\g|m|counter~2_combout\ & (\g|m|Equal0~26_combout\ & ((!\g|m|counter~1_combout\) # (!\g|m|counter~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter~0_combout\,
	datab => \g|m|counter~1_combout\,
	datac => \g|m|counter~2_combout\,
	datad => \g|m|Equal0~26_combout\,
	combout => \g|m|message[0]~0_combout\);

-- Location: LCCOMB_X10_Y10_N0
\g|h|transmissionBus[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|h|transmissionBus\(2) = (\g|m|message[0]~0_combout\ & ((\g|m|message[0]~1_combout\) # (\g|h|transmissionBus\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|message[0]~1_combout\,
	datac => \g|m|message[0]~0_combout\,
	datad => \g|h|transmissionBus\(2),
	combout => \g|h|transmissionBus\(2));

-- Location: LCCOMB_X9_Y10_N14
\g|t|f10|data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f10|data~1_combout\ = (GLOBAL(\g|control|state~clkctrl_outclk\) & ((\g|t|f10|data~1_combout\))) # (!GLOBAL(\g|control|state~clkctrl_outclk\) & (\g|h|transmissionBus\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|h|transmissionBus\(2),
	datac => \g|t|f10|data~1_combout\,
	datad => \g|control|state~clkctrl_outclk\,
	combout => \g|t|f10|data~1_combout\);

-- Location: LCCOMB_X9_Y10_N26
\g|h|transmissionBus[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|h|transmissionBus\(3) = (!\g|h|comb~0_combout\ & ((\g|h|transmissionBus[0]~0_combout\) # (\g|h|transmissionBus\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|h|transmissionBus[0]~0_combout\,
	datac => \g|h|comb~0_combout\,
	datad => \g|h|transmissionBus\(3),
	combout => \g|h|transmissionBus\(3));

-- Location: LCCOMB_X9_Y10_N16
\g|t|f9|data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f9|data~1_combout\ = (GLOBAL(\g|control|state~clkctrl_outclk\) & ((\g|t|f9|data~1_combout\))) # (!GLOBAL(\g|control|state~clkctrl_outclk\) & (\g|h|transmissionBus\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|h|transmissionBus\(3),
	datac => \g|t|f9|data~1_combout\,
	datad => \g|control|state~clkctrl_outclk\,
	combout => \g|t|f9|data~1_combout\);

-- Location: LCCOMB_X10_Y10_N16
\g|t|f8|data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f8|data~1_combout\ = (GLOBAL(\g|control|state~clkctrl_outclk\) & (\g|t|f8|data~1_combout\)) # (!GLOBAL(\g|control|state~clkctrl_outclk\) & ((!\g|m|message[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|t|f8|data~1_combout\,
	datac => \g|control|state~clkctrl_outclk\,
	datad => \g|m|message[0]~0_combout\,
	combout => \g|t|f8|data~1_combout\);

-- Location: LCCOMB_X12_Y10_N0
\g|m|message[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|message[4]~2_combout\ = (\g|m|Equal0~26_combout\ & ((\g|m|counter~1_combout\ & (!\g|m|counter~0_combout\ & \g|m|counter~2_combout\)) # (!\g|m|counter~1_combout\ & (\g|m|counter~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter~1_combout\,
	datab => \g|m|counter~0_combout\,
	datac => \g|m|counter~2_combout\,
	datad => \g|m|Equal0~26_combout\,
	combout => \g|m|message[4]~2_combout\);

-- Location: LCCOMB_X12_Y10_N24
\g|t|f5|data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f5|data~1_combout\ = (GLOBAL(\g|control|state~clkctrl_outclk\) & (\g|t|f5|data~1_combout\)) # (!GLOBAL(\g|control|state~clkctrl_outclk\) & ((\g|m|message[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|t|f5|data~1_combout\,
	datac => \g|control|state~clkctrl_outclk\,
	datad => \g|m|message[4]~2_combout\,
	combout => \g|t|f5|data~1_combout\);

-- Location: LCCOMB_X13_Y11_N16
\g|m|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~7_combout\ = (\g|control|state~regout\ & (!\g|m|counter\(25))) # (!\g|control|state~regout\ & (((!\g|m|Add0~48_combout\ & !\g|m|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(25),
	datab => \g|control|state~regout\,
	datac => \g|m|Add0~48_combout\,
	datad => \g|m|Add0~50_combout\,
	combout => \g|m|Equal0~7_combout\);

-- Location: LCCOMB_X13_Y10_N10
\g|m|counter[26]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(26) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter[26]~11_combout\)) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter[26]~11_combout\,
	datac => \g|m|counter\(26),
	datad => \g|m|counter[0]~5clkctrl_outclk\,
	combout => \g|m|counter\(26));

-- Location: LCCOMB_X13_Y10_N4
\g|m|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~6_combout\ = (\g|control|state~regout\ & (!\g|m|counter\(27) & (!\g|m|counter\(26)))) # (!\g|control|state~regout\ & (((!\g|m|Add0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter\(27),
	datab => \g|m|counter\(26),
	datac => \g|control|state~regout\,
	datad => \g|m|Add0~52_combout\,
	combout => \g|m|Equal0~6_combout\);

-- Location: LCCOMB_X13_Y10_N0
\g|m|counter[28]\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|counter\(28) = (GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & (\g|m|counter[28]~9_combout\)) # (!GLOBAL(\g|m|counter[0]~5clkctrl_outclk\) & ((\g|m|counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|counter[28]~9_combout\,
	datab => \g|m|counter\(28),
	datad => \g|m|counter[0]~5clkctrl_outclk\,
	combout => \g|m|counter\(28));

-- Location: LCCOMB_X13_Y10_N14
\g|m|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~5_combout\ = (\g|control|state~regout\ & (!\g|m|counter\(28))) # (!\g|control|state~regout\ & (((!\g|m|Add0~54_combout\ & !\g|m|Add0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|state~regout\,
	datab => \g|m|counter\(28),
	datac => \g|m|Add0~54_combout\,
	datad => \g|m|Add0~56_combout\,
	combout => \g|m|Equal0~5_combout\);

-- Location: LCCOMB_X14_Y10_N24
\g|m|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|Equal0~9_combout\ = (\g|m|Equal0~8_combout\ & (\g|m|Equal0~7_combout\ & (\g|m|Equal0~6_combout\ & \g|m|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|Equal0~8_combout\,
	datab => \g|m|Equal0~7_combout\,
	datac => \g|m|Equal0~6_combout\,
	datad => \g|m|Equal0~5_combout\,
	combout => \g|m|Equal0~9_combout\);

-- Location: LCCOMB_X14_Y10_N22
\g|m|message[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|message[6]~3_combout\ = (\g|m|counter~0_combout\) # ((!\g|m|Equal0~4_combout\) # (!\g|m|counter~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|m|counter~0_combout\,
	datac => \g|m|counter~2_combout\,
	datad => \g|m|Equal0~4_combout\,
	combout => \g|m|message[6]~3_combout\);

-- Location: LCCOMB_X14_Y10_N30
\g|m|message[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|message[6]~4_combout\ = (((\g|m|message[6]~3_combout\) # (!\g|m|Equal0~9_combout\)) # (!\g|m|Equal0~14_combout\)) # (!\g|m|Equal0~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|Equal0~25_combout\,
	datab => \g|m|Equal0~14_combout\,
	datac => \g|m|Equal0~9_combout\,
	datad => \g|m|message[6]~3_combout\,
	combout => \g|m|message[6]~4_combout\);

-- Location: LCCOMB_X15_Y10_N18
\g|t|f3|data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f3|data~1_combout\ = (GLOBAL(\g|control|state~clkctrl_outclk\) & (\g|t|f3|data~1_combout\)) # (!GLOBAL(\g|control|state~clkctrl_outclk\) & ((\g|m|message[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|t|f3|data~1_combout\,
	datac => \g|m|message[6]~4_combout\,
	datad => \g|control|state~clkctrl_outclk\,
	combout => \g|t|f3|data~1_combout\);

-- Location: LCCOMB_X14_Y10_N26
\g|m|message[7]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|m|message[7]~5_combout\ = (\g|m|message[6]~4_combout\ & (((\g|m|counter~2_combout\) # (!\g|m|counter~0_combout\)) # (!\g|m|Equal0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|m|Equal0~26_combout\,
	datab => \g|m|counter~2_combout\,
	datac => \g|m|counter~0_combout\,
	datad => \g|m|message[6]~4_combout\,
	combout => \g|m|message[7]~5_combout\);

-- Location: LCCOMB_X14_Y10_N14
\g|t|f2|data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f2|data~1_combout\ = (GLOBAL(\g|control|state~clkctrl_outclk\) & (\g|t|f2|data~1_combout\)) # (!GLOBAL(\g|control|state~clkctrl_outclk\) & ((\g|m|message[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|t|f2|data~1_combout\,
	datac => \g|control|state~clkctrl_outclk\,
	datad => \g|m|message[7]~5_combout\,
	combout => \g|t|f2|data~1_combout\);

-- Location: LCCOMB_X14_Y10_N18
\g|t|f2|data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f2|data~2_combout\ = (\g|control|state~regout\ & (\g|t|f2|data~_emulated_regout\ $ ((\g|t|f2|data~1_combout\)))) # (!\g|control|state~regout\ & (((\g|m|message[7]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|t|f2|data~_emulated_regout\,
	datab => \g|control|state~regout\,
	datac => \g|t|f2|data~1_combout\,
	datad => \g|m|message[7]~5_combout\,
	combout => \g|t|f2|data~2_combout\);

-- Location: LCCOMB_X14_Y10_N8
\g|t|f3|data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f3|data~3_combout\ = \g|t|f3|data~1_combout\ $ (\g|t|f2|data~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g|t|f3|data~1_combout\,
	datad => \g|t|f2|data~2_combout\,
	combout => \g|t|f3|data~3_combout\);

-- Location: LCFF_X14_Y10_N9
\g|t|f3|data~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|t|f3|data~3_combout\,
	aclr => \g|control|ALT_INV_state~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|t|f3|data~_emulated_regout\);

-- Location: LCCOMB_X13_Y10_N2
\g|t|f3|data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f3|data~2_combout\ = (\g|control|state~regout\ & (\g|t|f3|data~1_combout\ $ ((\g|t|f3|data~_emulated_regout\)))) # (!\g|control|state~regout\ & (((\g|m|message[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|t|f3|data~1_combout\,
	datab => \g|control|state~regout\,
	datac => \g|t|f3|data~_emulated_regout\,
	datad => \g|m|message[6]~4_combout\,
	combout => \g|t|f3|data~2_combout\);

-- Location: LCCOMB_X12_Y10_N18
\g|t|f4|data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f4|data~1_combout\ = \g|t|f5|data~1_combout\ $ (\g|t|f3|data~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g|t|f5|data~1_combout\,
	datad => \g|t|f3|data~2_combout\,
	combout => \g|t|f4|data~1_combout\);

-- Location: LCFF_X12_Y10_N19
\g|t|f4|data~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|t|f4|data~1_combout\,
	aclr => \g|control|ALT_INV_state~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|t|f4|data~_emulated_regout\);

-- Location: LCCOMB_X12_Y10_N4
\g|t|f4|data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f4|data~0_combout\ = (\g|control|state~regout\ & (\g|t|f5|data~1_combout\ $ ((\g|t|f4|data~_emulated_regout\)))) # (!\g|control|state~regout\ & (((\g|m|message[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|t|f5|data~1_combout\,
	datab => \g|t|f4|data~_emulated_regout\,
	datac => \g|control|state~regout\,
	datad => \g|m|message[4]~2_combout\,
	combout => \g|t|f4|data~0_combout\);

-- Location: LCCOMB_X12_Y10_N30
\g|t|f5|data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f5|data~3_combout\ = \g|t|f5|data~1_combout\ $ (\g|t|f4|data~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|t|f5|data~1_combout\,
	datac => \g|t|f4|data~0_combout\,
	combout => \g|t|f5|data~3_combout\);

-- Location: LCFF_X12_Y10_N31
\g|t|f5|data~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|t|f5|data~3_combout\,
	aclr => \g|control|ALT_INV_state~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|t|f5|data~_emulated_regout\);

-- Location: LCCOMB_X12_Y10_N16
\g|t|f5|data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f5|data~2_combout\ = (\g|control|state~regout\ & (\g|t|f5|data~1_combout\ $ ((!\g|t|f5|data~_emulated_regout\)))) # (!\g|control|state~regout\ & (((!\g|m|message[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|t|f5|data~1_combout\,
	datab => \g|t|f5|data~_emulated_regout\,
	datac => \g|control|state~regout\,
	datad => \g|m|message[4]~2_combout\,
	combout => \g|t|f5|data~2_combout\);

-- Location: LCFF_X12_Y10_N17
\g|t|f6|data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|t|f5|data~2_combout\,
	aclr => \g|control|ALT_INV_state~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|t|f6|data~regout\);

-- Location: LCCOMB_X10_Y10_N12
\g|t|f7|data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f7|data~0_combout\ = !\g|t|f6|data~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \g|t|f6|data~regout\,
	combout => \g|t|f7|data~0_combout\);

-- Location: LCFF_X10_Y10_N13
\g|t|f7|data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|t|f7|data~0_combout\,
	aclr => \g|control|ALT_INV_state~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|t|f7|data~regout\);

-- Location: LCCOMB_X10_Y10_N8
\g|t|f8|data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f8|data~3_combout\ = \g|t|f8|data~1_combout\ $ (\g|t|f7|data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g|t|f8|data~1_combout\,
	datad => \g|t|f7|data~regout\,
	combout => \g|t|f8|data~3_combout\);

-- Location: LCFF_X10_Y10_N9
\g|t|f8|data~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|t|f8|data~3_combout\,
	aclr => \g|control|ALT_INV_state~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|t|f8|data~_emulated_regout\);

-- Location: LCCOMB_X10_Y10_N28
\g|t|f8|data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f8|data~2_combout\ = (\g|control|state~regout\ & (\g|t|f8|data~1_combout\ $ ((\g|t|f8|data~_emulated_regout\)))) # (!\g|control|state~regout\ & (((!\g|m|message[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|state~regout\,
	datab => \g|t|f8|data~1_combout\,
	datac => \g|t|f8|data~_emulated_regout\,
	datad => \g|m|message[0]~0_combout\,
	combout => \g|t|f8|data~2_combout\);

-- Location: LCCOMB_X10_Y10_N30
\g|t|f9|data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f9|data~3_combout\ = \g|t|f9|data~1_combout\ $ (\g|t|f8|data~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|t|f9|data~1_combout\,
	datad => \g|t|f8|data~2_combout\,
	combout => \g|t|f9|data~3_combout\);

-- Location: LCFF_X10_Y10_N31
\g|t|f9|data~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|t|f9|data~3_combout\,
	aclr => \g|control|ALT_INV_state~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|t|f9|data~_emulated_regout\);

-- Location: LCCOMB_X9_Y10_N28
\g|t|f9|data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f9|data~2_combout\ = (\g|control|state~regout\ & (\g|t|f9|data~1_combout\ $ ((\g|t|f9|data~_emulated_regout\)))) # (!\g|control|state~regout\ & (((\g|h|transmissionBus\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|t|f9|data~1_combout\,
	datab => \g|control|state~regout\,
	datac => \g|t|f9|data~_emulated_regout\,
	datad => \g|h|transmissionBus\(3),
	combout => \g|t|f9|data~2_combout\);

-- Location: LCCOMB_X9_Y10_N22
\g|t|f10|data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f10|data~3_combout\ = \g|t|f10|data~1_combout\ $ (\g|t|f9|data~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g|t|f10|data~1_combout\,
	datad => \g|t|f9|data~2_combout\,
	combout => \g|t|f10|data~3_combout\);

-- Location: LCFF_X9_Y10_N23
\g|t|f10|data~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|t|f10|data~3_combout\,
	aclr => \g|control|ALT_INV_state~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|t|f10|data~_emulated_regout\);

-- Location: LCCOMB_X9_Y10_N24
\g|t|f10|data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f10|data~2_combout\ = (\g|control|state~regout\ & (\g|t|f10|data~1_combout\ $ (((!\g|t|f10|data~_emulated_regout\))))) # (!\g|control|state~regout\ & (((!\g|h|transmissionBus\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|control|state~regout\,
	datab => \g|t|f10|data~1_combout\,
	datac => \g|h|transmissionBus\(2),
	datad => \g|t|f10|data~_emulated_regout\,
	combout => \g|t|f10|data~2_combout\);

-- Location: LCFF_X9_Y10_N25
\g|t|f11|data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|t|f10|data~2_combout\,
	aclr => \g|control|ALT_INV_state~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|t|f11|data~regout\);

-- Location: LCCOMB_X10_Y10_N24
\g|t|f12|data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f12|data~3_combout\ = \g|t|f12|data~1_combout\ $ (!\g|t|f11|data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g|t|f12|data~1_combout\,
	datad => \g|t|f11|data~regout\,
	combout => \g|t|f12|data~3_combout\);

-- Location: LCFF_X10_Y10_N25
\g|t|f12|data~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|t|f12|data~3_combout\,
	aclr => \g|control|ALT_INV_state~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|t|f12|data~_emulated_regout\);

-- Location: LCCOMB_X10_Y10_N18
\g|t|f12|data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g|t|f12|data~2_combout\ = (\g|control|state~regout\ & (\g|t|f12|data~1_combout\ $ ((\g|t|f12|data~_emulated_regout\)))) # (!\g|control|state~regout\ & (((\g|h|comb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|t|f12|data~1_combout\,
	datab => \g|control|state~regout\,
	datac => \g|t|f12|data~_emulated_regout\,
	datad => \g|h|comb~0_combout\,
	combout => \g|t|f12|data~2_combout\);

-- Location: LCFF_X10_Y10_N19
\g|t|serial|data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \g|t|f12|data~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g|t|serial|data~regout\);

-- Location: LCFF_X6_Y6_N17
\d|r|f0|data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \g|t|serial|data~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|r|f0|data~regout\);

-- Location: LCFF_X6_Y6_N31
\d|r|f1|data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|r|f0|data~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|r|f1|data~regout\);

-- Location: LCFF_X6_Y6_N25
\d|r|f2|data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|r|f1|data~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|r|f2|data~regout\);

-- Location: LCCOMB_X5_Y6_N2
\d|r|f3|data~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|r|f3|data~feeder_combout\ = \d|r|f2|data~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d|r|f2|data~regout\,
	combout => \d|r|f3|data~feeder_combout\);

-- Location: LCFF_X5_Y6_N3
\d|r|f3|data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \d|r|f3|data~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|r|f3|data~regout\);

-- Location: LCFF_X6_Y6_N13
\d|r|f4|data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|r|f3|data~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|r|f4|data~regout\);

-- Location: LCCOMB_X6_Y6_N16
\d|c|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|process_0~0_combout\ = (\d|r|f2|data~regout\ & (\d|r|f1|data~regout\ & (!\d|r|f0|data~regout\ & !\d|r|f4|data~regout\))) # (!\d|r|f2|data~regout\ & (\d|r|f0|data~regout\ & (\d|r|f1|data~regout\ $ (\d|r|f4|data~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|r|f2|data~regout\,
	datab => \d|r|f1|data~regout\,
	datac => \d|r|f0|data~regout\,
	datad => \d|r|f4|data~regout\,
	combout => \d|c|process_0~0_combout\);

-- Location: LCCOMB_X5_Y6_N6
\d|c|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|process_0~2_combout\ = (\d|c|process_0~0_combout\ & \d|r|f3|data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d|c|process_0~0_combout\,
	datad => \d|r|f3|data~regout\,
	combout => \d|c|process_0~2_combout\);

-- Location: LCFF_X7_Y5_N9
\d|c|countClock[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|c|Add0~123_combout\,
	aclr => \ALT_INV_resetn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(17));

-- Location: LCCOMB_X7_Y6_N0
\d|c|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~44_combout\ = \d|c|countClock\(0) $ (VCC)
-- \d|c|Add0~45\ = CARRY(\d|c|countClock\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d|c|countClock\(0),
	datad => VCC,
	combout => \d|c|Add0~44_combout\,
	cout => \d|c|Add0~45\);

-- Location: LCCOMB_X6_Y6_N30
\d|c|Add0~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~115_combout\ = (\d|c|Add0~44_combout\) # ((\d|r|f3|data~regout\ & \d|c|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|r|f3|data~regout\,
	datab => \d|c|Add0~44_combout\,
	datad => \d|c|process_0~0_combout\,
	combout => \d|c|Add0~115_combout\);

-- Location: LCFF_X7_Y6_N1
\d|c|countClock[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|c|Add0~115_combout\,
	aclr => \ALT_INV_resetn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(0));

-- Location: LCCOMB_X7_Y6_N2
\d|c|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~46_combout\ = (\d|c|countClock\(1) & (!\d|c|Add0~45\)) # (!\d|c|countClock\(1) & ((\d|c|Add0~45\) # (GND)))
-- \d|c|Add0~47\ = CARRY((!\d|c|Add0~45\) # (!\d|c|countClock\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|c|countClock\(1),
	datad => VCC,
	cin => \d|c|Add0~45\,
	combout => \d|c|Add0~46_combout\,
	cout => \d|c|Add0~47\);

-- Location: LCCOMB_X6_Y6_N24
\d|c|Add0~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~114_combout\ = (\d|c|Add0~46_combout\) # ((\d|r|f3|data~regout\ & \d|c|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|r|f3|data~regout\,
	datab => \d|c|process_0~0_combout\,
	datad => \d|c|Add0~46_combout\,
	combout => \d|c|Add0~114_combout\);

-- Location: LCFF_X7_Y6_N27
\d|c|countClock[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|c|Add0~114_combout\,
	aclr => \ALT_INV_resetn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(1));

-- Location: LCCOMB_X7_Y6_N4
\d|c|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~48_combout\ = (\d|c|countClock\(2) & (\d|c|Add0~47\ $ (GND))) # (!\d|c|countClock\(2) & (!\d|c|Add0~47\ & VCC))
-- \d|c|Add0~49\ = CARRY((\d|c|countClock\(2) & !\d|c|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|c|countClock\(2),
	datad => VCC,
	cin => \d|c|Add0~47\,
	combout => \d|c|Add0~48_combout\,
	cout => \d|c|Add0~49\);

-- Location: LCCOMB_X8_Y6_N28
\d|c|countClock~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|countClock~3_combout\ = (!\d|c|process_0~13_combout\ & ((\d|c|Add0~48_combout\) # ((\d|r|f3|data~regout\ & \d|c|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|r|f3|data~regout\,
	datab => \d|c|process_0~0_combout\,
	datac => \d|c|Add0~48_combout\,
	datad => \d|c|process_0~13_combout\,
	combout => \d|c|countClock~3_combout\);

-- Location: LCFF_X8_Y6_N29
\d|c|countClock[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \d|c|countClock~3_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(2));

-- Location: LCCOMB_X7_Y6_N6
\d|c|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~50_combout\ = (\d|c|countClock\(3) & (!\d|c|Add0~49\)) # (!\d|c|countClock\(3) & ((\d|c|Add0~49\) # (GND)))
-- \d|c|Add0~51\ = CARRY((!\d|c|Add0~49\) # (!\d|c|countClock\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|c|countClock\(3),
	datad => VCC,
	cin => \d|c|Add0~49\,
	combout => \d|c|Add0~50_combout\,
	cout => \d|c|Add0~51\);

-- Location: LCCOMB_X7_Y6_N8
\d|c|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~52_combout\ = (\d|c|countClock\(4) & (\d|c|Add0~51\ $ (GND))) # (!\d|c|countClock\(4) & (!\d|c|Add0~51\ & VCC))
-- \d|c|Add0~53\ = CARRY((\d|c|countClock\(4) & !\d|c|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|c|countClock\(4),
	datad => VCC,
	cin => \d|c|Add0~51\,
	combout => \d|c|Add0~52_combout\,
	cout => \d|c|Add0~53\);

-- Location: LCCOMB_X5_Y6_N8
\d|c|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~54_combout\ = (\d|c|Add0~52_combout\ & ((!\d|r|f3|data~regout\) # (!\d|c|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|process_0~0_combout\,
	datab => \d|r|f3|data~regout\,
	datad => \d|c|Add0~52_combout\,
	combout => \d|c|Add0~54_combout\);

-- Location: LCFF_X7_Y6_N9
\d|c|countClock[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|c|Add0~54_combout\,
	aclr => \ALT_INV_resetn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(4));

-- Location: LCCOMB_X7_Y6_N14
\d|c|Add0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~61_combout\ = (\d|c|countClock\(7) & (!\d|c|Add0~59\)) # (!\d|c|countClock\(7) & ((\d|c|Add0~59\) # (GND)))
-- \d|c|Add0~62\ = CARRY((!\d|c|Add0~59\) # (!\d|c|countClock\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|c|countClock\(7),
	datad => VCC,
	cin => \d|c|Add0~59\,
	combout => \d|c|Add0~61_combout\,
	cout => \d|c|Add0~62\);

-- Location: LCCOMB_X6_Y6_N20
\d|c|Add0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~63_combout\ = (\d|c|Add0~61_combout\ & ((!\d|c|process_0~0_combout\) # (!\d|r|f3|data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|r|f3|data~regout\,
	datac => \d|c|Add0~61_combout\,
	datad => \d|c|process_0~0_combout\,
	combout => \d|c|Add0~63_combout\);

-- Location: LCFF_X7_Y6_N15
\d|c|countClock[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|c|Add0~63_combout\,
	aclr => \ALT_INV_resetn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(7));

-- Location: LCCOMB_X7_Y6_N18
\d|c|Add0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~67_combout\ = (\d|c|countClock\(9) & (!\d|c|Add0~65\)) # (!\d|c|countClock\(9) & ((\d|c|Add0~65\) # (GND)))
-- \d|c|Add0~68\ = CARRY((!\d|c|Add0~65\) # (!\d|c|countClock\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|c|countClock\(9),
	datad => VCC,
	cin => \d|c|Add0~65\,
	combout => \d|c|Add0~67_combout\,
	cout => \d|c|Add0~68\);

-- Location: LCCOMB_X6_Y6_N0
\d|c|Add0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~69_combout\ = (\d|c|Add0~67_combout\ & ((!\d|c|process_0~0_combout\) # (!\d|r|f3|data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|r|f3|data~regout\,
	datab => \d|c|process_0~0_combout\,
	datad => \d|c|Add0~67_combout\,
	combout => \d|c|Add0~69_combout\);

-- Location: LCFF_X7_Y6_N19
\d|c|countClock[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|c|Add0~69_combout\,
	aclr => \ALT_INV_resetn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(9));

-- Location: LCCOMB_X7_Y6_N22
\d|c|Add0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~72_combout\ = (\d|c|countClock\(11) & (!\d|c|Add0~71\)) # (!\d|c|countClock\(11) & ((\d|c|Add0~71\) # (GND)))
-- \d|c|Add0~73\ = CARRY((!\d|c|Add0~71\) # (!\d|c|countClock\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|c|countClock\(11),
	datad => VCC,
	cin => \d|c|Add0~71\,
	combout => \d|c|Add0~72_combout\,
	cout => \d|c|Add0~73\);

-- Location: LCCOMB_X6_Y6_N8
\d|c|Add0~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~117_combout\ = (\d|c|Add0~72_combout\ & ((!\d|c|process_0~0_combout\) # (!\d|r|f3|data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|r|f3|data~regout\,
	datab => \d|c|process_0~0_combout\,
	datad => \d|c|Add0~72_combout\,
	combout => \d|c|Add0~117_combout\);

-- Location: LCFF_X7_Y6_N23
\d|c|countClock[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|c|Add0~117_combout\,
	aclr => \ALT_INV_resetn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(11));

-- Location: LCCOMB_X7_Y6_N28
\d|c|Add0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~78_combout\ = (\d|c|countClock\(14) & (\d|c|Add0~77\ $ (GND))) # (!\d|c|countClock\(14) & (!\d|c|Add0~77\ & VCC))
-- \d|c|Add0~79\ = CARRY((\d|c|countClock\(14) & !\d|c|Add0~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|c|countClock\(14),
	datad => VCC,
	cin => \d|c|Add0~77\,
	combout => \d|c|Add0~78_combout\,
	cout => \d|c|Add0~79\);

-- Location: LCCOMB_X8_Y6_N16
\d|c|Add0~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~120_combout\ = (\d|c|Add0~78_combout\ & ((!\d|r|f3|data~regout\) # (!\d|c|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d|c|process_0~0_combout\,
	datac => \d|r|f3|data~regout\,
	datad => \d|c|Add0~78_combout\,
	combout => \d|c|Add0~120_combout\);

-- Location: LCFF_X7_Y6_N31
\d|c|countClock[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|c|Add0~120_combout\,
	aclr => \ALT_INV_resetn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(14));

-- Location: LCCOMB_X7_Y6_N30
\d|c|Add0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~80_combout\ = (\d|c|countClock\(15) & (!\d|c|Add0~79\)) # (!\d|c|countClock\(15) & ((\d|c|Add0~79\) # (GND)))
-- \d|c|Add0~81\ = CARRY((!\d|c|Add0~79\) # (!\d|c|countClock\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|c|countClock\(15),
	datad => VCC,
	cin => \d|c|Add0~79\,
	combout => \d|c|Add0~80_combout\,
	cout => \d|c|Add0~81\);

-- Location: LCCOMB_X6_Y6_N4
\d|c|Add0~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~121_combout\ = (\d|c|Add0~80_combout\ & ((!\d|c|process_0~0_combout\) # (!\d|r|f3|data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|r|f3|data~regout\,
	datab => \d|c|process_0~0_combout\,
	datad => \d|c|Add0~80_combout\,
	combout => \d|c|Add0~121_combout\);

-- Location: LCFF_X7_Y6_N3
\d|c|countClock[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|c|Add0~121_combout\,
	aclr => \ALT_INV_resetn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(15));

-- Location: LCCOMB_X7_Y5_N0
\d|c|Add0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~82_combout\ = (\d|c|countClock\(16) & (\d|c|Add0~81\ $ (GND))) # (!\d|c|countClock\(16) & (!\d|c|Add0~81\ & VCC))
-- \d|c|Add0~83\ = CARRY((\d|c|countClock\(16) & !\d|c|Add0~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|c|countClock\(16),
	datad => VCC,
	cin => \d|c|Add0~81\,
	combout => \d|c|Add0~82_combout\,
	cout => \d|c|Add0~83\);

-- Location: LCCOMB_X8_Y5_N16
\d|c|Add0~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~122_combout\ = (\d|c|Add0~82_combout\ & ((!\d|r|f3|data~regout\) # (!\d|c|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d|c|process_0~0_combout\,
	datac => \d|c|Add0~82_combout\,
	datad => \d|r|f3|data~regout\,
	combout => \d|c|Add0~122_combout\);

-- Location: LCFF_X7_Y5_N29
\d|c|countClock[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|c|Add0~122_combout\,
	aclr => \ALT_INV_resetn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(16));

-- Location: LCCOMB_X7_Y5_N2
\d|c|Add0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~84_combout\ = (\d|c|countClock\(17) & (!\d|c|Add0~83\)) # (!\d|c|countClock\(17) & ((\d|c|Add0~83\) # (GND)))
-- \d|c|Add0~85\ = CARRY((!\d|c|Add0~83\) # (!\d|c|countClock\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|c|countClock\(17),
	datad => VCC,
	cin => \d|c|Add0~83\,
	combout => \d|c|Add0~84_combout\,
	cout => \d|c|Add0~85\);

-- Location: LCCOMB_X8_Y5_N22
\d|c|Add0~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~123_combout\ = (\d|c|Add0~84_combout\ & ((!\d|c|process_0~0_combout\) # (!\d|r|f3|data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d|r|f3|data~regout\,
	datac => \d|c|process_0~0_combout\,
	datad => \d|c|Add0~84_combout\,
	combout => \d|c|Add0~123_combout\);

-- Location: LCCOMB_X7_Y5_N4
\d|c|Add0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~86_combout\ = (\d|c|countClock\(18) & (\d|c|Add0~85\ $ (GND))) # (!\d|c|countClock\(18) & (!\d|c|Add0~85\ & VCC))
-- \d|c|Add0~87\ = CARRY((\d|c|countClock\(18) & !\d|c|Add0~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|countClock\(18),
	datad => VCC,
	cin => \d|c|Add0~85\,
	combout => \d|c|Add0~86_combout\,
	cout => \d|c|Add0~87\);

-- Location: LCCOMB_X8_Y5_N4
\d|c|Add0~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~124_combout\ = (\d|c|Add0~86_combout\ & ((!\d|r|f3|data~regout\) # (!\d|c|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d|c|process_0~0_combout\,
	datac => \d|c|Add0~86_combout\,
	datad => \d|r|f3|data~regout\,
	combout => \d|c|Add0~124_combout\);

-- Location: LCCOMB_X7_Y5_N6
\d|c|Add0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~88_combout\ = (\d|c|countClock\(19) & (!\d|c|Add0~87\)) # (!\d|c|countClock\(19) & ((\d|c|Add0~87\) # (GND)))
-- \d|c|Add0~89\ = CARRY((!\d|c|Add0~87\) # (!\d|c|countClock\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|countClock\(19),
	datad => VCC,
	cin => \d|c|Add0~87\,
	combout => \d|c|Add0~88_combout\,
	cout => \d|c|Add0~89\);

-- Location: LCCOMB_X8_Y5_N26
\d|c|Add0~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~125_combout\ = (\d|c|Add0~88_combout\ & ((!\d|r|f3|data~regout\) # (!\d|c|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d|c|process_0~0_combout\,
	datac => \d|c|Add0~88_combout\,
	datad => \d|r|f3|data~regout\,
	combout => \d|c|Add0~125_combout\);

-- Location: LCCOMB_X8_Y5_N0
\d|c|process_0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|process_0~8_combout\ = (!\d|c|Add0~122_combout\ & (!\d|c|Add0~123_combout\ & (!\d|c|Add0~124_combout\ & !\d|c|Add0~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|Add0~122_combout\,
	datab => \d|c|Add0~123_combout\,
	datac => \d|c|Add0~124_combout\,
	datad => \d|c|Add0~125_combout\,
	combout => \d|c|process_0~8_combout\);

-- Location: LCCOMB_X8_Y5_N10
\d|c|countClock[24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|countClock[24]~feeder_combout\ = \d|c|Add0~130_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d|c|Add0~130_combout\,
	combout => \d|c|countClock[24]~feeder_combout\);

-- Location: LCFF_X8_Y5_N11
\d|c|countClock[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \d|c|countClock[24]~feeder_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(24));

-- Location: LCCOMB_X7_Y5_N8
\d|c|Add0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~90_combout\ = (\d|c|countClock\(20) & (\d|c|Add0~89\ $ (GND))) # (!\d|c|countClock\(20) & (!\d|c|Add0~89\ & VCC))
-- \d|c|Add0~91\ = CARRY((\d|c|countClock\(20) & !\d|c|Add0~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|c|countClock\(20),
	datad => VCC,
	cin => \d|c|Add0~89\,
	combout => \d|c|Add0~90_combout\,
	cout => \d|c|Add0~91\);

-- Location: LCCOMB_X8_Y5_N28
\d|c|Add0~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~126_combout\ = (\d|c|Add0~90_combout\ & ((!\d|c|process_0~0_combout\) # (!\d|r|f3|data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d|r|f3|data~regout\,
	datac => \d|c|process_0~0_combout\,
	datad => \d|c|Add0~90_combout\,
	combout => \d|c|Add0~126_combout\);

-- Location: LCFF_X7_Y5_N31
\d|c|countClock[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|c|Add0~126_combout\,
	aclr => \ALT_INV_resetn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(20));

-- Location: LCCOMB_X7_Y5_N10
\d|c|Add0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~92_combout\ = (\d|c|countClock\(21) & (!\d|c|Add0~91\)) # (!\d|c|countClock\(21) & ((\d|c|Add0~91\) # (GND)))
-- \d|c|Add0~93\ = CARRY((!\d|c|Add0~91\) # (!\d|c|countClock\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|c|countClock\(21),
	datad => VCC,
	cin => \d|c|Add0~91\,
	combout => \d|c|Add0~92_combout\,
	cout => \d|c|Add0~93\);

-- Location: LCCOMB_X8_Y5_N18
\d|c|Add0~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~127_combout\ = (\d|c|Add0~92_combout\ & ((!\d|c|process_0~0_combout\) # (!\d|r|f3|data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d|r|f3|data~regout\,
	datac => \d|c|process_0~0_combout\,
	datad => \d|c|Add0~92_combout\,
	combout => \d|c|Add0~127_combout\);

-- Location: LCCOMB_X8_Y5_N30
\d|c|countClock[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|countClock[21]~feeder_combout\ = \d|c|Add0~127_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d|c|Add0~127_combout\,
	combout => \d|c|countClock[21]~feeder_combout\);

-- Location: LCFF_X8_Y5_N31
\d|c|countClock[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \d|c|countClock[21]~feeder_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(21));

-- Location: LCCOMB_X7_Y5_N12
\d|c|Add0~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~94_combout\ = (\d|c|countClock\(22) & (\d|c|Add0~93\ $ (GND))) # (!\d|c|countClock\(22) & (!\d|c|Add0~93\ & VCC))
-- \d|c|Add0~95\ = CARRY((\d|c|countClock\(22) & !\d|c|Add0~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|c|countClock\(22),
	datad => VCC,
	cin => \d|c|Add0~93\,
	combout => \d|c|Add0~94_combout\,
	cout => \d|c|Add0~95\);

-- Location: LCCOMB_X8_Y5_N8
\d|c|Add0~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~128_combout\ = (\d|c|Add0~94_combout\ & ((!\d|c|process_0~0_combout\) # (!\d|r|f3|data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d|r|f3|data~regout\,
	datac => \d|c|process_0~0_combout\,
	datad => \d|c|Add0~94_combout\,
	combout => \d|c|Add0~128_combout\);

-- Location: LCFF_X8_Y5_N13
\d|c|countClock[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|c|Add0~128_combout\,
	aclr => \ALT_INV_resetn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(22));

-- Location: LCCOMB_X7_Y5_N16
\d|c|Add0~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~98_combout\ = (\d|c|countClock\(24) & (\d|c|Add0~97\ $ (GND))) # (!\d|c|countClock\(24) & (!\d|c|Add0~97\ & VCC))
-- \d|c|Add0~99\ = CARRY((\d|c|countClock\(24) & !\d|c|Add0~97\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|c|countClock\(24),
	datad => VCC,
	cin => \d|c|Add0~97\,
	combout => \d|c|Add0~98_combout\,
	cout => \d|c|Add0~99\);

-- Location: LCCOMB_X8_Y5_N14
\d|c|Add0~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~130_combout\ = (\d|c|Add0~98_combout\ & ((!\d|c|process_0~0_combout\) # (!\d|r|f3|data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d|r|f3|data~regout\,
	datac => \d|c|process_0~0_combout\,
	datad => \d|c|Add0~98_combout\,
	combout => \d|c|Add0~130_combout\);

-- Location: LCFF_X8_Y5_N21
\d|c|countClock[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \d|c|Add0~133_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(27));

-- Location: LCCOMB_X7_Y5_N18
\d|c|Add0~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~100_combout\ = (\d|c|countClock\(25) & (!\d|c|Add0~99\)) # (!\d|c|countClock\(25) & ((\d|c|Add0~99\) # (GND)))
-- \d|c|Add0~101\ = CARRY((!\d|c|Add0~99\) # (!\d|c|countClock\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|c|countClock\(25),
	datad => VCC,
	cin => \d|c|Add0~99\,
	combout => \d|c|Add0~100_combout\,
	cout => \d|c|Add0~101\);

-- Location: LCCOMB_X8_Y5_N24
\d|c|Add0~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~131_combout\ = (\d|c|Add0~100_combout\ & ((!\d|c|process_0~0_combout\) # (!\d|r|f3|data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d|r|f3|data~regout\,
	datac => \d|c|process_0~0_combout\,
	datad => \d|c|Add0~100_combout\,
	combout => \d|c|Add0~131_combout\);

-- Location: LCFF_X8_Y5_N25
\d|c|countClock[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \d|c|Add0~131_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(25));

-- Location: LCCOMB_X7_Y5_N20
\d|c|Add0~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~102_combout\ = (\d|c|countClock\(26) & (\d|c|Add0~101\ $ (GND))) # (!\d|c|countClock\(26) & (!\d|c|Add0~101\ & VCC))
-- \d|c|Add0~103\ = CARRY((\d|c|countClock\(26) & !\d|c|Add0~101\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|countClock\(26),
	datad => VCC,
	cin => \d|c|Add0~101\,
	combout => \d|c|Add0~102_combout\,
	cout => \d|c|Add0~103\);

-- Location: LCCOMB_X7_Y5_N22
\d|c|Add0~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~104_combout\ = (\d|c|countClock\(27) & (!\d|c|Add0~103\)) # (!\d|c|countClock\(27) & ((\d|c|Add0~103\) # (GND)))
-- \d|c|Add0~105\ = CARRY((!\d|c|Add0~103\) # (!\d|c|countClock\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|c|countClock\(27),
	datad => VCC,
	cin => \d|c|Add0~103\,
	combout => \d|c|Add0~104_combout\,
	cout => \d|c|Add0~105\);

-- Location: LCCOMB_X8_Y5_N20
\d|c|Add0~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~133_combout\ = (\d|c|Add0~104_combout\ & ((!\d|c|process_0~0_combout\) # (!\d|r|f3|data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d|r|f3|data~regout\,
	datac => \d|c|process_0~0_combout\,
	datad => \d|c|Add0~104_combout\,
	combout => \d|c|Add0~133_combout\);

-- Location: LCCOMB_X8_Y5_N6
\d|c|Add0~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~132_combout\ = (\d|c|Add0~102_combout\ & ((!\d|r|f3|data~regout\) # (!\d|c|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d|c|process_0~0_combout\,
	datac => \d|c|Add0~102_combout\,
	datad => \d|r|f3|data~regout\,
	combout => \d|c|Add0~132_combout\);

-- Location: LCCOMB_X8_Y5_N2
\d|c|process_0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|process_0~10_combout\ = (!\d|c|Add0~131_combout\ & (!\d|c|Add0~130_combout\ & (!\d|c|Add0~133_combout\ & !\d|c|Add0~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|Add0~131_combout\,
	datab => \d|c|Add0~130_combout\,
	datac => \d|c|Add0~133_combout\,
	datad => \d|c|Add0~132_combout\,
	combout => \d|c|process_0~10_combout\);

-- Location: LCCOMB_X7_Y5_N26
\d|c|Add0~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~108_combout\ = (\d|c|countClock\(29) & (!\d|c|Add0~107\)) # (!\d|c|countClock\(29) & ((\d|c|Add0~107\) # (GND)))
-- \d|c|Add0~109\ = CARRY((!\d|c|Add0~107\) # (!\d|c|countClock\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|countClock\(29),
	datad => VCC,
	cin => \d|c|Add0~107\,
	combout => \d|c|Add0~108_combout\,
	cout => \d|c|Add0~109\);

-- Location: LCCOMB_X8_Y6_N14
\d|c|Add0~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~135_combout\ = (\d|c|Add0~108_combout\ & ((!\d|r|f3|data~regout\) # (!\d|c|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d|c|process_0~0_combout\,
	datac => \d|r|f3|data~regout\,
	datad => \d|c|Add0~108_combout\,
	combout => \d|c|Add0~135_combout\);

-- Location: LCFF_X8_Y6_N9
\d|c|countClock[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \d|c|Add0~136_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(30));

-- Location: LCCOMB_X7_Y5_N28
\d|c|Add0~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~110_combout\ = (\d|c|countClock\(30) & (\d|c|Add0~109\ $ (GND))) # (!\d|c|countClock\(30) & (!\d|c|Add0~109\ & VCC))
-- \d|c|Add0~111\ = CARRY((\d|c|countClock\(30) & !\d|c|Add0~109\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|c|countClock\(30),
	datad => VCC,
	cin => \d|c|Add0~109\,
	combout => \d|c|Add0~110_combout\,
	cout => \d|c|Add0~111\);

-- Location: LCCOMB_X8_Y6_N8
\d|c|Add0~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~136_combout\ = (\d|c|Add0~110_combout\ & ((!\d|r|f3|data~regout\) # (!\d|c|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d|c|process_0~0_combout\,
	datac => \d|r|f3|data~regout\,
	datad => \d|c|Add0~110_combout\,
	combout => \d|c|Add0~136_combout\);

-- Location: LCFF_X8_Y6_N27
\d|c|countClock[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \d|c|Add0~137_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(31));

-- Location: LCCOMB_X7_Y5_N30
\d|c|Add0~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~112_combout\ = \d|c|Add0~111\ $ (\d|c|countClock\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \d|c|countClock\(31),
	cin => \d|c|Add0~111\,
	combout => \d|c|Add0~112_combout\);

-- Location: LCCOMB_X8_Y6_N26
\d|c|Add0~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|Add0~137_combout\ = (\d|c|Add0~112_combout\ & ((!\d|r|f3|data~regout\) # (!\d|c|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d|c|process_0~0_combout\,
	datac => \d|r|f3|data~regout\,
	datad => \d|c|Add0~112_combout\,
	combout => \d|c|Add0~137_combout\);

-- Location: LCCOMB_X8_Y6_N0
\d|c|process_0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|process_0~11_combout\ = (!\d|c|Add0~134_combout\ & (!\d|c|Add0~135_combout\ & (!\d|c|Add0~136_combout\ & !\d|c|Add0~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|Add0~134_combout\,
	datab => \d|c|Add0~135_combout\,
	datac => \d|c|Add0~136_combout\,
	datad => \d|c|Add0~137_combout\,
	combout => \d|c|process_0~11_combout\);

-- Location: LCCOMB_X8_Y6_N18
\d|c|process_0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|process_0~12_combout\ = (\d|c|process_0~9_combout\ & (\d|c|process_0~8_combout\ & (\d|c|process_0~10_combout\ & \d|c|process_0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|process_0~9_combout\,
	datab => \d|c|process_0~8_combout\,
	datac => \d|c|process_0~10_combout\,
	datad => \d|c|process_0~11_combout\,
	combout => \d|c|process_0~12_combout\);

-- Location: LCCOMB_X8_Y6_N10
\d|c|countClock~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|countClock~2_combout\ = (!\d|c|process_0~2_combout\ & (\d|c|Add0~50_combout\ & ((!\d|c|process_0~12_combout\) # (!\d|c|process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|process_0~7_combout\,
	datab => \d|c|process_0~2_combout\,
	datac => \d|c|Add0~50_combout\,
	datad => \d|c|process_0~12_combout\,
	combout => \d|c|countClock~2_combout\);

-- Location: LCFF_X8_Y6_N11
\d|c|countClock[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \d|c|countClock~2_combout\,
	aclr => \ALT_INV_resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|countClock\(3));

-- Location: LCCOMB_X8_Y6_N12
\d|c|process_0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|c|process_0~13_combout\ = (\d|c|process_0~7_combout\ & (!\d|c|process_0~2_combout\ & (\d|c|Add0~50_combout\ & \d|c|process_0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|c|process_0~7_combout\,
	datab => \d|c|process_0~2_combout\,
	datac => \d|c|Add0~50_combout\,
	datad => \d|c|process_0~12_combout\,
	combout => \d|c|process_0~13_combout\);

-- Location: LCFF_X8_Y6_N13
\d|c|validOut\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \d|c|process_0~13_combout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|c|validOut~regout\);

-- Location: LCFF_X5_Y6_N9
\d|r|f5|data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|r|f4|data~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|r|f5|data~regout\);

-- Location: LCCOMB_X5_Y6_N16
\d|d|decodedMessage[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|d|decodedMessage\(7) = \d|r|f5|data~regout\ $ (\d|r|f3|data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d|r|f5|data~regout\,
	datad => \d|r|f3|data~regout\,
	combout => \d|d|decodedMessage\(7));

-- Location: LCFF_X5_Y6_N27
\d|r|f6|data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|r|f5|data~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|r|f6|data~regout\);

-- Location: LCCOMB_X5_Y6_N10
\d|r|f7|data~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|r|f7|data~feeder_combout\ = \d|r|f6|data~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d|r|f6|data~regout\,
	combout => \d|r|f7|data~feeder_combout\);

-- Location: LCFF_X5_Y6_N11
\d|r|f7|data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \d|r|f7|data~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|r|f7|data~regout\);

-- Location: LCCOMB_X5_Y6_N30
\d|r|f8|data~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|r|f8|data~feeder_combout\ = \d|r|f7|data~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d|r|f7|data~regout\,
	combout => \d|r|f8|data~feeder_combout\);

-- Location: LCFF_X5_Y6_N31
\d|r|f8|data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \d|r|f8|data~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|r|f8|data~regout\);

-- Location: LCCOMB_X5_Y6_N12
\d|r|f9|data~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|r|f9|data~feeder_combout\ = \d|r|f8|data~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d|r|f8|data~regout\,
	combout => \d|r|f9|data~feeder_combout\);

-- Location: LCFF_X5_Y6_N13
\d|r|f9|data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \d|r|f9|data~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|r|f9|data~regout\);

-- Location: LCCOMB_X5_Y6_N0
\d|r|f10|data~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|r|f10|data~feeder_combout\ = \d|r|f9|data~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d|r|f9|data~regout\,
	combout => \d|r|f10|data~feeder_combout\);

-- Location: LCFF_X5_Y6_N1
\d|r|f10|data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \d|r|f10|data~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|r|f10|data~regout\);

-- Location: LCCOMB_X5_Y6_N14
\d|r|f11|data~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|r|f11|data~feeder_combout\ = \d|r|f10|data~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d|r|f10|data~regout\,
	combout => \d|r|f11|data~feeder_combout\);

-- Location: LCFF_X5_Y6_N15
\d|r|f11|data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \d|r|f11|data~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|r|f11|data~regout\);

-- Location: LCCOMB_X5_Y6_N4
\d|d|decodedMessage[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|d|decodedMessage\(6) = (\d|r|f9|data~regout\ & (\d|r|f4|data~regout\ $ (((\d|r|f11|data~regout\ & \d|r|f3|data~regout\))))) # (!\d|r|f9|data~regout\ & (\d|r|f11|data~regout\ & ((\d|r|f3|data~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|r|f9|data~regout\,
	datab => \d|r|f11|data~regout\,
	datac => \d|r|f4|data~regout\,
	datad => \d|r|f3|data~regout\,
	combout => \d|d|decodedMessage\(6));

-- Location: LCFF_X5_Y6_N29
\d|r|f12|data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d|r|f11|data~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d|r|f12|data~regout\);

-- Location: LCCOMB_X5_Y6_N24
\d|d|decodedMessage[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|d|decodedMessage\(5) = \d|r|f12|data~regout\ $ (\d|r|f8|data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d|r|f12|data~regout\,
	datad => \d|r|f8|data~regout\,
	combout => \d|d|decodedMessage\(5));

-- Location: LCCOMB_X4_Y6_N16
\d|d|decodedMessage[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|d|decodedMessage\(4) = \d|r|f3|data~regout\ $ (\d|r|f8|data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|r|f3|data~regout\,
	datad => \d|r|f8|data~regout\,
	combout => \d|d|decodedMessage\(4));

-- Location: LCCOMB_X5_Y6_N20
\d|d|decodedMessage[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|d|decodedMessage\(3) = (\d|r|f9|data~regout\ & \d|r|f4|data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|r|f9|data~regout\,
	datac => \d|r|f4|data~regout\,
	combout => \d|d|decodedMessage\(3));

-- Location: LCCOMB_X5_Y6_N22
\d|d|decodedMessage[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|d|decodedMessage\(2) = \d|r|f5|data~regout\ $ (\d|r|f10|data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d|r|f5|data~regout\,
	datad => \d|r|f10|data~regout\,
	combout => \d|d|decodedMessage\(2));

-- Location: LCCOMB_X5_Y6_N26
\d|d|decodedMessage[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|d|decodedMessage\(1) = (\d|r|f11|data~regout\) # (\d|r|f6|data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d|r|f11|data~regout\,
	datac => \d|r|f6|data~regout\,
	combout => \d|d|decodedMessage\(1));

-- Location: LCCOMB_X5_Y6_N18
\d|d|decodedMessage[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \d|d|decodedMessage\(0) = \d|r|f7|data~regout\ $ (\d|r|f12|data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|r|f7|data~regout\,
	datad => \d|r|f12|data~regout\,
	combout => \d|d|decodedMessage\(0));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\valid_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
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
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d|c|validOut~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_valid_out);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\message[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
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
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d|d|decodedMessage\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_message(7));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\message[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
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
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d|d|decodedMessage\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_message(6));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\message[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
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
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d|d|decodedMessage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_message(5));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\message[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
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
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d|d|decodedMessage\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_message(4));

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\message[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
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
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d|d|decodedMessage\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_message(3));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\message[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
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
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d|d|decodedMessage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_message(2));

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\message[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
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
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d|d|decodedMessage\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_message(1));

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\message[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
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
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d|d|decodedMessage\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_message(0));
END structure;


