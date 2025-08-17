module counter_updown_tb();
reg clk;
reg updown;
reg load_en;
reg [3:0]load;
wire [3:0]count;

counter_updown DUT(clk, load_en, updown, load, count);

initial 
begin
        clk = 1'b0;
        forever #5 clk = !clk;
end


initial 
begin    
    updown = 1'b1;
    load = 4'd1;
    load_en = 1'b1;
    #10;
    load_en = 1'b0;
    #70;
    
    updown = 1'b0;
    load = 4'd14;
    load_en = 1'b1;
    #10;
    load_en = 1'b0;
    #70;
    $finish;  
end

initial 
begin
    $monitor("count = %d", count);
end

endmodule
