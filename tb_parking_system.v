`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:07:57 05/02/2021
// Design Name:   parking_system
// Module Name:   tb_parking_system.v
// Project Name:  vlsiminiproject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: parking_system
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_parking_system_v;

	// Inputs
	reg clk;
	reg reset_n;
	reg sensor_entrance;
	reg sensor_exit;
	reg [1:0] password_1;
	reg [1:0] password_2;

	// Outputs
	wire GREEN_LED;
	wire RED_LED;
	wire [6:0] HEX_1;
	wire [6:0] HEX_2;

	// Instantiate the Unit Under Test (UUT)
	parking_system uut (
		.clk(clk), 
		.reset_n(reset_n), 
		.sensor_entrance(sensor_entrance), 
		.sensor_exit(sensor_exit), 
		.password_1(password_1), 
		.password_2(password_2), 
		.GREEN_LED(GREEN_LED), 
		.RED_LED(RED_LED), 
		.HEX_1(HEX_1), 
		.HEX_2(HEX_2)
	);

	 initial begin
 clk = 0;
 forever #10 clk = ~clk;
 end
 initial begin
 // Initialize Inputs
 reset_n = 0;
 sensor_entrance = 0;
 sensor_exit = 0;
 password_1 = 0;
 password_2 = 0;
 // Wait 100 ns for global reset to finish
 #100;
      reset_n = 1;
 #20;
 sensor_entrance = 1;
 #1000;
 sensor_entrance = 0;
 password_1 = 1;
 password_2 = 2;
 #2000;
 sensor_exit =1;
 
 // Add stimulus here
// fpga4student.com FPGA projects, Verilog projects, VHDL projects
 end
      
endmodule