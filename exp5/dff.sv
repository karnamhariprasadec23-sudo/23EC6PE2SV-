// -----------------------------------------------------------------------------
// File        : dff.sv
// Author      : karnam hariprasad saisahithi( 1BM23EC315 )
// Created     : 2026-02-22
// Module      : dff
// Project     : SystemVerilog and Verification (23EC6PE2SV),
//               Faculty: Prof. Ajaykumar Devarapalli
//
// Description : D flip-flop that stores input data on the clock edge.

// ----------------------------------------------------------------------------- 
module dff(input clk, rst , d, output reg q);
  always_ff @(posedge clk or posedge rst)
    if(rst) q<= 0; else q<=d;
endmodule
