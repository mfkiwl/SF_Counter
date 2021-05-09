# Written by Synplify Pro version map202003act, Build 065R. Synopsys Run ID: sid1620533952 
# Top Level Design Parameters 

# Clocks 
create_clock -period 10.000 -waveform {0.000 5.000} -name {board_deploy_MSS|SPI_1_SS0_M2F_inferred_clock} [get_pins {board_deploy_MSS_0/MSS_ADLIB_INST/SPI1_SS0_MGPIO13A_H2F_A}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {board_deploy_MSS|SPI_1_CLK_M2F_inferred_clock} [get_pins {board_deploy_MSS_0/MSS_ADLIB_INST/SPI1_CLK_OUT}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {Gate_Set|sample_gate_inferred_clock} [get_pins {Gate_Set_0/sample_gate/Q}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {FCCC_C1_FCCC_C1_0_FCCC|GL0_net_inferred_clock} [get_pins {FCCC_C1_0/FCCC_C1_0/CCC_INST/GL0}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {FCCC_C0_FCCC_C0_0_FCCC|GL0_net_inferred_clock} [get_pins {FCCC_C0_0/FCCC_C0_0/CCC_INST/GL0}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {Gate_Set|signal_inferred_clock} [get_pins {Gate_Set_0/signal/Y}] 

# Virtual Clocks 

# Generated Clocks 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 

# Output Delay Constraints 

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 
set Inferred_clkgroup_0 [list board_deploy_MSS|SPI_1_SS0_M2F_inferred_clock]
set Inferred_clkgroup_1 [list board_deploy_MSS|SPI_1_CLK_M2F_inferred_clock]
set Inferred_clkgroup_2 [list Gate_Set|sample_gate_inferred_clock]
set Inferred_clkgroup_3 [list FCCC_C1_FCCC_C1_0_FCCC|GL0_net_inferred_clock]
set Inferred_clkgroup_4 [list FCCC_C0_FCCC_C0_0_FCCC|GL0_net_inferred_clock]
set Inferred_clkgroup_5 [list Gate_Set|signal_inferred_clock]
set_clock_groups -asynchronous -group $Inferred_clkgroup_0
set_clock_groups -asynchronous -group $Inferred_clkgroup_1
set_clock_groups -asynchronous -group $Inferred_clkgroup_2
set_clock_groups -asynchronous -group $Inferred_clkgroup_3
set_clock_groups -asynchronous -group $Inferred_clkgroup_4
set_clock_groups -asynchronous -group $Inferred_clkgroup_5


# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

