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
static const char *ng0 = "D:/AUT/Term4/CA/lb/ca-lab/Lab8/divider.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110339434_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_2110375371_1035706684(char *, char *, char *, char *, char *);


static void work_a_3926497698_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(34, ng0);
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
LAB3:    t1 = (t0 + 7712);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 7952);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 2632U);
    t6 = *((char **)t2);
    t11 = *((unsigned char *)t6);
    t2 = (t0 + 7952);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t11;
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t3 = t10;
    goto LAB9;

}

static void work_a_3926497698_3212880686_p_1(char *t0)
{
    char t20[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    int t21;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5};

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 7728);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB6;

LAB8:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 8016);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB7:    goto LAB2;

LAB4:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 8016);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t1 = (t0 + 11848U);
    t4 = (t0 + 11984);
    t8 = (t20 + 0U);
    t12 = (t8 + 0U);
    *((int *)t12) = 0;
    t12 = (t8 + 4U);
    *((int *)t12) = 3;
    t12 = (t8 + 8U);
    *((int *)t12) = 1;
    t21 = (3 - 0);
    t9 = (t21 * 1);
    t9 = (t9 + 1);
    t12 = (t8 + 12U);
    *((unsigned int *)t12) = t9;
    t3 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t2, t1, t4, t20);
    if (t3 != 0)
        goto LAB12;

LAB14:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 8016);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB13:    goto LAB2;

LAB6:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 1512U);
    t8 = *((char **)t4);
    t9 = (15 - 15);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t4 = (t8 + t11);
    t12 = (t0 + 1672U);
    t13 = *((char **)t12);
    t12 = ((IEEE_P_2592010699) + 4024);
    t14 = xsi_vhdl_lessthan(t12, t4, 8U, t13, 8U);
    if (t14 != 0)
        goto LAB9;

LAB11:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 8016);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB10:    goto LAB7;

LAB9:    xsi_set_current_line(48, ng0);
    t15 = (t0 + 8016);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)1;
    xsi_driver_first_trans_fast(t15);
    goto LAB10;

LAB12:    xsi_set_current_line(61, ng0);
    t12 = (t0 + 8016);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)0;
    xsi_driver_first_trans_fast(t12);
    goto LAB13;

}

static void work_a_3926497698_3212880686_p_2(char *t0)
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
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)0);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 8080);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 7744);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 8080);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3926497698_3212880686_p_3(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)0);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t18 = (t0 + 8144);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t18);

LAB2:    t23 = (t0 + 7760);
    *((int *)t23) = 1;

LAB1:    return;
LAB3:    t13 = (t0 + 8144);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t13);
    goto LAB2;

LAB5:    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t7 = (15 - 15);
    t8 = (t7 * 1U);
    t9 = (0 + t8);
    t2 = (t6 + t9);
    t10 = (t0 + 1672U);
    t11 = *((char **)t10);
    t10 = ((IEEE_P_2592010699) + 4024);
    t12 = xsi_vhdl_greaterEqual(t10, t2, 8U, t11, 8U);
    t1 = t12;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_3926497698_3212880686_p_4(char *t0)
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

LAB0:    xsi_set_current_line(77, ng0);
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
LAB3:    t1 = (t0 + 7776);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(78, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t5 = t1;
    memset(t5, (unsigned char)2, 4U);
    t6 = (t0 + 8208);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 3592U);
    t6 = *((char **)t2);
    t2 = (t0 + 8208);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 4U);
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

}

static void work_a_3926497698_3212880686_p_5(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t12;
    unsigned int t13;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5};

LAB0:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 7792);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(89, ng0);
    t4 = xsi_get_transient_memory(4U);
    memset(t4, 0, 4U);
    t5 = t4;
    memset(t5, (unsigned char)2, 4U);
    t6 = (t0 + 8272);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB4:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 8272);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 4U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 11848U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t11, t2, t1, 1);
    t5 = (t11 + 12U);
    t12 = *((unsigned int *)t5);
    t13 = (1U * t12);
    t3 = (4U != t13);
    if (t3 == 1)
        goto LAB6;

LAB7:    t6 = (t0 + 8272);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB6:    xsi_size_not_matching(4U, t13, 0);
    goto LAB7;

}

static void work_a_3926497698_3212880686_p_6(char *t0)
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

LAB0:    xsi_set_current_line(104, ng0);
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
LAB3:    t1 = (t0 + 7808);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(105, ng0);
    t1 = xsi_get_transient_memory(17U);
    memset(t1, 0, 17U);
    t5 = t1;
    memset(t5, (unsigned char)2, 17U);
    t6 = (t0 + 8336);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 17U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(106, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t5 = (t0 + 8400);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 2952U);
    t6 = *((char **)t2);
    t2 = (t0 + 8336);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 17U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(109, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 8400);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

}

static void work_a_3926497698_3212880686_p_7(char *t0)
{
    char t8[16];
    char t17[16];
    char t25[16];
    char t27[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    int t26;
    unsigned int t28;
    char *t29;
    char *t30;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5};

LAB0:    xsi_set_current_line(116, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 8464);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(117, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t7);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 7824);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(119, ng0);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t0 + 11752U);
    t3 = xsi_base_array_concat(t3, t8, t5, (char)99, (unsigned char)2, (char)97, t4, t6, (char)101);
    t9 = (t0 + 8528);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 17U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB4:    xsi_set_current_line(122, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t14 = (16 - 15);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t4 = ((IEEE_P_1242562249) + 3000);
    t5 = (t17 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 15;
    t6 = (t5 + 4U);
    *((int *)t6) = 0;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t18 = (0 - 15);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t19;
    t3 = xsi_base_array_concat(t3, t8, t4, (char)97, t1, t17, (char)99, (unsigned char)2, (char)101);
    t19 = (16U + 1U);
    t7 = (17U != t19);
    if (t7 == 1)
        goto LAB6;

LAB7:    t6 = (t0 + 8528);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 17U);
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB5:    xsi_set_current_line(125, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t14 = (16 - 16);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = (t8 + 0U);
    t4 = (t3 + 0U);
    *((int *)t4) = 16;
    t4 = (t3 + 4U);
    *((int *)t4) = 8;
    t4 = (t3 + 8U);
    *((int *)t4) = -1;
    t18 = (8 - 16);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t4 = (t3 + 12U);
    *((unsigned int *)t4) = t19;
    t4 = (t0 + 3112U);
    t5 = *((char **)t4);
    t6 = ((IEEE_P_1242562249) + 3000);
    t9 = (t0 + 11832U);
    t4 = xsi_base_array_concat(t4, t17, t6, (char)99, (unsigned char)2, (char)97, t5, t9, (char)101);
    t7 = ieee_p_1242562249_sub_2110339434_1035706684(IEEE_P_1242562249, t1, t8, t4, t17);
    if (t7 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(128, ng0);
    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t14 = (8 - 8);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = (t0 + 2792U);
    t4 = *((char **)t3);
    t19 = (16 - 7);
    t22 = (t19 * 1U);
    t23 = (0 + t22);
    t3 = (t4 + t23);
    t6 = ((IEEE_P_1242562249) + 3000);
    t9 = (t17 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 8;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t18 = (0 - 8);
    t24 = (t18 * -1);
    t24 = (t24 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t24;
    t10 = (t25 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 7;
    t11 = (t10 + 4U);
    *((int *)t11) = 1;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t26 = (1 - 7);
    t24 = (t26 * -1);
    t24 = (t24 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t24;
    t5 = xsi_base_array_concat(t5, t8, t6, (char)97, t1, t17, (char)97, t3, t25, (char)101);
    t12 = ((IEEE_P_1242562249) + 3000);
    t11 = xsi_base_array_concat(t11, t27, t12, (char)97, t5, t8, (char)99, (unsigned char)3, (char)101);
    t24 = (9U + 7U);
    t28 = (t24 + 1U);
    t7 = (17U != t28);
    if (t7 == 1)
        goto LAB11;

LAB12:    t13 = (t0 + 8528);
    t20 = (t13 + 56U);
    t21 = *((char **)t20);
    t29 = (t21 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t11, 17U);
    xsi_driver_first_trans_fast(t13);

LAB9:    goto LAB2;

LAB6:    xsi_size_not_matching(17U, t19, 0);
    goto LAB7;

LAB8:    xsi_set_current_line(126, ng0);
    t10 = (t0 + 2792U);
    t11 = *((char **)t10);
    t10 = (t0 + 8528);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t20 = (t13 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t11, 17U);
    xsi_driver_first_trans_fast(t10);
    goto LAB9;

LAB11:    xsi_size_not_matching(17U, t28, 0);
    goto LAB12;

}

static void work_a_3926497698_3212880686_p_8(char *t0)
{
    char t1[16];
    char t7[16];
    char t13[16];
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(134, ng0);

LAB3:    t2 = (t0 + 2792U);
    t3 = *((char **)t2);
    t4 = (16 - 16);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 16;
    t9 = (t8 + 4U);
    *((int *)t9) = 8;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (8 - 16);
    t11 = (t10 * -1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t0 + 1672U);
    t12 = *((char **)t9);
    t14 = ((IEEE_P_2592010699) + 4024);
    t15 = (t0 + 11768U);
    t9 = xsi_base_array_concat(t9, t13, t14, (char)99, (unsigned char)2, (char)97, t12, t15, (char)101);
    t16 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t1, t2, t7, t9, t13);
    t17 = (t1 + 12U);
    t11 = *((unsigned int *)t17);
    t18 = (1U * t11);
    t19 = (9U != t18);
    if (t19 == 1)
        goto LAB5;

LAB6:    t20 = (t0 + 8592);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t16, 9U);
    xsi_driver_first_trans_fast(t20);

LAB2:    t25 = (t0 + 7840);
    *((int *)t25) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(9U, t18, 0);
    goto LAB6;

}

static void work_a_3926497698_3212880686_p_9(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(137, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = (16 - 7);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 8656);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 7856);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3926497698_3212880686_p_10(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(138, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = (16 - 15);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 8720);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 7872);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3926497698_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3926497698_3212880686_p_0,(void *)work_a_3926497698_3212880686_p_1,(void *)work_a_3926497698_3212880686_p_2,(void *)work_a_3926497698_3212880686_p_3,(void *)work_a_3926497698_3212880686_p_4,(void *)work_a_3926497698_3212880686_p_5,(void *)work_a_3926497698_3212880686_p_6,(void *)work_a_3926497698_3212880686_p_7,(void *)work_a_3926497698_3212880686_p_8,(void *)work_a_3926497698_3212880686_p_9,(void *)work_a_3926497698_3212880686_p_10};
	xsi_register_didat("work_a_3926497698_3212880686", "isim/uut_divider_isim_beh.exe.sim/work/a_3926497698_3212880686.didat");
	xsi_register_executes(pe);
}
