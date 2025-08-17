module counter_updown(clk, load_en, updown, load, count);
input clk;
input load_en;
input updown;
input [3:0]load; 
output reg [3:0]count;


always@(posedge clk)
begin
    if(updown)
    begin
        if(load_en)
            begin
            count <= load;   
            end
        else
            begin
            count <= count + 4'd2;
            end 
    end
    else
    begin
        if(load_en)
            begin
            count <= load;   
            end
        else
            begin
            count <= count - 4'd2;
            end 
    end
end
endmodule
