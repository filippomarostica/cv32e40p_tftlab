// ZOIX MODULE FOR FAULT INJECTION AND STROBING

`timescale 1ps / 1ps

`ifndef TOPLEVEL
	`define TOPLEVEL cv32e40p_top
`endif

module strobe;


// Inject faults
initial begin

        $display("ZOIX INJECTION");
        //$fs_inject;       // by default

        $fs_delete;			// CHECK THIS
        $fs_add(`TOPLEVEL);		// CHECK THIS

end


// Strobe point
initial begin

        //#`START_TIME;
        #59990; //equivalent to strobe_offset tmax
        forever begin

        //OUTPUTS

                $fs_strobe(`TOPLEVEL.instr_req_o);
                $fs_strobe(`TOPLEVEL.data_req_o);
                $fs_strobe(`TOPLEVEL.data_we_o);
                $fs_strobe(`TOPLEVEL.instr_addr_o);
                $fs_strobe(`TOPLEVEL.data_addr_o);
                $fs_strobe(`TOPLEVEL.data_wdata_o);
                $fs_strobe(`TOPLEVEL.data_be_o);
                $fs_strobe(`TOPLEVEL.div_out_0);
                $fs_strobe(`TOPLEVEL.div_out_1);
                $fs_strobe(`TOPLEVEL.div_out_2);
                $fs_strobe(`TOPLEVEL.core_i.id_stage_i.register_file_i.rdata_a_o);
                $fs_strobe(`TOPLEVEL.core_i.id_stage_i.register_file_i.rdata_b_o);
                $fs_strobe(`TOPLEVEL.core_i.id_stage_i.register_file_i.rdata_c_o);
                $fs_strobe(`TOPLEVEL.mem_err_o);

                #10000; // TMAX Strobe period
        end

end



endmodule
