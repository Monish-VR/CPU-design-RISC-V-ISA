module Imem (
  input  wire [31:0] a,
  output reg  [31:0] rd
);
  reg [31:0] storage [0:10000];

  always @(*) rd = storage[a >> 2];

endmodule
