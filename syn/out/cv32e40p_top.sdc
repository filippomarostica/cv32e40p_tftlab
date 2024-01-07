###################################################################

# Created by write_sdc on Sun Jan  7 18:12:35 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_operating_conditions typical -library NangateOpenCellLibrary
create_clock [get_ports clk_i]  -period 5  -waveform {0 2.5}
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[31]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[30]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[29]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[28]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[27]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[26]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[25]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[24]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[23]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[22]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[21]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[20]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[19]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[18]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[17]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[16]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[15]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[14]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[13]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[12]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[11]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[10]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[9]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[8]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[7]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[6]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[5]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[4]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[3]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[2]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[1]}]
set_input_delay -clock clk_i  2.5  [get_ports {irq_i[0]}]
set_input_delay -clock clk_i  4  [get_ports instr_gnt_i]
set_input_delay -clock clk_i  4  [get_ports instr_rvalid_i]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[31]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[30]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[29]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[28]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[27]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[26]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[25]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[24]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[23]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[22]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[21]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[20]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[19]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[18]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[17]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[16]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[15]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[14]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[13]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[12]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[11]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[10]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[9]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[8]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[7]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[6]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[5]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[4]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[3]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[2]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[1]}]
set_input_delay -clock clk_i  4  [get_ports {instr_rdata_i[0]}]
set_input_delay -clock clk_i  4  [get_ports data_gnt_i]
set_input_delay -clock clk_i  4  [get_ports data_rvalid_i]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[31]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[30]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[29]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[28]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[27]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[26]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[25]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[24]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[23]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[22]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[21]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[20]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[19]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[18]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[17]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[16]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[15]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[14]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[13]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[12]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[11]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[10]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[9]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[8]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[7]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[6]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[5]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[4]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[3]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[2]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[1]}]
set_input_delay -clock clk_i  4  [get_ports {data_rdata_i[0]}]
set_input_delay -clock clk_i  0.5  [get_ports debug_req_i]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[31]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[30]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[29]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[28]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[27]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[26]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[25]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[24]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[23]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[22]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[21]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[20]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[19]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[18]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[17]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[16]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[15]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[14]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[13]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[12]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[11]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[10]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[9]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[8]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[7]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[6]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[5]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[4]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[3]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[2]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[1]}]
set_input_delay -clock clk_i  0.5  [get_ports {boot_addr_i[0]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[31]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[30]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[29]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[28]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[27]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[26]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[25]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[24]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[23]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[22]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[21]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[20]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[19]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[18]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[17]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[16]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[15]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[14]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[13]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[12]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[11]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[10]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[9]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[8]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[7]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[6]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[5]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[4]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[3]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[2]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[1]}]
set_input_delay -clock clk_i  0.5  [get_ports {mtvec_addr_i[0]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[31]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[30]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[29]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[28]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[27]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[26]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[25]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[24]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[23]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[22]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[21]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[20]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[19]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[18]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[17]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[16]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[15]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[14]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[13]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[12]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[11]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[10]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[9]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[8]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[7]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[6]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[5]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[4]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[3]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[2]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[1]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_halt_addr_i[0]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[31]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[30]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[29]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[28]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[27]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[26]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[25]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[24]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[23]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[22]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[21]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[20]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[19]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[18]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[17]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[16]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[15]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[14]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[13]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[12]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[11]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[10]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[9]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[8]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[7]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[6]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[5]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[4]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[3]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[2]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[1]}]
set_input_delay -clock clk_i  0.5  [get_ports {hart_id_i[0]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[31]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[30]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[29]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[28]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[27]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[26]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[25]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[24]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[23]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[22]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[21]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[20]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[19]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[18]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[17]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[16]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[15]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[14]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[13]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[12]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[11]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[10]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[9]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[8]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[7]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[6]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[5]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[4]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[3]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[2]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[1]}]
set_input_delay -clock clk_i  0.5  [get_ports {dm_exception_addr_i[0]}]
set_input_delay -clock clk_i  0.5  [get_ports rst_ni]
set_input_delay -clock clk_i  0.5  [get_ports pulp_clock_en_i]
set_input_delay -clock clk_i  0.5  [get_ports scan_cg_en_i]
set_input_delay -clock clk_i  0.5  [get_ports fetch_enable_i]
set_output_delay -clock clk_i  1.25  [get_ports irq_ack_o]
set_output_delay -clock clk_i  1.25  [get_ports {irq_id_o[4]}]
set_output_delay -clock clk_i  1.25  [get_ports {irq_id_o[3]}]
set_output_delay -clock clk_i  1.25  [get_ports {irq_id_o[2]}]
set_output_delay -clock clk_i  1.25  [get_ports {irq_id_o[1]}]
set_output_delay -clock clk_i  1.25  [get_ports {irq_id_o[0]}]
set_output_delay -clock clk_i  3  [get_ports instr_req_o]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[31]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[30]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[29]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[28]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[27]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[26]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[25]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[24]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[23]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[22]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[21]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[20]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[19]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[18]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[17]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[16]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[15]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[14]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[13]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[12]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[11]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[10]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[9]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[8]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[7]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[6]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[5]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[4]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[3]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[2]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[1]}]
set_output_delay -clock clk_i  3  [get_ports {instr_addr_o[0]}]
set_output_delay -clock clk_i  3  [get_ports data_req_o]
set_output_delay -clock clk_i  3  [get_ports data_we_o]
set_output_delay -clock clk_i  3  [get_ports {data_be_o[3]}]
set_output_delay -clock clk_i  3  [get_ports {data_be_o[2]}]
set_output_delay -clock clk_i  3  [get_ports {data_be_o[1]}]
set_output_delay -clock clk_i  3  [get_ports {data_be_o[0]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[31]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[30]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[29]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[28]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[27]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[26]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[25]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[24]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[23]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[22]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[21]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[20]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[19]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[18]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[17]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[16]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[15]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[14]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[13]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[12]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[11]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[10]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[9]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[8]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[7]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[6]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[5]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[4]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[3]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[2]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[1]}]
set_output_delay -clock clk_i  3  [get_ports {data_addr_o[0]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[31]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[30]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[29]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[28]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[27]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[26]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[25]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[24]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[23]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[22]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[21]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[20]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[19]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[18]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[17]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[16]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[15]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[14]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[13]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[12]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[11]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[10]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[9]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[8]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[7]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[6]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[5]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[4]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[3]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[2]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[1]}]
set_output_delay -clock clk_i  3  [get_ports {data_wdata_o[0]}]
set_output_delay -clock clk_i  3  [get_ports debug_havereset_o]
set_output_delay -clock clk_i  3  [get_ports debug_running_o]
set_output_delay -clock clk_i  3  [get_ports debug_halted_o]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[32]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[31]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[30]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[29]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[28]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[27]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[26]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[25]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[24]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[23]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[22]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[21]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[20]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[19]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[18]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[17]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[16]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[15]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[14]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[13]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[12]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[11]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[10]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[9]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[8]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[7]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[6]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[5]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[4]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[3]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[2]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[1]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_0[0]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[32]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[31]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[30]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[29]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[28]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[27]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[26]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[25]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[24]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[23]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[22]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[21]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[20]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[19]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[18]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[17]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[16]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[15]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[14]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[13]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[12]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[11]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[10]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[9]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[8]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[7]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[6]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[5]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[4]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[3]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[2]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[1]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_1[0]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[32]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[31]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[30]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[29]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[28]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[27]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[26]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[25]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[24]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[23]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[22]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[21]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[20]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[19]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[18]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[17]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[16]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[15]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[14]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[13]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[12]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[11]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[10]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[9]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[8]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[7]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[6]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[5]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[4]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[3]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[2]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[1]}]
set_output_delay -clock clk_i  3  [get_ports {div_out_2[0]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[34]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[33]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[32]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[31]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[30]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[29]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[28]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[27]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[26]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[25]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[24]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[23]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[22]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[21]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[20]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[19]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[18]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[17]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[16]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[15]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[14]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[13]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[12]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[11]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[10]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[9]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[8]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[7]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[6]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[5]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[4]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[3]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[2]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[1]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_0[0]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[34]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[33]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[32]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[31]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[30]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[29]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[28]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[27]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[26]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[25]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[24]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[23]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[22]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[21]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[20]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[19]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[18]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[17]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[16]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[15]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[14]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[13]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[12]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[11]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[10]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[9]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[8]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[7]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[6]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[5]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[4]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[3]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[2]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[1]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_1[0]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[34]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[33]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[32]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[31]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[30]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[29]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[28]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[27]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[26]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[25]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[24]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[23]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[22]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[21]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[20]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[19]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[18]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[17]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[16]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[15]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[14]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[13]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[12]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[11]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[10]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[9]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[8]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[7]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[6]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[5]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[4]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[3]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[2]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[1]}]
set_output_delay -clock clk_i  3  [get_ports {mult_out_2[0]}]
set_output_delay -clock clk_i  3  [get_ports cs_error]
set_output_delay -clock clk_i  1.25  [get_ports core_sleep_o]
