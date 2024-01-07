module cv32e40p_tmr #(
  DATA_WIDTH = 32
) (
  input logic [DATA_WIDTH-1:0] data_0_i,
  input logic [DATA_WIDTH-1:0] data_1_i,
  input logic [DATA_WIDTH-1:0] data_2_i,
  output logic [DATA_WIDTH-1:0] data_o,
  output logic tmr_err
);

  always_comb begin : tmr_detc
    if (data_0_i == data_1_i == data_2_i) begin
      data_o = data_0_i;
      tmr_err = 0;
    end else if (data_0_i == data_1_i) begin
      data_o = data_0_i;
      tmr_err = 1;
    end else if (data_0_i == data_2_i) begin
      data_o = data_0_i;
      tmr_err = 1;
    end else if (data_1_i == data_2_i) begin
      data_o = data_1_i;
      tmr_err = 1;
    end else begin
      data_o = '0;
      tmr_err = 1;
    end
  end

endmodule