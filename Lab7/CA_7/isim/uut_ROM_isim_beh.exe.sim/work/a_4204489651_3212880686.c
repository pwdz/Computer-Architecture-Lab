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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Saman/Xilinx/Projects/CA_7/ROM.vhd";



static void work_a_4204489651_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1152U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3112);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(57, ng0);
    t4 = (t0 + 1512U);
    t8 = *((char **)t4);
    t9 = (0 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t4 = (t8 + t12);
    t13 = *((unsigned char *)t4);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t9 = (1 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t2 = (t4 + t12);
    t1 = *((unsigned char *)t2);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB11;

LAB12:    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t9 = (2 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t2 = (t4 + t12);
    t1 = *((unsigned char *)t2);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB13;

LAB14:    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t9 = (3 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t2 = (t4 + t12);
    t1 = *((unsigned char *)t2);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB15;

LAB16:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(58, ng0);
    t15 = (t0 + 1808U);
    t16 = *((char **)t15);
    t17 = (0 - 0);
    t18 = (t17 * 1);
    t19 = (8U * t18);
    t20 = (0 + t19);
    t15 = (t16 + t20);
    t21 = (t0 + 3192);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t15, 8U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB9;

LAB11:    xsi_set_current_line(60, ng0);
    t5 = (t0 + 1808U);
    t8 = *((char **)t5);
    t17 = (1 - 0);
    t18 = (t17 * 1);
    t19 = (8U * t18);
    t20 = (0 + t19);
    t5 = (t8 + t20);
    t15 = (t0 + 3192);
    t16 = (t15 + 56U);
    t21 = *((char **)t16);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t5, 8U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB9;

LAB13:    xsi_set_current_line(62, ng0);
    t5 = (t0 + 1808U);
    t8 = *((char **)t5);
    t17 = (2 - 0);
    t18 = (t17 * 1);
    t19 = (8U * t18);
    t20 = (0 + t19);
    t5 = (t8 + t20);
    t15 = (t0 + 3192);
    t16 = (t15 + 56U);
    t21 = *((char **)t16);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t5, 8U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB9;

LAB15:    xsi_set_current_line(64, ng0);
    t5 = (t0 + 1808U);
    t8 = *((char **)t5);
    t17 = (3 - 0);
    t18 = (t17 * 1);
    t19 = (8U * t18);
    t20 = (0 + t19);
    t5 = (t8 + t20);
    t15 = (t0 + 3192);
    t16 = (t15 + 56U);
    t21 = *((char **)t16);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t5, 8U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB9;

}


extern void work_a_4204489651_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4204489651_3212880686_p_0};
	xsi_register_didat("work_a_4204489651_3212880686", "isim/uut_ROM_isim_beh.exe.sim/work/a_4204489651_3212880686.didat");
	xsi_register_executes(pe);
}
