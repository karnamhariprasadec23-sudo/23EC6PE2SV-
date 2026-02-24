// -----------------------------------------------------------------------------
// File        : siso.sv
// Author      : karnam hariprasad saisahithi( 1BM23EC315 )
// Created     : 2026-02-22
// Module      : siso
// Project     : SystemVerilog and Verification (23EC6PE2SV),
//               Faculty: Prof. Ajaykumar Devarapalli
// Description : SISO shift register for serial data shifting.
// ----------------------------------------------------------------------------- 
module siso(input clk , si , output so);logic [3:0] q;
  assign so = q[3];
  always_ff @(posedge clk) q <= {q[2:0] , si };
endmodule
