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
static const char *ng0 = "D:/AUT/Term4/CA/Lab/Basic_Computer/ALU.vhd";



static void work_a_2725559894_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 4112U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 7114);
    t5 = 1;
    if (2U == 2U)
        goto LAB7;

LAB8:    t5 = 0;

LAB9:    if (t5 != 0)
        goto LAB4;

LAB6:    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 7116);
    t5 = 1;
    if (2U == 2U)
        goto LAB15;

LAB16:    t5 = 0;

LAB17:    if (t5 != 0)
        goto LAB13;

LAB14:    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 7118);
    t5 = 1;
    if (2U == 2U)
        goto LAB23;

LAB24:    t5 = 0;

LAB25:    if (t5 != 0)
        goto LAB21;

LAB22:
LAB5:    xsi_set_current_line(81, ng0);

LAB31:    t2 = (t0 + 4432);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB32;

LAB1:    return;
LAB4:    xsi_set_current_line(72, ng0);
    t9 = (t0 + 2472U);
    t10 = *((char **)t9);
    t9 = (t0 + 4512);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t10, 8U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 2792U);
    t3 = *((char **)t2);
    t5 = *((unsigned char *)t3);
    t2 = (t0 + 4576);
    t4 = (t2 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB5;

LAB7:    t6 = 0;

LAB10:    if (t6 < 2U)
        goto LAB11;
    else
        goto LAB9;

LAB11:    t7 = (t3 + t6);
    t8 = (t2 + t6);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB8;

LAB12:    t6 = (t6 + 1);
    goto LAB10;

LAB13:    xsi_set_current_line(75, ng0);
    t9 = (t0 + 2632U);
    t10 = *((char **)t9);
    t9 = (t0 + 4512);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t10, 8U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 2952U);
    t3 = *((char **)t2);
    t5 = *((unsigned char *)t3);
    t2 = (t0 + 4576);
    t4 = (t2 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB5;

LAB15:    t6 = 0;

LAB18:    if (t6 < 2U)
        goto LAB19;
    else
        goto LAB17;

LAB19:    t7 = (t3 + t6);
    t8 = (t2 + t6);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB16;

LAB20:    t6 = (t6 + 1);
    goto LAB18;

LAB21:    xsi_set_current_line(78, ng0);
    t9 = (t0 + 1832U);
    t10 = *((char **)t9);
    t15 = (15 - 15);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t9 = (t10 + t17);
    t11 = (t0 + 4512);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t18 = *((char **)t14);
    memcpy(t18, t9, 8U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 4576);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB5;

LAB23:    t6 = 0;

LAB26:    if (t6 < 2U)
        goto LAB27;
    else
        goto LAB25;

LAB27:    t7 = (t3 + t6);
    t8 = (t2 + t6);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB24;

LAB28:    t6 = (t6 + 1);
    goto LAB26;

LAB29:    t3 = (t0 + 4432);
    *((int *)t3) = 0;
    goto LAB2;

LAB30:    goto LAB29;

LAB32:    goto LAB30;

}


extern void work_a_2725559894_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2725559894_3212880686_p_0};
	xsi_register_didat("work_a_2725559894_3212880686", "isim/ALU_isim_beh.exe.sim/work/a_2725559894_3212880686.didat");
	xsi_register_executes(pe);
}
