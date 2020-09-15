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
static const char *ng0 = "C:/Users/Saman/Xilinx/Projects/CA_7/RAM_Dual.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_2191434026_3212880686_p_0(char *t0)
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

LAB0:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1192U);
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
LAB3:    t1 = (t0 + 4432);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 7720);
    *((int *)t1) = 0;
    t5 = (t0 + 7724);
    *((int *)t5) = 3;
    t6 = 0;
    t7 = 3;

LAB5:    if (t6 <= t7)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(66, ng0);
    t9 = (t0 + 7720);
    t10 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, *((int *)t9), 8);
    t11 = (t0 + 7720);
    t12 = *((int *)t11);
    t13 = (t12 - 0);
    t14 = (t13 * 1);
    t15 = (8U * t14);
    t16 = (0U + t15);
    t17 = (t0 + 4512);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t10, 8U);
    xsi_driver_first_trans_delta(t17, t16, 8U, 0LL);

LAB7:    t1 = (t0 + 7720);
    t6 = *((int *)t1);
    t2 = (t0 + 7724);
    t7 = *((int *)t2);
    if (t6 == t7)
        goto LAB8;

LAB9:    t12 = (t6 + 1);
    t6 = t12;
    t5 = (t0 + 7720);
    *((int *)t5) = t6;
    goto LAB5;

LAB10:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1352U);
    t9 = *((char **)t2);
    t24 = *((unsigned char *)t9);
    t25 = (t24 == (unsigned char)3);
    if (t25 != 0)
        goto LAB15;

LAB17:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB27;

LAB28:
LAB16:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB38;

LAB40:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB50;

LAB51:
LAB39:    goto LAB3;

LAB12:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t22 = *((unsigned char *)t5);
    t23 = (t22 == (unsigned char)3);
    t3 = t23;
    goto LAB14;

LAB15:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2792U);
    t10 = *((char **)t2);
    t6 = (0 - 3);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t2 = (t10 + t16);
    t26 = *((unsigned char *)t2);
    t27 = (t26 == (unsigned char)3);
    if (t27 != 0)
        goto LAB18;

LAB20:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t6 = (1 - 3);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB21;

LAB22:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t6 = (2 - 3);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB23;

LAB24:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t6 = (3 - 3);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB25;

LAB26:
LAB19:    goto LAB16;

LAB18:    xsi_set_current_line(71, ng0);
    t11 = (t0 + 1672U);
    t17 = *((char **)t11);
    t11 = (t0 + 4512);
    t18 = (t11 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t17, 8U);
    xsi_driver_first_trans_delta(t11, 0U, 8U, 0LL);
    goto LAB19;

LAB21:    xsi_set_current_line(73, ng0);
    t5 = (t0 + 1672U);
    t9 = *((char **)t5);
    t5 = (t0 + 4512);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 8U);
    xsi_driver_first_trans_delta(t5, 8U, 8U, 0LL);
    goto LAB19;

LAB23:    xsi_set_current_line(75, ng0);
    t5 = (t0 + 1672U);
    t9 = *((char **)t5);
    t5 = (t0 + 4512);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 8U);
    xsi_driver_first_trans_delta(t5, 16U, 8U, 0LL);
    goto LAB19;

LAB25:    xsi_set_current_line(77, ng0);
    t5 = (t0 + 1672U);
    t9 = *((char **)t5);
    t5 = (t0 + 4512);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 8U);
    xsi_driver_first_trans_delta(t5, 24U, 8U, 0LL);
    goto LAB19;

LAB27:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2792U);
    t5 = *((char **)t1);
    t6 = (0 - 3);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t5 + t16);
    t22 = *((unsigned char *)t1);
    t23 = (t22 == (unsigned char)3);
    if (t23 != 0)
        goto LAB29;

LAB31:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t6 = (1 - 3);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB32;

LAB33:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t6 = (2 - 3);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB34;

LAB35:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t6 = (3 - 3);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB36;

LAB37:
LAB30:    goto LAB16;

LAB29:    xsi_set_current_line(81, ng0);
    t9 = (t0 + 2632U);
    t10 = *((char **)t9);
    t7 = (0 - 0);
    t28 = (t7 * 1);
    t29 = (8U * t28);
    t30 = (0 + t29);
    t9 = (t10 + t30);
    t11 = (t0 + 4576);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t9, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB30;

LAB32:    xsi_set_current_line(83, ng0);
    t5 = (t0 + 2632U);
    t9 = *((char **)t5);
    t7 = (1 - 0);
    t28 = (t7 * 1);
    t29 = (8U * t28);
    t30 = (0 + t29);
    t5 = (t9 + t30);
    t10 = (t0 + 4576);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t5, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB30;

LAB34:    xsi_set_current_line(85, ng0);
    t5 = (t0 + 2632U);
    t9 = *((char **)t5);
    t7 = (2 - 0);
    t28 = (t7 * 1);
    t29 = (8U * t28);
    t30 = (0 + t29);
    t5 = (t9 + t30);
    t10 = (t0 + 4576);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t5, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB30;

LAB36:    xsi_set_current_line(87, ng0);
    t5 = (t0 + 2632U);
    t9 = *((char **)t5);
    t7 = (3 - 0);
    t28 = (t7 * 1);
    t29 = (8U * t28);
    t30 = (0 + t29);
    t5 = (t9 + t30);
    t10 = (t0 + 4576);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t5, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB30;

LAB38:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 2952U);
    t5 = *((char **)t1);
    t6 = (0 - 3);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t5 + t16);
    t22 = *((unsigned char *)t1);
    t23 = (t22 == (unsigned char)3);
    if (t23 != 0)
        goto LAB41;

LAB43:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t6 = (1 - 3);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB44;

LAB45:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t6 = (2 - 3);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB46;

LAB47:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t6 = (3 - 3);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB48;

LAB49:
LAB42:    goto LAB39;

LAB41:    xsi_set_current_line(92, ng0);
    t9 = (t0 + 2312U);
    t10 = *((char **)t9);
    t9 = (t0 + 4512);
    t11 = (t9 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 8U);
    xsi_driver_first_trans_delta(t9, 0U, 8U, 0LL);
    goto LAB42;

LAB44:    xsi_set_current_line(94, ng0);
    t5 = (t0 + 2312U);
    t9 = *((char **)t5);
    t5 = (t0 + 4512);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 8U);
    xsi_driver_first_trans_delta(t5, 8U, 8U, 0LL);
    goto LAB42;

LAB46:    xsi_set_current_line(96, ng0);
    t5 = (t0 + 2312U);
    t9 = *((char **)t5);
    t5 = (t0 + 4512);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 8U);
    xsi_driver_first_trans_delta(t5, 16U, 8U, 0LL);
    goto LAB42;

LAB48:    xsi_set_current_line(98, ng0);
    t5 = (t0 + 2312U);
    t9 = *((char **)t5);
    t5 = (t0 + 4512);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 8U);
    xsi_driver_first_trans_delta(t5, 24U, 8U, 0LL);
    goto LAB42;

LAB50:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 2952U);
    t5 = *((char **)t1);
    t6 = (0 - 3);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t5 + t16);
    t22 = *((unsigned char *)t1);
    t23 = (t22 == (unsigned char)3);
    if (t23 != 0)
        goto LAB52;

LAB54:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t6 = (1 - 3);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB55;

LAB56:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t6 = (2 - 3);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB57;

LAB58:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t6 = (3 - 3);
    t14 = (t6 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB59;

LAB60:
LAB53:    goto LAB39;

LAB52:    xsi_set_current_line(102, ng0);
    t9 = (t0 + 2632U);
    t10 = *((char **)t9);
    t7 = (0 - 0);
    t28 = (t7 * 1);
    t29 = (8U * t28);
    t30 = (0 + t29);
    t9 = (t10 + t30);
    t11 = (t0 + 4640);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t9, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB53;

LAB55:    xsi_set_current_line(104, ng0);
    t5 = (t0 + 2632U);
    t9 = *((char **)t5);
    t7 = (1 - 0);
    t28 = (t7 * 1);
    t29 = (8U * t28);
    t30 = (0 + t29);
    t5 = (t9 + t30);
    t10 = (t0 + 4640);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t5, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB53;

LAB57:    xsi_set_current_line(106, ng0);
    t5 = (t0 + 2632U);
    t9 = *((char **)t5);
    t7 = (2 - 0);
    t28 = (t7 * 1);
    t29 = (8U * t28);
    t30 = (0 + t29);
    t5 = (t9 + t30);
    t10 = (t0 + 4640);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t5, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB53;

LAB59:    xsi_set_current_line(108, ng0);
    t5 = (t0 + 2632U);
    t9 = *((char **)t5);
    t7 = (3 - 0);
    t28 = (t7 * 1);
    t29 = (8U * t28);
    t30 = (0 + t29);
    t5 = (t9 + t30);
    t10 = (t0 + 4640);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t5, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB53;

}


extern void work_a_2191434026_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2191434026_3212880686_p_0};
	xsi_register_didat("work_a_2191434026_3212880686", "isim/uut_dualRAM_isim_beh.exe.sim/work/a_2191434026_3212880686.didat");
	xsi_register_executes(pe);
}
