set_family {SmartFusion2}
read_verilog -mode system_verilog {C:\Libero\Projects\board_deploy\board_deploy\hdl\Add_Counter.v}
read_verilog -mode system_verilog {C:\Libero\Projects\board_deploy\board_deploy\component\work\FCCC_C0\FCCC_C0_0\FCCC_C0_FCCC_C0_0_FCCC.v}
read_verilog -mode system_verilog {C:\Libero\Projects\board_deploy\board_deploy\component\work\FCCC_C0\FCCC_C0.v}
read_verilog -mode system_verilog {C:\Libero\Projects\board_deploy\board_deploy\component\work\FCCC_C1\FCCC_C1_0\FCCC_C1_FCCC_C1_0_FCCC.v}
read_verilog -mode system_verilog {C:\Libero\Projects\board_deploy\board_deploy\component\work\FCCC_C1\FCCC_C1.v}
read_verilog -mode system_verilog {C:\Libero\Projects\board_deploy\board_deploy\hdl\Gate_Set.v}
read_verilog -mode system_verilog {C:\Libero\Projects\board_deploy\board_deploy\component\work\OSC_C0\OSC_C0_0\OSC_C0_OSC_C0_0_OSC.v}
read_verilog -mode system_verilog {C:\Libero\Projects\board_deploy\board_deploy\component\work\OSC_C0\OSC_C0.v}
read_verilog -mode system_verilog {C:\Libero\Projects\board_deploy\board_deploy\hdl\Recip_Freq_Counter.v}
read_verilog -mode system_verilog {C:\Libero\Projects\board_deploy\board_deploy\hdl\SPI_slave.v}
read_verilog -mode system_verilog {C:\Libero\Projects\board_deploy\board_deploy\component\work\board_deploy_MSS\board_deploy_MSS.v}
read_verilog -mode system_verilog {C:\Libero\Projects\board_deploy\board_deploy\hdl\fine_counter.v}
read_verilog -mode system_verilog {C:\Libero\Projects\board_deploy\board_deploy\component\work\board_deploy\board_deploy.v}
set_top_level {board_deploy}
map_netlist
check_constraints {C:\Libero\Projects\board_deploy\board_deploy\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Libero\Projects\board_deploy\board_deploy\designer\board_deploy\synthesis.fdc}
