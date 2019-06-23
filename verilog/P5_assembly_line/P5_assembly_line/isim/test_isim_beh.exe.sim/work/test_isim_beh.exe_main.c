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
    work_m_00000000002047994364_1861809063_init();
    work_m_00000000004231405122_0467708899_init();
    work_m_00000000000199486365_2235702799_init();
    work_m_00000000001017093697_4272019156_init();
    work_m_00000000003743674307_1621229167_init();
    work_m_00000000000722426082_1785967555_init();
    work_m_00000000000874578081_1579609468_init();
    work_m_00000000004168891206_0757879789_init();
    work_m_00000000002610341705_2550121927_init();
    work_m_00000000003561276509_1175831959_init();
    work_m_00000000003192243234_0886308060_init();
    work_m_00000000001788292940_3311446436_init();
    work_m_00000000003000454876_2080942248_init();
    work_m_00000000001961121741_2924402094_init();
    work_m_00000000003064939870_3166371250_init();
    work_m_00000000003172663892_3280161854_init();
    work_m_00000000004253196461_1452706411_init();
    work_m_00000000000133055859_3210399350_init();
    work_m_00000000003151792699_3877310806_init();
    work_m_00000000002047498008_1985558087_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002047498008_1985558087");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}