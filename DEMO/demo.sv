//======================================================================
// Designer : Derrick Luan
//
// Project  : demo
//
// Last Modified Date : 
//
//----------------------------------------------------------------------
// 
// Discription  : demo
//
//======================================================================

module demo#(
//----------------------------------------------------------------------
//  Parameters
//----------------------------------------------------------------------
    parameter   
    )
    (
//----------------------------------------------------------------------
//  I/Os
//----------------------------------------------------------------------
    //  output
    output  
    
    //  input
    input

    //  clock & reset
    input   clk,
    input   rst_n
);

//----------------------------------------------------------------------
//  Internal logic and register declarations
//----------------------------------------------------------------------
    wire

    reg

//----------------------------------------------------------------------
//  Beginning of Module
//----------------------------------------------------------------------

    always_ff@(posedge clk, negedge rst_n) begin
        if(~rst_n) begin
            
        end
        else if() begin
            
        end
        else begin
            
        end
    end

    always_comb begin
        
    end

//----------------------------------------------------------------------
//  Simulation Monitors
//----------------------------------------------------------------------
//  This section cannot be synthesised

    //synopsys translate_off
    //always @(posedge clk)
    //    if(rst_n) begin
    //        if ()
    //            $error("\033[0;31m%s\033[0m", "Error: "); //  edit the error message behind the comma
    //        if ()
    //            $error("\033[0;31m%s\033[0m", "Error: "); //  edit the error message behind the comma
    //    end
    //synopsys translate_on

endmodule

