vlog -work work C:/Users/Hanliutong/OneDrive/Homework/cpu/simulation/modelsim/CPU_test.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MyCPU_vlg_vec_tst
onerror {resume}
add wave {MyCPU_vlg_vec_tst/i1/ABUS}
add wave {MyCPU_vlg_vec_tst/i1/ABUS[15]}
add wave {MyCPU_vlg_vec_tst/i1/ABUS[14]}
add wave {MyCPU_vlg_vec_tst/i1/ABUS[13]}
add wave {MyCPU_vlg_vec_tst/i1/ABUS[12]}
add wave {MyCPU_vlg_vec_tst/i1/ABUS[11]}
add wave {MyCPU_vlg_vec_tst/i1/ABUS[10]}
add wave {MyCPU_vlg_vec_tst/i1/ABUS[9]}
add wave {MyCPU_vlg_vec_tst/i1/ABUS[8]}
add wave {MyCPU_vlg_vec_tst/i1/ABUS[7]}
add wave {MyCPU_vlg_vec_tst/i1/ABUS[6]}
add wave {MyCPU_vlg_vec_tst/i1/ABUS[5]}
add wave {MyCPU_vlg_vec_tst/i1/ABUS[4]}
add wave {MyCPU_vlg_vec_tst/i1/ABUS[3]}
add wave {MyCPU_vlg_vec_tst/i1/ABUS[2]}
add wave {MyCPU_vlg_vec_tst/i1/ABUS[1]}
add wave {MyCPU_vlg_vec_tst/i1/ABUS[0]}
add wave {MyCPU_vlg_vec_tst/i1/BUS_MDR}
add wave {MyCPU_vlg_vec_tst/i1/CLK}
add wave {MyCPU_vlg_vec_tst/i1/cnt}
add wave {MyCPU_vlg_vec_tst/i1/cnt[3]}
add wave {MyCPU_vlg_vec_tst/i1/cnt[2]}
add wave {MyCPU_vlg_vec_tst/i1/cnt[1]}
add wave {MyCPU_vlg_vec_tst/i1/cnt[0]}
add wave {MyCPU_vlg_vec_tst/i1/Crystal}
add wave {MyCPU_vlg_vec_tst/i1/DBUS}
add wave {MyCPU_vlg_vec_tst/i1/DBUS[15]}
add wave {MyCPU_vlg_vec_tst/i1/DBUS[14]}
add wave {MyCPU_vlg_vec_tst/i1/DBUS[13]}
add wave {MyCPU_vlg_vec_tst/i1/DBUS[12]}
add wave {MyCPU_vlg_vec_tst/i1/DBUS[11]}
add wave {MyCPU_vlg_vec_tst/i1/DBUS[10]}
add wave {MyCPU_vlg_vec_tst/i1/DBUS[9]}
add wave {MyCPU_vlg_vec_tst/i1/DBUS[8]}
add wave {MyCPU_vlg_vec_tst/i1/DBUS[7]}
add wave {MyCPU_vlg_vec_tst/i1/DBUS[6]}
add wave {MyCPU_vlg_vec_tst/i1/DBUS[5]}
add wave {MyCPU_vlg_vec_tst/i1/DBUS[4]}
add wave {MyCPU_vlg_vec_tst/i1/DBUS[3]}
add wave {MyCPU_vlg_vec_tst/i1/DBUS[2]}
add wave {MyCPU_vlg_vec_tst/i1/DBUS[1]}
add wave {MyCPU_vlg_vec_tst/i1/DBUS[0]}
add wave {MyCPU_vlg_vec_tst/i1/DST}
add wave {MyCPU_vlg_vec_tst/i1/EXC}
add wave {MyCPU_vlg_vec_tst/i1/FI}
add wave {MyCPU_vlg_vec_tst/i1/I_DBUS}
add wave {MyCPU_vlg_vec_tst/i1/IBUS}
add wave {MyCPU_vlg_vec_tst/i1/IBUS[15]}
add wave {MyCPU_vlg_vec_tst/i1/IBUS[14]}
add wave {MyCPU_vlg_vec_tst/i1/IBUS[13]}
add wave {MyCPU_vlg_vec_tst/i1/IBUS[12]}
add wave {MyCPU_vlg_vec_tst/i1/IBUS[11]}
add wave {MyCPU_vlg_vec_tst/i1/IBUS[10]}
add wave {MyCPU_vlg_vec_tst/i1/IBUS[9]}
add wave {MyCPU_vlg_vec_tst/i1/IBUS[8]}
add wave {MyCPU_vlg_vec_tst/i1/IBUS[7]}
add wave {MyCPU_vlg_vec_tst/i1/IBUS[6]}
add wave {MyCPU_vlg_vec_tst/i1/IBUS[5]}
add wave {MyCPU_vlg_vec_tst/i1/IBUS[4]}
add wave {MyCPU_vlg_vec_tst/i1/IBUS[3]}
add wave {MyCPU_vlg_vec_tst/i1/IBUS[2]}
add wave {MyCPU_vlg_vec_tst/i1/IBUS[1]}
add wave {MyCPU_vlg_vec_tst/i1/IBUS[0]}
add wave {MyCPU_vlg_vec_tst/i1/IBUS_IR}
add wave {MyCPU_vlg_vec_tst/i1/IBUS_MAR}
add wave {MyCPU_vlg_vec_tst/i1/IBUS_PC}
add wave {MyCPU_vlg_vec_tst/i1/INT}
add wave {MyCPU_vlg_vec_tst/i1/M_clk}
add wave {MyCPU_vlg_vec_tst/i1/MAR_ABUS}
add wave {MyCPU_vlg_vec_tst/i1/MAR_IBUS}
add wave {MyCPU_vlg_vec_tst/i1/MDR_DBUS}
add wave {MyCPU_vlg_vec_tst/i1/MDR_IBUS}
add wave {MyCPU_vlg_vec_tst/i1/MRD}
add wave {MyCPU_vlg_vec_tst/i1/MWR}
add wave {MyCPU_vlg_vec_tst/i1/PC_IBUS}
add wave {MyCPU_vlg_vec_tst/i1/PCplus1}
add wave {MyCPU_vlg_vec_tst/i1/setTp1}
add wave {MyCPU_vlg_vec_tst/i1/SRC}
add wave {MyCPU_vlg_vec_tst/i1/Start}
add wave {MyCPU_vlg_vec_tst/i1/T}
add wave {MyCPU_vlg_vec_tst/i1/T[7]}
add wave {MyCPU_vlg_vec_tst/i1/T[6]}
add wave {MyCPU_vlg_vec_tst/i1/T[5]}
add wave {MyCPU_vlg_vec_tst/i1/T[4]}
add wave {MyCPU_vlg_vec_tst/i1/T[3]}
add wave {MyCPU_vlg_vec_tst/i1/T[2]}
add wave {MyCPU_vlg_vec_tst/i1/T[1]}
add wave {MyCPU_vlg_vec_tst/i1/T[0]}
add wave {MyCPU_vlg_vec_tst/i1/temp}
add wave {MyCPU_vlg_vec_tst/i1/temp[47]}
add wave {MyCPU_vlg_vec_tst/i1/temp[46]}
add wave {MyCPU_vlg_vec_tst/i1/temp[45]}
add wave {MyCPU_vlg_vec_tst/i1/temp[44]}
add wave {MyCPU_vlg_vec_tst/i1/temp[43]}
add wave {MyCPU_vlg_vec_tst/i1/temp[42]}
add wave {MyCPU_vlg_vec_tst/i1/temp[41]}
add wave {MyCPU_vlg_vec_tst/i1/temp[40]}
add wave {MyCPU_vlg_vec_tst/i1/temp[39]}
add wave {MyCPU_vlg_vec_tst/i1/temp[38]}
add wave {MyCPU_vlg_vec_tst/i1/temp[37]}
add wave {MyCPU_vlg_vec_tst/i1/temp[36]}
add wave {MyCPU_vlg_vec_tst/i1/temp[35]}
add wave {MyCPU_vlg_vec_tst/i1/temp[34]}
add wave {MyCPU_vlg_vec_tst/i1/temp[33]}
add wave {MyCPU_vlg_vec_tst/i1/temp[32]}
add wave {MyCPU_vlg_vec_tst/i1/temp[31]}
add wave {MyCPU_vlg_vec_tst/i1/temp[30]}
add wave {MyCPU_vlg_vec_tst/i1/temp[29]}
add wave {MyCPU_vlg_vec_tst/i1/temp[28]}
add wave {MyCPU_vlg_vec_tst/i1/temp[27]}
add wave {MyCPU_vlg_vec_tst/i1/temp[26]}
add wave {MyCPU_vlg_vec_tst/i1/temp[25]}
add wave {MyCPU_vlg_vec_tst/i1/temp[24]}
add wave {MyCPU_vlg_vec_tst/i1/temp[23]}
add wave {MyCPU_vlg_vec_tst/i1/temp[22]}
add wave {MyCPU_vlg_vec_tst/i1/temp[21]}
add wave {MyCPU_vlg_vec_tst/i1/temp[20]}
add wave {MyCPU_vlg_vec_tst/i1/temp[19]}
add wave {MyCPU_vlg_vec_tst/i1/temp[18]}
add wave {MyCPU_vlg_vec_tst/i1/temp[17]}
add wave {MyCPU_vlg_vec_tst/i1/temp[16]}
add wave {MyCPU_vlg_vec_tst/i1/temp[15]}
add wave {MyCPU_vlg_vec_tst/i1/temp[14]}
add wave {MyCPU_vlg_vec_tst/i1/temp[13]}
add wave {MyCPU_vlg_vec_tst/i1/temp[12]}
add wave {MyCPU_vlg_vec_tst/i1/temp[11]}
add wave {MyCPU_vlg_vec_tst/i1/temp[10]}
add wave {MyCPU_vlg_vec_tst/i1/temp[9]}
add wave {MyCPU_vlg_vec_tst/i1/temp[8]}
add wave {MyCPU_vlg_vec_tst/i1/temp[7]}
add wave {MyCPU_vlg_vec_tst/i1/temp[6]}
add wave {MyCPU_vlg_vec_tst/i1/temp[5]}
add wave {MyCPU_vlg_vec_tst/i1/temp[4]}
add wave {MyCPU_vlg_vec_tst/i1/temp[3]}
add wave {MyCPU_vlg_vec_tst/i1/temp[2]}
add wave {MyCPU_vlg_vec_tst/i1/temp[1]}
add wave {MyCPU_vlg_vec_tst/i1/temp[0]}
add wave {MyCPU_vlg_vec_tst/i1/W_B}
add wave {MyCPU_vlg_vec_tst/i1/zero_PC}
run -all
