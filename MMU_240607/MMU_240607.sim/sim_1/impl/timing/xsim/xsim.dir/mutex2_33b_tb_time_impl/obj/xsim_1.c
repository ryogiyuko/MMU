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
extern void execute_129(char*, char *);
extern void execute_130(char*, char *);
extern void execute_523(char*, char *);
extern void execute_524(char*, char *);
extern void execute_525(char*, char *);
extern void execute_526(char*, char *);
extern void execute_527(char*, char *);
extern void execute_528(char*, char *);
extern void execute_54(char*, char *);
extern void execute_115(char*, char *);
extern void vlog_simple_process_execute_1_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_273(char*, char *);
extern void execute_460(char*, char *);
extern void execute_509(char*, char *);
extern void execute_510(char*, char *);
extern void execute_511(char*, char *);
extern void execute_512(char*, char *);
extern void execute_513(char*, char *);
extern void execute_514(char*, char *);
extern void execute_521(char*, char *);
extern void execute_522(char*, char *);
extern void execute_271(char*, char *);
extern void execute_8(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_7(char*, char *);
extern void execute_136(char*, char *);
extern void execute_137(char*, char *);
extern void execute_135(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_15(char*, char *);
extern void execute_143(char*, char *);
extern void execute_144(char*, char *);
extern void execute_145(char*, char *);
extern void execute_146(char*, char *);
extern void execute_142(char*, char *);
extern void execute_26(char*, char *);
extern void execute_27(char*, char *);
extern void execute_28(char*, char *);
extern void execute_29(char*, char *);
extern void execute_160(char*, char *);
extern void execute_161(char*, char *);
extern void execute_162(char*, char *);
extern void execute_163(char*, char *);
extern void execute_164(char*, char *);
extern void execute_165(char*, char *);
extern void execute_166(char*, char *);
extern void execute_167(char*, char *);
extern void execute_168(char*, char *);
extern void execute_169(char*, char *);
extern void execute_170(char*, char *);
extern void execute_171(char*, char *);
extern void execute_172(char*, char *);
extern void execute_173(char*, char *);
extern void execute_174(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_1(char*, char *);
extern void vlog_timingcheck_execute_0(char*, char*, char*);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_2(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_127(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_128(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_129(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_130(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_131(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_132(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_133(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_134(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_135(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_136(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_137(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_138(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_139(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_140(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_141(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_142(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_143(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_144(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_145(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_146(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_147(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_148(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_149(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_150(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_27(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_28(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_29(char*, char *);
extern void timing_checker_condition_m_d24c33d8_23d9ce75_30(char*, char *);
extern void execute_193(char*, char *);
extern void execute_199(char*, char *);
extern void execute_200(char*, char *);
extern void execute_201(char*, char *);
extern void execute_202(char*, char *);
extern void execute_46(char*, char *);
extern void execute_262(char*, char *);
extern void execute_263(char*, char *);
extern void execute_132(char*, char *);
extern void execute_133(char*, char *);
extern void execute_134(char*, char *);
extern void execute_529(char*, char *);
extern void execute_530(char*, char *);
extern void execute_531(char*, char *);
extern void execute_532(char*, char *);
extern void execute_533(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_19(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_20(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_21(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_22(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_23(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_24(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_26(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_27(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_28(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_44(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_108(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_141(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_148(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_149(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_182(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_184(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_192(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_193(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_194(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_195(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_196(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_197(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_198(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_199(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_200(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_256(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_289(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_296(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_297(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_80(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_118(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_162(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_228(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_266(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_310(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[147] = {(funcp)execute_129, (funcp)execute_130, (funcp)execute_523, (funcp)execute_524, (funcp)execute_525, (funcp)execute_526, (funcp)execute_527, (funcp)execute_528, (funcp)execute_54, (funcp)execute_115, (funcp)vlog_simple_process_execute_1_fast_no_reg_no_agg, (funcp)execute_273, (funcp)execute_460, (funcp)execute_509, (funcp)execute_510, (funcp)execute_511, (funcp)execute_512, (funcp)execute_513, (funcp)execute_514, (funcp)execute_521, (funcp)execute_522, (funcp)execute_271, (funcp)execute_8, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_7, (funcp)execute_136, (funcp)execute_137, (funcp)execute_135, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_15, (funcp)execute_143, (funcp)execute_144, (funcp)execute_145, (funcp)execute_146, (funcp)execute_142, (funcp)execute_26, (funcp)execute_27, (funcp)execute_28, (funcp)execute_29, (funcp)execute_160, (funcp)execute_161, (funcp)execute_162, (funcp)execute_163, (funcp)execute_164, (funcp)execute_165, (funcp)execute_166, (funcp)execute_167, (funcp)execute_168, (funcp)execute_169, (funcp)execute_170, (funcp)execute_171, (funcp)execute_172, (funcp)execute_173, (funcp)execute_174, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_1, (funcp)vlog_timingcheck_execute_0, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_2, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_127, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_128, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_129, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_130, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_131, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_132, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_133, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_134, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_135, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_136, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_137, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_138, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_139, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_140, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_141, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_142, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_143, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_144, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_145, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_146, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_147, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_148, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_149, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_150, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_27, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_28, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_29, (funcp)timing_checker_condition_m_d24c33d8_23d9ce75_30, (funcp)execute_193, (funcp)execute_199, (funcp)execute_200, (funcp)execute_201, (funcp)execute_202, (funcp)execute_46, (funcp)execute_262, (funcp)execute_263, (funcp)execute_132, (funcp)execute_133, (funcp)execute_134, (funcp)execute_529, (funcp)execute_530, (funcp)execute_531, (funcp)execute_532, (funcp)execute_533, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_19, (funcp)transaction_20, (funcp)transaction_21, (funcp)transaction_22, (funcp)transaction_23, (funcp)transaction_24, (funcp)transaction_26, (funcp)transaction_27, (funcp)transaction_28, (funcp)transaction_34, (funcp)transaction_36, (funcp)transaction_44, (funcp)transaction_45, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_108, (funcp)transaction_141, (funcp)transaction_148, (funcp)transaction_149, (funcp)transaction_182, (funcp)transaction_184, (funcp)transaction_192, (funcp)transaction_193, (funcp)transaction_194, (funcp)transaction_195, (funcp)transaction_196, (funcp)transaction_197, (funcp)transaction_198, (funcp)transaction_199, (funcp)transaction_200, (funcp)transaction_256, (funcp)transaction_289, (funcp)transaction_296, (funcp)transaction_297, (funcp)transaction_80, (funcp)transaction_118, (funcp)transaction_162, (funcp)transaction_228, (funcp)transaction_266, (funcp)transaction_310};
const int NumRelocateId= 147;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/mutex2_33b_tb_time_impl/xsim.reloc",  (void **)funcTab, 147);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/mutex2_33b_tb_time_impl/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/mutex2_33b_tb_time_impl/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/mutex2_33b_tb_time_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/mutex2_33b_tb_time_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/mutex2_33b_tb_time_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
