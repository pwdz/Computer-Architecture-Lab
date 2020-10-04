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
static const char *ng0 = "C:/Users/Saman/ca-lab/Basic_Computer/RAM.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_3830602496_3212880686_p_0(char *t0)
{
    char t8[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    int t7;
    char *t9;
    char *t10;
    char *t11;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned char t22;
    unsigned char t23;
    unsigned char t24;
    unsigned char t25;
    unsigned char t26;
    unsigned char t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;

LAB0:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB12;

LAB13:    t3 = (unsigned char)0;

LAB14:    if (t3 != 0)
        goto LAB10;

LAB11:
LAB3:    t1 = (t0 + 3792);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 6611);
    *((int *)t1) = 0;
    t5 = (t0 + 6615);
    *((int *)t5) = 7;
    t6 = 0;
    t7 = 7;

LAB5:    if (t6 <= t7)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(59, ng0);
    t9 = (t0 + 6611);
    t10 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, *((int *)t9), 8);
    t11 = (t0 + 6611);
    t12 = *((int *)t11);
    t13 = (t12 - 0);
    t14 = (t13 * 1);
    t15 = (8U * t14);
    t16 = (0U + t15);
    t17 = (t0 + 3872);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t10, 8U);
    xsi_driver_first_trans_delta(t17, t16, 8U, 0LL);

LAB7:    t1 = (t0 + 6611);
    t6 = *((int *)t1);
    t2 = (t0 + 6615);
    t7 = *((int *)t2);
    if (t6 == t7)
        goto LAB8;

LAB9:    t12 = (t6 + 1);
    t6 = t12;
    t5 = (t0 + 6611);
    *((int *)t5) = t6;
    goto LAB5;

LAB10:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1192U);
    t9 = *((char **)t2);
    t24 = *((unsigned char *)t9);
    t25 = (t24 == (unsigned char)3);
    if (t25 != 0)
        goto LAB15;

LAB17:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB35;

LAB36:
LAB16:    goto LAB3;

LAB12:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t22 = *((unsigned char *)t5);
    t23 = (t22 == (unsigned char)3);
    t3 = t23;
    goto LAB14;

LAB15:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2152U);
    t10 = *((char **)t2);
    t6 = (0 - 7);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t2 = (t10 + t16);
    t26 = *((unsigned char *)t2);
    t27 = (t26 == (unsigned char)3);
    if (t27 != 0)
        goto LAB18;

LAB20:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t6 = (1 - 7);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB21;

LAB22:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t6 = (2 - 7);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB23;

LAB24:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t6 = (3 - 7);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB25;

LAB26:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t6 = (4 - 7);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB27;

LAB28:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t6 = (5 - 7);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB29;

LAB30:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t6 = (6 - 7);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB31;

LAB32:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t6 = (7 - 7);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB33;

LAB34:
LAB19:    goto LAB16;

LAB18:    xsi_set_current_line(64, ng0);
    t11 = (t0 + 1672U);
    t17 = *((char **)t11);
    t11 = (t0 + 3872);
    t18 = (t11 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t17, 8U);
    xsi_driver_first_trans_delta(t11, 0U, 8U, 0LL);
    goto LAB19;

LAB21:    xsi_set_current_line(66, ng0);
    t5 = (t0 + 1672U);
    t9 = *((char **)t5);
    t5 = (t0 + 3872);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 8U);
    xsi_driver_first_trans_delta(t5, 8U, 8U, 0LL);
    goto LAB19;

LAB23:    xsi_set_current_line(68, ng0);
    t5 = (t0 + 1672U);
    t9 = *((char **)t5);
    t5 = (t0 + 3872);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 8U);
    xsi_driver_first_trans_delta(t5, 16U, 8U, 0LL);
    goto LAB19;

LAB25:    xsi_set_current_line(70, ng0);
    t5 = (t0 + 1672U);
    t9 = *((char **)t5);
    t5 = (t0 + 3872);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 8U);
    xsi_driver_first_trans_delta(t5, 24U, 8U, 0LL);
    goto LAB19;

LAB27:    xsi_set_current_line(72, ng0);
    t5 = (t0 + 1672U);
    t9 = *((char **)t5);
    t5 = (t0 + 3872);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 8U);
    xsi_driver_first_trans_delta(t5, 32U, 8U, 0LL);
    goto LAB19;

LAB29:    xsi_set_current_line(74, ng0);
    t5 = (t0 + 1672U);
    t9 = *((char **)t5);
    t5 = (t0 + 3872);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 8U);
    xsi_driver_first_trans_delta(t5, 40U, 8U, 0LL);
    goto LAB19;

LAB31:    xsi_set_current_line(76, ng0);
    t5 = (t0 + 1672U);
    t9 = *((char **)t5);
    t5 = (t0 + 3872);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 8U);
    xsi_driver_first_trans_delta(t5, 48U, 8U, 0LL);
    goto LAB19;

LAB33:    xsi_set_current_line(78, ng0);
    t5 = (t0 + 1672U);
    t9 = *((char **)t5);
    t5 = (t0 + 3872);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 8U);
    xsi_driver_first_trans_delta(t5, 56U, 8U, 0LL);
    goto LAB19;

LAB35:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 2152U);
    t5 = *((char **)t1);
    t6 = (0 - 7);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t5 + t16);
    t22 = *((unsigned char *)t1);
    t23 = (t22 == (unsigned char)3);
    if (t23 != 0)
        goto LAB37;

LAB39:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t6 = (1 - 7);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB40;

LAB41:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t6 = (2 - 7);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB42;

LAB43:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t6 = (3 - 7);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB44;

LAB45:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t6 = (4 - 7);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB46;

LAB47:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t6 = (5 - 7);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB48;

LAB49:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t6 = (6 - 7);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB50;

LAB51:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t6 = (7 - 7);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB52;

LAB53:
LAB38:    goto LAB16;

LAB37:    xsi_set_current_line(82, ng0);
    t9 = (t0 + 1992U);
    t10 = *((char **)t9);
    t7 = (0 - 0);
    t28 = (t7 * 1);
    t29 = (8U * t28);
    t30 = (0 + t29);
    t9 = (t10 + t30);
    t11 = (t0 + 3936);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t9, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB38;

LAB40:    xsi_set_current_line(84, ng0);
    t5 = (t0 + 1992U);
    t9 = *((char **)t5);
    t7 = (1 - 0);
    t28 = (t7 * 1);
    t29 = (8U * t28);
    t30 = (0 + t29);
    t5 = (t9 + t30);
    t10 = (t0 + 3936);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t5, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB38;

LAB42:    xsi_set_current_line(86, ng0);
    t5 = (t0 + 1992U);
    t9 = *((char **)t5);
    t7 = (2 - 0);
    t28 = (t7 * 1);
    t29 = (8U * t28);
    t30 = (0 + t29);
    t5 = (t9 + t30);
    t10 = (t0 + 3936);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t5, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB38;

LAB44:    xsi_set_current_line(88, ng0);
    t5 = (t0 + 1992U);
    t9 = *((char **)t5);
    t7 = (3 - 0);
    t28 = (t7 * 1);
    t29 = (8U * t28);
    t30 = (0 + t29);
    t5 = (t9 + t30);
    t10 = (t0 + 3936);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t5, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB38;

LAB46:    xsi_set_current_line(90, ng0);
    t5 = (t0 + 1992U);
    t9 = *((char **)t5);
    t7 = (4 - 0);
    t28 = (t7 * 1);
    t29 = (8U * t28);
    t30 = (0 + t29);
    t5 = (t9 + t30);
    t10 = (t0 + 3936);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t5, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB38;

LAB48:    xsi_set_current_line(92, ng0);
    t5 = (t0 + 1992U);
    t9 = *((char **)t5);
    t7 = (5 - 0);
    t28 = (t7 * 1);
    t29 = (8U * t28);
    t30 = (0 + t29);
    t5 = (t9 + t30);
    t10 = (t0 + 3936);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t5, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB38;

LAB50:    xsi_set_current_line(94, ng0);
    t5 = (t0 + 1992U);
    t9 = *((char **)t5);
    t7 = (6 - 0);
    t28 = (t7 * 1);
    t29 = (8U * t28);
    t30 = (0 + t29);
    t5 = (t9 + t30);
    t10 = (t0 + 3936);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t5, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB38;

LAB52:    xsi_set_current_line(96, ng0);
    t5 = (t0 + 1992U);
    t9 = *((char **)t5);
    t7 = (7 - 0);
    t28 = (t7 * 1);
    t29 = (8U * t28);
    t30 = (0 + t29);
    t5 = (t9 + t30);
    t10 = (t0 + 3936);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t5, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB38;

}


extern void work_a_3830602496_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3830602496_3212880686_p_0};
	xsi_register_didat("work_a_3830602496_3212880686", "isim/uut_basic_computer_isim_beh.exe.sim/work/a_3830602496_3212880686.didat");
	xsi_register_executes(pe);
}
