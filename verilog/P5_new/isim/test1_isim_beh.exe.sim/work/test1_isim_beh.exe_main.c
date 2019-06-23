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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003057113179_1733832700_init();
    work_m_00000000004231405122_0467708899_init();
    work_m_00000000003146178762_2751420617_init();
    work_m_00000000000555481353_0829998950_init();
    work_m_00000000002047994364_1861809063_init();
    work_m_00000000002624039461_3573049439_init();
    work_m_00000000003743674307_1621229167_init();
    work_m_00000000000722426082_1785967555_init();
    work_m_00000000004025186375_1579609468_init();
    work_m_00000000004168891206_0757879789_init();
    work_m_00000000003220629110_0600120494_init();
    work_m_00000000001845185224_1307654629_init();
    work_m_00000000003192243234_0886308060_init();
    work_m_00000000001515195495_4055517825_init();
    work_m_00000000000923103270_0989202803_init();
    work_m_00000000002777830478_2761071824_init();
    work_m_00000000001961121741_2924402094_init();
    work_m_00000000001402724270_2669349588_init();
    work_m_00000000001918617334_1452706411_init();
    work_m_00000000003079616788_3210399350_init();
    work_m_00000000002550010847_3877310806_init();
    work_m_00000000002047498008_2221974671_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002047498008_2221974671");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
