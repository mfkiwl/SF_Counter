set_component FCCC_C1_FCCC_C1_0_FCCC
# Microsemi Corp.
# Date: 2021-May-08 22:19:43
#

create_clock -period 50 [ get_pins { CCC_INST/CLK0 } ]
create_generated_clock -multiply_by 5 -divide_by 2 -source [ get_pins { CCC_INST/CLK0 } ] -phase 0 [ get_pins { CCC_INST/GL0 } ]
create_generated_clock -multiply_by 5 -divide_by 2 -source [ get_pins { CCC_INST/CLK0 } ] -phase 45 [ get_pins { CCC_INST/GL1 } ]
create_generated_clock -multiply_by 5 -divide_by 2 -source [ get_pins { CCC_INST/CLK0 } ] -phase 90 [ get_pins { CCC_INST/GL2 } ]
create_generated_clock -multiply_by 5 -divide_by 2 -source [ get_pins { CCC_INST/CLK0 } ] -phase 135 [ get_pins { CCC_INST/GL3 } ]
