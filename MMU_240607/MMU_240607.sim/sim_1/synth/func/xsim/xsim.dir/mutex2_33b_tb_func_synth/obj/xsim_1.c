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
extern void execute_859(char*, char *);
extern void execute_860(char*, char *);
extern void execute_1700(char*, char *);
extern void execute_1701(char*, char *);
extern void execute_1702(char*, char *);
extern void execute_1703(char*, char *);
extern void execute_1704(char*, char *);
extern void execute_1705(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_7(char*, char *);
extern void execute_866(char*, char *);
extern void execute_867(char*, char *);
extern void execute_865(char*, char *);
extern void execute_10(char*, char *);
extern void execute_869(char*, char *);
extern void execute_870(char*, char *);
extern void execute_871(char*, char *);
extern void execute_872(char*, char *);
extern void execute_868(char*, char *);
extern void execute_15(char*, char *);
extern void execute_16(char*, char *);
extern void execute_17(char*, char *);
extern void execute_876(char*, char *);
extern void execute_877(char*, char *);
extern void execute_878(char*, char *);
extern void execute_879(char*, char *);
extern void execute_67(char*, char *);
extern void execute_935(char*, char *);
extern void execute_936(char*, char *);
extern void execute_937(char*, char *);
extern void execute_938(char*, char *);
extern void execute_939(char*, char *);
extern void execute_940(char*, char *);
extern void execute_941(char*, char *);
extern void execute_942(char*, char *);
extern void execute_934(char*, char *);
extern void execute_91(char*, char *);
extern void execute_92(char*, char *);
extern void execute_93(char*, char *);
extern void execute_965(char*, char *);
extern void execute_966(char*, char *);
extern void execute_967(char*, char *);
extern void execute_968(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_146(char*, char *);
extern void execute_1033(char*, char *);
extern void execute_278(char*, char *);
extern void execute_279(char*, char *);
extern void execute_280(char*, char *);
extern void execute_281(char*, char *);
extern void execute_282(char*, char *);
extern void execute_283(char*, char *);
extern void execute_284(char*, char *);
extern void execute_1099(char*, char *);
extern void execute_1100(char*, char *);
extern void execute_1101(char*, char *);
extern void execute_1102(char*, char *);
extern void execute_1103(char*, char *);
extern void execute_1104(char*, char *);
extern void execute_300(char*, char *);
extern void execute_1114(char*, char *);
extern void execute_1115(char*, char *);
extern void execute_1116(char*, char *);
extern void execute_303(char*, char *);
extern void execute_304(char*, char *);
extern void execute_862(char*, char *);
extern void execute_863(char*, char *);
extern void execute_864(char*, char *);
extern void execute_1706(char*, char *);
extern void execute_1707(char*, char *);
extern void execute_1708(char*, char *);
extern void execute_1709(char*, char *);
extern void execute_1710(char*, char *);
extern void transaction_9(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_10(char*, char*, unsigned, unsigned, unsigned);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_130(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_150(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_171(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_191(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_233(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_247(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_278(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_303(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_317(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_570(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_575(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_580(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_585(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_590(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_595(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_600(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_605(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_610(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_615(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_620(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_625(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_630(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_635(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_640(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_645(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_650(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_655(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_660(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_665(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_670(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_675(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_680(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_685(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_690(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_695(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_700(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_705(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_710(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_715(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_720(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_725(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_730(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_738(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_743(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_748(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_753(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_758(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_763(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_768(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_773(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_778(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_783(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_788(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_793(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_798(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_803(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_808(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_813(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_818(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_823(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_828(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_833(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_838(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_843(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_848(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_853(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_858(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_863(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_868(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_873(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_878(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_883(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_888(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_893(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_898(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_925(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_939(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_970(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1004(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1018(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[156] = {(funcp)execute_859, (funcp)execute_860, (funcp)execute_1700, (funcp)execute_1701, (funcp)execute_1702, (funcp)execute_1703, (funcp)execute_1704, (funcp)execute_1705, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_7, (funcp)execute_866, (funcp)execute_867, (funcp)execute_865, (funcp)execute_10, (funcp)execute_869, (funcp)execute_870, (funcp)execute_871, (funcp)execute_872, (funcp)execute_868, (funcp)execute_15, (funcp)execute_16, (funcp)execute_17, (funcp)execute_876, (funcp)execute_877, (funcp)execute_878, (funcp)execute_879, (funcp)execute_67, (funcp)execute_935, (funcp)execute_936, (funcp)execute_937, (funcp)execute_938, (funcp)execute_939, (funcp)execute_940, (funcp)execute_941, (funcp)execute_942, (funcp)execute_934, (funcp)execute_91, (funcp)execute_92, (funcp)execute_93, (funcp)execute_965, (funcp)execute_966, (funcp)execute_967, (funcp)execute_968, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_146, (funcp)execute_1033, (funcp)execute_278, (funcp)execute_279, (funcp)execute_280, (funcp)execute_281, (funcp)execute_282, (funcp)execute_283, (funcp)execute_284, (funcp)execute_1099, (funcp)execute_1100, (funcp)execute_1101, (funcp)execute_1102, (funcp)execute_1103, (funcp)execute_1104, (funcp)execute_300, (funcp)execute_1114, (funcp)execute_1115, (funcp)execute_1116, (funcp)execute_303, (funcp)execute_304, (funcp)execute_862, (funcp)execute_863, (funcp)execute_864, (funcp)execute_1706, (funcp)execute_1707, (funcp)execute_1708, (funcp)execute_1709, (funcp)execute_1710, (funcp)transaction_9, (funcp)transaction_10, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_130, (funcp)transaction_150, (funcp)transaction_171, (funcp)transaction_191, (funcp)transaction_233, (funcp)transaction_247, (funcp)transaction_278, (funcp)transaction_303, (funcp)transaction_317, (funcp)transaction_570, (funcp)transaction_575, (funcp)transaction_580, (funcp)transaction_585, (funcp)transaction_590, (funcp)transaction_595, (funcp)transaction_600, (funcp)transaction_605, (funcp)transaction_610, (funcp)transaction_615, (funcp)transaction_620, (funcp)transaction_625, (funcp)transaction_630, (funcp)transaction_635, (funcp)transaction_640, (funcp)transaction_645, (funcp)transaction_650, (funcp)transaction_655, (funcp)transaction_660, (funcp)transaction_665, (funcp)transaction_670, (funcp)transaction_675, (funcp)transaction_680, (funcp)transaction_685, (funcp)transaction_690, (funcp)transaction_695, (funcp)transaction_700, (funcp)transaction_705, (funcp)transaction_710, (funcp)transaction_715, (funcp)transaction_720, (funcp)transaction_725, (funcp)transaction_730, (funcp)transaction_738, (funcp)transaction_743, (funcp)transaction_748, (funcp)transaction_753, (funcp)transaction_758, (funcp)transaction_763, (funcp)transaction_768, (funcp)transaction_773, (funcp)transaction_778, (funcp)transaction_783, (funcp)transaction_788, (funcp)transaction_793, (funcp)transaction_798, (funcp)transaction_803, (funcp)transaction_808, (funcp)transaction_813, (funcp)transaction_818, (funcp)transaction_823, (funcp)transaction_828, (funcp)transaction_833, (funcp)transaction_838, (funcp)transaction_843, (funcp)transaction_848, (funcp)transaction_853, (funcp)transaction_858, (funcp)transaction_863, (funcp)transaction_868, (funcp)transaction_873, (funcp)transaction_878, (funcp)transaction_883, (funcp)transaction_888, (funcp)transaction_893, (funcp)transaction_898, (funcp)transaction_925, (funcp)transaction_939, (funcp)transaction_970, (funcp)transaction_1004, (funcp)transaction_1018};
const int NumRelocateId= 156;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/mutex2_33b_tb_func_synth/xsim.reloc",  (void **)funcTab, 156);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/mutex2_33b_tb_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/mutex2_33b_tb_func_synth/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/mutex2_33b_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/mutex2_33b_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/mutex2_33b_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
