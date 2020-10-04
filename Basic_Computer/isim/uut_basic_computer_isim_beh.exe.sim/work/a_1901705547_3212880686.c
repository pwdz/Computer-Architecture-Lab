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
static const char *ng0 = "C:/Users/Saman/ca-lab/Basic_Computer/Basic_Computer.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_1901705547_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(78, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 5416);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5320);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1901705547_3212880686_p_1(char *t0)
{
    char t11[16];
    char t18[16];
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
    int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    int t23;
    int t24;
    int t25;
    int t26;
    char *t27;
    char *t29;
    char *t30;
    int t31;
    unsigned int t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;

LAB0:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1472U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 5336);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(83, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t5 = t1;
    memset(t5, (unsigned char)2, 4U);
    t6 = (t0 + 5480);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(84, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t5 = (t0 + 5544);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(85, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t5 = (t0 + 5608);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(86, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t5 = (t0 + 5672);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(87, ng0);
    t1 = xsi_get_transient_memory(3U);
    memset(t1, 0, 3U);
    t2 = t1;
    memset(t2, (unsigned char)2, 3U);
    t5 = (t0 + 5736);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(88, ng0);
    t1 = (t0 + 9567);
    t5 = (t0 + 5800);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 9570);
    t5 = (t0 + 5864);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(90, ng0);
    t1 = xsi_get_transient_memory(9U);
    memset(t1, 0, 9U);
    t2 = t1;
    memset(t2, (unsigned char)2, 9U);
    t5 = (t0 + 5928);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 9U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(91, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t5 = (t0 + 5992);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 6056);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 3272U);
    t5 = *((char **)t2);
    t2 = (t0 + 9448U);
    t6 = (t0 + 9572);
    t8 = (t11 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 2;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t12 = (2 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t13;
    t4 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t5, t2, t6, t11);
    if (t4 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 9448U);
    t5 = (t0 + 9578);
    t7 = (t11 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 2;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t12 = (2 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t13;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t11);
    if (t3 != 0)
        goto LAB10;

LAB11:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t13 = (7 - 7);
    t19 = (t13 * 1U);
    t22 = (0 + t19);
    t1 = (t2 + t22);
    t5 = (t0 + 9584);
    t12 = xsi_mem_cmp(t5, t1, 3U);
    if (t12 == 1)
        goto LAB15;

LAB21:    t7 = (t0 + 9587);
    t23 = xsi_mem_cmp(t7, t1, 3U);
    if (t23 == 1)
        goto LAB16;

LAB22:    t9 = (t0 + 9590);
    t24 = xsi_mem_cmp(t9, t1, 3U);
    if (t24 == 1)
        goto LAB17;

LAB23:    t14 = (t0 + 9593);
    t25 = xsi_mem_cmp(t14, t1, 3U);
    if (t25 == 1)
        goto LAB18;

LAB24:    t16 = (t0 + 9596);
    t26 = xsi_mem_cmp(t16, t1, 3U);
    if (t26 == 1)
        goto LAB19;

LAB25:
LAB20:    xsi_set_current_line(152, ng0);

LAB14:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(95, ng0);
    t9 = (t0 + 3112U);
    t10 = *((char **)t9);
    t9 = (t0 + 5480);
    t14 = (t9 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t10, 4U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(96, ng0);
    t1 = (t0 + 9575);
    t5 = (t0 + 5800);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB10:    xsi_set_current_line(98, ng0);
    t8 = (t0 + 3112U);
    t9 = *((char **)t8);
    t8 = (t0 + 9432U);
    t10 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t18, t9, t8, 1);
    t14 = (t18 + 12U);
    t13 = *((unsigned int *)t14);
    t19 = (1U * t13);
    t4 = (4U != t19);
    if (t4 == 1)
        goto LAB12;

LAB13:    t15 = (t0 + 5992);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t20 = (t17 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t10, 4U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(99, ng0);
    t1 = (t0 + 9581);
    t5 = (t0 + 5800);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB12:    xsi_size_not_matching(4U, t19, 0);
    goto LAB13;

LAB15:    xsi_set_current_line(103, ng0);
    t20 = (t0 + 3272U);
    t21 = *((char **)t20);
    t20 = (t0 + 9448U);
    t27 = (t0 + 9599);
    t29 = (t11 + 0U);
    t30 = (t29 + 0U);
    *((int *)t30) = 0;
    t30 = (t29 + 4U);
    *((int *)t30) = 2;
    t30 = (t29 + 8U);
    *((int *)t30) = 1;
    t31 = (2 - 0);
    t32 = (t31 * 1);
    t32 = (t32 + 1);
    t30 = (t29 + 12U);
    *((unsigned int *)t30) = t32;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t21, t20, t27, t11);
    if (t3 != 0)
        goto LAB27;

LAB29:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 9448U);
    t5 = (t0 + 9607);
    t7 = (t11 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 2;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t12 = (2 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t13;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t11);
    if (t3 != 0)
        goto LAB30;

LAB31:
LAB28:    goto LAB14;

LAB16:    xsi_set_current_line(116, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 9448U);
    t5 = (t0 + 9613);
    t7 = (t11 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 2;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t12 = (2 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t13;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t11);
    if (t3 != 0)
        goto LAB32;

LAB34:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 9448U);
    t5 = (t0 + 9621);
    t7 = (t11 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 2;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t12 = (2 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t13;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t11);
    if (t3 != 0)
        goto LAB35;

LAB36:
LAB33:    goto LAB14;

LAB17:    xsi_set_current_line(129, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 9448U);
    t5 = (t0 + 9627);
    t7 = (t11 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 2;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t12 = (2 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t13;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t11);
    if (t3 != 0)
        goto LAB37;

LAB39:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 9448U);
    t5 = (t0 + 9635);
    t7 = (t11 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 2;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t12 = (2 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t13;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t11);
    if (t3 != 0)
        goto LAB40;

LAB41:
LAB38:    goto LAB14;

LAB18:    xsi_set_current_line(142, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 9448U);
    t5 = (t0 + 9641);
    t7 = (t11 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 2;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t12 = (2 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t13;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t11);
    if (t3 != 0)
        goto LAB42;

LAB44:
LAB43:    goto LAB14;

LAB19:    xsi_set_current_line(148, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 9448U);
    t5 = (t0 + 9647);
    t7 = (t11 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 2;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t12 = (2 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t13;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t11);
    if (t3 != 0)
        goto LAB45;

LAB47:
LAB46:    goto LAB14;

LAB26:;
LAB27:    xsi_set_current_line(104, ng0);
    t30 = (t0 + 1672U);
    t33 = *((char **)t30);
    t32 = (8 - 7);
    t34 = (t32 * 1U);
    t35 = (0 + t34);
    t30 = (t33 + t35);
    t36 = (t0 + 5608);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    memcpy(t40, t30, 8U);
    xsi_driver_first_trans_fast(t36);
    xsi_set_current_line(105, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 5672);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(106, ng0);
    t1 = (t0 + 9602);
    t5 = (t0 + 5864);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(107, ng0);
    t1 = (t0 + 9604);
    t5 = (t0 + 5800);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB28;

LAB30:    xsi_set_current_line(109, ng0);
    t8 = (t0 + 1832U);
    t9 = *((char **)t8);
    t13 = (7 - 2);
    t19 = (t13 * 1U);
    t22 = (0 + t19);
    t8 = (t9 + t22);
    t10 = (t0 + 5736);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 3U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(110, ng0);
    t1 = (t0 + 6056);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(111, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 5544);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(112, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 5928);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_delta(t1, 1U, 8U, 0LL);
    xsi_set_current_line(113, ng0);
    t1 = (t0 + 9610);
    t5 = (t0 + 5800);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB28;

LAB32:    xsi_set_current_line(117, ng0);
    t8 = (t0 + 1672U);
    t9 = *((char **)t8);
    t13 = (8 - 7);
    t19 = (t13 * 1U);
    t22 = (0 + t19);
    t8 = (t9 + t22);
    t10 = (t0 + 5608);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 8U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(118, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 5672);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(119, ng0);
    t1 = (t0 + 9616);
    t5 = (t0 + 5864);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(120, ng0);
    t1 = (t0 + 9618);
    t5 = (t0 + 5800);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB33;

LAB35:    xsi_set_current_line(122, ng0);
    t8 = (t0 + 1832U);
    t9 = *((char **)t8);
    t13 = (7 - 2);
    t19 = (t13 * 1U);
    t22 = (0 + t19);
    t8 = (t9 + t22);
    t10 = (t0 + 5736);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 3U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(123, ng0);
    t1 = (t0 + 6056);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(124, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 5544);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(125, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 5928);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_delta(t1, 1U, 8U, 0LL);
    xsi_set_current_line(126, ng0);
    t1 = (t0 + 9624);
    t5 = (t0 + 5800);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB33;

LAB37:    xsi_set_current_line(130, ng0);
    t8 = (t0 + 1672U);
    t9 = *((char **)t8);
    t13 = (8 - 7);
    t19 = (t13 * 1U);
    t22 = (0 + t19);
    t8 = (t9 + t22);
    t10 = (t0 + 5608);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 8U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(131, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 5672);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(132, ng0);
    t1 = (t0 + 9630);
    t5 = (t0 + 5864);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(133, ng0);
    t1 = (t0 + 9632);
    t5 = (t0 + 5800);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB38;

LAB40:    xsi_set_current_line(135, ng0);
    t8 = (t0 + 1832U);
    t9 = *((char **)t8);
    t13 = (7 - 2);
    t19 = (t13 * 1U);
    t22 = (0 + t19);
    t8 = (t9 + t22);
    t10 = (t0 + 5736);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 3U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(136, ng0);
    t1 = (t0 + 6056);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(137, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 5544);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(138, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 5928);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_delta(t1, 1U, 8U, 0LL);
    xsi_set_current_line(139, ng0);
    t1 = (t0 + 9638);
    t5 = (t0 + 5800);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB38;

LAB42:    xsi_set_current_line(143, ng0);
    t8 = (t0 + 6056);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(144, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t13 = (7 - 2);
    t19 = (t13 * 1U);
    t22 = (0 + t19);
    t1 = (t2 + t22);
    t5 = (t0 + 5736);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(145, ng0);
    t1 = (t0 + 9644);
    t5 = (t0 + 5800);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB43;

LAB45:    xsi_set_current_line(149, ng0);
    t8 = (t0 + 1832U);
    t9 = *((char **)t8);
    t13 = (7 - 3);
    t19 = (t13 * 1U);
    t22 = (0 + t19);
    t8 = (t9 + t22);
    t10 = (t0 + 5992);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 4U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(150, ng0);
    t1 = (t0 + 9650);
    t5 = (t0 + 5800);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB46;

}


extern void work_a_1901705547_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1901705547_3212880686_p_0,(void *)work_a_1901705547_3212880686_p_1};
	xsi_register_didat("work_a_1901705547_3212880686", "isim/uut_basic_computer_isim_beh.exe.sim/work/a_1901705547_3212880686.didat");
	xsi_register_executes(pe);
}
