set_component FCCC_C0_FCCC_C0_0_FCCC
# Microsemi Corp.
# Date: 2021-May-08 22:20:18
#

create_clock -period 50 [ get_pins { CCC_INST/CLK0 } ]
create_generated_clock -multiply_by 2 -divide_by 8 -source [ get_pins { CCC_INST/CLK0 } ] -phase 0 [ get_pins { CCC_INST/GL0 } ]
