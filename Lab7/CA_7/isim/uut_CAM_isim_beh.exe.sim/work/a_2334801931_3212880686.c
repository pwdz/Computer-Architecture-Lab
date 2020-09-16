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
static const char *ng0 = "C:/Users/Saman/Xilinx/Projects/CA_7/CAM.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_2334801931_3212880686_p_0(char *t0)
{
    char t17[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    unsigned int t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    int t24;
    int t25;
    unsigned char t26;
    int t27;
    int t28;
    unsigned int t29;
    int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned char t36;
    unsigned char t37;
    int t38;
    int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned char t43;
    unsigned char t44;
    char *t45;
    int t46;
    int t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    unsigned char t52;
    unsigned char t53;

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 4032);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 7077);
    *((int *)t1) = 0;
    t2 = (t0 + 7081);
    *((int *)t2) = 3;
    t6 = 0;
    t7 = 3;

LAB2:    if (t6 <= t7)
        goto LAB3;

LAB5:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t15 = *((unsigned char *)t2);
    t26 = (t15 == (unsigned char)2);
    if (t26 != 0)
        goto LAB30;

LAB32:    t1 = (t0 + 1312U);
    t26 = xsi_signal_has_event(t1);
    if (t26 == 1)
        goto LAB40;

LAB41:    t15 = (unsigned char)0;

LAB42:    if (t15 != 0)
        goto LAB38;

LAB39:
LAB31:    t1 = (t0 + 3952);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(53, ng0);
    t3 = (t0 + 4096);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = 0;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 7077);
    t10 = *((int *)t1);
    t11 = (t10 - 0);
    t12 = (t11 * 1);
    xsi_vhdl_check_range_of_index(0, 3, 1, *((int *)t1));
    t13 = (8U * t12);
    t14 = (0 + t13);
    t4 = (t3 + t14);
    t15 = 1;
    if (8U == 8U)
        goto LAB9;

LAB10:    t15 = 0;

LAB11:    if (t15 != 0)
        goto LAB6;

LAB8:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 7085);
    *((int *)t1) = 0;
    t2 = (t0 + 7089);
    *((int *)t2) = 7;
    t10 = 0;
    t11 = 7;

LAB15:    if (t10 <= t11)
        goto LAB16;

LAB18:
LAB7:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t15 = (t10 == 8);
    if (t15 != 0)
        goto LAB26;

LAB28:
LAB27:
LAB4:    t1 = (t0 + 7077);
    t6 = *((int *)t1);
    t2 = (t0 + 7081);
    t7 = *((int *)t2);
    if (t6 == t7)
        goto LAB5;

LAB29:    t10 = (t6 + 1);
    t6 = t10;
    t3 = (t0 + 7077);
    *((int *)t3) = t6;
    goto LAB2;

LAB6:    xsi_set_current_line(55, ng0);
    t9 = (t0 + 7077);
    t18 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t17, *((int *)t9), 2);
    t19 = (t0 + 4160);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t18, 2U);
    xsi_driver_first_trans_fast_port(t19);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 4032);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB9:    t16 = 0;

LAB12:    if (t16 < 8U)
        goto LAB13;
    else
        goto LAB11;

LAB13:    t5 = (t2 + t16);
    t8 = (t4 + t16);
    if (*((unsigned char *)t5) != *((unsigned char *)t8))
        goto LAB10;

LAB14:    t16 = (t16 + 1);
    goto LAB12;

LAB16:    xsi_set_current_line(59, ng0);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t3 = (t0 + 7085);
    t24 = *((int *)t3);
    t25 = (t24 - 7);
    t12 = (t25 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t3));
    t13 = (1U * t12);
    t14 = (0 + t13);
    t5 = (t4 + t14);
    t26 = *((unsigned char *)t5);
    t8 = (t0 + 2312U);
    t9 = *((char **)t8);
    t8 = (t0 + 7085);
    t27 = *((int *)t8);
    t28 = (t27 - 7);
    t16 = (t28 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t8));
    t29 = (1U * t16);
    t18 = (t0 + 7077);
    t30 = *((int *)t18);
    t31 = (t30 - 0);
    t32 = (t31 * 1);
    xsi_vhdl_check_range_of_index(0, 3, 1, *((int *)t18));
    t33 = (8U * t32);
    t34 = (0 + t33);
    t35 = (t34 + t29);
    t19 = (t9 + t35);
    t36 = *((unsigned char *)t19);
    t37 = (t26 == t36);
    if (t37 == 1)
        goto LAB22;

LAB23:    t20 = (t0 + 1032U);
    t21 = *((char **)t20);
    t20 = (t0 + 7085);
    t38 = *((int *)t20);
    t39 = (t38 - 7);
    t40 = (t39 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t20));
    t41 = (1U * t40);
    t42 = (0 + t41);
    t22 = (t21 + t42);
    t43 = *((unsigned char *)t22);
    t44 = (t43 == (unsigned char)0);
    t15 = t44;

LAB24:    if (t15 != 0)
        goto LAB19;

LAB21:
LAB20:
LAB17:    t1 = (t0 + 7085);
    t10 = *((int *)t1);
    t2 = (t0 + 7089);
    t11 = *((int *)t2);
    if (t10 == t11)
        goto LAB18;

LAB25:    t24 = (t10 + 1);
    t10 = t24;
    t3 = (t0 + 7085);
    *((int *)t3) = t10;
    goto LAB15;

LAB19:    xsi_set_current_line(60, ng0);
    t23 = (t0 + 2152U);
    t45 = *((char **)t23);
    t46 = *((int *)t45);
    t47 = (t46 + 1);
    t23 = (t0 + 4096);
    t48 = (t23 + 56U);
    t49 = *((char **)t48);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    *((int *)t51) = t47;
    xsi_driver_first_trans_fast(t23);
    goto LAB20;

LAB22:    t15 = (unsigned char)1;
    goto LAB24;

LAB26:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 7077);
    t3 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t17, *((int *)t1), 2);
    t4 = (t0 + 4160);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t18 = *((char **)t9);
    memcpy(t18, t3, 2U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 4032);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB27;

LAB30:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 7093);
    *((int *)t1) = 0;
    t3 = (t0 + 7097);
    *((int *)t3) = 3;
    t6 = 0;
    t7 = 3;

LAB33:    if (t6 <= t7)
        goto LAB34;

LAB36:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 4288);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((int *)t5) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB31;

LAB34:    xsi_set_current_line(72, ng0);
    t4 = (t0 + 7093);
    t5 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t17, *((int *)t4), 8);
    t8 = (t0 + 7093);
    t10 = *((int *)t8);
    t11 = (t10 - 0);
    t12 = (t11 * 1);
    t13 = (8U * t12);
    t14 = (0U + t13);
    t9 = (t0 + 4224);
    t18 = (t9 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t5, 8U);
    xsi_driver_first_trans_delta(t9, t14, 8U, 0LL);

LAB35:    t1 = (t0 + 7093);
    t6 = *((int *)t1);
    t2 = (t0 + 7097);
    t7 = *((int *)t2);
    if (t6 == t7)
        goto LAB36;

LAB37:    t10 = (t6 + 1);
    t6 = t10;
    t3 = (t0 + 7093);
    *((int *)t3) = t6;
    goto LAB33;

LAB38:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t43 = *((unsigned char *)t4);
    t44 = (t43 == (unsigned char)3);
    if (t44 != 0)
        goto LAB43;

LAB45:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t15 = *((unsigned char *)t2);
    t26 = (t15 == (unsigned char)2);
    if (t26 != 0)
        goto LAB52;

LAB53:
LAB44:    goto LAB31;

LAB40:    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t36 = *((unsigned char *)t3);
    t37 = (t36 == (unsigned char)3);
    t15 = t37;
    goto LAB42;

LAB43:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 2472U);
    t5 = *((char **)t2);
    t52 = *((unsigned char *)t5);
    t53 = (t52 == (unsigned char)2);
    if (t53 != 0)
        goto LAB46;

LAB48:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 4352);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB47:    goto LAB44;

LAB46:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 4352);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t18 = (t9 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t15 = (t6 == 3);
    if (t15 != 0)
        goto LAB49;

LAB51:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t6 = *((int *)t3);
    t7 = (t6 - 0);
    t12 = (t7 * 1);
    t13 = (8U * t12);
    t14 = (0U + t13);
    t1 = (t0 + 4224);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_delta(t1, t14, 8U, 0LL);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t7 = (t6 + 1);
    t1 = (t0 + 4288);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((int *)t8) = t7;
    xsi_driver_first_trans_fast(t1);

LAB50:    goto LAB47;

LAB49:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t1 = (t0 + 4224);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 8U);
    xsi_driver_first_trans_delta(t1, 0U, 8U, 0LL);
    goto LAB50;

LAB52:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t36 = *((unsigned char *)t3);
    t37 = (t36 == (unsigned char)3);
    if (t37 != 0)
        goto LAB54;

LAB56:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 4352);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB55:    goto LAB44;

LAB54:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 4352);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB55;

}


extern void work_a_2334801931_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2334801931_3212880686_p_0};
	xsi_register_didat("work_a_2334801931_3212880686", "isim/uut_CAM_isim_beh.exe.sim/work/a_2334801931_3212880686.didat");
	xsi_register_executes(pe);
}
