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
static const char *ng0 = "F:/verilog/P1_kexia_2/string.v";
static int ng1[] = {0, 0};
static int ng2[] = {48, 0};
static int ng3[] = {57, 0};
static int ng4[] = {42, 0};
static int ng5[] = {43, 0};
static int ng6[] = {1, 0};
static int ng7[] = {2, 0};
static int ng8[] = {3, 0};



static void Initial_29_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(29, ng0);

LAB2:    xsi_set_current_line(30, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 2);

LAB1:    return;
}

static void Always_32_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 1956U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 2440);
    *((int *)t2) = 1;
    t3 = (t0 + 1984);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 1104);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 2);
    goto LAB2;

}

static void Always_36_2(char *t0)
{
    char t13[8];
    char t14[8];
    char t22[8];
    char t26[8];
    char t34[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t23;
    char *t24;
    char *t25;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    int t58;
    int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;

LAB0:    t1 = (t0 + 2100U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 2448);
    *((int *)t2) = 1;
    t3 = (t0 + 2128);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);

LAB5:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(40, ng0);

LAB9:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t13, 0, 8);
    t4 = (t3 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB11;

LAB10:    t5 = (t2 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB11;

LAB14:    if (*((unsigned int *)t3) < *((unsigned int *)t2))
        goto LAB13;

LAB12:    *((unsigned int *)t13) = 1;

LAB13:    memset(t14, 0, 8);
    t12 = (t13 + 4);
    t6 = *((unsigned int *)t12);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t12) != 0)
        goto LAB17;

LAB18:    t16 = (t14 + 4);
    t17 = *((unsigned int *)t14);
    t18 = *((unsigned int *)t16);
    t19 = (t17 || t18);
    if (t19 > 0)
        goto LAB19;

LAB20:    memcpy(t34, t14, 8);

LAB21:    t66 = (t34 + 4);
    t67 = *((unsigned int *)t66);
    t68 = (~(t67));
    t69 = *((unsigned int *)t34);
    t70 = (t69 & t68);
    t71 = (t70 != 0);
    if (t71 > 0)
        goto LAB34;

LAB35:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t13, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t17 = (t9 ^ t10);
    t18 = (t8 | t17);
    t19 = *((unsigned int *)t4);
    t28 = *((unsigned int *)t5);
    t29 = (t19 | t28);
    t30 = (~(t29));
    t31 = (t18 & t30);
    if (t31 != 0)
        goto LAB40;

LAB37:    if (t29 != 0)
        goto LAB39;

LAB38:    *((unsigned int *)t13) = 1;

LAB40:    memset(t14, 0, 8);
    t12 = (t13 + 4);
    t32 = *((unsigned int *)t12);
    t35 = (~(t32));
    t36 = *((unsigned int *)t13);
    t37 = (t36 & t35);
    t41 = (t37 & 1U);
    if (t41 != 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t12) != 0)
        goto LAB43;

LAB44:    t16 = (t14 + 4);
    t42 = *((unsigned int *)t14);
    t43 = (!(t42));
    t44 = *((unsigned int *)t16);
    t45 = (t43 || t44);
    if (t45 > 0)
        goto LAB45;

LAB46:    memcpy(t34, t14, 8);

LAB47:    t66 = (t34 + 4);
    t90 = *((unsigned int *)t66);
    t91 = (~(t90));
    t92 = *((unsigned int *)t34);
    t93 = (t92 & t91);
    t94 = (t93 != 0);
    if (t94 > 0)
        goto LAB59;

LAB60:    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);

LAB61:
LAB36:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);

LAB62:    t5 = ((char*)((ng1)));
    t58 = xsi_vlog_unsigned_case_compare(t4, 2, t5, 32);
    if (t58 == 1)
        goto LAB63;

LAB64:    t2 = ((char*)((ng6)));
    t58 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 32);
    if (t58 == 1)
        goto LAB65;

LAB66:    t2 = ((char*)((ng7)));
    t58 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 32);
    if (t58 == 1)
        goto LAB67;

LAB68:    t2 = ((char*)((ng8)));
    t58 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 32);
    if (t58 == 1)
        goto LAB69;

LAB70:
LAB71:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t20 = ((char*)((ng6)));
    memset(t13, 0, 8);
    t21 = (t5 + 4);
    t23 = (t20 + 4);
    t6 = *((unsigned int *)t5);
    t7 = *((unsigned int *)t20);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t21);
    t10 = *((unsigned int *)t23);
    t17 = (t9 ^ t10);
    t18 = (t8 | t17);
    t19 = *((unsigned int *)t21);
    t28 = *((unsigned int *)t23);
    t29 = (t19 | t28);
    t30 = (~(t29));
    t31 = (t18 & t30);
    if (t31 != 0)
        goto LAB111;

LAB108:    if (t29 != 0)
        goto LAB110;

LAB109:    *((unsigned int *)t13) = 1;

LAB111:    t25 = (t13 + 4);
    t32 = *((unsigned int *)t25);
    t35 = (~(t32));
    t36 = *((unsigned int *)t13);
    t37 = (t36 & t35);
    t41 = (t37 != 0);
    if (t41 > 0)
        goto LAB112;

LAB113:    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB114:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(38, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1104);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 2);
    goto LAB8;

LAB11:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB13;

LAB15:    *((unsigned int *)t14) = 1;
    goto LAB18;

LAB17:    t15 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB18;

LAB19:    t20 = (t0 + 784U);
    t21 = *((char **)t20);
    t20 = ((char*)((ng3)));
    memset(t22, 0, 8);
    t23 = (t21 + 4);
    if (*((unsigned int *)t23) != 0)
        goto LAB23;

LAB22:    t24 = (t20 + 4);
    if (*((unsigned int *)t24) != 0)
        goto LAB23;

LAB26:    if (*((unsigned int *)t21) > *((unsigned int *)t20))
        goto LAB25;

LAB24:    *((unsigned int *)t22) = 1;

LAB25:    memset(t26, 0, 8);
    t27 = (t22 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (~(t28));
    t30 = *((unsigned int *)t22);
    t31 = (t30 & t29);
    t32 = (t31 & 1U);
    if (t32 != 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t27) != 0)
        goto LAB29;

LAB30:    t35 = *((unsigned int *)t14);
    t36 = *((unsigned int *)t26);
    t37 = (t35 & t36);
    *((unsigned int *)t34) = t37;
    t38 = (t14 + 4);
    t39 = (t26 + 4);
    t40 = (t34 + 4);
    t41 = *((unsigned int *)t38);
    t42 = *((unsigned int *)t39);
    t43 = (t41 | t42);
    *((unsigned int *)t40) = t43;
    t44 = *((unsigned int *)t40);
    t45 = (t44 != 0);
    if (t45 == 1)
        goto LAB31;

LAB32:
LAB33:    goto LAB21;

LAB23:    t25 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB25;

LAB27:    *((unsigned int *)t26) = 1;
    goto LAB30;

LAB29:    t33 = (t26 + 4);
    *((unsigned int *)t26) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB30;

LAB31:    t46 = *((unsigned int *)t34);
    t47 = *((unsigned int *)t40);
    *((unsigned int *)t34) = (t46 | t47);
    t48 = (t14 + 4);
    t49 = (t26 + 4);
    t50 = *((unsigned int *)t14);
    t51 = (~(t50));
    t52 = *((unsigned int *)t48);
    t53 = (~(t52));
    t54 = *((unsigned int *)t26);
    t55 = (~(t54));
    t56 = *((unsigned int *)t49);
    t57 = (~(t56));
    t58 = (t51 & t53);
    t59 = (t55 & t57);
    t60 = (~(t58));
    t61 = (~(t59));
    t62 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t62 & t60);
    t63 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t63 & t61);
    t64 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t64 & t60);
    t65 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t65 & t61);
    goto LAB33;

LAB34:    xsi_set_current_line(41, ng0);
    t72 = ((char*)((ng1)));
    t73 = (t0 + 1196);
    xsi_vlogvar_assign_value(t73, t72, 0, 0, 2);
    goto LAB36;

LAB39:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB40;

LAB41:    *((unsigned int *)t14) = 1;
    goto LAB44;

LAB43:    t15 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB44;

LAB45:    t20 = (t0 + 784U);
    t21 = *((char **)t20);
    t20 = ((char*)((ng5)));
    memset(t22, 0, 8);
    t23 = (t21 + 4);
    t24 = (t20 + 4);
    t46 = *((unsigned int *)t21);
    t47 = *((unsigned int *)t20);
    t50 = (t46 ^ t47);
    t51 = *((unsigned int *)t23);
    t52 = *((unsigned int *)t24);
    t53 = (t51 ^ t52);
    t54 = (t50 | t53);
    t55 = *((unsigned int *)t23);
    t56 = *((unsigned int *)t24);
    t57 = (t55 | t56);
    t60 = (~(t57));
    t61 = (t54 & t60);
    if (t61 != 0)
        goto LAB51;

LAB48:    if (t57 != 0)
        goto LAB50;

LAB49:    *((unsigned int *)t22) = 1;

LAB51:    memset(t26, 0, 8);
    t27 = (t22 + 4);
    t62 = *((unsigned int *)t27);
    t63 = (~(t62));
    t64 = *((unsigned int *)t22);
    t65 = (t64 & t63);
    t67 = (t65 & 1U);
    if (t67 != 0)
        goto LAB52;

LAB53:    if (*((unsigned int *)t27) != 0)
        goto LAB54;

LAB55:    t68 = *((unsigned int *)t14);
    t69 = *((unsigned int *)t26);
    t70 = (t68 | t69);
    *((unsigned int *)t34) = t70;
    t38 = (t14 + 4);
    t39 = (t26 + 4);
    t40 = (t34 + 4);
    t71 = *((unsigned int *)t38);
    t74 = *((unsigned int *)t39);
    t75 = (t71 | t74);
    *((unsigned int *)t40) = t75;
    t76 = *((unsigned int *)t40);
    t77 = (t76 != 0);
    if (t77 == 1)
        goto LAB56;

LAB57:
LAB58:    goto LAB47;

LAB50:    t25 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB51;

LAB52:    *((unsigned int *)t26) = 1;
    goto LAB55;

LAB54:    t33 = (t26 + 4);
    *((unsigned int *)t26) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB55;

LAB56:    t78 = *((unsigned int *)t34);
    t79 = *((unsigned int *)t40);
    *((unsigned int *)t34) = (t78 | t79);
    t48 = (t14 + 4);
    t49 = (t26 + 4);
    t80 = *((unsigned int *)t48);
    t81 = (~(t80));
    t82 = *((unsigned int *)t14);
    t58 = (t82 & t81);
    t83 = *((unsigned int *)t49);
    t84 = (~(t83));
    t85 = *((unsigned int *)t26);
    t59 = (t85 & t84);
    t86 = (~(t58));
    t87 = (~(t59));
    t88 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t88 & t86);
    t89 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t89 & t87);
    goto LAB58;

LAB59:    xsi_set_current_line(42, ng0);
    t72 = ((char*)((ng6)));
    t73 = (t0 + 1196);
    xsi_vlogvar_assign_value(t73, t72, 0, 0, 2);
    goto LAB61;

LAB63:    xsi_set_current_line(46, ng0);

LAB72:    xsi_set_current_line(47, ng0);
    t11 = (t0 + 1196);
    t12 = (t11 + 36U);
    t15 = *((char **)t12);

LAB73:    t16 = ((char*)((ng1)));
    t59 = xsi_vlog_unsigned_case_compare(t15, 2, t16, 32);
    if (t59 == 1)
        goto LAB74;

LAB75:    t2 = ((char*)((ng6)));
    t58 = xsi_vlog_unsigned_case_compare(t15, 2, t2, 32);
    if (t58 == 1)
        goto LAB76;

LAB77:    t2 = ((char*)((ng7)));
    t58 = xsi_vlog_unsigned_case_compare(t15, 2, t2, 32);
    if (t58 == 1)
        goto LAB78;

LAB79:
LAB80:    goto LAB71;

LAB65:    xsi_set_current_line(54, ng0);

LAB81:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 1196);
    t5 = (t3 + 36U);
    t11 = *((char **)t5);

LAB82:    t12 = ((char*)((ng1)));
    t59 = xsi_vlog_unsigned_case_compare(t11, 2, t12, 32);
    if (t59 == 1)
        goto LAB83;

LAB84:    t2 = ((char*)((ng6)));
    t58 = xsi_vlog_unsigned_case_compare(t11, 2, t2, 32);
    if (t58 == 1)
        goto LAB85;

LAB86:    t2 = ((char*)((ng7)));
    t58 = xsi_vlog_unsigned_case_compare(t11, 2, t2, 32);
    if (t58 == 1)
        goto LAB87;

LAB88:
LAB89:    goto LAB71;

LAB67:    xsi_set_current_line(62, ng0);

LAB90:    xsi_set_current_line(63, ng0);
    t3 = (t0 + 1196);
    t5 = (t3 + 36U);
    t12 = *((char **)t5);

LAB91:    t16 = ((char*)((ng1)));
    t59 = xsi_vlog_unsigned_case_compare(t12, 2, t16, 32);
    if (t59 == 1)
        goto LAB92;

LAB93:    t2 = ((char*)((ng6)));
    t58 = xsi_vlog_unsigned_case_compare(t12, 2, t2, 32);
    if (t58 == 1)
        goto LAB94;

LAB95:    t2 = ((char*)((ng7)));
    t58 = xsi_vlog_unsigned_case_compare(t12, 2, t2, 32);
    if (t58 == 1)
        goto LAB96;

LAB97:
LAB98:    goto LAB71;

LAB69:    xsi_set_current_line(70, ng0);

LAB99:    xsi_set_current_line(71, ng0);
    t3 = (t0 + 1196);
    t5 = (t3 + 36U);
    t16 = *((char **)t5);

LAB100:    t20 = ((char*)((ng1)));
    t59 = xsi_vlog_unsigned_case_compare(t16, 2, t20, 32);
    if (t59 == 1)
        goto LAB101;

LAB102:    t2 = ((char*)((ng6)));
    t58 = xsi_vlog_unsigned_case_compare(t16, 2, t2, 32);
    if (t58 == 1)
        goto LAB103;

LAB104:    t2 = ((char*)((ng7)));
    t58 = xsi_vlog_unsigned_case_compare(t16, 2, t2, 32);
    if (t58 == 1)
        goto LAB105;

LAB106:
LAB107:    goto LAB71;

LAB74:    xsi_set_current_line(48, ng0);
    t20 = ((char*)((ng6)));
    t21 = (t0 + 1104);
    xsi_vlogvar_assign_value(t21, t20, 0, 0, 2);
    goto LAB80;

LAB76:    xsi_set_current_line(49, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 1104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 2);
    goto LAB80;

LAB78:    xsi_set_current_line(50, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 1104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 2);
    goto LAB80;

LAB83:    xsi_set_current_line(56, ng0);
    t16 = ((char*)((ng6)));
    t20 = (t0 + 1104);
    xsi_vlogvar_assign_value(t20, t16, 0, 0, 2);
    goto LAB89;

LAB85:    xsi_set_current_line(57, ng0);
    t3 = ((char*)((ng8)));
    t5 = (t0 + 1104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 2);
    goto LAB89;

LAB87:    xsi_set_current_line(58, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 1104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 2);
    goto LAB89;

LAB92:    xsi_set_current_line(64, ng0);
    t20 = ((char*)((ng7)));
    t21 = (t0 + 1104);
    xsi_vlogvar_assign_value(t21, t20, 0, 0, 2);
    goto LAB98;

LAB94:    xsi_set_current_line(65, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 1104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 2);
    goto LAB98;

LAB96:    xsi_set_current_line(66, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 1104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 2);
    goto LAB98;

LAB101:    xsi_set_current_line(72, ng0);
    t21 = ((char*)((ng6)));
    t23 = (t0 + 1104);
    xsi_vlogvar_assign_value(t23, t21, 0, 0, 2);
    goto LAB107;

LAB103:    xsi_set_current_line(73, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 1104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 2);
    goto LAB107;

LAB105:    xsi_set_current_line(74, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 1104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 2);
    goto LAB107;

LAB110:    t24 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB111;

LAB112:    xsi_set_current_line(78, ng0);
    t27 = ((char*)((ng6)));
    t33 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t33, t27, 0, 0, 1, 0LL);
    goto LAB114;

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
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 2244U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 1288);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2500);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
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
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 2456);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000000796909255_4180013079_init()
{
	static char *pe[] = {(void *)Initial_29_0,(void *)Always_32_1,(void *)Always_36_2,(void *)Cont_82_3};
	xsi_register_didat("work_m_00000000000796909255_4180013079", "isim/string_isim_beh.exe.sim/work/m_00000000000796909255_4180013079.didat");
	xsi_register_executes(pe);
}
