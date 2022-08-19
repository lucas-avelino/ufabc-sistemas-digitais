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
-- Generated on "08/07/2022 15:57:20"
                                                            
-- Vhdl Test Bench template for design  :  DetectorAndGenerator
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DetectorAndGenerator_vhd_tst IS
END DetectorAndGenerator_vhd_tst;
ARCHITECTURE DetectorAndGenerator_arch OF DetectorAndGenerator_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL message : STD_LOGIC_VECTOR(0 TO 7);
SIGNAL resetn : STD_LOGIC;
SIGNAL valid_out : STD_LOGIC;
COMPONENT DetectorAndGenerator
	PORT (
	clk : IN STD_LOGIC;
	message : BUFFER STD_LOGIC_VECTOR(0 TO 7);
	resetn : IN STD_LOGIC;
	valid_out : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DetectorAndGenerator
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	message => message,
	resetn => resetn,
	valid_out => valid_out
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
        resetn <= '1';

        FOR k IN 0 TO 100 LOOP
            clk <= '0';
            WAIT FOR 20ns;
            clk <= '1';
            WAIT FOR 20ns;
        END LOOP;
		  clk <= '0';
		  resetn <= '0';
		  WAIT FOR 20ns;
		  resetn <= '1';
		  clk <= '1';
		  WAIT FOR 20ns;
		  FOR k IN 0 TO 100 LOOP
            clk <= '0';
            WAIT FOR 20ns;
            clk <= '1';
            WAIT FOR 20ns;
        END LOOP;
WAIT;                                                        
END PROCESS always;                                          
END DetectorAndGenerator_arch;
