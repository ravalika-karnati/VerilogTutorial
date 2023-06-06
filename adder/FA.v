// Full Adder implementation using Verilog

module full_adder(
  input x, y, c_in,
  output s, c_out
);

wire s0, c0, c1;
half_adder HA0 (
    .x(x),
    .y(y),
    .s(s0),
    .c(c0)
);
half_adder HA1(
    .x(s0),
    .y(c_in),
    .s(s),
    .c(c1)  
);

assign c_out = c0 | c1;

endmodule
