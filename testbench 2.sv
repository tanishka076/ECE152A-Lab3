module counter_tb;

logic clk_i;
logic rst_i;
logic en_i;
logic dir_i;
logic [2:0] count_o;


ucsbece152a_counter dut (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .en_i(en_i),
    .dir_i(dir_i),
    .count_o(count_o)
);


always #5 clk_i = ~clk_i;

initial begin

    
    clk_i = 0;
    rst_i = 1;
    en_i  = 0;
    dir_i = 1;

    // Apply reset
    #10;
    rst_i = 0;

   
    en_i = 1;
    dir_i = 1;

    #80;


    dir_i = 0;

    #80;


    en_i = 0;

    #40;

 
    en_i = 1;
    dir_i = 1;

    #80;

    $finish;

end

endmodule
