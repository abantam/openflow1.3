
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name openflow1.3 -dir "/home/shimizu/research/openflow1.3/openflow1.3/planAhead_run_2" -part xc7k325tffg676-1
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/shimizu/research/openflow1.3/openflow1.3/repeaterhub.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/shimizu/research/openflow1.3/openflow1.3} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "repeaterhub.ucf" [current_fileset -constrset]
add_files [list {repeaterhub.ucf}] -fileset [get_property constrset [current_run]]
link_design
