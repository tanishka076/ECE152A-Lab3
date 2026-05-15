module seven_seg_decoder (
    input  logic [2:0] digit_i,
    output logic [6:0] seg_o
);

always_comb begin
    case (digit_i)
        3'd0: seg_o = 7'b1111110;
        3'd1: seg_o = 7'b0110000;
        3'd2: seg_o = 7'b1101101;
        3'd3: seg_o = 7'b1111001;
        3'd4: seg_o = 7'b0110011;
        3'd5: seg_o = 7'b1011011;
        3'd6: seg_o = 7'b1011111;
        3'd7: seg_o = 7'b1110000;
        default: seg_o = 7'b0000000;
    endcase
end

endmodule