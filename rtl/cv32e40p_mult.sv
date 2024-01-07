// Copyright 2018 ETH Zurich and University of Bologna.
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the "License"); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.

////////////////////////////////////////////////////////////////////////////////
// Engineer:       Matthias Baer - baermatt@student.ethz.ch                   //
//                                                                            //
// Additional contributions by:                                               //
//                 Andreas Traber - atraber@student.ethz.ch                   //
//                 Michael Gautschi - gautschi@iis.ee.ethz.ch                 //
//                                                                            //
// Design Name:    Subword multiplier and MAC                                 //
// Project Name:   RI5CY                                                      //
// Language:       SystemVerilog                                              //
//                                                                            //
// Description:    Advanced MAC unit for PULP.                                //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

module cv32e40p_mult
  import cv32e40p_pkg::*;
(
    input logic clk,
    input logic rst_n,

    input logic        enable_i,
    input mul_opcode_e operator_i,

    // integer and short multiplier
    input logic       short_subword_i,
    input logic [1:0] short_signed_i,

    input logic [31:0] op_a_i,
    input logic [31:0] op_b_i,
    input logic [31:0] op_c_i,

    input logic [4:0] imm_i,


    // dot multiplier
    input logic [ 1:0] dot_signed_i,
    input logic [31:0] dot_op_a_i,
    input logic [31:0] dot_op_b_i,
    input logic [31:0] dot_op_c_i,
    input logic        is_clpx_i,
    input logic [ 1:0] clpx_shift_i,
    input logic        clpx_img_i,

    output logic [31:0] result_o,

    output logic multicycle_o,
    output logic mulh_active_o,
    output logic ready_o,
    input  logic ex_ready_i,
    output logic [8:0] tmr_mult_err_o
);


  logic [2:0] multicycle_o_tmp , mulh_active_o_tmp , ready_o_tmp;
  logic [31:0] int_result_tmp [2:0];
  logic [31:0] short_result_tmp [2:0];
  logic [31:0] dot_char_result_tmp [2:0];
  logic [15:0] clpx_shift_result_tmp [2:0];
  logic [31:0] dot_short_result_tmp [2:0];
  mult_state_e mulh_CS_tmp[3];
  
  logic [31:0] int_result;
  logic [31:0] short_result;
  logic [31:0] dot_char_result;
  logic [15:0] clpx_shift_result;
  logic [31:0] dot_short_result;
  mult_state_e mulh_CS;

  genvar z;
  generate

    for(z=0; z<3; z++) begin : MULT_TMR_GEN
      // inputs A and B are swapped
      cv32e40p_mult_internal mult_internal_i (
        .clk(clk),
        .rst_n(rst_n),

        .enable_i(enable_i),
        .operator_i(operator_i),

        // integer and short multiplier
        .short_subword_i(short_subword_i),
        .short_signed_i(short_signed_i),

        .op_a_i(op_a_i),
        .op_b_i(op_b_i),
        .op_c_i(op_c_i),

        .imm_i(imm_i),


        // dot multiplier
        .dot_signed_i(dot_signed_i),
        .dot_op_a_i(dot_op_a_i),
        .dot_op_b_i(dot_op_b_i),
        .dot_op_c_i(dot_op_c_i),
        .is_clpx_i(is_clpx_i),
        .clpx_shift_i(clpx_shift_i),
        .clpx_img_i(clpx_img_i),



        .multicycle_o(multicycle_o_tmp[z]),
        .mulh_active_o(mulh_active_o_tmp[z]),
        .ready_o(ready_o_tmp[z]),
        .ex_ready_i(ex_ready_i),

        .int_result(int_result_tmp[z]),
        .short_result(short_result_tmp[z]),
        .dot_char_result(dot_char_result_tmp[z]),
        .clpx_shift_result(clpx_shift_result_tmp[z]),
        .dot_short_result(dot_short_result_tmp[z]),
        .mulh_CS_o(mulh_CS_tmp[z])
        );
    end

  endgenerate 

  cv32e40p_tmr #(.DATA_WIDTH(1)) multicycle_tmr (.data_0_i(multicycle_o_tmp[0]),.data_1_i(multicycle_o_tmp[1]),.data_2_i(multicycle_o_tmp[2]),.data_o(multicycle_o),.tmr_err(tmr_mult_err_o[0]));
  cv32e40p_tmr #(.DATA_WIDTH(1)) mulh_active_tmr (.data_0_i(mulh_active_o_tmp[0]),.data_1_i(mulh_active_o_tmp[1]),.data_2_i(mulh_active_o_tmp[2]),.data_o(mulh_active_o),.tmr_err(tmr_mult_err_o[1]));
  cv32e40p_tmr #(.DATA_WIDTH(1)) ready_tmr (.data_0_i(ready_o_tmp[0]),.data_1_i(ready_o_tmp[1]),.data_2_i(ready_o_tmp[2]),.data_o(ready_o),.tmr_err(tmr_mult_err_o[2]));
  cv32e40p_tmr #(.DATA_WIDTH(32)) int_result_tmr (.data_0_i(int_result_tmp[0]),.data_1_i(int_result_tmp[1]),.data_2_i(int_result_tmp[2]),.data_o(int_result),.tmr_err(tmr_mult_err_o[3]));
  cv32e40p_tmr #(.DATA_WIDTH(32)) short_result_tmr (.data_0_i(short_result_tmp[0]),.data_1_i(short_result_tmp[1]),.data_2_i(short_result_tmp[2]),.data_o(short_result),.tmr_err(tmr_mult_err_o[4]));
  cv32e40p_tmr #(.DATA_WIDTH(32)) dot_char_result_tmr (.data_0_i(dot_char_result_tmp[0]),.data_1_i(dot_char_result_tmp[1]),.data_2_i(dot_char_result_tmp[2]),.data_o(dot_char_result),.tmr_err(tmr_mult_err_o[5]));
  cv32e40p_tmr #(.DATA_WIDTH(16)) clpx_shift_result_tmr (.data_0_i(clpx_shift_result_tmp[0]),.data_1_i(clpx_shift_result_tmp[1]),.data_2_i(clpx_shift_result_tmp[2]),.data_o(clpx_shift_result),.tmr_err(tmr_mult_err_o[6]));
  cv32e40p_tmr #(.DATA_WIDTH(32)) dot_short_result_tmr (.data_0_i(dot_short_result_tmp[0]),.data_1_i(dot_short_result_tmp[1]),.data_2_i(dot_short_result_tmp[2]),.data_o(dot_short_result),.tmr_err(tmr_mult_err_o[7]));
  cv32e40p_tmr #(.DATA_WIDTH(3)) mulh_CS_tmr (.data_0_i(mulh_CS_tmp[0]),.data_1_i(mulh_CS_tmp[1]),.data_2_i(mulh_CS_tmp[2]),.data_o(mulh_CS),.tmr_err(tmr_mult_err_o[8]));

  //cv32e40p_tmr #(.DATA_WIDTH(32))  (.data_0_i(),.data_1_i(),.data_2_i(),.data_o(),.tmr_err(tmr_mult_err_o[]));
  
  ////////////////////////////////////////////////////////
  //   ____                 _ _     __  __              //
  //  |  _ \ ___  ___ _   _| | |_  |  \/  |_   ___  __  //
  //  | |_) / _ \/ __| | | | | __| | |\/| | | | \ \/ /  //
  //  |  _ <  __/\__ \ |_| | | |_  | |  | | |_| |>  <   //
  //  |_| \_\___||___/\__,_|_|\__| |_|  |_|\__,_/_/\_\  //
  //                                                    //
  ////////////////////////////////////////////////////////

  always_comb begin
    result_o = '0;

    unique case (operator_i)
      MUL_MAC32, MUL_MSU32: result_o = int_result[31:0];

      MUL_I, MUL_IR, MUL_H: result_o = short_result[31:0];

      MUL_DOT8: result_o = dot_char_result[31:0];
      MUL_DOT16: begin
        if (is_clpx_i) begin
          if (clpx_img_i) begin
            result_o[31:16] = clpx_shift_result;
            result_o[15:0]  = dot_op_c_i[15:0];
          end else begin
            result_o[15:0]  = clpx_shift_result;
            result_o[31:16] = dot_op_c_i[31:16];
          end
        end else begin
          result_o = dot_short_result[31:0];
        end
      end

      default: ;  // default case to suppress unique warning
    endcase
  end

  

  //----------------------------------------------------------------------------
  // Assertions
  //----------------------------------------------------------------------------

  // check multiplication result for mulh
`ifdef CV32E40P_ASSERT_ON
  assert property (
    @(posedge clk) ((mulh_CS == FINISH) && (operator_i == MUL_H) && (short_signed_i == 2'b11))
    |->
    (result_o == (($signed(
      {{32{op_a_i[31]}}, op_a_i}
  ) * $signed(
      {{32{op_b_i[31]}}, op_b_i}
  )) >>> 32)));

  // check multiplication result for mulhsu
  assert property (
    @(posedge clk) ((mulh_CS == FINISH) && (operator_i == MUL_H) && (short_signed_i == 2'b01))
    |->
    (result_o == (($signed(
      {{32{op_a_i[31]}}, op_a_i}
  ) * {
    32'b0, op_b_i
  }) >> 32)));

  // check multiplication result for mulhu
  assert property (
    @(posedge clk) ((mulh_CS == FINISH) && (operator_i == MUL_H) && (short_signed_i == 2'b00))
    |->
    (result_o == (({
    32'b0, op_a_i
  } * {
    32'b0, op_b_i
  }) >> 32)));
`endif
endmodule
