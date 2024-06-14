/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_391(char*, char *);
extern void execute_392(char*, char *);
extern void execute_849(char*, char *);
extern void execute_850(char*, char *);
extern void execute_851(char*, char *);
extern void execute_852(char*, char *);
extern void execute_853(char*, char *);
extern void execute_854(char*, char *);
extern void execute_855(char*, char *);
extern void execute_856(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_7(char*, char *);
extern void execute_398(char*, char *);
extern void execute_399(char*, char *);
extern void execute_397(char*, char *);
extern void execute_10(char*, char *);
extern void execute_401(char*, char *);
extern void execute_402(char*, char *);
extern void execute_403(char*, char *);
extern void execute_404(char*, char *);
extern void execute_400(char*, char *);
extern void execute_15(char*, char *);
extern void execute_16(char*, char *);
extern void execute_17(char*, char *);
extern void execute_408(char*, char *);
extern void execute_409(char*, char *);
extern void execute_410(char*, char *);
extern void execute_411(char*, char *);
extern void execute_64(char*, char *);
extern void execute_462(char*, char *);
extern void execute_463(char*, char *);
extern void execute_464(char*, char *);
extern void execute_465(char*, char *);
extern void execute_466(char*, char *);
extern void execute_467(char*, char *);
extern void execute_468(char*, char *);
extern void execute_469(char*, char *);
extern void execute_461(char*, char *);
extern void execute_91(char*, char *);
extern void execute_92(char*, char *);
extern void execute_93(char*, char *);
extern void execute_501(char*, char *);
extern void execute_502(char*, char *);
extern void execute_503(char*, char *);
extern void execute_504(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_140(char*, char *);
extern void execute_563(char*, char *);
extern void execute_152(char*, char *);
extern void execute_153(char*, char *);
extern void execute_154(char*, char *);
extern void execute_155(char*, char *);
extern void execute_156(char*, char *);
extern void execute_157(char*, char *);
extern void execute_158(char*, char *);
extern void execute_569(char*, char *);
extern void execute_570(char*, char *);
extern void execute_571(char*, char *);
extern void execute_572(char*, char *);
extern void execute_573(char*, char *);
extern void execute_574(char*, char *);
extern void execute_184(char*, char *);
extern void execute_591(char*, char *);
extern void execute_592(char*, char *);
extern void execute_593(char*, char *);
extern void execute_187(char*, char *);
extern void execute_188(char*, char *);
extern void execute_394(char*, char *);
extern void execute_395(char*, char *);
extern void execute_396(char*, char *);
extern void execute_857(char*, char *);
extern void execute_858(char*, char *);
extern void execute_859(char*, char *);
extern void execute_860(char*, char *);
extern void execute_861(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_83(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_103(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_124(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_144(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_189(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_203(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_234(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_255(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_266(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_356(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_361(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_366(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_371(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_376(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_381(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_407(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_421(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_452(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_485(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_496(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_525(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_539(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_570(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_591(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_611(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[101] = {(funcp)execute_391, (funcp)execute_392, (funcp)execute_849, (funcp)execute_850, (funcp)execute_851, (funcp)execute_852, (funcp)execute_853, (funcp)execute_854, (funcp)execute_855, (funcp)execute_856, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_7, (funcp)execute_398, (funcp)execute_399, (funcp)execute_397, (funcp)execute_10, (funcp)execute_401, (funcp)execute_402, (funcp)execute_403, (funcp)execute_404, (funcp)execute_400, (funcp)execute_15, (funcp)execute_16, (funcp)execute_17, (funcp)execute_408, (funcp)execute_409, (funcp)execute_410, (funcp)execute_411, (funcp)execute_64, (funcp)execute_462, (funcp)execute_463, (funcp)execute_464, (funcp)execute_465, (funcp)execute_466, (funcp)execute_467, (funcp)execute_468, (funcp)execute_469, (funcp)execute_461, (funcp)execute_91, (funcp)execute_92, (funcp)execute_93, (funcp)execute_501, (funcp)execute_502, (funcp)execute_503, (funcp)execute_504, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_140, (funcp)execute_563, (funcp)execute_152, (funcp)execute_153, (funcp)execute_154, (funcp)execute_155, (funcp)execute_156, (funcp)execute_157, (funcp)execute_158, (funcp)execute_569, (funcp)execute_570, (funcp)execute_571, (funcp)execute_572, (funcp)execute_573, (funcp)execute_574, (funcp)execute_184, (funcp)execute_591, (funcp)execute_592, (funcp)execute_593, (funcp)execute_187, (funcp)execute_188, (funcp)execute_394, (funcp)execute_395, (funcp)execute_396, (funcp)execute_857, (funcp)execute_858, (funcp)execute_859, (funcp)execute_860, (funcp)execute_861, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_83, (funcp)transaction_103, (funcp)transaction_124, (funcp)transaction_144, (funcp)transaction_189, (funcp)transaction_203, (funcp)transaction_234, (funcp)transaction_255, (funcp)transaction_266, (funcp)transaction_356, (funcp)transaction_361, (funcp)transaction_366, (funcp)transaction_371, (funcp)transaction_376, (funcp)transaction_381, (funcp)transaction_407, (funcp)transaction_421, (funcp)transaction_452, (funcp)transaction_485, (funcp)transaction_496, (funcp)transaction_525, (funcp)transaction_539, (funcp)transaction_570, (funcp)transaction_591, (funcp)transaction_611};
const int NumRelocateId= 101;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/mutex3_2b_tb_func_synth/xsim.reloc",  (void **)funcTab, 101);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/mutex3_2b_tb_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/mutex3_2b_tb_func_synth/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/mutex3_2b_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/mutex3_2b_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/mutex3_2b_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
