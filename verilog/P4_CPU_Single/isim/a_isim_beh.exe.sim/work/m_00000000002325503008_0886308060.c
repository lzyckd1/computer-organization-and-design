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
static const char *ng0 = "F:/verilog/P4_CPU_Single/ALU.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {2, 0};
static int ng4[] = {3, 0};
static int ng5[] = {4, 0};
static int ng6[] = {5, 0};
static unsigned int ng7[] = {0U, 0U};
static int ng8[] = {6, 0};
static int ng9[] = {7, 0};



static void Always_29_0(char *t0)
{
    char t10[8];
    char t36[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;

LAB0:    t1 = (t0 + 1720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 2060);
    *((int *)t2) = 1;
    t3 = (t0 + 1748);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(30, ng0);

LAB5:    xsi_set_current_line(31, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB2;

LAB7:    xsi_set_current_line(32, ng0);
    t7 = (t0 + 692U);
    t8 = *((char **)t7);
    t7 = (t0 + 784U);
    t9 = *((char **)t7);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 32, t8, 32, t9, 32);
    t7 = (t0 + 1196);
    xsi_vlogvar_assign_value(t7, t10, 0, 0, 32);
    goto LAB23;

LAB9:    xsi_set_current_line(33, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 784U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_minus(t10, 32, t4, 32, t7, 32);
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t10, 0, 0, 32);
    goto LAB23;

LAB11:    xsi_set_current_line(34, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 784U);
    t7 = *((char **)t3);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 | t12);
    *((unsigned int *)t10) = t13;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t10 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t8);
    t16 = (t14 | t15);
    *((unsigned int *)t9) = t16;
    t17 = *((unsigned int *)t9);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB24;

LAB25:
LAB26:    t35 = (t0 + 1196);
    xsi_vlogvar_assign_value(t35, t10, 0, 0, 32);
    goto LAB23;

LAB13:    xsi_set_current_line(36, ng0);

LAB27:    xsi_set_current_line(37, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 784U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t8);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t8);
    t20 = (t18 | t19);
    t23 = (~(t20));
    t24 = (t17 & t23);
    if (t24 != 0)
        goto LAB31;

LAB28:    if (t20 != 0)
        goto LAB30;

LAB29:    *((unsigned int *)t10) = 1;

LAB31:    t21 = (t10 + 4);
    t25 = *((unsigned int *)t21);
    t27 = (~(t25));
    t28 = *((unsigned int *)t10);
    t29 = (t28 & t27);
    t31 = (t29 != 0);
    if (t31 > 0)
        goto LAB32;

LAB33:    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB34:    goto LAB23;

LAB15:    xsi_set_current_line(41, ng0);

LAB35:    xsi_set_current_line(42, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 784U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t4 + 4);
    if (*((unsigned int *)t3) != 0)
        goto LAB37;

LAB36:    t8 = (t7 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB37;

LAB40:    if (*((unsigned int *)t4) < *((unsigned int *)t7))
        goto LAB38;

LAB39:    t21 = (t10 + 4);
    t11 = *((unsigned int *)t21);
    t12 = (~(t11));
    t13 = *((unsigned int *)t10);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB41;

LAB42:    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB43:    goto LAB23;

LAB17:    xsi_set_current_line(45, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 784U);
    t7 = *((char **)t4);
    memset(t36, 0, 8);
    t4 = (t36 + 4);
    t8 = (t7 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    *((unsigned int *)t36) = t12;
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 0);
    *((unsigned int *)t4) = t14;
    t15 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t15 & 65535U);
    t16 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t16 & 65535U);
    xsi_vlogtype_concat(t10, 32, 32, 2U, t36, 16, t3, 16);
    t9 = (t0 + 1196);
    xsi_vlogvar_assign_value(t9, t10, 0, 0, 32);
    goto LAB23;

LAB19:    xsi_set_current_line(46, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1196);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    goto LAB23;

LAB21:    xsi_set_current_line(47, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1196);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    goto LAB23;

LAB24:    t19 = *((unsigned int *)t10);
    t20 = *((unsigned int *)t9);
    *((unsigned int *)t10) = (t19 | t20);
    t21 = (t4 + 4);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = *((unsigned int *)t22);
    t28 = (~(t27));
    t29 = *((unsigned int *)t7);
    t30 = (t29 & t28);
    t31 = (~(t26));
    t32 = (~(t30));
    t33 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t33 & t31);
    t34 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t34 & t32);
    goto LAB26;

LAB30:    t9 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB31;

LAB32:    xsi_set_current_line(37, ng0);
    t22 = ((char*)((ng2)));
    t35 = (t0 + 1196);
    xsi_vlogvar_assign_value(t35, t22, 0, 0, 32);
    goto LAB34;

LAB37:    t9 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB39;

LAB38:    *((unsigned int *)t10) = 1;
    goto LAB39;

LAB41:    xsi_set_current_line(42, ng0);
    t22 = ((char*)((ng2)));
    t35 = (t0 + 1196);
    xsi_vlogvar_assign_value(t35, t22, 0, 0, 32);
    goto LAB43;

}

static void Cont_50_1(char *t0)
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

LAB0:    t1 = (t0 + 1864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2112);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 2068);
    *((int *)t10) = 1;

LAB1:    return;
}


extern void work_m_00000000002325503008_0886308060_init()
{
	static char *pe[] = {(void *)Always_29_0,(void *)Cont_50_1};
	xsi_register_didat("work_m_00000000002325503008_0886308060", "isim/a_isim_beh.exe.sim/work/m_00000000002325503008_0886308060.didat");
	xsi_register_executes(pe);
}
