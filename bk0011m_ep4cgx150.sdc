#************************************************************
# THIS IS A WIZARD-GENERATED FILE.                           
#
# Version 13.1.4 Build 182 03/12/2014 SJ Full Version
#
#************************************************************

# Copyright (C) 1991-2014 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.


# Clock constraints

create_clock -name "CLOCK_50" -period 20.000 [get_ports {CLOCK_50}]
create_clock -name {SPI_SCK}  -period 10.000 -waveform { 0.000 0.500 } [get_ports {SPI_SCK}]
#create_clock -name {SPI_SCK}  -period 41.666 -waveform { 20.8 41.666 } [get_ports {SPI_SCK}]

# Set pin definitions for downstream constraints

set RAM_CLK { SDRAM_CLK }
set RAM_OUT { SDRAM_nCS SDRAM_CKE SDRAM_DQ[*] SDRAM_A* SDRAM_DQM* SDRAM_BA* SDRAM_nRAS SDRAM_nCAS SDRAM_nWE}
set RAM_IN {SDRAM_DQ[*]}

set VGA_OUT {VGA_R* VGA_G* VGA_B* VGA_HS VGA_VS}

set FALSE_OUT {LED UART_TX}
set FALSE_IN {UART_RX}

# Constraints for board-specific signals

set_input_delay -clock spiclk -min 0.5 { SPI_DO CONF_DATA0 SPI_DI SPI_SS2 SPI_SS3 }
set_input_delay -clock spiclk -max 0.5 { SPI_DO CONF_DATA0 SPI_DI SPI_SS2 SPI_SS3 }
set_output_delay -clock spiclk -min 0.5 { SPI_DO }
set_output_delay -clock spiclk -max 0.5 { SPI_DO }
set_false_path -to SDRAM_CLK

set topmodule ""

# Automatically constrain PLL and other generated clocks
derive_pll_clocks -create_base_clocks

# Automatically calculate clock uncertainty to jitter and other effects.
derive_clock_uncertainty

set_clock_groups -asynchronous -group [get_clocks {SPI_SCK}] -group [get_clocks {pll|altpll_component|auto_generated|pll1|clk[*]}]

set_input_delay -clock [get_clocks {pll|altpll_component|auto_generated|pll1|clk[0]}] -reference_pin [get_ports SDRAM_CLK] -max 6.4 [get_ports SDRAM_DQ[*]]
set_input_delay -clock [get_clocks {pll|altpll_component|auto_generated|pll1|clk[0]}] -reference_pin [get_ports SDRAM_CLK] -min 3.2 [get_ports SDRAM_DQ[*]]

set_output_delay -clock [get_clocks {pll|altpll_component|auto_generated|pll1|clk[0]}] -reference_pin [get_ports SDRAM_CLK] -max 1.5 [get_ports {SDRAM_D* SDRAM_A* SDRAM_BA* SDRAM_n* SDRAM_CKE}]
set_output_delay -clock [get_clocks {pll|altpll_component|auto_generated|pll1|clk[0]}] -reference_pin [get_ports SDRAM_CLK] -min -0.8 [get_ports {SDRAM_D* SDRAM_A* SDRAM_BA* SDRAM_n* SDRAM_CKE}]
