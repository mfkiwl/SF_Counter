set_device \
    -fam SmartFusion2 \
    -die PA4M2500_N \
    -pkg vf256
set_input_cfg \
	-path {C:/Libero/Projects/board_deploy/board_deploy/component/work/board_deploy_MSS/ENVM.cfg}
set_output_efc \
    -path {C:\Libero\Projects\board_deploy\board_deploy\designer\board_deploy\board_deploy.efc}
set_proj_dir \
    -path {C:\Libero\Projects\board_deploy\board_deploy}
set_is_relative_path \
    -value {FALSE}
set_root_path_dir \
    -path {}
gen_prg -use_init false
