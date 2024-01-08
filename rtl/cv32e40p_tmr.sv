module cv32e40p_tmr #(
  DATA_WIDTH = 32
) (
  input logic [DATA_WIDTH-1:0] data_0_i,
  input logic [DATA_WIDTH-1:0] data_1_i,
  input logic [DATA_WIDTH-1:0] data_2_i,
  output logic [DATA_WIDTH-1:0] data_o,
  output logic tmr_err
);
  /*
  always_comb begin : tmr_detc
    if ((data_0_i == data_1_i) && (data_1_i == data_2_i)) begin
      data_o = data_0_i;
      tmr_err = 1'b0;
    end else if (data_0_i == data_1_i) begin
      data_o = data_0_i;
      tmr_err = 1'b1;
    end else if (data_0_i == data_2_i) begin
      data_o = data_2_i;
      tmr_err = 1'b1;
    end else if (data_1_i == data_2_i) begin
      data_o = data_1_i;
      tmr_err = 1'b1;
    end else begin
      data_o = '0;
      tmr_err = 1'b1;
    end
  end*/

  genvar z;
  generate
    for (z = 0;z < DATA_WIDTH ;z++ ) begin
      assign data_o[z] = (data_0_i[z] & data_1_i[z]) | (data_0_i[z] & data_2_i[z]) | (data_1_i[z] & data_2_i[z]);
    end
  endgenerate
  assign tmr_err = is_err(data_0_i,data_1_i,data_2_i);

  function logic is_err(logic [DATA_WIDTH-1:0] data1,logic [DATA_WIDTH-1:0] data2,logic [DATA_WIDTH-1:0] data3);
        logic parity,parity_neg,tmp;
        int i;
        tmp = 1'b1;
        for (i = 0;i < DATA_WIDTH;i++ ) begin
            parity = data1[i] & data2[i] & data3[i];
            parity_neg = ~data1[i] & ~data2[i] & ~data3[i];
            tmp = (parity | parity_neg) & tmp;
        end
        return tmp;
    endfunction
endmodule