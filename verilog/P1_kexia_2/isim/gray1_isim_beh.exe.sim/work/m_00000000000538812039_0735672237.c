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
static const char *ng0 = "F:/verilog/P1_kexia_2/gray.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {7, 0};
static int ng4[] = {8, 0};
static int ng5[] = {2, 0};
static int ng6[] = {11, 0};
static int ng7[] = {3, 0};
static int ng8[] = {10, 0};
static int ng9[] = {4, 0};
static int ng10[] = {110, 0};
static int ng11[] = {5, 0};
static int ng12[] = {111, 0};
static int ng13[] = {6, 0};
static int ng14[] = {101, 0};
static int ng15[] = {100, 0};



static void Initial_30_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(31, ng0);

LAB2:    xsi_set_current_line(32, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1196);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 4);
    xsi_set_current_line(33, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1012);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 3);
    xsi_set_current_line(34, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_37_1(char *t0)
{
    char t6[8];
    char t30[8];
    char t44[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
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
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t45;
    int t46;

LAB0:    t1 = (t0 + 1864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 2060);
    *((int *)t2) = 1;
    t3 = (t0 + 1892);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(38, ng0);

LAB5:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB17;

LAB14:    if (t18 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t6) = 1;

LAB17:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB18;

LAB19:
LAB20:
LAB12:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_mod(t6, 32, t4, 4, t5, 32);

LAB38:    t7 = ((char*)((ng1)));
    t46 = xsi_vlog_unsigned_case_compare(t6, 32, t7, 32);
    if (t46 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng2)));
    t46 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t46 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng5)));
    t46 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t46 == 1)
        goto LAB43;

LAB44:    t2 = ((char*)((ng7)));
    t46 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t46 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng9)));
    t46 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t46 == 1)
        goto LAB47;

LAB48:    t2 = ((char*)((ng11)));
    t46 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t46 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng13)));
    t46 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t46 == 1)
        goto LAB51;

LAB52:    t2 = ((char*)((ng3)));
    t46 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t46 == 1)
        goto LAB53;

LAB54:
LAB55:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(40, ng0);

LAB13:    xsi_set_current_line(41, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 4, 0LL);
    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB12;

LAB16:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(45, ng0);

LAB21:    xsi_set_current_line(46, ng0);
    t21 = (t0 + 1196);
    t22 = (t21 + 36U);
    t28 = *((char **)t22);
    t29 = ((char*)((ng3)));
    memset(t30, 0, 8);
    t31 = (t28 + 4);
    if (*((unsigned int *)t31) != 0)
        goto LAB23;

LAB22:    t32 = (t29 + 4);
    if (*((unsigned int *)t32) != 0)
        goto LAB23;

LAB26:    if (*((unsigned int *)t28) < *((unsigned int *)t29))
        goto LAB24;

LAB25:    t34 = (t30 + 4);
    t35 = *((unsigned int *)t34);
    t36 = (~(t35));
    t37 = *((unsigned int *)t30);
    t38 = (t37 & t36);
    t39 = (t38 != 0);
    if (t39 > 0)
        goto LAB27;

LAB28:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB33;

LAB30:    if (t18 != 0)
        goto LAB32;

LAB31:    *((unsigned int *)t6) = 1;

LAB33:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB34;

LAB35:
LAB36:
LAB29:    goto LAB20;

LAB23:    t33 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB25;

LAB24:    *((unsigned int *)t30) = 1;
    goto LAB25;

LAB27:    xsi_set_current_line(46, ng0);
    t40 = (t0 + 1196);
    t41 = (t40 + 36U);
    t42 = *((char **)t41);
    t43 = ((char*)((ng2)));
    memset(t44, 0, 8);
    xsi_vlog_unsigned_add(t44, 32, t42, 4, t43, 32);
    t45 = (t0 + 1196);
    xsi_vlogvar_assign_value(t45, t44, 0, 0, 4);
    goto LAB29;

LAB32:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB33;

LAB34:    xsi_set_current_line(48, ng0);

LAB37:    xsi_set_current_line(49, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 1196);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 4);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB36;

LAB39:    xsi_set_current_line(55, ng0);
    t8 = ((char*)((ng1)));
    t21 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t21, t8, 0, 0, 3, 0LL);
    goto LAB55;

LAB41:    xsi_set_current_line(56, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 3, 0LL);
    goto LAB55;

LAB43:    xsi_set_current_line(57, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 3, 0LL);
    goto LAB55;

LAB45:    xsi_set_current_line(58, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 3, 0LL);
    goto LAB55;

LAB47:    xsi_set_current_line(59, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 3, 0LL);
    goto LAB55;

LAB49:    xsi_set_current_line(60, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 3, 0LL);
    goto LAB55;

LAB51:    xsi_set_current_line(61, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 3, 0LL);
    goto LAB55;

LAB53:    xsi_set_current_line(62, ng0);
    t3 = ((char*)((ng15)));
    t4 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 3, 0LL);
    goto LAB55;

}


extern void work_m_00000000000538812039_0735672237_init()
{
	static char *pe[] = {(void *)Initial_30_0,(void *)Always_37_1};
	xsi_register_didat("work_m_00000000000538812039_0735672237", "isim/gray1_isim_beh.exe.sim/work/m_00000000000538812039_0735672237.didat");
	xsi_register_executes(pe);
}
