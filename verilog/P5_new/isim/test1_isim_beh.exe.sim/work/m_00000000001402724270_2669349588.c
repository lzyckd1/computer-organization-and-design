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
static const char *ng0 = "F:/verilog/P5_new/RDG_MEM_WB.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {12288U, 0U};
static int ng3[] = {1, 0};



static void Initial_44_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(45, ng0);

LAB2:    xsi_set_current_line(46, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2760);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(47, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2392);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(48, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 2484);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(49, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2576);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(50, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2668);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(51, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2852);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 5);
    xsi_set_current_line(52, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2944);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 2);
    xsi_set_current_line(53, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3036);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 2);

LAB1:    return;
}

static void Always_56_1(char *t0)
{
    char t6[8];
    char t30[8];
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

LAB0:    t1 = (t0 + 3704U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 5052);
    *((int *)t2) = 1;
    t3 = (t0 + 3732);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(57, ng0);

LAB5:    xsi_set_current_line(58, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng3)));
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

LAB11:    xsi_set_current_line(70, ng0);

LAB14:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 2392);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    t2 = (t0 + 2484);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);
    t2 = (t0 + 2576);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1060U);
    t3 = *((char **)t2);
    t2 = (t0 + 2668);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1152U);
    t3 = *((char **)t2);
    t2 = (t0 + 2852);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 1428U);
    t3 = *((char **)t2);
    t2 = (t0 + 2760);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1244U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB16;

LAB15:    t5 = (t2 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB16;

LAB19:    if (*((unsigned int *)t3) > *((unsigned int *)t2))
        goto LAB17;

LAB18:    t8 = (t6 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB20;

LAB21:
LAB22:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 1336U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB24;

LAB23:    t5 = (t2 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB24;

LAB27:    if (*((unsigned int *)t3) > *((unsigned int *)t2))
        goto LAB25;

LAB26:    t8 = (t6 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB28;

LAB29:
LAB30:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(59, ng0);

LAB13:    xsi_set_current_line(60, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 2392);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 32);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2760);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2484);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2576);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2668);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2852);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2944);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3036);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB12;

LAB16:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB18;

LAB17:    *((unsigned int *)t6) = 1;
    goto LAB18;

LAB20:    xsi_set_current_line(77, ng0);
    t21 = (t0 + 1244U);
    t22 = *((char **)t21);
    t21 = ((char*)((ng3)));
    memset(t30, 0, 8);
    xsi_vlog_unsigned_minus(t30, 32, t22, 2, t21, 32);
    t28 = (t0 + 2944);
    xsi_vlogvar_wait_assign_value(t28, t30, 0, 0, 2, 0LL);
    goto LAB22;

LAB24:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB26;

LAB25:    *((unsigned int *)t6) = 1;
    goto LAB26;

LAB28:    xsi_set_current_line(78, ng0);
    t21 = (t0 + 1336U);
    t22 = *((char **)t21);
    t21 = ((char*)((ng3)));
    memset(t30, 0, 8);
    xsi_vlog_unsigned_minus(t30, 32, t22, 2, t21, 32);
    t28 = (t0 + 3036);
    xsi_vlogvar_wait_assign_value(t28, t30, 0, 0, 2, 0LL);
    goto LAB30;

}

static void Cont_81_2(char *t0)
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

LAB0:    t1 = (t0 + 3848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 2392);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 5160);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 5060);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_82_3(char *t0)
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

LAB0:    t1 = (t0 + 3992U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2484);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 5196);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 5068);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_83_4(char *t0)
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

LAB0:    t1 = (t0 + 4136U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2576);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 5232);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 5076);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_84_5(char *t0)
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

LAB0:    t1 = (t0 + 4280U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 2668);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 5268);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 5084);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_85_6(char *t0)
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
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 4424U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2852);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 5304);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 31U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 4);
    t18 = (t0 + 5092);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_86_7(char *t0)
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
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 4568U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 2944);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 5340);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 3U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 1);
    t18 = (t0 + 5100);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_87_8(char *t0)
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
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 4712U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 3036);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 5376);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 3U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 1);
    t18 = (t0 + 5108);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_88_9(char *t0)
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

LAB0:    t1 = (t0 + 4856U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 2760);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 5412);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 5116);
    *((int *)t10) = 1;

LAB1:    return;
}


extern void work_m_00000000001402724270_2669349588_init()
{
	static char *pe[] = {(void *)Initial_44_0,(void *)Always_56_1,(void *)Cont_81_2,(void *)Cont_82_3,(void *)Cont_83_4,(void *)Cont_84_5,(void *)Cont_85_6,(void *)Cont_86_7,(void *)Cont_87_8,(void *)Cont_88_9};
	xsi_register_didat("work_m_00000000001402724270_2669349588", "isim/test1_isim_beh.exe.sim/work/m_00000000001402724270_2669349588.didat");
	xsi_register_executes(pe);
}
