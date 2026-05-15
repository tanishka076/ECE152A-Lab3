module counter (
    input  logic       clk_i,
    input  logic       rst_i,
    output logic [2:0] count_o
);

always_ff @(posedge clk_i or posedge rst_i) begin
    if (rst_i) begin
        count_o <= 3'b000;
    end else begin
        if (count_o == 3'b111) begin
            count_o <= 3'b000;
        end else begin
            count_o <= count_o + 3'b001;
        end
    end
end

endmodule