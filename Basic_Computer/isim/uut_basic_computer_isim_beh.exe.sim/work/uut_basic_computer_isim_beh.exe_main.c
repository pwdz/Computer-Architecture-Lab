/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *IEEE_P_1242562249;
char *STD_STANDARD;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_1242562249_init();
    work_a_3801681515_2486610892_init();
    work_a_3006959317_2486610892_init();
    work_a_2263464102_0632001823_init();
    work_a_1863506905_0632001823_init();
    work_a_1726235635_3212880686_init();
    work_a_1757816826_3212880686_init();
    work_a_4204489651_3212880686_init();
    work_a_3830602496_3212880686_init();
    work_a_4147046214_3212880686_init();
    work_a_0235870265_3212880686_init();
    work_a_2951549607_2486610892_init();
    work_a_3798783386_0632001823_init();
    work_a_2973221874_2486610892_init();
    work_a_1130988942_0632001823_init();
    work_a_0762552304_3212880686_init();
    work_a_3866433179_0831356973_init();
    work_a_0290344353_0632001823_init();
    work_a_0361153552_0632001823_init();
    work_a_2284846721_0632001823_init();
    work_a_0832606739_3212880686_init();
    work_a_1901705547_3212880686_init();
    work_a_3517170183_2372691052_init();


    xsi_register_tops("work_a_3517170183_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");

    return xsi_run_simulation(argc, argv);

}
