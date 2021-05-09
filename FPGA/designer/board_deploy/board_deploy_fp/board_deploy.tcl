open_project -project {C:\Libero\Projects\board_deploy\board_deploy\designer\board_deploy\board_deploy_fp\board_deploy.pro}
enable_device -name {M2S025} -enable 1
set_programming_file -name {M2S025} -file {C:\Libero\Projects\board_deploy\board_deploy\designer\board_deploy\board_deploy.ppd}
set_programming_action -action {PROGRAM} -name {M2S025} 
run_selected_actions
save_project
close_project
