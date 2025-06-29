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
extern void execute_524(char*, char *);
extern void execute_525(char*, char *);
extern void execute_1563(char*, char *);
extern void execute_1564(char*, char *);
extern void execute_1565(char*, char *);
extern void execute_1566(char*, char *);
extern void execute_1567(char*, char *);
extern void execute_1568(char*, char *);
extern void execute_1569(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_4(char*, char *);
extern void execute_530(char*, char *);
extern void execute_531(char*, char *);
extern void execute_532(char*, char *);
extern void execute_533(char*, char *);
extern void execute_68(char*, char *);
extern void execute_658(char*, char *);
extern void execute_659(char*, char *);
extern void execute_660(char*, char *);
extern void execute_196(char*, char *);
extern void execute_882(char*, char *);
extern void execute_1170(char*, char *);
extern void execute_393(char*, char *);
extern void execute_1173(char*, char *);
extern void execute_1174(char*, char *);
extern void execute_1175(char*, char *);
extern void execute_1176(char*, char *);
extern void execute_1172(char*, char *);
extern void execute_395(char*, char *);
extern void execute_396(char*, char *);
extern void execute_397(char*, char *);
extern void execute_1177(char*, char *);
extern void execute_1178(char*, char *);
extern void execute_1179(char*, char *);
extern void execute_527(char*, char *);
extern void execute_528(char*, char *);
extern void execute_529(char*, char *);
extern void execute_1570(char*, char *);
extern void execute_1571(char*, char *);
extern void execute_1572(char*, char *);
extern void execute_1573(char*, char *);
extern void execute_1574(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_606(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_610(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_614(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_618(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_622(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_626(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_630(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_634(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_638(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_642(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_646(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_650(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_654(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_658(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_662(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_666(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_670(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_674(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_678(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_682(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_686(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_690(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_694(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_698(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_702(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_706(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_710(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_714(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_718(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_722(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_726(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_730(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[75] = {(funcp)execute_524, (funcp)execute_525, (funcp)execute_1563, (funcp)execute_1564, (funcp)execute_1565, (funcp)execute_1566, (funcp)execute_1567, (funcp)execute_1568, (funcp)execute_1569, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_4, (funcp)execute_530, (funcp)execute_531, (funcp)execute_532, (funcp)execute_533, (funcp)execute_68, (funcp)execute_658, (funcp)execute_659, (funcp)execute_660, (funcp)execute_196, (funcp)execute_882, (funcp)execute_1170, (funcp)execute_393, (funcp)execute_1173, (funcp)execute_1174, (funcp)execute_1175, (funcp)execute_1176, (funcp)execute_1172, (funcp)execute_395, (funcp)execute_396, (funcp)execute_397, (funcp)execute_1177, (funcp)execute_1178, (funcp)execute_1179, (funcp)execute_527, (funcp)execute_528, (funcp)execute_529, (funcp)execute_1570, (funcp)execute_1571, (funcp)execute_1572, (funcp)execute_1573, (funcp)execute_1574, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_606, (funcp)transaction_610, (funcp)transaction_614, (funcp)transaction_618, (funcp)transaction_622, (funcp)transaction_626, (funcp)transaction_630, (funcp)transaction_634, (funcp)transaction_638, (funcp)transaction_642, (funcp)transaction_646, (funcp)transaction_650, (funcp)transaction_654, (funcp)transaction_658, (funcp)transaction_662, (funcp)transaction_666, (funcp)transaction_670, (funcp)transaction_674, (funcp)transaction_678, (funcp)transaction_682, (funcp)transaction_686, (funcp)transaction_690, (funcp)transaction_694, (funcp)transaction_698, (funcp)transaction_702, (funcp)transaction_706, (funcp)transaction_710, (funcp)transaction_714, (funcp)transaction_718, (funcp)transaction_722, (funcp)transaction_726, (funcp)transaction_730};
const int NumRelocateId= 75;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/cpu_tb_func_synth/xsim.reloc",  (void **)funcTab, 75);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/cpu_tb_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/cpu_tb_func_synth/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/cpu_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/cpu_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/cpu_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
