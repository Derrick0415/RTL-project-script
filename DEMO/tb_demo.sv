//=====================================================================
// Designer     : Derrick Luan
//
// Discription  : Testbench of demo
//
// Modified Time: 
//=====================================================================

module tb_demo;

//====================================================================
// interconnect  signals
//====================================================================
    
    
    
//====================================================================
//  clk and reset
//====================================================================
    reg     clk;
    reg     rst_n;
    
    
//====================================================================
// instantiation
//====================================================================
    demo dut(   
            
            
    );
    
    
//====================================================================
// signal configurations
//====================================================================
    initial begin
        
    end
    
//====================================================================
// reset and clock generator
//====================================================================
    initial begin
        clk = 1'b0;
        forever begin
            #2  clk = ~clk;
        end
    end 
    initial begin
        rst_n = 1'b0;
        #20
        rst_n = 1'b1;
        $display("\033[0;32m%s\033[0m", "\nInitialization finished, watch out for any error\n");
    end

//====================================================================
// set simulation time
//====================================================================
    initial begin
        $display("\033[0;32m%s\033[0m", "\nSimulation start, waiting for initialization\n");
        #2_000_000
        $display("\033[0;32m%s\033[0m", "\nSimulation finished at 2000000ns\n");
        $finish;
    end
    
//====================================================================
// dump fsdb signal file
//====================================================================
    initial begin
       $fsdbDumpfile("demo.fsdb");
       $fsdbDumpvars(0,tb_demo);
       $fsdbDumpMDA();
    end

//====================================================================
//  Colorful Message Demo
//====================================================================
    //  Red    Message: $display("\033[0;31m%s\033[0m", "message");
    //  Green  Message: $display("\033[0;32m%s\033[0m", "message");
    //  Yellow Message: $display("\033[0;33m%s\033[0m", "message");
    //  Blue   Message: $display("\033[0;34m%s\033[0m", "message");

//====================================================================
//  Colorful Error Message Demo
//====================================================================
    //  Red    Error Message: $error("\033[0;31m%s\033[0m", "error message");
    //  Green  Error Message: $error("\033[0;32m%s\033[0m", "error message");
    //  Yellow Error Message: $error("\033[0;33m%s\033[0m", "error message");
    //  Blue   Error Message: $error("\033[0;34m%s\033[0m", "error message");
endmodule

