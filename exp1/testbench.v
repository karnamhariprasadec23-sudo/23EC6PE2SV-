//------------------------------------------------------------------------------
// File        : testbench.sv
// Author      : karnam hariprasad saisahithi( 1BM23EC315 )
// Created     : 2026-02-24
// Module      : tb_and_gate
// Project     : SystemVerilog and Verification (23EC6PE2SV),
//               Faculty: Prof. Ajaykumar Devarapalli
// Description : 2‑input AND gate used for basic functional coverage example.
//------------------------------------------------------------------------------

module tb_and_gate;

  logic a, b, y;

  and_gate dut (
    .a (a),
    .b (b),
    .y (y)
  );

  covergroup cg_and;
    cp_a    : coverpoint a;
    cp_b    : coverpoint b;
    cross_ab: cross cp_a, cp_b;
  endgroup

  cg_and cg = new();

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_and_gate);
  end

  initial begin
    repeat (20) begin
      a = $urandom_range(0, 1);
      b = $urandom_range(0, 1);
      #5;
      cg.sample();
    end

    $display("Final coverage = %0.2f%%", cg.get_inst_coverage());
    $finish;
  end

endmodule
