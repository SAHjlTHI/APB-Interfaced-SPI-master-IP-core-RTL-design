module spi_slave_control_select_tb();
reg pclk,preset_n,mstr_i,spiswai_i,send_data_i;
reg [11:0]baud_rate_divisor_i;
reg [1:0]spi_mode_i;
wire received_data_o,ss_o,tip_o;
spi_slave_control_select dut(pclk,preset_n,mstr_i,spiswai_i,spi_mode_i,send_data_i,baud_rate_divisor_i,received_data_o,ss_o,tip_o);
initial
begin
	pclk=1'b0;
	forever #5 pclk=~pclk;
end
task reset();
	begin
		@(negedge pclk);
		preset_n=1'b0;
		@(negedge pclk);
		preset_n=1'b1;
	end
endtask
task initialize;
	begin
		pclk=1'b0;
		preset_n=1'b1;
		mstr_i=1'b0;
		spi_mode_i=2'b00;
		send_data_i=1'b0;
		baud_rate_divisor_i=12'b0;
		spiswai_i=1'b1;
  end
endtask
task stimulus();
	begin
		@(negedge pclk);
		mstr_i=1'b1;
		spiswai_i=1'b0;
		send_data_i=1'b1;
		@(negedge pclk);
		send_data_i=1'b0;
	end
endtask
initial
begin
	initialize;
	#10;
	reset();
	#10;
	stimulus();
	baud_rate_divisor_i=12'b100;
	#400  $finish;
end
endmodule 
