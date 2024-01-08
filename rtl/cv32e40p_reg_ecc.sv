module cv32e40p_reg_ecc #(
    parameter DATA_WIDTH = 32
) (
    input logic clk,
    input logic rst_n,
    input logic enable,
    input logic [DATA_WIDTH-1:0] data_i,
    output logic [DATA_WIDTH-1:0] data_o,
    output logic mem_err_o
);
    logic parity_i;
    logic parity_o;
    logic [DATA_WIDTH:0] register;

    always_ff @( posedge clk, negedge rst_n ) begin : register_mem
        if (rst_n == 1'b0) 
            register <= '0;
        else if (enable) // Only update if enable signal is active
            register <= {data_i, calculate_parity(data_i)};
    end
    assign data_o = register[DATA_WIDTH:1];
    assign mem_err_o = (register[0] == calculate_parity(register)) ? 1'b0 : 1'b1;
    


    function logic calculate_parity(logic [DATA_WIDTH-1:0] data);
        logic parity;
        int i;
        parity = data[0];
        for (i = 1;i < DATA_WIDTH;i++ ) begin
            parity = parity ^ data[i];
        end
        return parity;
    endfunction
    
endmodule