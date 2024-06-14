// Create Date: 2024/06
// Design Name£∫≤‚ ‘cMutexMerge3_1b
// Module Name: cMutexMerge3_1b_tb
// xing.yunpeng
`timescale 1ns / 1ps

module cMutexMerge3_1b_tb;
	// cMutexMerge3_1b Inputs
	reg   i_drive0;
	reg   i_drive1;
	reg   i_drive2;
	reg   i_data0;
	reg   i_data1;
	reg   i_data2;
	reg   i_freeNext;
	reg   rst;

	// cMutexMerge3_1b Outputs
	wire  o_free0;
	wire  o_free1;
	wire  o_free2;
	wire  o_driveNext;
	wire  o_data;

	cMutexMerge3_1b  u_cMutexMerge3_1b (
		.i_drive0                ( i_drive0      ),
		.i_drive1                ( i_drive1      ),
		.i_drive2                ( i_drive2      ),
		.i_data0                 ( i_data0       ),
		.i_data1                 ( i_data1       ),
		.i_data2                 ( i_data2       ),
		.i_freeNext              ( i_freeNext    ),
		.rst                     ( rst           ),

		.o_free0                 ( o_free0       ),
		.o_free1                 ( o_free1       ),
		.o_free2                 ( o_free2       ),
		.o_driveNext             ( o_driveNext   ),
		.o_data                  ( o_data        )
	);
	
	initial
	begin
				i_drive0		=		1'b0;
				i_drive1		=		1'b0;
				i_drive2		=		1'b0;
				i_freeNext 		=		1'b0;
				rst				=		1'b1;
		#5		rst				=		1'b0;
		#1		rst				=		1'b1;
		
		#100	i_drive0		=		1'b1;
		#1		i_drive0		=		1'b0;
		
		wait(o_driveNext == 1'b1);
		#5		i_freeNext		=		1'b1;
		#1		i_freeNext		=		1'b0;
		
		
		#5		i_drive1		=		1'b1;
		#1		i_drive1		=		1'b0;
		
		wait(o_driveNext == 1'b1);
		#5		i_freeNext		=		1'b1;
		#1		i_freeNext		=		1'b0;
		
		#5		i_drive2		=		1'b1;
		#1		i_drive2		=		1'b0;
		
		wait(o_driveNext == 1'b1);
		#5		i_freeNext		=		1'b1;
		#1		i_freeNext		=		1'b0;
		
		#5 $finish;
	end
endmodule