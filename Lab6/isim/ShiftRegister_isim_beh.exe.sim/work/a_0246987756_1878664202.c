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
static const char *ng0 = "D:/AUT/Term4/CA/Lab/Lab6/ShiftRegister.vhd";



static void work_a_0246987756_1878664202_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    int t15;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;

LAB0:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 3616);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3472);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 5493);
    t6 = (t0 + 3552);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1672U);
    t7 = *((char **)t2);
    t2 = (t0 + 5497);
    t15 = xsi_mem_cmp(t2, t7, 2U);
    if (t15 == 1)
        goto LAB14;

LAB19:    t9 = (t0 + 5499);
    t16 = xsi_mem_cmp(t9, t7, 2U);
    if (t16 == 1)
        goto LAB15;

LAB20:    t17 = (t0 + 5501);
    t19 = xsi_mem_cmp(t17, t7, 2U);
    if (t19 == 1)
        goto LAB16;

LAB21:    t20 = (t0 + 5503);
    t22 = xsi_mem_cmp(t20, t7, 2U);
    if (t22 == 1)
        goto LAB17;

LAB22:
LAB18:    xsi_set_current_line(52, ng0);

LAB13:    goto LAB11;

LAB14:    xsi_set_current_line(42, ng0);
    t23 = (t0 + 1992U);
    t24 = *((char **)t23);
    t23 = (t0 + 3552);
    t25 = (t23 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t24, 4U);
    xsi_driver_first_trans_fast(t23);
    goto LAB13;

LAB15:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t29 = (3 - 2);
    t30 = (t29 * 1U);
    t31 = (0 + t30);
    t1 = (t2 + t31);
    t5 = (t0 + 3552);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_delta(t5, 0U, 3U, 0LL);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 3552);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 3U, 1, 0LL);
    goto LAB13;

LAB16:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t29 = (3 - 3);
    t30 = (t29 * 1U);
    t31 = (0 + t30);
    t1 = (t2 + t31);
    t5 = (t0 + 3552);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_delta(t5, 1U, 3U, 0LL);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 3552);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    goto LAB13;

LAB17:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t29 = (3 - 3);
    t30 = (t29 * 1U);
    t31 = (0 + t30);
    t1 = (t2 + t31);
    t5 = (t0 + 3552);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_delta(t5, 1U, 3U, 0LL);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 3552);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    goto LAB13;

LAB23:;
}


extern void work_a_0246987756_1878664202_init()
{
	static char *pe[] = {(void *)work_a_0246987756_1878664202_p_0};
	xsi_register_didat("work_a_0246987756_1878664202", "isim/ShiftRegister_isim_beh.exe.sim/work/a_0246987756_1878664202.didat");
	xsi_register_executes(pe);
}
