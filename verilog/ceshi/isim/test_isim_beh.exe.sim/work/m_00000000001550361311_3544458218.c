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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "F:/verilog/ceshi/ceshi1.v";
static int ng1[] = {7, 0};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {0U, 0U};
static unsigned int ng4[] = {63U, 0U};



static void Cont_26_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 1444U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 920);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 1836);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 1784);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Always_27_1(char *t0)
{
    char t4[8];
    char t5[8];
    char t8[8];
    char t13[8];
    char t40[8];
    char t47[8];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t48;
    char *t49;
    char *t50;

LAB0:    t1 = (t0 + 1588U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1792);
    *((int *)t2) = 1;
    t3 = (t0 + 1616);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(28, ng0);

LAB5:    xsi_set_current_line(29, ng0);
    t6 = (t0 + 600U);
    t7 = *((char **)t6);
    t6 = (t0 + 576U);
    t9 = (t6 + 44U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t8, 32, t7, t10, 2, t11, 32, 1);
    t12 = ((char*)((ng2)));
    memset(t13, 0, 8);
    t14 = (t8 + 4);
    t15 = (t12 + 4);
    t16 = *((unsigned int *)t8);
    t17 = *((unsigned int *)t12);
    t18 = (t16 ^ t17);
    t19 = *((unsigned int *)t14);
    t20 = *((unsigned int *)t15);
    t21 = (t19 ^ t20);
    t22 = (t18 | t21);
    t23 = *((unsigned int *)t14);
    t24 = *((unsigned int *)t15);
    t25 = (t23 | t24);
    t26 = (~(t25));
    t27 = (t22 & t26);
    if (t27 != 0)
        goto LAB9;

LAB6:    if (t25 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t13) = 1;

LAB9:    memset(t5, 0, 8);
    t29 = (t13 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (~(t30));
    t32 = *((unsigned int *)t13);
    t33 = (t32 & t31);
    t34 = (t33 & 1U);
    if (t34 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t29) != 0)
        goto LAB12;

LAB13:    t36 = (t5 + 4);
    t37 = *((unsigned int *)t5);
    t38 = *((unsigned int *)t36);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB14;

LAB15:    t43 = *((unsigned int *)t5);
    t44 = (~(t43));
    t45 = *((unsigned int *)t36);
    t46 = (t44 || t45);
    if (t46 > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t36) > 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t5) > 0)
        goto LAB20;

LAB21:    memcpy(t4, t47, 8);

LAB22:    t50 = (t0 + 920);
    xsi_vlogvar_assign_value(t50, t4, 0, 0, 32);
    goto LAB2;

LAB8:    t28 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB9;

LAB10:    *((unsigned int *)t5) = 1;
    goto LAB13;

LAB12:    t35 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB13;

LAB14:    t41 = (t0 + 600U);
    t42 = *((char **)t41);
    t41 = ((char*)((ng3)));
    xsi_vlogtype_concat(t40, 32, 14, 2U, t41, 6, t42, 8);
    goto LAB15;

LAB16:    t48 = (t0 + 600U);
    t49 = *((char **)t48);
    t48 = ((char*)((ng4)));
    xsi_vlogtype_concat(t47, 32, 14, 2U, t48, 6, t49, 8);
    goto LAB17;

LAB18:    xsi_vlog_unsigned_bit_combine(t4, 32, t40, 32, t47, 32);
    goto LAB22;

LAB20:    memcpy(t4, t40, 8);
    goto LAB22;

}


extern void work_m_00000000001550361311_3544458218_init()
{
	static char *pe[] = {(void *)Cont_26_0,(void *)Always_27_1};
	xsi_register_didat("work_m_00000000001550361311_3544458218", "isim/test_isim_beh.exe.sim/work/m_00000000001550361311_3544458218.didat");
	xsi_register_executes(pe);
}
