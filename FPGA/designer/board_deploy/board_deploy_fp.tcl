new_project \
         -name {board_deploy} \
         -location {C:\Libero\Projects\board_deploy\board_deploy\designer\board_deploy\board_deploy_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {M2S025} \
         -name {M2S025}
enable_device \
         -name {M2S025} \
         -enable {TRUE}
save_project
close_project
