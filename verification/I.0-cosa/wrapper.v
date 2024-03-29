/* PREHEADER */

`define true  1'b1

`define false 1'b0

/* END OF PREHEADER */
module wrapper(
__VLG_I_cxrom_data_out,
__VLG_I_ea_in,
__VLG_I_int0_i,
__VLG_I_int1_i,
__VLG_I_p0_i,
__VLG_I_p1_i,
__VLG_I_p2_i,
__VLG_I_p3_i,
__VLG_I_wbd_ack_i,
__VLG_I_wbd_dat_i,
__VLG_I_wbd_err_i,
__VLG_I_wbi_ack_i,
__VLG_I_wbi_dat_i,
__VLG_I_wbi_err_i,
clk,
dummy_reset,
rst,
__ILA_SO_ACC,
__ILA_SO_B,
__ILA_SO_DPH,
__ILA_SO_DPL,
__ILA_SO_IE,
__ILA_SO_IP,
__ILA_SO_P0,
__ILA_SO_P1,
__ILA_SO_P2,
__ILA_SO_P3,
__ILA_SO_PC,
__ILA_SO_PCON,
__ILA_SO_PSW,
__ILA_SO_SBUF,
__ILA_SO_SCON,
__ILA_SO_SP,
__ILA_SO_TCON,
__ILA_SO_TH0,
__ILA_SO_TH1,
__ILA_SO_TL0,
__ILA_SO_TL1,
__ILA_SO_TMOD,
__ILA_SO_XRAM_ADDR,
__ILA_SO_XRAM_DATA_IN,
__ILA_SO_XRAM_DATA_OUT,
__VLG_O_cxrom_addr,
__VLG_O_iram,
__VLG_O_op1,
__VLG_O_op1_d,
__VLG_O_op2,
__VLG_O_op3,
__VLG_O_p0_o,
__VLG_O_p1_o,
__VLG_O_p2_o,
__VLG_O_p3_o,
__VLG_O_pc_change,
__VLG_O_wbd_adr_o,
__VLG_O_wbd_cyc_o,
__VLG_O_wbd_dat_o,
__VLG_O_wbd_stb_o,
__VLG_O_wbd_we_o,
__VLG_O_wbi_adr_o,
__VLG_O_wbi_cyc_o,
__VLG_O_wbi_stb_o,
__m11__,
__m13__,
__m15__,
__m17__,
__m19__,
__m1__,
__m21__,
__m23__,
__m25__,
__m27__,
__m29__,
__m31__,
__m33__,
__m35__,
__m37__,
__m39__,
__m3__,
__m41__,
__m43__,
__m45__,
__m47__,
__m49__,
__m51__,
__m53__,
__m55__,
__m57__,
__m59__,
__m5__,
__m7__,
__m9__,
acc,
additional_mapping_control_assume__m61__,
additional_mapping_control_assume__m62__,
additional_mapping_control_assume__m63__,
additional_mapping_control_assume__m64__,
additional_mapping_control_assume__m65__,
additional_mapping_control_assume__m66__,
b_reg,
decoder_state,
dptr,
ie,
issue_decode__m67__,
issue_valid__m68__,
m1__DOT__ea_in,
m1__DOT__iram,
m1__DOT__oc8051_memory_interface1__DOT__dadr_o,
m1__DOT__oc8051_memory_interface1__DOT__ddat_o,
m1__DOT__oc8051_memory_interface1__DOT__pc,
m1__DOT__oc8051_sfr1__DOT__oc8051_acc1__DOT__data_out,
m1__DOT__oc8051_sfr1__DOT__oc8051_b_register__DOT__data_out,
m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_hi,
m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_lo,
m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ie,
m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ip,
m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__tcon,
m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p0_out,
m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p1_out,
m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p2_out,
m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p3_out,
m1__DOT__oc8051_sfr1__DOT__oc8051_psw1__DOT__data,
m1__DOT__oc8051_sfr1__DOT__oc8051_sp1__DOT__sp_out,
m1__DOT__op1,
m1__DOT__op2,
m1__DOT__op3,
noreset__m0__,
p,
pc,
pc_log,
pc_log_prev,
psw,
sp,
variable_map_assert___p32__,
variable_map_assert___p34__,
variable_map_assert___p36__,
variable_map_assert___p38__,
variable_map_assert___p40__,
variable_map_assert___p42__,
variable_map_assert___p44__,
variable_map_assert___p46__,
variable_map_assert___p48__,
variable_map_assert___p50__,
variable_map_assert___p52__,
variable_map_assert___p54__,
variable_map_assert___p56__,
variable_map_assert___p58__,
variable_map_assert___p60__,
variable_map_assume___m10__,
variable_map_assume___m12__,
variable_map_assume___m14__,
variable_map_assume___m16__,
variable_map_assume___m18__,
variable_map_assume___m20__,
variable_map_assume___m22__,
variable_map_assume___m24__,
variable_map_assume___m26__,
variable_map_assume___m28__,
variable_map_assume___m2__,
variable_map_assume___m30__,
variable_map_assume___m4__,
variable_map_assume___m6__,
variable_map_assume___m8__,
__CYCLE_CNT__,
__START__,
__STARTED__,
__ENDED__,
__RESETED__
);
input     [31:0] __VLG_I_cxrom_data_out;
input            __VLG_I_ea_in;
input            __VLG_I_int0_i;
input            __VLG_I_int1_i;
input      [7:0] __VLG_I_p0_i;
input      [7:0] __VLG_I_p1_i;
input      [7:0] __VLG_I_p2_i;
input      [7:0] __VLG_I_p3_i;
input            __VLG_I_wbd_ack_i;
input      [7:0] __VLG_I_wbd_dat_i;
input            __VLG_I_wbd_err_i;
input            __VLG_I_wbi_ack_i;
input     [31:0] __VLG_I_wbi_dat_i;
input            __VLG_I_wbi_err_i;
input            clk;
input            dummy_reset;
input            rst;
output      [7:0] __ILA_SO_ACC;
output      [7:0] __ILA_SO_B;
output      [7:0] __ILA_SO_DPH;
output      [7:0] __ILA_SO_DPL;
output      [7:0] __ILA_SO_IE;
output      [7:0] __ILA_SO_IP;
output      [7:0] __ILA_SO_P0;
output      [7:0] __ILA_SO_P1;
output      [7:0] __ILA_SO_P2;
output      [7:0] __ILA_SO_P3;
output     [15:0] __ILA_SO_PC;
output      [7:0] __ILA_SO_PCON;
output      [7:0] __ILA_SO_PSW;
output      [7:0] __ILA_SO_SBUF;
output      [7:0] __ILA_SO_SCON;
output      [7:0] __ILA_SO_SP;
output      [7:0] __ILA_SO_TCON;
output      [7:0] __ILA_SO_TH0;
output      [7:0] __ILA_SO_TH1;
output      [7:0] __ILA_SO_TL0;
output      [7:0] __ILA_SO_TL1;
output      [7:0] __ILA_SO_TMOD;
output     [15:0] __ILA_SO_XRAM_ADDR;
output      [7:0] __ILA_SO_XRAM_DATA_IN;
output      [7:0] __ILA_SO_XRAM_DATA_OUT;
output     [15:0] __VLG_O_cxrom_addr;
output   [2047:0] __VLG_O_iram;
output      [7:0] __VLG_O_op1;
output      [7:0] __VLG_O_op1_d;
output      [7:0] __VLG_O_op2;
output      [7:0] __VLG_O_op3;
output      [7:0] __VLG_O_p0_o;
output      [7:0] __VLG_O_p1_o;
output      [7:0] __VLG_O_p2_o;
output      [7:0] __VLG_O_p3_o;
output            __VLG_O_pc_change;
output     [15:0] __VLG_O_wbd_adr_o;
output            __VLG_O_wbd_cyc_o;
output      [7:0] __VLG_O_wbd_dat_o;
output            __VLG_O_wbd_stb_o;
output            __VLG_O_wbd_we_o;
output     [15:0] __VLG_O_wbi_adr_o;
output            __VLG_O_wbi_cyc_o;
output            __VLG_O_wbi_stb_o;
output            __m11__;
output            __m13__;
output            __m15__;
output            __m17__;
output            __m19__;
output            __m1__;
output            __m21__;
output            __m23__;
output            __m25__;
output            __m27__;
output            __m29__;
output            __m31__;
output            __m33__;
output            __m35__;
output            __m37__;
output            __m39__;
output            __m3__;
output            __m41__;
output            __m43__;
output            __m45__;
output            __m47__;
output            __m49__;
output            __m51__;
output            __m53__;
output            __m55__;
output            __m57__;
output            __m59__;
output            __m5__;
output            __m7__;
output            __m9__;
output      [7:0] acc;
output            additional_mapping_control_assume__m61__;
output            additional_mapping_control_assume__m62__;
output            additional_mapping_control_assume__m63__;
output            additional_mapping_control_assume__m64__;
output            additional_mapping_control_assume__m65__;
output            additional_mapping_control_assume__m66__;
output      [7:0] b_reg;
output      [1:0] decoder_state;
output     [15:0] dptr;
output      [7:0] ie;
output            issue_decode__m67__;
output            issue_valid__m68__;
output            m1__DOT__ea_in;
output   [2047:0] m1__DOT__iram;
output     [15:0] m1__DOT__oc8051_memory_interface1__DOT__dadr_o;
output      [7:0] m1__DOT__oc8051_memory_interface1__DOT__ddat_o;
output     [15:0] m1__DOT__oc8051_memory_interface1__DOT__pc;
output      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_acc1__DOT__data_out;
output      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_b_register__DOT__data_out;
output      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_hi;
output      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_lo;
output      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ie;
output      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ip;
output      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__tcon;
output      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p0_out;
output      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p1_out;
output      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p2_out;
output      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p3_out;
output      [6:0] m1__DOT__oc8051_sfr1__DOT__oc8051_psw1__DOT__data;
output      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_sp1__DOT__sp_out;
output      [7:0] m1__DOT__op1;
output      [7:0] m1__DOT__op2;
output      [7:0] m1__DOT__op3;
output            noreset__m0__;
output            p;
output     [15:0] pc;
output     [15:0] pc_log;
output     [15:0] pc_log_prev;
output      [7:0] psw;
output      [7:0] sp;
output            variable_map_assert___p32__;
output            variable_map_assert___p34__;
output            variable_map_assert___p36__;
output            variable_map_assert___p38__;
output            variable_map_assert___p40__;
output            variable_map_assert___p42__;
output            variable_map_assert___p44__;
output            variable_map_assert___p46__;
output            variable_map_assert___p48__;
output            variable_map_assert___p50__;
output            variable_map_assert___p52__;
output            variable_map_assert___p54__;
output            variable_map_assert___p56__;
output            variable_map_assert___p58__;
output            variable_map_assert___p60__;
output            variable_map_assume___m10__;
output            variable_map_assume___m12__;
output            variable_map_assume___m14__;
output            variable_map_assume___m16__;
output            variable_map_assume___m18__;
output            variable_map_assume___m20__;
output            variable_map_assume___m22__;
output            variable_map_assume___m24__;
output            variable_map_assume___m26__;
output            variable_map_assume___m28__;
output            variable_map_assume___m2__;
output            variable_map_assume___m30__;
output            variable_map_assume___m4__;
output            variable_map_assume___m6__;
output            variable_map_assume___m8__;
output reg      [4:0] __CYCLE_CNT__;
output reg            __START__;
output reg            __STARTED__;
output reg            __ENDED__;
output reg            __RESETED__;
(* keep *) wire            __IEND__;
(* keep *) wire      [7:0] __ILA_SO_ACC;
(* keep *) wire      [7:0] __ILA_SO_B;
(* keep *) wire      [7:0] __ILA_SO_DPH;
(* keep *) wire      [7:0] __ILA_SO_DPL;
(* keep *) wire      [7:0] __ILA_SO_IE;
(* keep *) wire      [7:0] __ILA_SO_IP;
(* keep *) wire      [7:0] __ILA_SO_P0;
(* keep *) wire      [7:0] __ILA_SO_P1;
(* keep *) wire      [7:0] __ILA_SO_P2;
(* keep *) wire      [7:0] __ILA_SO_P3;
(* keep *) wire     [15:0] __ILA_SO_PC;
(* keep *) wire      [7:0] __ILA_SO_PCON;
(* keep *) wire      [7:0] __ILA_SO_PSW;
(* keep *) wire      [7:0] __ILA_SO_SBUF;
(* keep *) wire      [7:0] __ILA_SO_SCON;
(* keep *) wire      [7:0] __ILA_SO_SP;
(* keep *) wire      [7:0] __ILA_SO_TCON;
(* keep *) wire      [7:0] __ILA_SO_TH0;
(* keep *) wire      [7:0] __ILA_SO_TH1;
(* keep *) wire      [7:0] __ILA_SO_TL0;
(* keep *) wire      [7:0] __ILA_SO_TL1;
(* keep *) wire      [7:0] __ILA_SO_TMOD;
(* keep *) wire     [15:0] __ILA_SO_XRAM_ADDR;
(* keep *) wire      [7:0] __ILA_SO_XRAM_DATA_IN;
(* keep *) wire      [7:0] __ILA_SO_XRAM_DATA_OUT;
(* keep *) wire            __ILA_oc8051_decode_of_I__DOT__0__;
(* keep *) wire            __ILA_oc8051_valid__;
(* keep *) wire      [7:0] __IMEM_IRAM_0_raddr;
(* keep *) wire      [7:0] __IMEM_IRAM_0_rdata;
(* keep *) wire      [7:0] __IMEM_IRAM_1_raddr;
(* keep *) wire      [7:0] __IMEM_IRAM_1_rdata;
(* keep *) wire      [7:0] __IMEM_IRAM_2_raddr;
(* keep *) wire      [7:0] __IMEM_IRAM_2_rdata;
(* keep *) wire      [7:0] __IMEM_IRAM_3_raddr;
(* keep *) wire      [7:0] __IMEM_IRAM_3_rdata;
(* keep *) wire      [7:0] __IMEM_IRAM_4_raddr;
(* keep *) wire      [7:0] __IMEM_IRAM_4_rdata;
(* keep *) wire      [7:0] __IMEM_IRAM_5_raddr;
(* keep *) wire      [7:0] __IMEM_IRAM_5_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_0_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_0_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_10_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_10_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_11_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_11_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_12_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_12_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_13_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_13_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_14_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_14_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_15_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_15_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_16_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_16_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_17_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_17_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_18_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_18_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_19_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_19_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_1_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_1_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_20_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_20_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_21_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_21_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_22_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_22_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_23_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_23_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_24_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_24_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_25_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_25_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_26_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_26_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_27_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_27_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_28_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_28_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_29_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_29_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_2_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_2_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_30_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_30_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_31_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_31_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_32_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_32_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_33_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_33_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_34_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_34_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_35_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_35_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_36_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_36_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_37_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_37_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_38_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_38_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_39_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_39_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_3_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_3_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_40_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_40_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_41_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_41_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_42_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_42_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_43_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_43_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_44_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_44_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_45_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_45_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_46_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_46_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_47_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_47_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_48_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_48_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_49_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_49_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_4_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_4_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_50_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_50_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_5_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_5_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_6_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_6_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_7_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_7_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_8_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_8_rdata;
(* keep *) wire     [15:0] __IMEM_ROM_9_raddr;
(* keep *) wire      [7:0] __IMEM_ROM_9_rdata;
(* keep *) wire            __ISSUE__;
(* keep *) wire     [31:0] __VLG_I_cxrom_data_out;
(* keep *) wire            __VLG_I_ea_in;
(* keep *) wire            __VLG_I_int0_i;
(* keep *) wire            __VLG_I_int1_i;
(* keep *) wire      [7:0] __VLG_I_p0_i;
(* keep *) wire      [7:0] __VLG_I_p1_i;
(* keep *) wire      [7:0] __VLG_I_p2_i;
(* keep *) wire      [7:0] __VLG_I_p3_i;
(* keep *) wire            __VLG_I_wbd_ack_i;
(* keep *) wire      [7:0] __VLG_I_wbd_dat_i;
(* keep *) wire            __VLG_I_wbd_err_i;
(* keep *) wire            __VLG_I_wbi_ack_i;
(* keep *) wire     [31:0] __VLG_I_wbi_dat_i;
(* keep *) wire            __VLG_I_wbi_err_i;
(* keep *) wire     [15:0] __VLG_O_cxrom_addr;
(* keep *) wire   [2047:0] __VLG_O_iram;
(* keep *) wire      [7:0] __VLG_O_op1;
(* keep *) wire      [7:0] __VLG_O_op1_d;
(* keep *) wire      [7:0] __VLG_O_op2;
(* keep *) wire      [7:0] __VLG_O_op3;
(* keep *) wire      [7:0] __VLG_O_p0_o;
(* keep *) wire      [7:0] __VLG_O_p1_o;
(* keep *) wire      [7:0] __VLG_O_p2_o;
(* keep *) wire      [7:0] __VLG_O_p3_o;
(* keep *) wire            __VLG_O_pc_change;
(* keep *) wire     [15:0] __VLG_O_wbd_adr_o;
(* keep *) wire            __VLG_O_wbd_cyc_o;
(* keep *) wire      [7:0] __VLG_O_wbd_dat_o;
(* keep *) wire            __VLG_O_wbd_stb_o;
(* keep *) wire            __VLG_O_wbd_we_o;
(* keep *) wire     [15:0] __VLG_O_wbi_adr_o;
(* keep *) wire            __VLG_O_wbi_cyc_o;
(* keep *) wire            __VLG_O_wbi_stb_o;
(* keep *) wire            __m11__;
(* keep *) wire            __m13__;
(* keep *) wire            __m15__;
(* keep *) wire            __m17__;
(* keep *) wire            __m19__;
(* keep *) wire            __m1__;
(* keep *) wire            __m21__;
(* keep *) wire            __m23__;
(* keep *) wire            __m25__;
(* keep *) wire            __m27__;
(* keep *) wire            __m29__;
(* keep *) wire            __m31__;
(* keep *) wire            __m33__;
(* keep *) wire            __m35__;
(* keep *) wire            __m37__;
(* keep *) wire            __m39__;
(* keep *) wire            __m3__;
(* keep *) wire            __m41__;
(* keep *) wire            __m43__;
(* keep *) wire            __m45__;
(* keep *) wire            __m47__;
(* keep *) wire            __m49__;
(* keep *) wire            __m51__;
(* keep *) wire            __m53__;
(* keep *) wire            __m55__;
(* keep *) wire            __m57__;
(* keep *) wire            __m59__;
(* keep *) wire            __m5__;
(* keep *) wire            __m7__;
(* keep *) wire            __m9__;
(* keep *) wire      [7:0] acc;
(* keep *) wire            additional_mapping_control_assume__m61__;
(* keep *) wire            additional_mapping_control_assume__m62__;
(* keep *) wire            additional_mapping_control_assume__m63__;
(* keep *) wire            additional_mapping_control_assume__m64__;
(* keep *) wire            additional_mapping_control_assume__m65__;
(* keep *) wire            additional_mapping_control_assume__m66__;
(* keep *) wire      [7:0] b_reg;
wire            clk;
(* keep *) wire      [1:0] decoder_state;
(* keep *) wire     [15:0] dptr;
(* keep *) wire            dummy_reset;
(* keep *) wire      [7:0] ie;
(* keep *) wire            issue_decode__m67__;
(* keep *) wire            issue_valid__m68__;
(* keep *) wire            m1__DOT__ea_in;
(* keep *) wire   [2047:0] m1__DOT__iram;
(* keep *) wire     [15:0] m1__DOT__oc8051_memory_interface1__DOT__dadr_o;
(* keep *) wire      [7:0] m1__DOT__oc8051_memory_interface1__DOT__ddat_o;
(* keep *) wire     [15:0] m1__DOT__oc8051_memory_interface1__DOT__pc;
(* keep *) wire      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_acc1__DOT__data_out;
(* keep *) wire      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_b_register__DOT__data_out;
(* keep *) wire      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_hi;
(* keep *) wire      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_lo;
(* keep *) wire      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ie;
(* keep *) wire      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ip;
(* keep *) wire      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__tcon;
(* keep *) wire      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p0_out;
(* keep *) wire      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p1_out;
(* keep *) wire      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p2_out;
(* keep *) wire      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p3_out;
(* keep *) wire      [6:0] m1__DOT__oc8051_sfr1__DOT__oc8051_psw1__DOT__data;
(* keep *) wire      [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_sp1__DOT__sp_out;
(* keep *) wire      [7:0] m1__DOT__op1;
(* keep *) wire      [7:0] m1__DOT__op2;
(* keep *) wire      [7:0] m1__DOT__op3;
(* keep *) wire            noreset__m0__;
(* keep *) wire            p;
(* keep *) wire     [15:0] pc;
(* keep *) wire     [15:0] pc_log;
(* keep *) wire     [15:0] pc_log_prev;
(* keep *) wire      [7:0] psw;
wire            rst;
(* keep *) wire      [7:0] sp;
(* keep *) wire            variable_map_assert___p32__;
(* keep *) wire            variable_map_assert___p34__;
(* keep *) wire            variable_map_assert___p36__;
(* keep *) wire            variable_map_assert___p38__;
(* keep *) wire            variable_map_assert___p40__;
(* keep *) wire            variable_map_assert___p42__;
(* keep *) wire            variable_map_assert___p44__;
(* keep *) wire            variable_map_assert___p46__;
(* keep *) wire            variable_map_assert___p48__;
(* keep *) wire            variable_map_assert___p50__;
(* keep *) wire            variable_map_assert___p52__;
(* keep *) wire            variable_map_assert___p54__;
(* keep *) wire            variable_map_assert___p56__;
(* keep *) wire            variable_map_assert___p58__;
(* keep *) wire            variable_map_assert___p60__;
(* keep *) wire            variable_map_assume___m10__;
(* keep *) wire            variable_map_assume___m12__;
(* keep *) wire            variable_map_assume___m14__;
(* keep *) wire            variable_map_assume___m16__;
(* keep *) wire            variable_map_assume___m18__;
(* keep *) wire            variable_map_assume___m20__;
(* keep *) wire            variable_map_assume___m22__;
(* keep *) wire            variable_map_assume___m24__;
(* keep *) wire            variable_map_assume___m26__;
(* keep *) wire            variable_map_assume___m28__;
(* keep *) wire            variable_map_assume___m2__;
(* keep *) wire            variable_map_assume___m30__;
(* keep *) wire            variable_map_assume___m4__;
(* keep *) wire            variable_map_assume___m6__;
(* keep *) wire            variable_map_assume___m8__;
assign noreset__m0__ =  (~__RESETED__) || (dummy_reset == 0)  ;
always @(posedge clk) begin
if (rst) __CYCLE_CNT__ <= 0;
else if ( ( __START__ || __STARTED__ ) &&  __CYCLE_CNT__ < 15) __CYCLE_CNT__ <= __CYCLE_CNT__ + 1;
end
always @(posedge clk) begin
if (rst) __START__ <= 0;
else if (__START__ || __STARTED__) __START__ <= 0;
else if (__ISSUE__) __START__ <= 1;
end
always @(posedge clk) begin
if (rst) __STARTED__ <= 0;
else if (__START__) __STARTED__ <= 1;
end
always @(posedge clk) begin
if (rst) __ENDED__ <= 0;
else if (__IEND__) __ENDED__ <= 1;
end
always @(posedge clk) begin
if (rst) __RESETED__ <= 1;
end
assign __m1__ = m1__DOT__oc8051_sfr1__DOT__oc8051_acc1__DOT__data_out == __ILA_SO_ACC ;
assign variable_map_assume___m2__ = (~ __START__ )|| (__m1__) ;
assign __m3__ = m1__DOT__oc8051_sfr1__DOT__oc8051_b_register__DOT__data_out == __ILA_SO_B ;
assign variable_map_assume___m4__ = (~ __START__ )|| (__m3__) ;
assign __m5__ = m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_hi == __ILA_SO_DPH ;
assign variable_map_assume___m6__ = (~ __START__ )|| (__m5__) ;
assign __m7__ = m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_lo == __ILA_SO_DPL ;
assign variable_map_assume___m8__ = (~ __START__ )|| (__m7__) ;
assign __m9__ = m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ie == __ILA_SO_IE ;
assign variable_map_assume___m10__ = (~ __START__ )|| (__m9__) ;
assign __m11__ = m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ip == __ILA_SO_IP ;
assign variable_map_assume___m12__ = (~ __START__ )|| (__m11__) ;
assign __m13__ = m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p0_out == __ILA_SO_P0 ;
assign variable_map_assume___m14__ = (~ __START__ )|| (__m13__) ;
assign __m15__ = m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p1_out == __ILA_SO_P1 ;
assign variable_map_assume___m16__ = (~ __START__ )|| (__m15__) ;
assign __m17__ = m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p2_out == __ILA_SO_P2 ;
assign variable_map_assume___m18__ = (~ __START__ )|| (__m17__) ;
assign __m19__ = m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p3_out == __ILA_SO_P3 ;
assign variable_map_assume___m20__ = (~ __START__ )|| (__m19__) ;
assign __m21__ = m1__DOT__oc8051_memory_interface1__DOT__pc == __ILA_SO_PC ;
assign variable_map_assume___m22__ = (~ __START__ )|| (__m21__) ;
assign __m23__ = m1__DOT__oc8051_sfr1__DOT__oc8051_sp1__DOT__sp_out == __ILA_SO_SP ;
assign variable_map_assume___m24__ = (~ __START__ )|| (__m23__) ;
assign __m25__ = m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__tcon == __ILA_SO_TCON ;
assign variable_map_assume___m26__ = (~ __START__ )|| (__m25__) ;
assign __m27__ = m1__DOT__oc8051_memory_interface1__DOT__dadr_o == __ILA_SO_XRAM_ADDR ;
assign variable_map_assume___m28__ = (~ __START__ )|| (__m27__) ;
assign __m29__ = m1__DOT__oc8051_memory_interface1__DOT__ddat_o == __ILA_SO_XRAM_DATA_OUT ;
assign variable_map_assume___m30__ = (~ __START__ )|| (__m29__) ;
assign __m31__ = m1__DOT__oc8051_sfr1__DOT__oc8051_acc1__DOT__data_out == __ILA_SO_ACC ;
assign variable_map_assert___p32__ = (~ __IEND__) || (__m31__) ;
assign __m33__ = m1__DOT__oc8051_sfr1__DOT__oc8051_b_register__DOT__data_out == __ILA_SO_B ;
assign variable_map_assert___p34__ = (~ __IEND__) || (__m33__) ;
assign __m35__ = m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_hi == __ILA_SO_DPH ;
assign variable_map_assert___p36__ = (~ __IEND__) || (__m35__) ;
assign __m37__ = m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_lo == __ILA_SO_DPL ;
assign variable_map_assert___p38__ = (~ __IEND__) || (__m37__) ;
assign __m39__ = m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ie == __ILA_SO_IE ;
assign variable_map_assert___p40__ = (~ __IEND__) || (__m39__) ;
assign __m41__ = m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ip == __ILA_SO_IP ;
assign variable_map_assert___p42__ = (~ __IEND__) || (__m41__) ;
assign __m43__ = m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p0_out == __ILA_SO_P0 ;
assign variable_map_assert___p44__ = (~ __IEND__) || (__m43__) ;
assign __m45__ = m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p1_out == __ILA_SO_P1 ;
assign variable_map_assert___p46__ = (~ __IEND__) || (__m45__) ;
assign __m47__ = m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p2_out == __ILA_SO_P2 ;
assign variable_map_assert___p48__ = (~ __IEND__) || (__m47__) ;
assign __m49__ = m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p3_out == __ILA_SO_P3 ;
assign variable_map_assert___p50__ = (~ __IEND__) || (__m49__) ;
assign __m51__ = m1__DOT__oc8051_memory_interface1__DOT__pc == __ILA_SO_PC ;
assign variable_map_assert___p52__ = (~ __IEND__) || (__m51__) ;
assign __m53__ = m1__DOT__oc8051_sfr1__DOT__oc8051_sp1__DOT__sp_out == __ILA_SO_SP ;
assign variable_map_assert___p54__ = (~ __IEND__) || (__m53__) ;
assign __m55__ = m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__tcon == __ILA_SO_TCON ;
assign variable_map_assert___p56__ = (~ __IEND__) || (__m55__) ;
assign __m57__ = m1__DOT__oc8051_memory_interface1__DOT__dadr_o == __ILA_SO_XRAM_ADDR ;
assign variable_map_assert___p58__ = (~ __IEND__) || (__m57__) ;
assign __m59__ = m1__DOT__oc8051_memory_interface1__DOT__ddat_o == __ILA_SO_XRAM_DATA_OUT ;
assign variable_map_assert___p60__ = (~ __IEND__) || (__m59__) ;
assign additional_mapping_control_assume__m61__ = m1__DOT__ea_in == 1 ;
assign additional_mapping_control_assume__m62__ = m1__DOT__iram[127:0] == __ILA_SO_IRAM ;
assign additional_mapping_control_assume__m63__ = m1__DOT__op1 == m0.ROM_data_0 ;
assign additional_mapping_control_assume__m64__ = m1__DOT__op2 == m0.ROM_data_1 ;
assign additional_mapping_control_assume__m65__ = m1__DOT__op3 == m0.ROM_data_2 ;
assign additional_mapping_control_assume__m66__ = __ILA_SO_PSW[6:0] == m1__DOT__oc8051_sfr1__DOT__oc8051_psw1__DOT__data ;
assign __IEND__ = (`false|| ( __CYCLE_CNT__ == 5'd10)) && __STARTED__ && (~ __ENDED__) ;
assign issue_decode__m67__ = (~ __START__) || (__ILA_oc8051_decode_of_I__DOT__0__) ;
assign issue_valid__m68__ = (~ __START__) || (__ILA_oc8051_valid__) ;
assign __ISSUE__ = 1 ;

oc8051__DOT__I__DOT__0 m0 (
   .__START__(__START__),
   .clk(clk),
   .rst(rst),
   .__ILA_oc8051_decode_of_I__DOT__0__(__ILA_oc8051_decode_of_I__DOT__0__),
   .__ILA_oc8051_valid__(__ILA_oc8051_valid__),
   .IRAM_data_n939(__IMEM_IRAM_0_rdata),
   .IRAM_addr_n938(__IMEM_IRAM_0_raddr),
   .IRAM_data_n943(__IMEM_IRAM_1_rdata),
   .IRAM_addr_n942(__IMEM_IRAM_1_raddr),
   .IRAM_data_n980(__IMEM_IRAM_2_rdata),
   .IRAM_addr_n979(__IMEM_IRAM_2_raddr),
   .IRAM_data_n1974(__IMEM_IRAM_3_rdata),
   .IRAM_addr_n1973(__IMEM_IRAM_3_raddr),
   .IRAM_data_n2273(__IMEM_IRAM_4_rdata),
   .IRAM_addr_n2272(__IMEM_IRAM_4_raddr),
   .IRAM_data_n2286(__IMEM_IRAM_5_rdata),
   .IRAM_addr_n2285(__IMEM_IRAM_5_raddr),
   .ROM_data_n1(__IMEM_ROM_0_rdata),
   .ROM_addr_n0(__IMEM_ROM_0_raddr),
   .ROM_data_n6(__IMEM_ROM_1_rdata),
   .ROM_addr_n5(__IMEM_ROM_1_raddr),
   .ROM_data_n471(__IMEM_ROM_2_rdata),
   .ROM_addr_n470(__IMEM_ROM_2_raddr),
   .ROM_data_n933(__IMEM_ROM_3_rdata),
   .ROM_addr_n932(__IMEM_ROM_3_raddr),
   .ROM_data_n947(__IMEM_ROM_4_rdata),
   .ROM_addr_n946(__IMEM_ROM_4_raddr),
   .ROM_data_n957(__IMEM_ROM_5_rdata),
   .ROM_addr_n956(__IMEM_ROM_5_raddr),
   .ROM_data_n961(__IMEM_ROM_6_rdata),
   .ROM_addr_n960(__IMEM_ROM_6_raddr),
   .ROM_data_n968(__IMEM_ROM_7_rdata),
   .ROM_addr_n967(__IMEM_ROM_7_raddr),
   .ROM_data_n1030(__IMEM_ROM_8_rdata),
   .ROM_addr_n1029(__IMEM_ROM_8_raddr),
   .ROM_data_n1037(__IMEM_ROM_9_rdata),
   .ROM_addr_n1036(__IMEM_ROM_9_raddr),
   .ROM_data_n1164(__IMEM_ROM_10_rdata),
   .ROM_addr_n1163(__IMEM_ROM_10_raddr),
   .ROM_data_n1171(__IMEM_ROM_11_rdata),
   .ROM_addr_n1170(__IMEM_ROM_11_raddr),
   .ROM_data_n1175(__IMEM_ROM_12_rdata),
   .ROM_addr_n1174(__IMEM_ROM_12_raddr),
   .ROM_data_n1179(__IMEM_ROM_13_rdata),
   .ROM_addr_n1178(__IMEM_ROM_13_raddr),
   .ROM_data_n1189(__IMEM_ROM_14_rdata),
   .ROM_addr_n1188(__IMEM_ROM_14_raddr),
   .ROM_data_n1193(__IMEM_ROM_15_rdata),
   .ROM_addr_n1192(__IMEM_ROM_15_raddr),
   .ROM_data_n1479(__IMEM_ROM_16_rdata),
   .ROM_addr_n1478(__IMEM_ROM_16_raddr),
   .ROM_data_n1922(__IMEM_ROM_17_rdata),
   .ROM_addr_n1921(__IMEM_ROM_17_raddr),
   .ROM_data_n1934(__IMEM_ROM_18_rdata),
   .ROM_addr_n1933(__IMEM_ROM_18_raddr),
   .ROM_data_n1942(__IMEM_ROM_19_rdata),
   .ROM_addr_n1941(__IMEM_ROM_19_raddr),
   .ROM_data_n1955(__IMEM_ROM_20_rdata),
   .ROM_addr_n1954(__IMEM_ROM_20_raddr),
   .ROM_data_n1961(__IMEM_ROM_21_rdata),
   .ROM_addr_n1960(__IMEM_ROM_21_raddr),
   .ROM_data_n1967(__IMEM_ROM_22_rdata),
   .ROM_addr_n1966(__IMEM_ROM_22_raddr),
   .ROM_data_n1978(__IMEM_ROM_23_rdata),
   .ROM_addr_n1977(__IMEM_ROM_23_raddr),
   .ROM_data_n1990(__IMEM_ROM_24_rdata),
   .ROM_addr_n1989(__IMEM_ROM_24_raddr),
   .ROM_data_n2002(__IMEM_ROM_25_rdata),
   .ROM_addr_n2001(__IMEM_ROM_25_raddr),
   .ROM_data_n2014(__IMEM_ROM_26_rdata),
   .ROM_addr_n2013(__IMEM_ROM_26_raddr),
   .ROM_data_n2026(__IMEM_ROM_27_rdata),
   .ROM_addr_n2025(__IMEM_ROM_27_raddr),
   .ROM_data_n2038(__IMEM_ROM_28_rdata),
   .ROM_addr_n2037(__IMEM_ROM_28_raddr),
   .ROM_data_n2050(__IMEM_ROM_29_rdata),
   .ROM_addr_n2049(__IMEM_ROM_29_raddr),
   .ROM_data_n2062(__IMEM_ROM_30_rdata),
   .ROM_addr_n2061(__IMEM_ROM_30_raddr),
   .ROM_data_n2074(__IMEM_ROM_31_rdata),
   .ROM_addr_n2073(__IMEM_ROM_31_raddr),
   .ROM_data_n2086(__IMEM_ROM_32_rdata),
   .ROM_addr_n2085(__IMEM_ROM_32_raddr),
   .ROM_data_n2098(__IMEM_ROM_33_rdata),
   .ROM_addr_n2097(__IMEM_ROM_33_raddr),
   .ROM_data_n2110(__IMEM_ROM_34_rdata),
   .ROM_addr_n2109(__IMEM_ROM_34_raddr),
   .ROM_data_n2122(__IMEM_ROM_35_rdata),
   .ROM_addr_n2121(__IMEM_ROM_35_raddr),
   .ROM_data_n2134(__IMEM_ROM_36_rdata),
   .ROM_addr_n2133(__IMEM_ROM_36_raddr),
   .ROM_data_n2146(__IMEM_ROM_37_rdata),
   .ROM_addr_n2145(__IMEM_ROM_37_raddr),
   .ROM_data_n2158(__IMEM_ROM_38_rdata),
   .ROM_addr_n2157(__IMEM_ROM_38_raddr),
   .ROM_data_n2170(__IMEM_ROM_39_rdata),
   .ROM_addr_n2169(__IMEM_ROM_39_raddr),
   .ROM_data_n2182(__IMEM_ROM_40_rdata),
   .ROM_addr_n2181(__IMEM_ROM_40_raddr),
   .ROM_data_n2194(__IMEM_ROM_41_rdata),
   .ROM_addr_n2193(__IMEM_ROM_41_raddr),
   .ROM_data_n2206(__IMEM_ROM_42_rdata),
   .ROM_addr_n2205(__IMEM_ROM_42_raddr),
   .ROM_data_n2218(__IMEM_ROM_43_rdata),
   .ROM_addr_n2217(__IMEM_ROM_43_raddr),
   .ROM_data_n2255(__IMEM_ROM_44_rdata),
   .ROM_addr_n2254(__IMEM_ROM_44_raddr),
   .ROM_data_n2264(__IMEM_ROM_45_rdata),
   .ROM_addr_n2263(__IMEM_ROM_45_raddr),
   .ROM_data_n2277(__IMEM_ROM_46_rdata),
   .ROM_addr_n2276(__IMEM_ROM_46_raddr),
   .ROM_data_n2290(__IMEM_ROM_47_rdata),
   .ROM_addr_n2289(__IMEM_ROM_47_raddr),
   .ROM_data_n2297(__IMEM_ROM_48_rdata),
   .ROM_addr_n2296(__IMEM_ROM_48_raddr),
   .ROM_data_n2803(__IMEM_ROM_49_rdata),
   .ROM_addr_n2802(__IMEM_ROM_49_raddr),
   .ROM_data_n2811(__IMEM_ROM_50_rdata),
   .ROM_addr_n2810(__IMEM_ROM_50_raddr),
   .ACC(__ILA_SO_ACC),
   .B(__ILA_SO_B),
   .DPH(__ILA_SO_DPH),
   .DPL(__ILA_SO_DPL),
   .IE(__ILA_SO_IE),
   .IP(__ILA_SO_IP),
   .P0(__ILA_SO_P0),
   .P1(__ILA_SO_P1),
   .P2(__ILA_SO_P2),
   .P3(__ILA_SO_P3),
   .PC(__ILA_SO_PC),
   .PCON(__ILA_SO_PCON),
   .PSW(__ILA_SO_PSW),
   .SBUF(__ILA_SO_SBUF),
   .SCON(__ILA_SO_SCON),
   .SP(__ILA_SO_SP),
   .TCON(__ILA_SO_TCON),
   .TH0(__ILA_SO_TH0),
   .TH1(__ILA_SO_TH1),
   .TL0(__ILA_SO_TL0),
   .TL1(__ILA_SO_TL1),
   .TMOD(__ILA_SO_TMOD),
   .XRAM_ADDR(__ILA_SO_XRAM_ADDR),
   .XRAM_DATA_IN(__ILA_SO_XRAM_DATA_IN),
   .XRAM_DATA_OUT(__ILA_SO_XRAM_DATA_OUT),
   .__COUNTER_start__n4()
);
oc8051_top m1(
    .acc(acc),
    .b_reg(b_reg),
    .cxrom_addr(__VLG_O_cxrom_addr),
    .cxrom_data_out(__VLG_I_cxrom_data_out),
    .decoder_state(decoder_state),
    .dptr(dptr),
    .ea_in(__VLG_I_ea_in),
    .ie(ie),
    .int0_i(__VLG_I_int0_i),
    .int1_i(__VLG_I_int1_i),
    .iram(__VLG_O_iram),
    .m1__DOT__ea_in(m1__DOT__ea_in),
    .m1__DOT__iram(m1__DOT__iram),
    .m1__DOT__oc8051_memory_interface1__DOT__dadr_o(m1__DOT__oc8051_memory_interface1__DOT__dadr_o),
    .m1__DOT__oc8051_memory_interface1__DOT__ddat_o(m1__DOT__oc8051_memory_interface1__DOT__ddat_o),
    .m1__DOT__oc8051_memory_interface1__DOT__pc(m1__DOT__oc8051_memory_interface1__DOT__pc),
    .m1__DOT__oc8051_sfr1__DOT__oc8051_acc1__DOT__data_out(m1__DOT__oc8051_sfr1__DOT__oc8051_acc1__DOT__data_out),
    .m1__DOT__oc8051_sfr1__DOT__oc8051_b_register__DOT__data_out(m1__DOT__oc8051_sfr1__DOT__oc8051_b_register__DOT__data_out),
    .m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_hi(m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_hi),
    .m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_lo(m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_lo),
    .m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ie(m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ie),
    .m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ip(m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ip),
    .m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__tcon(m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__tcon),
    .m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p0_out(m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p0_out),
    .m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p1_out(m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p1_out),
    .m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p2_out(m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p2_out),
    .m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p3_out(m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p3_out),
    .m1__DOT__oc8051_sfr1__DOT__oc8051_psw1__DOT__data(m1__DOT__oc8051_sfr1__DOT__oc8051_psw1__DOT__data),
    .m1__DOT__oc8051_sfr1__DOT__oc8051_sp1__DOT__sp_out(m1__DOT__oc8051_sfr1__DOT__oc8051_sp1__DOT__sp_out),
    .m1__DOT__op1(m1__DOT__op1),
    .m1__DOT__op2(m1__DOT__op2),
    .m1__DOT__op3(m1__DOT__op3),
    .op1(__VLG_O_op1),
    .op1_d(__VLG_O_op1_d),
    .op2(__VLG_O_op2),
    .op3(__VLG_O_op3),
    .p(p),
    .p0_i(__VLG_I_p0_i),
    .p0_o(__VLG_O_p0_o),
    .p1_i(__VLG_I_p1_i),
    .p1_o(__VLG_O_p1_o),
    .p2_i(__VLG_I_p2_i),
    .p2_o(__VLG_O_p2_o),
    .p3_i(__VLG_I_p3_i),
    .p3_o(__VLG_O_p3_o),
    .pc(pc),
    .pc_change(__VLG_O_pc_change),
    .pc_log(pc_log),
    .pc_log_prev(pc_log_prev),
    .psw(psw),
    .sp(sp),
    .wb_clk_i(clk),
    .wb_rst_i(dummy_reset),
    .wbd_ack_i(__VLG_I_wbd_ack_i),
    .wbd_adr_o(__VLG_O_wbd_adr_o),
    .wbd_cyc_o(__VLG_O_wbd_cyc_o),
    .wbd_dat_i(__VLG_I_wbd_dat_i),
    .wbd_dat_o(__VLG_O_wbd_dat_o),
    .wbd_err_i(__VLG_I_wbd_err_i),
    .wbd_stb_o(__VLG_O_wbd_stb_o),
    .wbd_we_o(__VLG_O_wbd_we_o),
    .wbi_ack_i(__VLG_I_wbi_ack_i),
    .wbi_adr_o(__VLG_O_wbi_adr_o),
    .wbi_cyc_o(__VLG_O_wbi_cyc_o),
    .wbi_dat_i(__VLG_I_wbi_dat_i),
    .wbi_err_i(__VLG_I_wbi_err_i),
    .wbi_stb_o(__VLG_O_wbi_stb_o)
);
endmodule
module oc8051__DOT__I__DOT__0(
__START__,
clk,
rst,
__ILA_oc8051_decode_of_I__DOT__0__,
__ILA_oc8051_valid__,
ROM_data_n1,
ROM_data_n6,
ROM_data_n471,
ROM_data_n933,
IRAM_data_n939,
IRAM_data_n943,
ROM_data_n947,
ROM_data_n957,
ROM_data_n961,
ROM_data_n968,
IRAM_data_n980,
ROM_data_n1030,
ROM_data_n1037,
ROM_data_n1164,
ROM_data_n1171,
ROM_data_n1175,
ROM_data_n1179,
ROM_data_n1189,
ROM_data_n1193,
ROM_data_n1479,
ROM_data_n1922,
ROM_data_n1934,
ROM_data_n1942,
ROM_data_n1955,
ROM_data_n1961,
ROM_data_n1967,
IRAM_data_n1974,
ROM_data_n1978,
ROM_data_n1990,
ROM_data_n2002,
ROM_data_n2014,
ROM_data_n2026,
ROM_data_n2038,
ROM_data_n2050,
ROM_data_n2062,
ROM_data_n2074,
ROM_data_n2086,
ROM_data_n2098,
ROM_data_n2110,
ROM_data_n2122,
ROM_data_n2134,
ROM_data_n2146,
ROM_data_n2158,
ROM_data_n2170,
ROM_data_n2182,
ROM_data_n2194,
ROM_data_n2206,
ROM_data_n2218,
ROM_data_n2255,
ROM_data_n2264,
IRAM_data_n2273,
ROM_data_n2277,
IRAM_data_n2286,
ROM_data_n2290,
ROM_data_n2297,
ROM_data_n2803,
ROM_data_n2811,
ROM_addr_n0,
ROM_addr_n5,
ROM_addr_n470,
ROM_addr_n932,
IRAM_addr_n938,
IRAM_addr_n942,
ROM_addr_n946,
ROM_addr_n956,
ROM_addr_n960,
ROM_addr_n967,
IRAM_addr_n979,
ROM_addr_n1029,
ROM_addr_n1036,
ROM_addr_n1163,
ROM_addr_n1170,
ROM_addr_n1174,
ROM_addr_n1178,
ROM_addr_n1188,
ROM_addr_n1192,
ROM_addr_n1478,
ROM_addr_n1921,
ROM_addr_n1933,
ROM_addr_n1941,
ROM_addr_n1954,
ROM_addr_n1960,
ROM_addr_n1966,
IRAM_addr_n1973,
ROM_addr_n1977,
ROM_addr_n1989,
ROM_addr_n2001,
ROM_addr_n2013,
ROM_addr_n2025,
ROM_addr_n2037,
ROM_addr_n2049,
ROM_addr_n2061,
ROM_addr_n2073,
ROM_addr_n2085,
ROM_addr_n2097,
ROM_addr_n2109,
ROM_addr_n2121,
ROM_addr_n2133,
ROM_addr_n2145,
ROM_addr_n2157,
ROM_addr_n2169,
ROM_addr_n2181,
ROM_addr_n2193,
ROM_addr_n2205,
ROM_addr_n2217,
ROM_addr_n2254,
ROM_addr_n2263,
IRAM_addr_n2272,
ROM_addr_n2276,
IRAM_addr_n2285,
ROM_addr_n2289,
ROM_addr_n2296,
ROM_addr_n2802,
ROM_addr_n2810,
ACC,
B,
DPH,
DPL,
IE,
IP,
P0,
P1,
P2,
P3,
PC,
PCON,
PSW,
SBUF,
SCON,
SP,
TCON,
TH0,
TH1,
TL0,
TL1,
TMOD,
XRAM_ADDR,
XRAM_DATA_IN,
XRAM_DATA_OUT,
__COUNTER_start__n4
);
input            __START__;
input            clk;
input            rst;
input      [7:0] ROM_data_n1;
input      [7:0] ROM_data_n6;
input      [7:0] ROM_data_n471;
input      [7:0] ROM_data_n933;
input      [7:0] IRAM_data_n939;
input      [7:0] IRAM_data_n943;
input      [7:0] ROM_data_n947;
input      [7:0] ROM_data_n957;
input      [7:0] ROM_data_n961;
input      [7:0] ROM_data_n968;
input      [7:0] IRAM_data_n980;
input      [7:0] ROM_data_n1030;
input      [7:0] ROM_data_n1037;
input      [7:0] ROM_data_n1164;
input      [7:0] ROM_data_n1171;
input      [7:0] ROM_data_n1175;
input      [7:0] ROM_data_n1179;
input      [7:0] ROM_data_n1189;
input      [7:0] ROM_data_n1193;
input      [7:0] ROM_data_n1479;
input      [7:0] ROM_data_n1922;
input      [7:0] ROM_data_n1934;
input      [7:0] ROM_data_n1942;
input      [7:0] ROM_data_n1955;
input      [7:0] ROM_data_n1961;
input      [7:0] ROM_data_n1967;
input      [7:0] IRAM_data_n1974;
input      [7:0] ROM_data_n1978;
input      [7:0] ROM_data_n1990;
input      [7:0] ROM_data_n2002;
input      [7:0] ROM_data_n2014;
input      [7:0] ROM_data_n2026;
input      [7:0] ROM_data_n2038;
input      [7:0] ROM_data_n2050;
input      [7:0] ROM_data_n2062;
input      [7:0] ROM_data_n2074;
input      [7:0] ROM_data_n2086;
input      [7:0] ROM_data_n2098;
input      [7:0] ROM_data_n2110;
input      [7:0] ROM_data_n2122;
input      [7:0] ROM_data_n2134;
input      [7:0] ROM_data_n2146;
input      [7:0] ROM_data_n2158;
input      [7:0] ROM_data_n2170;
input      [7:0] ROM_data_n2182;
input      [7:0] ROM_data_n2194;
input      [7:0] ROM_data_n2206;
input      [7:0] ROM_data_n2218;
input      [7:0] ROM_data_n2255;
input      [7:0] ROM_data_n2264;
input      [7:0] IRAM_data_n2273;
input      [7:0] ROM_data_n2277;
input      [7:0] IRAM_data_n2286;
input      [7:0] ROM_data_n2290;
input      [7:0] ROM_data_n2297;
input      [7:0] ROM_data_n2803;
input      [7:0] ROM_data_n2811;
output            __ILA_oc8051_decode_of_I__DOT__0__;
output            __ILA_oc8051_valid__;
output     [15:0] ROM_addr_n0;
output     [15:0] ROM_addr_n5;
output     [15:0] ROM_addr_n470;
output     [15:0] ROM_addr_n932;
output      [7:0] IRAM_addr_n938;
output      [7:0] IRAM_addr_n942;
output     [15:0] ROM_addr_n946;
output     [15:0] ROM_addr_n956;
output     [15:0] ROM_addr_n960;
output     [15:0] ROM_addr_n967;
output      [7:0] IRAM_addr_n979;
output     [15:0] ROM_addr_n1029;
output     [15:0] ROM_addr_n1036;
output     [15:0] ROM_addr_n1163;
output     [15:0] ROM_addr_n1170;
output     [15:0] ROM_addr_n1174;
output     [15:0] ROM_addr_n1178;
output     [15:0] ROM_addr_n1188;
output     [15:0] ROM_addr_n1192;
output     [15:0] ROM_addr_n1478;
output     [15:0] ROM_addr_n1921;
output     [15:0] ROM_addr_n1933;
output     [15:0] ROM_addr_n1941;
output     [15:0] ROM_addr_n1954;
output     [15:0] ROM_addr_n1960;
output     [15:0] ROM_addr_n1966;
output      [7:0] IRAM_addr_n1973;
output     [15:0] ROM_addr_n1977;
output     [15:0] ROM_addr_n1989;
output     [15:0] ROM_addr_n2001;
output     [15:0] ROM_addr_n2013;
output     [15:0] ROM_addr_n2025;
output     [15:0] ROM_addr_n2037;
output     [15:0] ROM_addr_n2049;
output     [15:0] ROM_addr_n2061;
output     [15:0] ROM_addr_n2073;
output     [15:0] ROM_addr_n2085;
output     [15:0] ROM_addr_n2097;
output     [15:0] ROM_addr_n2109;
output     [15:0] ROM_addr_n2121;
output     [15:0] ROM_addr_n2133;
output     [15:0] ROM_addr_n2145;
output     [15:0] ROM_addr_n2157;
output     [15:0] ROM_addr_n2169;
output     [15:0] ROM_addr_n2181;
output     [15:0] ROM_addr_n2193;
output     [15:0] ROM_addr_n2205;
output     [15:0] ROM_addr_n2217;
output     [15:0] ROM_addr_n2254;
output     [15:0] ROM_addr_n2263;
output      [7:0] IRAM_addr_n2272;
output     [15:0] ROM_addr_n2276;
output      [7:0] IRAM_addr_n2285;
output     [15:0] ROM_addr_n2289;
output     [15:0] ROM_addr_n2296;
output     [15:0] ROM_addr_n2802;
output     [15:0] ROM_addr_n2810;
output reg      [7:0] ACC;
output reg      [7:0] B;
output reg      [7:0] DPH;
output reg      [7:0] DPL;
output reg      [7:0] IE;
output reg      [7:0] IP;
output reg      [7:0] P0;
output reg      [7:0] P1;
output reg      [7:0] P2;
output reg      [7:0] P3;
output reg     [15:0] PC;
output reg      [7:0] PCON;
output reg      [7:0] PSW;
output reg      [7:0] SBUF;
output reg      [7:0] SCON;
output reg      [7:0] SP;
output reg      [7:0] TCON;
output reg      [7:0] TH0;
output reg      [7:0] TH1;
output reg      [7:0] TL0;
output reg      [7:0] TL1;
output reg      [7:0] TMOD;
output reg     [15:0] XRAM_ADDR;
output reg      [7:0] XRAM_DATA_IN;
output reg      [7:0] XRAM_DATA_OUT;
output reg      [7:0] __COUNTER_start__n4;
(* keep *) wire      [7:0] ACC_randinit;
(* keep *) wire      [7:0] B_randinit;
(* keep *) wire      [7:0] DPH_randinit;
(* keep *) wire      [7:0] DPL_randinit;
(* keep *) wire      [7:0] IE_randinit;
(* keep *) wire      [7:0] IP_randinit;
wire      [7:0] IRAM_addr_n1973;
wire      [7:0] IRAM_addr_n2272;
wire      [7:0] IRAM_addr_n2285;
wire      [7:0] IRAM_addr_n938;
wire      [7:0] IRAM_addr_n942;
wire      [7:0] IRAM_addr_n979;
wire      [7:0] IRAM_data_n1974;
wire      [7:0] IRAM_data_n2273;
wire      [7:0] IRAM_data_n2286;
wire      [7:0] IRAM_data_n939;
wire      [7:0] IRAM_data_n943;
wire      [7:0] IRAM_data_n980;
(* keep *) wire      [7:0] P0_randinit;
(* keep *) wire      [7:0] P1_randinit;
(* keep *) wire      [7:0] P2_randinit;
(* keep *) wire      [7:0] P3_randinit;
(* keep *) wire      [7:0] PCON_randinit;
(* keep *) wire     [15:0] PC_randinit;
(* keep *) wire      [7:0] PSW_randinit;
wire     [15:0] ROM_addr_n0;
wire     [15:0] ROM_addr_n1029;
wire     [15:0] ROM_addr_n1036;
wire     [15:0] ROM_addr_n1163;
wire     [15:0] ROM_addr_n1170;
wire     [15:0] ROM_addr_n1174;
wire     [15:0] ROM_addr_n1178;
wire     [15:0] ROM_addr_n1188;
wire     [15:0] ROM_addr_n1192;
wire     [15:0] ROM_addr_n1478;
wire     [15:0] ROM_addr_n1921;
wire     [15:0] ROM_addr_n1933;
wire     [15:0] ROM_addr_n1941;
wire     [15:0] ROM_addr_n1954;
wire     [15:0] ROM_addr_n1960;
wire     [15:0] ROM_addr_n1966;
wire     [15:0] ROM_addr_n1977;
wire     [15:0] ROM_addr_n1989;
wire     [15:0] ROM_addr_n2001;
wire     [15:0] ROM_addr_n2013;
wire     [15:0] ROM_addr_n2025;
wire     [15:0] ROM_addr_n2037;
wire     [15:0] ROM_addr_n2049;
wire     [15:0] ROM_addr_n2061;
wire     [15:0] ROM_addr_n2073;
wire     [15:0] ROM_addr_n2085;
wire     [15:0] ROM_addr_n2097;
wire     [15:0] ROM_addr_n2109;
wire     [15:0] ROM_addr_n2121;
wire     [15:0] ROM_addr_n2133;
wire     [15:0] ROM_addr_n2145;
wire     [15:0] ROM_addr_n2157;
wire     [15:0] ROM_addr_n2169;
wire     [15:0] ROM_addr_n2181;
wire     [15:0] ROM_addr_n2193;
wire     [15:0] ROM_addr_n2205;
wire     [15:0] ROM_addr_n2217;
wire     [15:0] ROM_addr_n2254;
wire     [15:0] ROM_addr_n2263;
wire     [15:0] ROM_addr_n2276;
wire     [15:0] ROM_addr_n2289;
wire     [15:0] ROM_addr_n2296;
wire     [15:0] ROM_addr_n2802;
wire     [15:0] ROM_addr_n2810;
wire     [15:0] ROM_addr_n470;
wire     [15:0] ROM_addr_n5;
wire     [15:0] ROM_addr_n932;
wire     [15:0] ROM_addr_n946;
wire     [15:0] ROM_addr_n956;
wire     [15:0] ROM_addr_n960;
wire     [15:0] ROM_addr_n967;
wire      [7:0] ROM_data_n1;
wire      [7:0] ROM_data_n1030;
wire      [7:0] ROM_data_n1037;
wire      [7:0] ROM_data_n1164;
wire      [7:0] ROM_data_n1171;
wire      [7:0] ROM_data_n1175;
wire      [7:0] ROM_data_n1179;
wire      [7:0] ROM_data_n1189;
wire      [7:0] ROM_data_n1193;
wire      [7:0] ROM_data_n1479;
wire      [7:0] ROM_data_n1922;
wire      [7:0] ROM_data_n1934;
wire      [7:0] ROM_data_n1942;
wire      [7:0] ROM_data_n1955;
wire      [7:0] ROM_data_n1961;
wire      [7:0] ROM_data_n1967;
wire      [7:0] ROM_data_n1978;
wire      [7:0] ROM_data_n1990;
wire      [7:0] ROM_data_n2002;
wire      [7:0] ROM_data_n2014;
wire      [7:0] ROM_data_n2026;
wire      [7:0] ROM_data_n2038;
wire      [7:0] ROM_data_n2050;
wire      [7:0] ROM_data_n2062;
wire      [7:0] ROM_data_n2074;
wire      [7:0] ROM_data_n2086;
wire      [7:0] ROM_data_n2098;
wire      [7:0] ROM_data_n2110;
wire      [7:0] ROM_data_n2122;
wire      [7:0] ROM_data_n2134;
wire      [7:0] ROM_data_n2146;
wire      [7:0] ROM_data_n2158;
wire      [7:0] ROM_data_n2170;
wire      [7:0] ROM_data_n2182;
wire      [7:0] ROM_data_n2194;
wire      [7:0] ROM_data_n2206;
wire      [7:0] ROM_data_n2218;
wire      [7:0] ROM_data_n2255;
wire      [7:0] ROM_data_n2264;
wire      [7:0] ROM_data_n2277;
wire      [7:0] ROM_data_n2290;
wire      [7:0] ROM_data_n2297;
wire      [7:0] ROM_data_n2803;
wire      [7:0] ROM_data_n2811;
wire      [7:0] ROM_data_n471;
wire      [7:0] ROM_data_n6;
wire      [7:0] ROM_data_n933;
wire      [7:0] ROM_data_n947;
wire      [7:0] ROM_data_n957;
wire      [7:0] ROM_data_n961;
wire      [7:0] ROM_data_n968;
(* keep *) wire      [7:0] SBUF_randinit;
(* keep *) wire      [7:0] SCON_randinit;
(* keep *) wire      [7:0] SP_randinit;
(* keep *) wire      [7:0] TCON_randinit;
(* keep *) wire      [7:0] TH0_randinit;
(* keep *) wire      [7:0] TH1_randinit;
(* keep *) wire      [7:0] TL0_randinit;
(* keep *) wire      [7:0] TL1_randinit;
(* keep *) wire      [7:0] TMOD_randinit;
(* keep *) wire     [15:0] XRAM_ADDR_randinit;
(* keep *) wire      [7:0] XRAM_DATA_IN_randinit;
(* keep *) wire      [7:0] XRAM_DATA_OUT_randinit;
wire            __ILA_oc8051_decode_of_I__DOT__0__;
wire            __ILA_oc8051_valid__;
wire            __START__;
wire            clk;
wire            n1000____DOLLAR__2572;
wire            n1001____DOLLAR__2576;
wire            n1002____DOLLAR__2580;
wire      [7:0] n1003____DOLLAR__2584;
wire      [7:0] n1004____DOLLAR__2585;
wire      [7:0] n1005____DOLLAR__2586;
wire      [7:0] n1006____DOLLAR__2587;
wire      [7:0] n1007____DOLLAR__2588;
wire      [7:0] n1008____DOLLAR__2589;
wire      [7:0] n1009____DOLLAR__2590;
wire            n100____DOLLAR__445;
wire      [7:0] n1010____DOLLAR__2591;
wire      [7:0] n1011____DOLLAR__2592;
wire      [7:0] n1012____DOLLAR__2593;
wire      [7:0] n1013____DOLLAR__2594;
wire      [7:0] n1014____DOLLAR__2595;
wire      [7:0] n1015____DOLLAR__2596;
wire      [7:0] n1016____DOLLAR__2597;
wire      [7:0] n1017____DOLLAR__2598;
wire      [7:0] n1018____DOLLAR__2599;
wire      [7:0] n1019____DOLLAR__2600;
wire            n101____DOLLAR__449;
wire      [7:0] n1020____DOLLAR__2601;
wire      [7:0] n1021____DOLLAR__2602;
wire      [7:0] n1022____DOLLAR__2603;
wire      [7:0] n1023____DOLLAR__2604;
wire      [7:0] n1024____DOLLAR__2605;
wire            n1025____DOLLAR__2606;
wire            n1026____DOLLAR__2608;
wire     [15:0] n1027____DOLLAR__2612;
wire     [15:0] n1028____DOLLAR__2615;
wire            n102____DOLLAR__453;
wire      [7:0] n1031____DOLLAR__2616;
wire     [15:0] n1032____DOLLAR__2618;
wire     [15:0] n1033____DOLLAR__2620;
wire     [15:0] n1034____DOLLAR__2623;
wire     [15:0] n1035____DOLLAR__2624;
wire      [7:0] n1038____DOLLAR__2625;
wire            n1039____DOLLAR__2629;
wire            n103____DOLLAR__457;
wire            n1040____DOLLAR__2633;
wire            n1041____DOLLAR__2637;
wire            n1042____DOLLAR__2641;
wire            n1043____DOLLAR__2645;
wire            n1044____DOLLAR__2649;
wire            n1045____DOLLAR__2653;
wire            n1046____DOLLAR__2657;
wire            n1047____DOLLAR__2661;
wire            n1048____DOLLAR__2665;
wire            n1049____DOLLAR__2669;
wire            n104____DOLLAR__461;
wire            n1050____DOLLAR__2673;
wire            n1051____DOLLAR__2677;
wire            n1052____DOLLAR__2681;
wire            n1053____DOLLAR__2685;
wire            n1054____DOLLAR__2689;
wire            n1055____DOLLAR__2693;
wire            n1056____DOLLAR__2697;
wire            n1057____DOLLAR__2701;
wire            n1058____DOLLAR__2705;
wire            n1059____DOLLAR__2709;
wire            n105____DOLLAR__465;
wire            n1060____DOLLAR__2713;
wire            n1061____DOLLAR__2717;
wire            n1062____DOLLAR__2721;
wire            n1063____DOLLAR__2725;
wire            n1064____DOLLAR__2729;
wire            n1065____DOLLAR__2733;
wire            n1066____DOLLAR__2737;
wire            n1067____DOLLAR__2741;
wire            n1068____DOLLAR__2745;
wire            n1069____DOLLAR__2749;
wire            n106____DOLLAR__469;
wire            n1070____DOLLAR__2753;
wire            n1071____DOLLAR__2757;
wire            n1072____DOLLAR__2761;
wire            n1073____DOLLAR__2765;
wire            n1074____DOLLAR__2769;
wire            n1075____DOLLAR__2773;
wire            n1076____DOLLAR__2777;
wire            n1077____DOLLAR__2781;
wire            n1078____DOLLAR__2785;
wire            n1079____DOLLAR__2789;
wire            n107____DOLLAR__473;
wire            n1080____DOLLAR__2793;
wire            n1081____DOLLAR__2797;
wire            n1082____DOLLAR__2801;
wire            n1083____DOLLAR__2805;
wire            n1084____DOLLAR__2809;
wire            n1085____DOLLAR__2813;
wire            n1086____DOLLAR__2817;
wire            n1087____DOLLAR__2821;
wire            n1088____DOLLAR__2825;
wire            n1089____DOLLAR__2829;
wire            n108____DOLLAR__477;
wire            n1090____DOLLAR__2833;
wire            n1091____DOLLAR__2837;
wire            n1092____DOLLAR__2841;
wire            n1093____DOLLAR__2845;
wire            n1094____DOLLAR__2849;
wire            n1095____DOLLAR__2853;
wire            n1096____DOLLAR__2857;
wire            n1097____DOLLAR__2861;
wire            n1098____DOLLAR__2865;
wire            n1099____DOLLAR__2869;
wire            n109____DOLLAR__481;
wire            n10____DOLLAR__85;
wire            n1100____DOLLAR__2873;
wire            n1101____DOLLAR__2875;
wire            n1102____DOLLAR__2876;
wire            n1103____DOLLAR__2877;
wire            n1104____DOLLAR__2878;
wire            n1105____DOLLAR__2879;
wire            n1106____DOLLAR__2880;
wire            n1107____DOLLAR__2881;
wire            n1108____DOLLAR__2882;
wire            n1109____DOLLAR__2883;
wire            n110____DOLLAR__485;
wire            n1110____DOLLAR__2884;
wire            n1111____DOLLAR__2885;
wire            n1112____DOLLAR__2886;
wire            n1113____DOLLAR__2887;
wire            n1114____DOLLAR__2888;
wire            n1115____DOLLAR__2889;
wire            n1116____DOLLAR__2890;
wire            n1117____DOLLAR__2891;
wire            n1118____DOLLAR__2892;
wire            n1119____DOLLAR__2893;
wire            n111____DOLLAR__489;
wire            n1120____DOLLAR__2894;
wire            n1121____DOLLAR__2895;
wire            n1122____DOLLAR__2896;
wire            n1123____DOLLAR__2897;
wire            n1124____DOLLAR__2898;
wire            n1125____DOLLAR__2899;
wire            n1126____DOLLAR__2900;
wire            n1127____DOLLAR__2901;
wire            n1128____DOLLAR__2902;
wire            n1129____DOLLAR__2903;
wire            n112____DOLLAR__493;
wire            n1130____DOLLAR__2904;
wire            n1131____DOLLAR__2905;
wire            n1132____DOLLAR__2906;
wire            n1133____DOLLAR__2907;
wire            n1134____DOLLAR__2908;
wire            n1135____DOLLAR__2909;
wire            n1136____DOLLAR__2910;
wire            n1137____DOLLAR__2911;
wire            n1138____DOLLAR__2912;
wire            n1139____DOLLAR__2913;
wire            n113____DOLLAR__497;
wire            n1140____DOLLAR__2914;
wire            n1141____DOLLAR__2915;
wire            n1142____DOLLAR__2916;
wire            n1143____DOLLAR__2917;
wire            n1144____DOLLAR__2918;
wire            n1145____DOLLAR__2919;
wire            n1146____DOLLAR__2920;
wire            n1147____DOLLAR__2921;
wire            n1148____DOLLAR__2922;
wire            n1149____DOLLAR__2923;
wire            n114____DOLLAR__501;
wire            n1150____DOLLAR__2924;
wire            n1151____DOLLAR__2925;
wire            n1152____DOLLAR__2926;
wire            n1153____DOLLAR__2927;
wire            n1154____DOLLAR__2928;
wire            n1155____DOLLAR__2929;
wire            n1156____DOLLAR__2930;
wire            n1157____DOLLAR__2931;
wire            n1158____DOLLAR__2932;
wire            n1159____DOLLAR__2933;
wire            n115____DOLLAR__505;
wire            n1160____DOLLAR__2934;
wire            n1161____DOLLAR__2935;
wire     [15:0] n1162____DOLLAR__2938;
wire      [7:0] n1165____DOLLAR__2939;
wire            n1166____DOLLAR__2943;
wire            n1167____DOLLAR__2947;
wire            n1168____DOLLAR__2949;
wire     [15:0] n1169____DOLLAR__2952;
wire            n116____DOLLAR__509;
wire      [7:0] n1172____DOLLAR__2953;
wire     [15:0] n1173____DOLLAR__2957;
wire      [7:0] n1176____DOLLAR__2958;
wire     [15:0] n1177____DOLLAR__2964;
wire            n117____DOLLAR__513;
wire      [7:0] n1180____DOLLAR__2966;
wire            n1181____DOLLAR__2970;
wire            n1182____DOLLAR__2974;
wire            n1183____DOLLAR__2976;
wire     [15:0] n1184____DOLLAR__2979;
wire      [4:0] n1185____DOLLAR__2980;
wire      [7:0] n1186____DOLLAR__2988;
wire     [15:0] n1187____DOLLAR__2992;
wire            n118____DOLLAR__517;
wire      [7:0] n1190____DOLLAR__2993;
wire     [15:0] n1191____DOLLAR__2999;
wire      [7:0] n1194____DOLLAR__3001;
wire            n1195____DOLLAR__3005;
wire            n1196____DOLLAR__3009;
wire            n1197____DOLLAR__3013;
wire            n1198____DOLLAR__3017;
wire            n1199____DOLLAR__3021;
wire            n119____DOLLAR__521;
wire            n11____DOLLAR__89;
wire            n1200____DOLLAR__3025;
wire            n1201____DOLLAR__3029;
wire            n1202____DOLLAR__3033;
wire            n1203____DOLLAR__3037;
wire            n1204____DOLLAR__3041;
wire            n1205____DOLLAR__3045;
wire            n1206____DOLLAR__3049;
wire            n1207____DOLLAR__3053;
wire            n1208____DOLLAR__3057;
wire            n1209____DOLLAR__3061;
wire            n120____DOLLAR__525;
wire            n1210____DOLLAR__3065;
wire            n1211____DOLLAR__3069;
wire            n1212____DOLLAR__3073;
wire            n1213____DOLLAR__3077;
wire            n1214____DOLLAR__3081;
wire            n1215____DOLLAR__3085;
wire            n1216____DOLLAR__3089;
wire            n1217____DOLLAR__3093;
wire            n1218____DOLLAR__3097;
wire            n1219____DOLLAR__3101;
wire            n121____DOLLAR__529;
wire            n1220____DOLLAR__3105;
wire            n1221____DOLLAR__3109;
wire            n1222____DOLLAR__3113;
wire            n1223____DOLLAR__3117;
wire            n1224____DOLLAR__3121;
wire            n1225____DOLLAR__3125;
wire            n1226____DOLLAR__3129;
wire            n1227____DOLLAR__3133;
wire            n1228____DOLLAR__3137;
wire            n1229____DOLLAR__3141;
wire            n122____DOLLAR__533;
wire            n1230____DOLLAR__3145;
wire            n1231____DOLLAR__3149;
wire            n1232____DOLLAR__3153;
wire            n1233____DOLLAR__3157;
wire            n1234____DOLLAR__3161;
wire            n1235____DOLLAR__3165;
wire            n1236____DOLLAR__3169;
wire            n1237____DOLLAR__3173;
wire            n1238____DOLLAR__3177;
wire            n1239____DOLLAR__3181;
wire            n123____DOLLAR__537;
wire            n1240____DOLLAR__3185;
wire            n1241____DOLLAR__3189;
wire            n1242____DOLLAR__3193;
wire            n1243____DOLLAR__3197;
wire            n1244____DOLLAR__3201;
wire            n1245____DOLLAR__3205;
wire            n1246____DOLLAR__3209;
wire            n1247____DOLLAR__3213;
wire            n1248____DOLLAR__3217;
wire            n1249____DOLLAR__3221;
wire            n124____DOLLAR__541;
wire            n1250____DOLLAR__3225;
wire            n1251____DOLLAR__3229;
wire            n1252____DOLLAR__3233;
wire            n1253____DOLLAR__3237;
wire            n1254____DOLLAR__3241;
wire            n1255____DOLLAR__3245;
wire            n1256____DOLLAR__3249;
wire            n1257____DOLLAR__3253;
wire            n1258____DOLLAR__3257;
wire            n1259____DOLLAR__3261;
wire            n125____DOLLAR__545;
wire            n1260____DOLLAR__3265;
wire            n1261____DOLLAR__3269;
wire            n1262____DOLLAR__3273;
wire            n1263____DOLLAR__3277;
wire            n1264____DOLLAR__3281;
wire            n1265____DOLLAR__3285;
wire            n1266____DOLLAR__3289;
wire            n1267____DOLLAR__3293;
wire            n1268____DOLLAR__3297;
wire            n1269____DOLLAR__3301;
wire            n126____DOLLAR__549;
wire            n1270____DOLLAR__3305;
wire            n1271____DOLLAR__3309;
wire            n1272____DOLLAR__3313;
wire            n1273____DOLLAR__3317;
wire            n1274____DOLLAR__3321;
wire            n1275____DOLLAR__3325;
wire            n1276____DOLLAR__3329;
wire            n1277____DOLLAR__3333;
wire            n1278____DOLLAR__3337;
wire            n1279____DOLLAR__3341;
wire            n127____DOLLAR__553;
wire            n1280____DOLLAR__3345;
wire            n1281____DOLLAR__3349;
wire            n1282____DOLLAR__3353;
wire            n1283____DOLLAR__3357;
wire            n1284____DOLLAR__3361;
wire            n1285____DOLLAR__3365;
wire            n1286____DOLLAR__3369;
wire            n1287____DOLLAR__3373;
wire            n1288____DOLLAR__3377;
wire            n1289____DOLLAR__3381;
wire            n128____DOLLAR__557;
wire            n1290____DOLLAR__3385;
wire            n1291____DOLLAR__3389;
wire            n1292____DOLLAR__3393;
wire            n1293____DOLLAR__3397;
wire            n1294____DOLLAR__3401;
wire            n1295____DOLLAR__3405;
wire            n1296____DOLLAR__3409;
wire            n1297____DOLLAR__3413;
wire            n1298____DOLLAR__3417;
wire            n1299____DOLLAR__3421;
wire            n129____DOLLAR__561;
wire            n12____DOLLAR__93;
wire            n1300____DOLLAR__3425;
wire            n1301____DOLLAR__3429;
wire            n1302____DOLLAR__3433;
wire            n1303____DOLLAR__3437;
wire            n1304____DOLLAR__3441;
wire            n1305____DOLLAR__3445;
wire            n1306____DOLLAR__3449;
wire            n1307____DOLLAR__3453;
wire            n1308____DOLLAR__3457;
wire            n1309____DOLLAR__3461;
wire            n130____DOLLAR__565;
wire            n1310____DOLLAR__3465;
wire            n1311____DOLLAR__3469;
wire            n1312____DOLLAR__3473;
wire            n1313____DOLLAR__3477;
wire            n1314____DOLLAR__3481;
wire            n1315____DOLLAR__3485;
wire            n1316____DOLLAR__3489;
wire            n1317____DOLLAR__3493;
wire            n1318____DOLLAR__3497;
wire            n1319____DOLLAR__3501;
wire            n131____DOLLAR__569;
wire            n1320____DOLLAR__3505;
wire            n1321____DOLLAR__3509;
wire            n1322____DOLLAR__3513;
wire            n1323____DOLLAR__3517;
wire            n1324____DOLLAR__3521;
wire            n1325____DOLLAR__3525;
wire            n1326____DOLLAR__3529;
wire            n1327____DOLLAR__3533;
wire            n1328____DOLLAR__3537;
wire            n1329____DOLLAR__3541;
wire            n132____DOLLAR__573;
wire            n1330____DOLLAR__3545;
wire            n1331____DOLLAR__3549;
wire            n1332____DOLLAR__3553;
wire            n1333____DOLLAR__3555;
wire            n1334____DOLLAR__3556;
wire            n1335____DOLLAR__3557;
wire            n1336____DOLLAR__3558;
wire            n1337____DOLLAR__3559;
wire            n1338____DOLLAR__3560;
wire            n1339____DOLLAR__3561;
wire            n133____DOLLAR__577;
wire            n1340____DOLLAR__3562;
wire            n1341____DOLLAR__3563;
wire            n1342____DOLLAR__3564;
wire            n1343____DOLLAR__3565;
wire            n1344____DOLLAR__3566;
wire            n1345____DOLLAR__3567;
wire            n1346____DOLLAR__3568;
wire            n1347____DOLLAR__3569;
wire            n1348____DOLLAR__3570;
wire            n1349____DOLLAR__3571;
wire            n134____DOLLAR__581;
wire            n1350____DOLLAR__3572;
wire            n1351____DOLLAR__3573;
wire            n1352____DOLLAR__3574;
wire            n1353____DOLLAR__3575;
wire            n1354____DOLLAR__3576;
wire            n1355____DOLLAR__3577;
wire            n1356____DOLLAR__3578;
wire            n1357____DOLLAR__3579;
wire            n1358____DOLLAR__3580;
wire            n1359____DOLLAR__3581;
wire            n135____DOLLAR__585;
wire            n1360____DOLLAR__3582;
wire            n1361____DOLLAR__3583;
wire            n1362____DOLLAR__3584;
wire            n1363____DOLLAR__3585;
wire            n1364____DOLLAR__3586;
wire            n1365____DOLLAR__3587;
wire            n1366____DOLLAR__3588;
wire            n1367____DOLLAR__3589;
wire            n1368____DOLLAR__3590;
wire            n1369____DOLLAR__3591;
wire            n136____DOLLAR__589;
wire            n1370____DOLLAR__3592;
wire            n1371____DOLLAR__3593;
wire            n1372____DOLLAR__3594;
wire            n1373____DOLLAR__3595;
wire            n1374____DOLLAR__3596;
wire            n1375____DOLLAR__3597;
wire            n1376____DOLLAR__3598;
wire            n1377____DOLLAR__3599;
wire            n1378____DOLLAR__3600;
wire            n1379____DOLLAR__3601;
wire            n137____DOLLAR__593;
wire            n1380____DOLLAR__3602;
wire            n1381____DOLLAR__3603;
wire            n1382____DOLLAR__3604;
wire            n1383____DOLLAR__3605;
wire            n1384____DOLLAR__3606;
wire            n1385____DOLLAR__3607;
wire            n1386____DOLLAR__3608;
wire            n1387____DOLLAR__3609;
wire            n1388____DOLLAR__3610;
wire            n1389____DOLLAR__3611;
wire            n138____DOLLAR__597;
wire            n1390____DOLLAR__3612;
wire            n1391____DOLLAR__3613;
wire            n1392____DOLLAR__3614;
wire            n1393____DOLLAR__3615;
wire            n1394____DOLLAR__3616;
wire            n1395____DOLLAR__3617;
wire            n1396____DOLLAR__3618;
wire            n1397____DOLLAR__3619;
wire            n1398____DOLLAR__3620;
wire            n1399____DOLLAR__3621;
wire            n139____DOLLAR__601;
wire            n13____DOLLAR__97;
wire            n1400____DOLLAR__3622;
wire            n1401____DOLLAR__3623;
wire            n1402____DOLLAR__3624;
wire            n1403____DOLLAR__3625;
wire            n1404____DOLLAR__3626;
wire            n1405____DOLLAR__3627;
wire            n1406____DOLLAR__3628;
wire            n1407____DOLLAR__3629;
wire            n1408____DOLLAR__3630;
wire            n1409____DOLLAR__3631;
wire            n140____DOLLAR__605;
wire            n1410____DOLLAR__3632;
wire            n1411____DOLLAR__3633;
wire            n1412____DOLLAR__3634;
wire            n1413____DOLLAR__3635;
wire            n1414____DOLLAR__3636;
wire            n1415____DOLLAR__3637;
wire            n1416____DOLLAR__3638;
wire            n1417____DOLLAR__3639;
wire            n1418____DOLLAR__3640;
wire            n1419____DOLLAR__3641;
wire            n141____DOLLAR__609;
wire            n1420____DOLLAR__3642;
wire            n1421____DOLLAR__3643;
wire            n1422____DOLLAR__3644;
wire            n1423____DOLLAR__3645;
wire            n1424____DOLLAR__3646;
wire            n1425____DOLLAR__3647;
wire            n1426____DOLLAR__3648;
wire            n1427____DOLLAR__3649;
wire            n1428____DOLLAR__3650;
wire            n1429____DOLLAR__3651;
wire            n142____DOLLAR__613;
wire            n1430____DOLLAR__3652;
wire            n1431____DOLLAR__3653;
wire            n1432____DOLLAR__3654;
wire            n1433____DOLLAR__3655;
wire            n1434____DOLLAR__3656;
wire            n1435____DOLLAR__3657;
wire            n1436____DOLLAR__3658;
wire            n1437____DOLLAR__3659;
wire            n1438____DOLLAR__3660;
wire            n1439____DOLLAR__3661;
wire            n143____DOLLAR__617;
wire            n1440____DOLLAR__3662;
wire            n1441____DOLLAR__3663;
wire            n1442____DOLLAR__3664;
wire            n1443____DOLLAR__3665;
wire            n1444____DOLLAR__3666;
wire            n1445____DOLLAR__3667;
wire            n1446____DOLLAR__3668;
wire            n1447____DOLLAR__3669;
wire            n1448____DOLLAR__3670;
wire            n1449____DOLLAR__3671;
wire            n144____DOLLAR__621;
wire            n1450____DOLLAR__3672;
wire            n1451____DOLLAR__3673;
wire            n1452____DOLLAR__3674;
wire            n1453____DOLLAR__3675;
wire            n1454____DOLLAR__3676;
wire            n1455____DOLLAR__3677;
wire            n1456____DOLLAR__3678;
wire            n1457____DOLLAR__3679;
wire            n1458____DOLLAR__3680;
wire            n1459____DOLLAR__3681;
wire            n145____DOLLAR__625;
wire            n1460____DOLLAR__3682;
wire            n1461____DOLLAR__3683;
wire            n1462____DOLLAR__3684;
wire            n1463____DOLLAR__3685;
wire            n1464____DOLLAR__3686;
wire            n1465____DOLLAR__3687;
wire            n1466____DOLLAR__3688;
wire            n1467____DOLLAR__3689;
wire            n1468____DOLLAR__3690;
wire            n1469____DOLLAR__3691;
wire            n146____DOLLAR__629;
wire     [15:0] n1470____DOLLAR__3694;
wire     [15:0] n1471____DOLLAR__3695;
wire     [15:0] n1472____DOLLAR__3696;
wire     [15:0] n1473____DOLLAR__3697;
wire     [15:0] n1474____DOLLAR__3698;
wire     [15:0] n1475____DOLLAR__3699;
wire     [15:0] n1476____DOLLAR__3700;
wire     [15:0] n1477____DOLLAR__3701;
wire            n147____DOLLAR__633;
wire      [7:0] n1480____DOLLAR__3702;
wire            n1481____DOLLAR__3706;
wire            n1482____DOLLAR__3710;
wire            n1483____DOLLAR__3714;
wire            n1484____DOLLAR__3718;
wire            n1485____DOLLAR__3722;
wire            n1486____DOLLAR__3726;
wire            n1487____DOLLAR__3730;
wire            n1488____DOLLAR__3734;
wire            n1489____DOLLAR__3738;
wire            n148____DOLLAR__637;
wire            n1490____DOLLAR__3742;
wire            n1491____DOLLAR__3746;
wire            n1492____DOLLAR__3750;
wire            n1493____DOLLAR__3754;
wire            n1494____DOLLAR__3758;
wire            n1495____DOLLAR__3762;
wire            n1496____DOLLAR__3766;
wire            n1497____DOLLAR__3770;
wire            n1498____DOLLAR__3774;
wire            n1499____DOLLAR__3778;
wire            n149____DOLLAR__641;
wire            n14____DOLLAR__101;
wire            n1500____DOLLAR__3782;
wire            n1501____DOLLAR__3786;
wire            n1502____DOLLAR__3790;
wire            n1503____DOLLAR__3794;
wire            n1504____DOLLAR__3798;
wire            n1505____DOLLAR__3802;
wire            n1506____DOLLAR__3806;
wire            n1507____DOLLAR__3810;
wire            n1508____DOLLAR__3814;
wire            n1509____DOLLAR__3818;
wire            n150____DOLLAR__645;
wire            n1510____DOLLAR__3822;
wire            n1511____DOLLAR__3826;
wire            n1512____DOLLAR__3830;
wire            n1513____DOLLAR__3834;
wire            n1514____DOLLAR__3838;
wire            n1515____DOLLAR__3842;
wire            n1516____DOLLAR__3846;
wire            n1517____DOLLAR__3850;
wire            n1518____DOLLAR__3854;
wire            n1519____DOLLAR__3858;
wire            n151____DOLLAR__649;
wire            n1520____DOLLAR__3862;
wire            n1521____DOLLAR__3866;
wire            n1522____DOLLAR__3870;
wire            n1523____DOLLAR__3874;
wire            n1524____DOLLAR__3878;
wire            n1525____DOLLAR__3882;
wire            n1526____DOLLAR__3886;
wire            n1527____DOLLAR__3890;
wire            n1528____DOLLAR__3894;
wire            n1529____DOLLAR__3898;
wire            n152____DOLLAR__653;
wire            n1530____DOLLAR__3902;
wire            n1531____DOLLAR__3906;
wire            n1532____DOLLAR__3910;
wire            n1533____DOLLAR__3914;
wire            n1534____DOLLAR__3918;
wire            n1535____DOLLAR__3922;
wire            n1536____DOLLAR__3926;
wire            n1537____DOLLAR__3930;
wire            n1538____DOLLAR__3934;
wire            n1539____DOLLAR__3938;
wire            n153____DOLLAR__657;
wire            n1540____DOLLAR__3942;
wire            n1541____DOLLAR__3946;
wire            n1542____DOLLAR__3950;
wire            n1543____DOLLAR__3954;
wire            n1544____DOLLAR__3958;
wire            n1545____DOLLAR__3962;
wire            n1546____DOLLAR__3966;
wire            n1547____DOLLAR__3970;
wire            n1548____DOLLAR__3974;
wire            n1549____DOLLAR__3978;
wire            n154____DOLLAR__661;
wire            n1550____DOLLAR__3982;
wire            n1551____DOLLAR__3986;
wire            n1552____DOLLAR__3990;
wire            n1553____DOLLAR__3994;
wire            n1554____DOLLAR__3998;
wire            n1555____DOLLAR__4002;
wire            n1556____DOLLAR__4006;
wire            n1557____DOLLAR__4010;
wire            n1558____DOLLAR__4014;
wire            n1559____DOLLAR__4018;
wire            n155____DOLLAR__665;
wire            n1560____DOLLAR__4022;
wire            n1561____DOLLAR__4026;
wire            n1562____DOLLAR__4030;
wire            n1563____DOLLAR__4034;
wire            n1564____DOLLAR__4038;
wire            n1565____DOLLAR__4042;
wire            n1566____DOLLAR__4046;
wire            n1567____DOLLAR__4050;
wire            n1568____DOLLAR__4054;
wire            n1569____DOLLAR__4058;
wire            n156____DOLLAR__669;
wire            n1570____DOLLAR__4062;
wire            n1571____DOLLAR__4066;
wire            n1572____DOLLAR__4070;
wire            n1573____DOLLAR__4074;
wire            n1574____DOLLAR__4078;
wire            n1575____DOLLAR__4082;
wire            n1576____DOLLAR__4086;
wire            n1577____DOLLAR__4090;
wire            n1578____DOLLAR__4094;
wire            n1579____DOLLAR__4098;
wire            n157____DOLLAR__673;
wire            n1580____DOLLAR__4102;
wire            n1581____DOLLAR__4106;
wire            n1582____DOLLAR__4110;
wire            n1583____DOLLAR__4114;
wire            n1584____DOLLAR__4118;
wire            n1585____DOLLAR__4122;
wire            n1586____DOLLAR__4126;
wire            n1587____DOLLAR__4130;
wire            n1588____DOLLAR__4134;
wire            n1589____DOLLAR__4138;
wire            n158____DOLLAR__677;
wire            n1590____DOLLAR__4142;
wire            n1591____DOLLAR__4146;
wire            n1592____DOLLAR__4150;
wire            n1593____DOLLAR__4154;
wire            n1594____DOLLAR__4158;
wire            n1595____DOLLAR__4162;
wire            n1596____DOLLAR__4166;
wire            n1597____DOLLAR__4170;
wire            n1598____DOLLAR__4174;
wire            n1599____DOLLAR__4178;
wire            n159____DOLLAR__681;
wire            n15____DOLLAR__105;
wire            n1600____DOLLAR__4182;
wire            n1601____DOLLAR__4186;
wire            n1602____DOLLAR__4190;
wire            n1603____DOLLAR__4194;
wire            n1604____DOLLAR__4198;
wire            n1605____DOLLAR__4202;
wire            n1606____DOLLAR__4206;
wire            n1607____DOLLAR__4210;
wire            n1608____DOLLAR__4214;
wire            n1609____DOLLAR__4218;
wire            n160____DOLLAR__685;
wire            n1610____DOLLAR__4222;
wire            n1611____DOLLAR__4226;
wire            n1612____DOLLAR__4230;
wire            n1613____DOLLAR__4234;
wire            n1614____DOLLAR__4238;
wire            n1615____DOLLAR__4242;
wire            n1616____DOLLAR__4246;
wire            n1617____DOLLAR__4250;
wire            n1618____DOLLAR__4254;
wire            n1619____DOLLAR__4258;
wire            n161____DOLLAR__689;
wire            n1620____DOLLAR__4262;
wire            n1621____DOLLAR__4266;
wire            n1622____DOLLAR__4270;
wire            n1623____DOLLAR__4274;
wire            n1624____DOLLAR__4278;
wire            n1625____DOLLAR__4282;
wire            n1626____DOLLAR__4286;
wire            n1627____DOLLAR__4290;
wire            n1628____DOLLAR__4294;
wire            n1629____DOLLAR__4298;
wire            n162____DOLLAR__693;
wire            n1630____DOLLAR__4302;
wire            n1631____DOLLAR__4306;
wire            n1632____DOLLAR__4310;
wire            n1633____DOLLAR__4314;
wire            n1634____DOLLAR__4318;
wire            n1635____DOLLAR__4322;
wire            n1636____DOLLAR__4326;
wire            n1637____DOLLAR__4330;
wire            n1638____DOLLAR__4334;
wire            n1639____DOLLAR__4338;
wire            n163____DOLLAR__697;
wire            n1640____DOLLAR__4342;
wire            n1641____DOLLAR__4346;
wire            n1642____DOLLAR__4350;
wire            n1643____DOLLAR__4354;
wire            n1644____DOLLAR__4358;
wire            n1645____DOLLAR__4362;
wire            n1646____DOLLAR__4366;
wire            n1647____DOLLAR__4370;
wire            n1648____DOLLAR__4374;
wire            n1649____DOLLAR__4378;
wire            n164____DOLLAR__701;
wire            n1650____DOLLAR__4382;
wire            n1651____DOLLAR__4386;
wire            n1652____DOLLAR__4390;
wire            n1653____DOLLAR__4394;
wire            n1654____DOLLAR__4398;
wire            n1655____DOLLAR__4402;
wire            n1656____DOLLAR__4406;
wire            n1657____DOLLAR__4410;
wire            n1658____DOLLAR__4414;
wire            n1659____DOLLAR__4418;
wire            n165____DOLLAR__705;
wire            n1660____DOLLAR__4422;
wire            n1661____DOLLAR__4426;
wire            n1662____DOLLAR__4430;
wire            n1663____DOLLAR__4434;
wire            n1664____DOLLAR__4438;
wire            n1665____DOLLAR__4442;
wire            n1666____DOLLAR__4446;
wire            n1667____DOLLAR__4450;
wire            n1668____DOLLAR__4454;
wire            n1669____DOLLAR__4458;
wire            n166____DOLLAR__709;
wire            n1670____DOLLAR__4462;
wire            n1671____DOLLAR__4466;
wire            n1672____DOLLAR__4470;
wire            n1673____DOLLAR__4474;
wire            n1674____DOLLAR__4478;
wire            n1675____DOLLAR__4482;
wire            n1676____DOLLAR__4486;
wire            n1677____DOLLAR__4490;
wire            n1678____DOLLAR__4494;
wire            n1679____DOLLAR__4498;
wire            n167____DOLLAR__713;
wire            n1680____DOLLAR__4502;
wire            n1681____DOLLAR__4506;
wire            n1682____DOLLAR__4510;
wire            n1683____DOLLAR__4514;
wire            n1684____DOLLAR__4518;
wire            n1685____DOLLAR__4522;
wire            n1686____DOLLAR__4526;
wire            n1687____DOLLAR__4530;
wire            n1688____DOLLAR__4534;
wire            n1689____DOLLAR__4538;
wire            n168____DOLLAR__717;
wire            n1690____DOLLAR__4542;
wire            n1691____DOLLAR__4546;
wire            n1692____DOLLAR__4550;
wire            n1693____DOLLAR__4554;
wire            n1694____DOLLAR__4558;
wire            n1695____DOLLAR__4562;
wire            n1696____DOLLAR__4566;
wire            n1697____DOLLAR__4570;
wire            n1698____DOLLAR__4574;
wire            n1699____DOLLAR__4578;
wire            n169____DOLLAR__721;
wire            n16____DOLLAR__109;
wire            n1700____DOLLAR__4582;
wire            n1701____DOLLAR__4584;
wire            n1702____DOLLAR__4585;
wire            n1703____DOLLAR__4586;
wire            n1704____DOLLAR__4587;
wire            n1705____DOLLAR__4588;
wire            n1706____DOLLAR__4589;
wire            n1707____DOLLAR__4590;
wire            n1708____DOLLAR__4591;
wire            n1709____DOLLAR__4592;
wire            n170____DOLLAR__725;
wire            n1710____DOLLAR__4593;
wire            n1711____DOLLAR__4594;
wire            n1712____DOLLAR__4595;
wire            n1713____DOLLAR__4596;
wire            n1714____DOLLAR__4597;
wire            n1715____DOLLAR__4598;
wire            n1716____DOLLAR__4599;
wire            n1717____DOLLAR__4600;
wire            n1718____DOLLAR__4601;
wire            n1719____DOLLAR__4602;
wire            n171____DOLLAR__729;
wire            n1720____DOLLAR__4603;
wire            n1721____DOLLAR__4604;
wire            n1722____DOLLAR__4605;
wire            n1723____DOLLAR__4606;
wire            n1724____DOLLAR__4607;
wire            n1725____DOLLAR__4608;
wire            n1726____DOLLAR__4609;
wire            n1727____DOLLAR__4610;
wire            n1728____DOLLAR__4611;
wire            n1729____DOLLAR__4612;
wire            n172____DOLLAR__733;
wire            n1730____DOLLAR__4613;
wire            n1731____DOLLAR__4614;
wire            n1732____DOLLAR__4615;
wire            n1733____DOLLAR__4616;
wire            n1734____DOLLAR__4617;
wire            n1735____DOLLAR__4618;
wire            n1736____DOLLAR__4619;
wire            n1737____DOLLAR__4620;
wire            n1738____DOLLAR__4621;
wire            n1739____DOLLAR__4622;
wire            n173____DOLLAR__737;
wire            n1740____DOLLAR__4623;
wire            n1741____DOLLAR__4624;
wire            n1742____DOLLAR__4625;
wire            n1743____DOLLAR__4626;
wire            n1744____DOLLAR__4627;
wire            n1745____DOLLAR__4628;
wire            n1746____DOLLAR__4629;
wire            n1747____DOLLAR__4630;
wire            n1748____DOLLAR__4631;
wire            n1749____DOLLAR__4632;
wire            n174____DOLLAR__741;
wire            n1750____DOLLAR__4633;
wire            n1751____DOLLAR__4634;
wire            n1752____DOLLAR__4635;
wire            n1753____DOLLAR__4636;
wire            n1754____DOLLAR__4637;
wire            n1755____DOLLAR__4638;
wire            n1756____DOLLAR__4639;
wire            n1757____DOLLAR__4640;
wire            n1758____DOLLAR__4641;
wire            n1759____DOLLAR__4642;
wire            n175____DOLLAR__745;
wire            n1760____DOLLAR__4643;
wire            n1761____DOLLAR__4644;
wire            n1762____DOLLAR__4645;
wire            n1763____DOLLAR__4646;
wire            n1764____DOLLAR__4647;
wire            n1765____DOLLAR__4648;
wire            n1766____DOLLAR__4649;
wire            n1767____DOLLAR__4650;
wire            n1768____DOLLAR__4651;
wire            n1769____DOLLAR__4652;
wire            n176____DOLLAR__749;
wire            n1770____DOLLAR__4653;
wire            n1771____DOLLAR__4654;
wire            n1772____DOLLAR__4655;
wire            n1773____DOLLAR__4656;
wire            n1774____DOLLAR__4657;
wire            n1775____DOLLAR__4658;
wire            n1776____DOLLAR__4659;
wire            n1777____DOLLAR__4660;
wire            n1778____DOLLAR__4661;
wire            n1779____DOLLAR__4662;
wire            n177____DOLLAR__753;
wire            n1780____DOLLAR__4663;
wire            n1781____DOLLAR__4664;
wire            n1782____DOLLAR__4665;
wire            n1783____DOLLAR__4666;
wire            n1784____DOLLAR__4667;
wire            n1785____DOLLAR__4668;
wire            n1786____DOLLAR__4669;
wire            n1787____DOLLAR__4670;
wire            n1788____DOLLAR__4671;
wire            n1789____DOLLAR__4672;
wire            n178____DOLLAR__757;
wire            n1790____DOLLAR__4673;
wire            n1791____DOLLAR__4674;
wire            n1792____DOLLAR__4675;
wire            n1793____DOLLAR__4676;
wire            n1794____DOLLAR__4677;
wire            n1795____DOLLAR__4678;
wire            n1796____DOLLAR__4679;
wire            n1797____DOLLAR__4680;
wire            n1798____DOLLAR__4681;
wire            n1799____DOLLAR__4682;
wire            n179____DOLLAR__761;
wire            n17____DOLLAR__113;
wire            n1800____DOLLAR__4683;
wire            n1801____DOLLAR__4684;
wire            n1802____DOLLAR__4685;
wire            n1803____DOLLAR__4686;
wire            n1804____DOLLAR__4687;
wire            n1805____DOLLAR__4688;
wire            n1806____DOLLAR__4689;
wire            n1807____DOLLAR__4690;
wire            n1808____DOLLAR__4691;
wire            n1809____DOLLAR__4692;
wire            n180____DOLLAR__765;
wire            n1810____DOLLAR__4693;
wire            n1811____DOLLAR__4694;
wire            n1812____DOLLAR__4695;
wire            n1813____DOLLAR__4696;
wire            n1814____DOLLAR__4697;
wire            n1815____DOLLAR__4698;
wire            n1816____DOLLAR__4699;
wire            n1817____DOLLAR__4700;
wire            n1818____DOLLAR__4701;
wire            n1819____DOLLAR__4702;
wire            n181____DOLLAR__769;
wire            n1820____DOLLAR__4703;
wire            n1821____DOLLAR__4704;
wire            n1822____DOLLAR__4705;
wire            n1823____DOLLAR__4706;
wire            n1824____DOLLAR__4707;
wire            n1825____DOLLAR__4708;
wire            n1826____DOLLAR__4709;
wire            n1827____DOLLAR__4710;
wire            n1828____DOLLAR__4711;
wire            n1829____DOLLAR__4712;
wire            n182____DOLLAR__773;
wire            n1830____DOLLAR__4713;
wire            n1831____DOLLAR__4714;
wire            n1832____DOLLAR__4715;
wire            n1833____DOLLAR__4716;
wire            n1834____DOLLAR__4717;
wire            n1835____DOLLAR__4718;
wire            n1836____DOLLAR__4719;
wire            n1837____DOLLAR__4720;
wire            n1838____DOLLAR__4721;
wire            n1839____DOLLAR__4722;
wire            n183____DOLLAR__777;
wire            n1840____DOLLAR__4723;
wire            n1841____DOLLAR__4724;
wire            n1842____DOLLAR__4725;
wire            n1843____DOLLAR__4726;
wire            n1844____DOLLAR__4727;
wire            n1845____DOLLAR__4728;
wire            n1846____DOLLAR__4729;
wire            n1847____DOLLAR__4730;
wire            n1848____DOLLAR__4731;
wire            n1849____DOLLAR__4732;
wire            n184____DOLLAR__781;
wire            n1850____DOLLAR__4733;
wire            n1851____DOLLAR__4734;
wire            n1852____DOLLAR__4735;
wire            n1853____DOLLAR__4736;
wire            n1854____DOLLAR__4737;
wire            n1855____DOLLAR__4738;
wire            n1856____DOLLAR__4739;
wire            n1857____DOLLAR__4740;
wire            n1858____DOLLAR__4741;
wire            n1859____DOLLAR__4742;
wire            n185____DOLLAR__785;
wire            n1860____DOLLAR__4743;
wire            n1861____DOLLAR__4744;
wire            n1862____DOLLAR__4745;
wire            n1863____DOLLAR__4746;
wire            n1864____DOLLAR__4747;
wire            n1865____DOLLAR__4748;
wire            n1866____DOLLAR__4749;
wire            n1867____DOLLAR__4750;
wire            n1868____DOLLAR__4751;
wire            n1869____DOLLAR__4752;
wire            n186____DOLLAR__789;
wire            n1870____DOLLAR__4753;
wire            n1871____DOLLAR__4754;
wire            n1872____DOLLAR__4755;
wire            n1873____DOLLAR__4756;
wire            n1874____DOLLAR__4757;
wire            n1875____DOLLAR__4758;
wire            n1876____DOLLAR__4759;
wire            n1877____DOLLAR__4760;
wire            n1878____DOLLAR__4761;
wire            n1879____DOLLAR__4762;
wire            n187____DOLLAR__793;
wire            n1880____DOLLAR__4763;
wire            n1881____DOLLAR__4764;
wire            n1882____DOLLAR__4765;
wire            n1883____DOLLAR__4766;
wire            n1884____DOLLAR__4767;
wire            n1885____DOLLAR__4768;
wire            n1886____DOLLAR__4769;
wire            n1887____DOLLAR__4770;
wire            n1888____DOLLAR__4771;
wire            n1889____DOLLAR__4772;
wire            n188____DOLLAR__797;
wire            n1890____DOLLAR__4773;
wire            n1891____DOLLAR__4774;
wire            n1892____DOLLAR__4775;
wire            n1893____DOLLAR__4776;
wire            n1894____DOLLAR__4777;
wire            n1895____DOLLAR__4778;
wire            n1896____DOLLAR__4779;
wire            n1897____DOLLAR__4780;
wire            n1898____DOLLAR__4781;
wire            n1899____DOLLAR__4782;
wire            n189____DOLLAR__801;
wire            n18____DOLLAR__117;
wire            n1900____DOLLAR__4783;
wire            n1901____DOLLAR__4784;
wire            n1902____DOLLAR__4785;
wire            n1903____DOLLAR__4786;
wire            n1904____DOLLAR__4787;
wire            n1905____DOLLAR__4788;
wire            n1906____DOLLAR__4789;
wire            n1907____DOLLAR__4790;
wire            n1908____DOLLAR__4791;
wire            n1909____DOLLAR__4792;
wire            n190____DOLLAR__805;
wire            n1910____DOLLAR__4793;
wire            n1911____DOLLAR__4794;
wire            n1912____DOLLAR__4795;
wire            n1913____DOLLAR__4796;
wire            n1914____DOLLAR__4797;
wire            n1915____DOLLAR__4798;
wire            n1916____DOLLAR__4799;
wire            n1917____DOLLAR__4800;
wire            n1918____DOLLAR__4801;
wire            n1919____DOLLAR__4802;
wire            n191____DOLLAR__809;
wire     [15:0] n1920____DOLLAR__4805;
wire      [7:0] n1923____DOLLAR__4806;
wire            n1924____DOLLAR__4808;
wire            n1925____DOLLAR__4812;
wire      [4:0] n1926____DOLLAR__4814;
wire      [7:0] n1927____DOLLAR__4822;
wire      [7:0] n1928____DOLLAR__4824;
wire      [7:0] n1929____DOLLAR__4828;
wire            n192____DOLLAR__813;
wire      [7:0] n1930____DOLLAR__4829;
wire            n1931____DOLLAR__4832;
wire     [15:0] n1932____DOLLAR__4836;
wire      [7:0] n1935____DOLLAR__4837;
wire      [2:0] n1936____DOLLAR__4839;
wire      [7:0] n1937____DOLLAR__4841;
wire      [7:0] n1938____DOLLAR__4843;
wire      [7:0] n1939____DOLLAR__4844;
wire            n193____DOLLAR__817;
wire     [15:0] n1940____DOLLAR__4845;
wire      [7:0] n1943____DOLLAR__4846;
wire            n1944____DOLLAR__4848;
wire            n1945____DOLLAR__4850;
wire      [4:0] n1946____DOLLAR__4852;
wire      [7:0] n1947____DOLLAR__4858;
wire      [7:0] n1948____DOLLAR__4860;
wire      [7:0] n1949____DOLLAR__4862;
wire            n194____DOLLAR__821;
wire      [7:0] n1950____DOLLAR__4863;
wire            n1951____DOLLAR__4864;
wire            n1952____DOLLAR__4868;
wire     [15:0] n1953____DOLLAR__4870;
wire      [7:0] n1956____DOLLAR__4871;
wire            n1957____DOLLAR__4873;
wire            n1958____DOLLAR__4875;
wire     [15:0] n1959____DOLLAR__4877;
wire            n195____DOLLAR__825;
wire      [7:0] n1962____DOLLAR__4878;
wire      [4:0] n1963____DOLLAR__4880;
wire      [7:0] n1964____DOLLAR__4886;
wire     [15:0] n1965____DOLLAR__4888;
wire      [7:0] n1968____DOLLAR__4889;
wire      [4:0] n1969____DOLLAR__4891;
wire            n196____DOLLAR__829;
wire      [7:0] n1970____DOLLAR__4893;
wire      [7:0] n1971____DOLLAR__4895;
wire      [7:0] n1972____DOLLAR__4896;
wire      [7:0] n1975____DOLLAR__4897;
wire     [15:0] n1976____DOLLAR__4899;
wire      [7:0] n1979____DOLLAR__4900;
wire            n197____DOLLAR__833;
wire            n1980____DOLLAR__4902;
wire            n1981____DOLLAR__4904;
wire      [4:0] n1982____DOLLAR__4906;
wire      [7:0] n1983____DOLLAR__4912;
wire      [7:0] n1984____DOLLAR__4914;
wire      [7:0] n1985____DOLLAR__4916;
wire      [7:0] n1986____DOLLAR__4917;
wire            n1987____DOLLAR__4920;
wire     [15:0] n1988____DOLLAR__4922;
wire            n198____DOLLAR__837;
wire      [7:0] n1991____DOLLAR__4923;
wire            n1992____DOLLAR__4925;
wire            n1993____DOLLAR__4927;
wire      [4:0] n1994____DOLLAR__4929;
wire      [7:0] n1995____DOLLAR__4935;
wire      [7:0] n1996____DOLLAR__4937;
wire      [7:0] n1997____DOLLAR__4939;
wire      [7:0] n1998____DOLLAR__4940;
wire            n1999____DOLLAR__4943;
wire            n199____DOLLAR__841;
wire            n19____DOLLAR__121;
wire     [15:0] n2000____DOLLAR__4945;
wire      [7:0] n2003____DOLLAR__4946;
wire            n2004____DOLLAR__4948;
wire            n2005____DOLLAR__4950;
wire      [4:0] n2006____DOLLAR__4952;
wire      [7:0] n2007____DOLLAR__4958;
wire      [7:0] n2008____DOLLAR__4960;
wire      [7:0] n2009____DOLLAR__4962;
wire            n200____DOLLAR__845;
wire      [7:0] n2010____DOLLAR__4963;
wire            n2011____DOLLAR__4966;
wire     [15:0] n2012____DOLLAR__4968;
wire      [7:0] n2015____DOLLAR__4969;
wire            n2016____DOLLAR__4971;
wire            n2017____DOLLAR__4973;
wire      [4:0] n2018____DOLLAR__4975;
wire      [7:0] n2019____DOLLAR__4981;
wire            n201____DOLLAR__849;
wire      [7:0] n2020____DOLLAR__4983;
wire      [7:0] n2021____DOLLAR__4985;
wire      [7:0] n2022____DOLLAR__4986;
wire            n2023____DOLLAR__4989;
wire     [15:0] n2024____DOLLAR__4991;
wire      [7:0] n2027____DOLLAR__4992;
wire            n2028____DOLLAR__4994;
wire            n2029____DOLLAR__4996;
wire            n202____DOLLAR__853;
wire      [4:0] n2030____DOLLAR__4998;
wire      [7:0] n2031____DOLLAR__5004;
wire      [7:0] n2032____DOLLAR__5006;
wire      [7:0] n2033____DOLLAR__5008;
wire      [7:0] n2034____DOLLAR__5009;
wire            n2035____DOLLAR__5012;
wire     [15:0] n2036____DOLLAR__5014;
wire      [7:0] n2039____DOLLAR__5015;
wire            n203____DOLLAR__857;
wire            n2040____DOLLAR__5017;
wire            n2041____DOLLAR__5019;
wire      [4:0] n2042____DOLLAR__5021;
wire      [7:0] n2043____DOLLAR__5027;
wire      [7:0] n2044____DOLLAR__5029;
wire      [7:0] n2045____DOLLAR__5031;
wire      [7:0] n2046____DOLLAR__5032;
wire            n2047____DOLLAR__5035;
wire     [15:0] n2048____DOLLAR__5037;
wire            n204____DOLLAR__861;
wire      [7:0] n2051____DOLLAR__5038;
wire            n2052____DOLLAR__5040;
wire            n2053____DOLLAR__5042;
wire      [4:0] n2054____DOLLAR__5044;
wire      [7:0] n2055____DOLLAR__5050;
wire      [7:0] n2056____DOLLAR__5052;
wire      [7:0] n2057____DOLLAR__5054;
wire      [7:0] n2058____DOLLAR__5055;
wire            n2059____DOLLAR__5058;
wire            n205____DOLLAR__865;
wire     [15:0] n2060____DOLLAR__5060;
wire      [7:0] n2063____DOLLAR__5061;
wire            n2064____DOLLAR__5063;
wire            n2065____DOLLAR__5065;
wire      [4:0] n2066____DOLLAR__5067;
wire      [7:0] n2067____DOLLAR__5073;
wire      [7:0] n2068____DOLLAR__5075;
wire      [7:0] n2069____DOLLAR__5077;
wire            n206____DOLLAR__869;
wire      [7:0] n2070____DOLLAR__5078;
wire            n2071____DOLLAR__5081;
wire     [15:0] n2072____DOLLAR__5083;
wire      [7:0] n2075____DOLLAR__5084;
wire            n2076____DOLLAR__5086;
wire            n2077____DOLLAR__5088;
wire      [4:0] n2078____DOLLAR__5090;
wire      [7:0] n2079____DOLLAR__5096;
wire            n207____DOLLAR__873;
wire      [7:0] n2080____DOLLAR__5098;
wire      [7:0] n2081____DOLLAR__5100;
wire      [7:0] n2082____DOLLAR__5101;
wire            n2083____DOLLAR__5104;
wire     [15:0] n2084____DOLLAR__5106;
wire      [7:0] n2087____DOLLAR__5107;
wire            n2088____DOLLAR__5109;
wire            n2089____DOLLAR__5111;
wire            n208____DOLLAR__877;
wire      [4:0] n2090____DOLLAR__5113;
wire      [7:0] n2091____DOLLAR__5119;
wire      [7:0] n2092____DOLLAR__5121;
wire      [7:0] n2093____DOLLAR__5123;
wire      [7:0] n2094____DOLLAR__5124;
wire            n2095____DOLLAR__5127;
wire     [15:0] n2096____DOLLAR__5129;
wire      [7:0] n2099____DOLLAR__5130;
wire            n209____DOLLAR__881;
wire            n20____DOLLAR__125;
wire            n2100____DOLLAR__5132;
wire            n2101____DOLLAR__5134;
wire      [4:0] n2102____DOLLAR__5136;
wire      [7:0] n2103____DOLLAR__5142;
wire      [7:0] n2104____DOLLAR__5144;
wire      [7:0] n2105____DOLLAR__5146;
wire      [7:0] n2106____DOLLAR__5147;
wire            n2107____DOLLAR__5150;
wire     [15:0] n2108____DOLLAR__5152;
wire            n210____DOLLAR__885;
wire      [7:0] n2111____DOLLAR__5153;
wire            n2112____DOLLAR__5155;
wire            n2113____DOLLAR__5157;
wire      [4:0] n2114____DOLLAR__5159;
wire      [7:0] n2115____DOLLAR__5165;
wire      [7:0] n2116____DOLLAR__5167;
wire      [7:0] n2117____DOLLAR__5169;
wire      [7:0] n2118____DOLLAR__5170;
wire            n2119____DOLLAR__5173;
wire            n211____DOLLAR__889;
wire     [15:0] n2120____DOLLAR__5175;
wire      [7:0] n2123____DOLLAR__5176;
wire            n2124____DOLLAR__5178;
wire            n2125____DOLLAR__5180;
wire      [4:0] n2126____DOLLAR__5182;
wire      [7:0] n2127____DOLLAR__5188;
wire      [7:0] n2128____DOLLAR__5190;
wire      [7:0] n2129____DOLLAR__5192;
wire            n212____DOLLAR__893;
wire      [7:0] n2130____DOLLAR__5193;
wire            n2131____DOLLAR__5196;
wire     [15:0] n2132____DOLLAR__5198;
wire      [7:0] n2135____DOLLAR__5199;
wire            n2136____DOLLAR__5201;
wire            n2137____DOLLAR__5203;
wire      [4:0] n2138____DOLLAR__5205;
wire      [7:0] n2139____DOLLAR__5211;
wire            n213____DOLLAR__897;
wire      [7:0] n2140____DOLLAR__5213;
wire      [7:0] n2141____DOLLAR__5215;
wire      [7:0] n2142____DOLLAR__5216;
wire            n2143____DOLLAR__5219;
wire     [15:0] n2144____DOLLAR__5221;
wire      [7:0] n2147____DOLLAR__5222;
wire            n2148____DOLLAR__5224;
wire            n2149____DOLLAR__5226;
wire            n214____DOLLAR__901;
wire      [4:0] n2150____DOLLAR__5228;
wire      [7:0] n2151____DOLLAR__5234;
wire      [7:0] n2152____DOLLAR__5236;
wire      [7:0] n2153____DOLLAR__5238;
wire      [7:0] n2154____DOLLAR__5239;
wire            n2155____DOLLAR__5242;
wire     [15:0] n2156____DOLLAR__5244;
wire      [7:0] n2159____DOLLAR__5245;
wire            n215____DOLLAR__905;
wire            n2160____DOLLAR__5247;
wire            n2161____DOLLAR__5249;
wire      [4:0] n2162____DOLLAR__5251;
wire      [7:0] n2163____DOLLAR__5257;
wire      [7:0] n2164____DOLLAR__5259;
wire      [7:0] n2165____DOLLAR__5261;
wire      [7:0] n2166____DOLLAR__5262;
wire            n2167____DOLLAR__5265;
wire     [15:0] n2168____DOLLAR__5267;
wire            n216____DOLLAR__909;
wire      [7:0] n2171____DOLLAR__5268;
wire            n2172____DOLLAR__5270;
wire            n2173____DOLLAR__5272;
wire      [4:0] n2174____DOLLAR__5274;
wire      [7:0] n2175____DOLLAR__5280;
wire      [7:0] n2176____DOLLAR__5282;
wire      [7:0] n2177____DOLLAR__5284;
wire      [7:0] n2178____DOLLAR__5285;
wire            n2179____DOLLAR__5288;
wire            n217____DOLLAR__913;
wire     [15:0] n2180____DOLLAR__5290;
wire      [7:0] n2183____DOLLAR__5291;
wire            n2184____DOLLAR__5293;
wire            n2185____DOLLAR__5295;
wire      [4:0] n2186____DOLLAR__5297;
wire      [7:0] n2187____DOLLAR__5303;
wire      [7:0] n2188____DOLLAR__5305;
wire      [7:0] n2189____DOLLAR__5307;
wire            n218____DOLLAR__917;
wire      [7:0] n2190____DOLLAR__5308;
wire            n2191____DOLLAR__5311;
wire     [15:0] n2192____DOLLAR__5313;
wire      [7:0] n2195____DOLLAR__5314;
wire            n2196____DOLLAR__5316;
wire            n2197____DOLLAR__5318;
wire      [4:0] n2198____DOLLAR__5320;
wire      [7:0] n2199____DOLLAR__5326;
wire            n219____DOLLAR__921;
wire            n21____DOLLAR__129;
wire      [7:0] n2200____DOLLAR__5328;
wire      [7:0] n2201____DOLLAR__5330;
wire      [7:0] n2202____DOLLAR__5331;
wire            n2203____DOLLAR__5334;
wire     [15:0] n2204____DOLLAR__5336;
wire      [7:0] n2207____DOLLAR__5337;
wire            n2208____DOLLAR__5339;
wire            n2209____DOLLAR__5341;
wire            n220____DOLLAR__925;
wire      [4:0] n2210____DOLLAR__5343;
wire      [7:0] n2211____DOLLAR__5349;
wire      [7:0] n2212____DOLLAR__5351;
wire      [7:0] n2213____DOLLAR__5353;
wire      [7:0] n2214____DOLLAR__5354;
wire            n2215____DOLLAR__5357;
wire     [15:0] n2216____DOLLAR__5359;
wire      [7:0] n2219____DOLLAR__5360;
wire            n221____DOLLAR__929;
wire            n2220____DOLLAR__5362;
wire            n2221____DOLLAR__5364;
wire      [4:0] n2222____DOLLAR__5366;
wire      [7:0] n2223____DOLLAR__5372;
wire      [7:0] n2224____DOLLAR__5374;
wire      [7:0] n2225____DOLLAR__5376;
wire      [7:0] n2226____DOLLAR__5377;
wire            n2227____DOLLAR__5380;
wire      [7:0] n2228____DOLLAR__5384;
wire      [7:0] n2229____DOLLAR__5385;
wire            n222____DOLLAR__933;
wire      [7:0] n2230____DOLLAR__5386;
wire      [7:0] n2231____DOLLAR__5387;
wire      [7:0] n2232____DOLLAR__5388;
wire      [7:0] n2233____DOLLAR__5389;
wire      [7:0] n2234____DOLLAR__5390;
wire      [7:0] n2235____DOLLAR__5391;
wire      [7:0] n2236____DOLLAR__5392;
wire      [7:0] n2237____DOLLAR__5393;
wire      [7:0] n2238____DOLLAR__5394;
wire      [7:0] n2239____DOLLAR__5395;
wire            n223____DOLLAR__937;
wire      [7:0] n2240____DOLLAR__5396;
wire      [7:0] n2241____DOLLAR__5397;
wire      [7:0] n2242____DOLLAR__5398;
wire      [7:0] n2243____DOLLAR__5399;
wire      [7:0] n2244____DOLLAR__5400;
wire      [7:0] n2245____DOLLAR__5401;
wire      [7:0] n2246____DOLLAR__5402;
wire      [7:0] n2247____DOLLAR__5403;
wire      [7:0] n2248____DOLLAR__5404;
wire      [7:0] n2249____DOLLAR__5405;
wire            n224____DOLLAR__941;
wire      [7:0] n2250____DOLLAR__5406;
wire            n2251____DOLLAR__5407;
wire      [7:0] n2252____DOLLAR__5409;
wire     [15:0] n2253____DOLLAR__5411;
wire      [7:0] n2256____DOLLAR__5412;
wire      [2:0] n2257____DOLLAR__5414;
wire      [7:0] n2258____DOLLAR__5416;
wire      [7:0] n2259____DOLLAR__5418;
wire            n225____DOLLAR__945;
wire      [7:0] n2260____DOLLAR__5419;
wire      [7:0] n2261____DOLLAR__5420;
wire      [7:0] n2262____DOLLAR__5421;
wire      [7:0] n2265____DOLLAR__5422;
wire            n2266____DOLLAR__5426;
wire            n2267____DOLLAR__5430;
wire            n2268____DOLLAR__5432;
wire      [1:0] n2269____DOLLAR__5437;
wire            n226____DOLLAR__949;
wire      [4:0] n2270____DOLLAR__5445;
wire      [7:0] n2271____DOLLAR__5451;
wire      [7:0] n2274____DOLLAR__5453;
wire     [15:0] n2275____DOLLAR__5459;
wire      [7:0] n2278____DOLLAR__5461;
wire            n2279____DOLLAR__5465;
wire            n227____DOLLAR__953;
wire            n2280____DOLLAR__5469;
wire            n2281____DOLLAR__5471;
wire      [1:0] n2282____DOLLAR__5476;
wire      [4:0] n2283____DOLLAR__5484;
wire      [7:0] n2284____DOLLAR__5490;
wire      [7:0] n2287____DOLLAR__5492;
wire     [15:0] n2288____DOLLAR__5498;
wire            n228____DOLLAR__957;
wire      [7:0] n2291____DOLLAR__5500;
wire            n2292____DOLLAR__5504;
wire            n2293____DOLLAR__5508;
wire            n2294____DOLLAR__5510;
wire     [15:0] n2295____DOLLAR__5515;
wire      [7:0] n2298____DOLLAR__5517;
wire            n2299____DOLLAR__5521;
wire            n229____DOLLAR__961;
wire            n22____DOLLAR__133;
wire            n2300____DOLLAR__5525;
wire            n2301____DOLLAR__5529;
wire            n2302____DOLLAR__5533;
wire            n2303____DOLLAR__5537;
wire            n2304____DOLLAR__5541;
wire            n2305____DOLLAR__5545;
wire            n2306____DOLLAR__5549;
wire            n2307____DOLLAR__5553;
wire            n2308____DOLLAR__5557;
wire            n2309____DOLLAR__5561;
wire            n230____DOLLAR__965;
wire            n2310____DOLLAR__5565;
wire            n2311____DOLLAR__5569;
wire            n2312____DOLLAR__5573;
wire            n2313____DOLLAR__5577;
wire            n2314____DOLLAR__5581;
wire            n2315____DOLLAR__5585;
wire            n2316____DOLLAR__5589;
wire            n2317____DOLLAR__5593;
wire            n2318____DOLLAR__5597;
wire            n2319____DOLLAR__5601;
wire            n231____DOLLAR__969;
wire            n2320____DOLLAR__5605;
wire            n2321____DOLLAR__5609;
wire            n2322____DOLLAR__5613;
wire            n2323____DOLLAR__5617;
wire            n2324____DOLLAR__5621;
wire            n2325____DOLLAR__5625;
wire            n2326____DOLLAR__5629;
wire            n2327____DOLLAR__5633;
wire            n2328____DOLLAR__5637;
wire            n2329____DOLLAR__5641;
wire            n232____DOLLAR__973;
wire            n2330____DOLLAR__5645;
wire            n2331____DOLLAR__5649;
wire            n2332____DOLLAR__5653;
wire            n2333____DOLLAR__5657;
wire            n2334____DOLLAR__5661;
wire            n2335____DOLLAR__5665;
wire            n2336____DOLLAR__5669;
wire            n2337____DOLLAR__5673;
wire            n2338____DOLLAR__5677;
wire            n2339____DOLLAR__5681;
wire            n233____DOLLAR__977;
wire            n2340____DOLLAR__5685;
wire            n2341____DOLLAR__5689;
wire            n2342____DOLLAR__5693;
wire            n2343____DOLLAR__5697;
wire            n2344____DOLLAR__5701;
wire            n2345____DOLLAR__5705;
wire            n2346____DOLLAR__5709;
wire            n2347____DOLLAR__5713;
wire            n2348____DOLLAR__5717;
wire            n2349____DOLLAR__5721;
wire            n234____DOLLAR__981;
wire            n2350____DOLLAR__5725;
wire            n2351____DOLLAR__5729;
wire            n2352____DOLLAR__5733;
wire            n2353____DOLLAR__5737;
wire            n2354____DOLLAR__5741;
wire            n2355____DOLLAR__5745;
wire            n2356____DOLLAR__5749;
wire            n2357____DOLLAR__5753;
wire            n2358____DOLLAR__5757;
wire            n2359____DOLLAR__5761;
wire            n235____DOLLAR__985;
wire            n2360____DOLLAR__5765;
wire            n2361____DOLLAR__5769;
wire            n2362____DOLLAR__5773;
wire            n2363____DOLLAR__5777;
wire            n2364____DOLLAR__5781;
wire            n2365____DOLLAR__5785;
wire            n2366____DOLLAR__5789;
wire            n2367____DOLLAR__5793;
wire            n2368____DOLLAR__5797;
wire            n2369____DOLLAR__5801;
wire            n236____DOLLAR__989;
wire            n2370____DOLLAR__5805;
wire            n2371____DOLLAR__5809;
wire            n2372____DOLLAR__5813;
wire            n2373____DOLLAR__5817;
wire            n2374____DOLLAR__5821;
wire            n2375____DOLLAR__5825;
wire            n2376____DOLLAR__5829;
wire            n2377____DOLLAR__5833;
wire            n2378____DOLLAR__5837;
wire            n2379____DOLLAR__5841;
wire            n237____DOLLAR__993;
wire            n2380____DOLLAR__5845;
wire            n2381____DOLLAR__5849;
wire            n2382____DOLLAR__5853;
wire            n2383____DOLLAR__5857;
wire            n2384____DOLLAR__5861;
wire            n2385____DOLLAR__5865;
wire            n2386____DOLLAR__5869;
wire            n2387____DOLLAR__5873;
wire            n2388____DOLLAR__5877;
wire            n2389____DOLLAR__5881;
wire            n238____DOLLAR__995;
wire            n2390____DOLLAR__5885;
wire            n2391____DOLLAR__5889;
wire            n2392____DOLLAR__5893;
wire            n2393____DOLLAR__5897;
wire            n2394____DOLLAR__5901;
wire            n2395____DOLLAR__5905;
wire            n2396____DOLLAR__5909;
wire            n2397____DOLLAR__5913;
wire            n2398____DOLLAR__5917;
wire            n2399____DOLLAR__5921;
wire            n239____DOLLAR__996;
wire            n23____DOLLAR__137;
wire            n2400____DOLLAR__5925;
wire            n2401____DOLLAR__5929;
wire            n2402____DOLLAR__5933;
wire            n2403____DOLLAR__5937;
wire            n2404____DOLLAR__5941;
wire            n2405____DOLLAR__5945;
wire            n2406____DOLLAR__5949;
wire            n2407____DOLLAR__5953;
wire            n2408____DOLLAR__5957;
wire            n2409____DOLLAR__5961;
wire            n240____DOLLAR__997;
wire            n2410____DOLLAR__5965;
wire            n2411____DOLLAR__5969;
wire            n2412____DOLLAR__5973;
wire            n2413____DOLLAR__5977;
wire            n2414____DOLLAR__5981;
wire            n2415____DOLLAR__5985;
wire            n2416____DOLLAR__5989;
wire            n2417____DOLLAR__5993;
wire            n2418____DOLLAR__5997;
wire            n2419____DOLLAR__6001;
wire            n241____DOLLAR__998;
wire            n2420____DOLLAR__6005;
wire            n2421____DOLLAR__6009;
wire            n2422____DOLLAR__6013;
wire            n2423____DOLLAR__6017;
wire            n2424____DOLLAR__6021;
wire            n2425____DOLLAR__6025;
wire            n2426____DOLLAR__6029;
wire            n2427____DOLLAR__6033;
wire            n2428____DOLLAR__6037;
wire            n2429____DOLLAR__6041;
wire            n242____DOLLAR__999;
wire            n2430____DOLLAR__6045;
wire            n2431____DOLLAR__6049;
wire            n2432____DOLLAR__6053;
wire            n2433____DOLLAR__6057;
wire            n2434____DOLLAR__6061;
wire            n2435____DOLLAR__6065;
wire            n2436____DOLLAR__6069;
wire            n2437____DOLLAR__6073;
wire            n2438____DOLLAR__6077;
wire            n2439____DOLLAR__6081;
wire            n243____DOLLAR__1000;
wire            n2440____DOLLAR__6085;
wire            n2441____DOLLAR__6089;
wire            n2442____DOLLAR__6093;
wire            n2443____DOLLAR__6097;
wire            n2444____DOLLAR__6101;
wire            n2445____DOLLAR__6105;
wire            n2446____DOLLAR__6109;
wire            n2447____DOLLAR__6113;
wire            n2448____DOLLAR__6117;
wire            n2449____DOLLAR__6121;
wire            n244____DOLLAR__1001;
wire            n2450____DOLLAR__6125;
wire            n2451____DOLLAR__6129;
wire            n2452____DOLLAR__6133;
wire            n2453____DOLLAR__6137;
wire            n2454____DOLLAR__6141;
wire            n2455____DOLLAR__6145;
wire            n2456____DOLLAR__6149;
wire            n2457____DOLLAR__6153;
wire            n2458____DOLLAR__6157;
wire            n2459____DOLLAR__6161;
wire            n245____DOLLAR__1002;
wire            n2460____DOLLAR__6165;
wire            n2461____DOLLAR__6169;
wire            n2462____DOLLAR__6173;
wire            n2463____DOLLAR__6177;
wire            n2464____DOLLAR__6181;
wire            n2465____DOLLAR__6185;
wire            n2466____DOLLAR__6189;
wire            n2467____DOLLAR__6193;
wire            n2468____DOLLAR__6197;
wire            n2469____DOLLAR__6201;
wire            n246____DOLLAR__1003;
wire            n2470____DOLLAR__6205;
wire            n2471____DOLLAR__6209;
wire            n2472____DOLLAR__6213;
wire            n2473____DOLLAR__6217;
wire            n2474____DOLLAR__6221;
wire            n2475____DOLLAR__6225;
wire            n2476____DOLLAR__6229;
wire            n2477____DOLLAR__6233;
wire            n2478____DOLLAR__6237;
wire            n2479____DOLLAR__6241;
wire            n247____DOLLAR__1004;
wire            n2480____DOLLAR__6245;
wire            n2481____DOLLAR__6249;
wire            n2482____DOLLAR__6253;
wire            n2483____DOLLAR__6257;
wire            n2484____DOLLAR__6261;
wire            n2485____DOLLAR__6265;
wire            n2486____DOLLAR__6269;
wire            n2487____DOLLAR__6273;
wire            n2488____DOLLAR__6277;
wire            n2489____DOLLAR__6281;
wire            n248____DOLLAR__1005;
wire            n2490____DOLLAR__6285;
wire            n2491____DOLLAR__6289;
wire            n2492____DOLLAR__6293;
wire            n2493____DOLLAR__6297;
wire            n2494____DOLLAR__6301;
wire            n2495____DOLLAR__6305;
wire            n2496____DOLLAR__6309;
wire            n2497____DOLLAR__6313;
wire            n2498____DOLLAR__6317;
wire            n2499____DOLLAR__6321;
wire            n249____DOLLAR__1006;
wire            n24____DOLLAR__141;
wire            n2500____DOLLAR__6325;
wire            n2501____DOLLAR__6329;
wire            n2502____DOLLAR__6333;
wire            n2503____DOLLAR__6337;
wire            n2504____DOLLAR__6341;
wire            n2505____DOLLAR__6345;
wire            n2506____DOLLAR__6349;
wire            n2507____DOLLAR__6353;
wire            n2508____DOLLAR__6357;
wire            n2509____DOLLAR__6361;
wire            n250____DOLLAR__1007;
wire            n2510____DOLLAR__6365;
wire            n2511____DOLLAR__6369;
wire            n2512____DOLLAR__6373;
wire            n2513____DOLLAR__6377;
wire            n2514____DOLLAR__6381;
wire            n2515____DOLLAR__6385;
wire            n2516____DOLLAR__6389;
wire            n2517____DOLLAR__6393;
wire            n2518____DOLLAR__6397;
wire            n2519____DOLLAR__6401;
wire            n251____DOLLAR__1008;
wire            n2520____DOLLAR__6405;
wire            n2521____DOLLAR__6409;
wire            n2522____DOLLAR__6413;
wire            n2523____DOLLAR__6417;
wire            n2524____DOLLAR__6421;
wire            n2525____DOLLAR__6425;
wire            n2526____DOLLAR__6429;
wire            n2527____DOLLAR__6433;
wire            n2528____DOLLAR__6437;
wire            n2529____DOLLAR__6441;
wire            n252____DOLLAR__1009;
wire            n2530____DOLLAR__6445;
wire            n2531____DOLLAR__6449;
wire            n2532____DOLLAR__6453;
wire            n2533____DOLLAR__6457;
wire            n2534____DOLLAR__6461;
wire            n2535____DOLLAR__6465;
wire            n2536____DOLLAR__6469;
wire            n2537____DOLLAR__6473;
wire            n2538____DOLLAR__6477;
wire            n2539____DOLLAR__6481;
wire            n253____DOLLAR__1010;
wire            n2540____DOLLAR__6485;
wire            n2541____DOLLAR__6489;
wire            n2542____DOLLAR__6493;
wire            n2543____DOLLAR__6497;
wire            n2544____DOLLAR__6501;
wire            n2545____DOLLAR__6505;
wire            n2546____DOLLAR__6509;
wire            n2547____DOLLAR__6513;
wire            n2548____DOLLAR__6517;
wire            n2549____DOLLAR__6519;
wire            n254____DOLLAR__1011;
wire            n2550____DOLLAR__6520;
wire            n2551____DOLLAR__6521;
wire            n2552____DOLLAR__6522;
wire            n2553____DOLLAR__6523;
wire            n2554____DOLLAR__6524;
wire            n2555____DOLLAR__6525;
wire            n2556____DOLLAR__6526;
wire            n2557____DOLLAR__6527;
wire            n2558____DOLLAR__6528;
wire            n2559____DOLLAR__6529;
wire            n255____DOLLAR__1012;
wire            n2560____DOLLAR__6530;
wire            n2561____DOLLAR__6531;
wire            n2562____DOLLAR__6532;
wire            n2563____DOLLAR__6533;
wire            n2564____DOLLAR__6534;
wire            n2565____DOLLAR__6535;
wire            n2566____DOLLAR__6536;
wire            n2567____DOLLAR__6537;
wire            n2568____DOLLAR__6538;
wire            n2569____DOLLAR__6539;
wire            n256____DOLLAR__1013;
wire            n2570____DOLLAR__6540;
wire            n2571____DOLLAR__6541;
wire            n2572____DOLLAR__6542;
wire            n2573____DOLLAR__6543;
wire            n2574____DOLLAR__6544;
wire            n2575____DOLLAR__6545;
wire            n2576____DOLLAR__6546;
wire            n2577____DOLLAR__6547;
wire            n2578____DOLLAR__6548;
wire            n2579____DOLLAR__6549;
wire            n257____DOLLAR__1014;
wire            n2580____DOLLAR__6550;
wire            n2581____DOLLAR__6551;
wire            n2582____DOLLAR__6552;
wire            n2583____DOLLAR__6553;
wire            n2584____DOLLAR__6554;
wire            n2585____DOLLAR__6555;
wire            n2586____DOLLAR__6556;
wire            n2587____DOLLAR__6557;
wire            n2588____DOLLAR__6558;
wire            n2589____DOLLAR__6559;
wire            n258____DOLLAR__1015;
wire            n2590____DOLLAR__6560;
wire            n2591____DOLLAR__6561;
wire            n2592____DOLLAR__6562;
wire            n2593____DOLLAR__6563;
wire            n2594____DOLLAR__6564;
wire            n2595____DOLLAR__6565;
wire            n2596____DOLLAR__6566;
wire            n2597____DOLLAR__6567;
wire            n2598____DOLLAR__6568;
wire            n2599____DOLLAR__6569;
wire            n259____DOLLAR__1016;
wire            n25____DOLLAR__145;
wire            n2600____DOLLAR__6570;
wire            n2601____DOLLAR__6571;
wire            n2602____DOLLAR__6572;
wire            n2603____DOLLAR__6573;
wire            n2604____DOLLAR__6574;
wire            n2605____DOLLAR__6575;
wire            n2606____DOLLAR__6576;
wire            n2607____DOLLAR__6577;
wire            n2608____DOLLAR__6578;
wire            n2609____DOLLAR__6579;
wire            n260____DOLLAR__1017;
wire            n2610____DOLLAR__6580;
wire            n2611____DOLLAR__6581;
wire            n2612____DOLLAR__6582;
wire            n2613____DOLLAR__6583;
wire            n2614____DOLLAR__6584;
wire            n2615____DOLLAR__6585;
wire            n2616____DOLLAR__6586;
wire            n2617____DOLLAR__6587;
wire            n2618____DOLLAR__6588;
wire            n2619____DOLLAR__6589;
wire            n261____DOLLAR__1018;
wire            n2620____DOLLAR__6590;
wire            n2621____DOLLAR__6591;
wire            n2622____DOLLAR__6592;
wire            n2623____DOLLAR__6593;
wire            n2624____DOLLAR__6594;
wire            n2625____DOLLAR__6595;
wire            n2626____DOLLAR__6596;
wire            n2627____DOLLAR__6597;
wire            n2628____DOLLAR__6598;
wire            n2629____DOLLAR__6599;
wire            n262____DOLLAR__1019;
wire            n2630____DOLLAR__6600;
wire            n2631____DOLLAR__6601;
wire            n2632____DOLLAR__6602;
wire            n2633____DOLLAR__6603;
wire            n2634____DOLLAR__6604;
wire            n2635____DOLLAR__6605;
wire            n2636____DOLLAR__6606;
wire            n2637____DOLLAR__6607;
wire            n2638____DOLLAR__6608;
wire            n2639____DOLLAR__6609;
wire            n263____DOLLAR__1020;
wire            n2640____DOLLAR__6610;
wire            n2641____DOLLAR__6611;
wire            n2642____DOLLAR__6612;
wire            n2643____DOLLAR__6613;
wire            n2644____DOLLAR__6614;
wire            n2645____DOLLAR__6615;
wire            n2646____DOLLAR__6616;
wire            n2647____DOLLAR__6617;
wire            n2648____DOLLAR__6618;
wire            n2649____DOLLAR__6619;
wire            n264____DOLLAR__1021;
wire            n2650____DOLLAR__6620;
wire            n2651____DOLLAR__6621;
wire            n2652____DOLLAR__6622;
wire            n2653____DOLLAR__6623;
wire            n2654____DOLLAR__6624;
wire            n2655____DOLLAR__6625;
wire            n2656____DOLLAR__6626;
wire            n2657____DOLLAR__6627;
wire            n2658____DOLLAR__6628;
wire            n2659____DOLLAR__6629;
wire            n265____DOLLAR__1022;
wire            n2660____DOLLAR__6630;
wire            n2661____DOLLAR__6631;
wire            n2662____DOLLAR__6632;
wire            n2663____DOLLAR__6633;
wire            n2664____DOLLAR__6634;
wire            n2665____DOLLAR__6635;
wire            n2666____DOLLAR__6636;
wire            n2667____DOLLAR__6637;
wire            n2668____DOLLAR__6638;
wire            n2669____DOLLAR__6639;
wire            n266____DOLLAR__1023;
wire            n2670____DOLLAR__6640;
wire            n2671____DOLLAR__6641;
wire            n2672____DOLLAR__6642;
wire            n2673____DOLLAR__6643;
wire            n2674____DOLLAR__6644;
wire            n2675____DOLLAR__6645;
wire            n2676____DOLLAR__6646;
wire            n2677____DOLLAR__6647;
wire            n2678____DOLLAR__6648;
wire            n2679____DOLLAR__6649;
wire            n267____DOLLAR__1024;
wire            n2680____DOLLAR__6650;
wire            n2681____DOLLAR__6651;
wire            n2682____DOLLAR__6652;
wire            n2683____DOLLAR__6653;
wire            n2684____DOLLAR__6654;
wire            n2685____DOLLAR__6655;
wire            n2686____DOLLAR__6656;
wire            n2687____DOLLAR__6657;
wire            n2688____DOLLAR__6658;
wire            n2689____DOLLAR__6659;
wire            n268____DOLLAR__1025;
wire            n2690____DOLLAR__6660;
wire            n2691____DOLLAR__6661;
wire            n2692____DOLLAR__6662;
wire            n2693____DOLLAR__6663;
wire            n2694____DOLLAR__6664;
wire            n2695____DOLLAR__6665;
wire            n2696____DOLLAR__6666;
wire            n2697____DOLLAR__6667;
wire            n2698____DOLLAR__6668;
wire            n2699____DOLLAR__6669;
wire            n269____DOLLAR__1026;
wire            n26____DOLLAR__149;
wire            n2700____DOLLAR__6670;
wire            n2701____DOLLAR__6671;
wire            n2702____DOLLAR__6672;
wire            n2703____DOLLAR__6673;
wire            n2704____DOLLAR__6674;
wire            n2705____DOLLAR__6675;
wire            n2706____DOLLAR__6676;
wire            n2707____DOLLAR__6677;
wire            n2708____DOLLAR__6678;
wire            n2709____DOLLAR__6679;
wire            n270____DOLLAR__1027;
wire            n2710____DOLLAR__6680;
wire            n2711____DOLLAR__6681;
wire            n2712____DOLLAR__6682;
wire            n2713____DOLLAR__6683;
wire            n2714____DOLLAR__6684;
wire            n2715____DOLLAR__6685;
wire            n2716____DOLLAR__6686;
wire            n2717____DOLLAR__6687;
wire            n2718____DOLLAR__6688;
wire            n2719____DOLLAR__6689;
wire            n271____DOLLAR__1028;
wire            n2720____DOLLAR__6690;
wire            n2721____DOLLAR__6691;
wire            n2722____DOLLAR__6692;
wire            n2723____DOLLAR__6693;
wire            n2724____DOLLAR__6694;
wire            n2725____DOLLAR__6695;
wire            n2726____DOLLAR__6696;
wire            n2727____DOLLAR__6697;
wire            n2728____DOLLAR__6698;
wire            n2729____DOLLAR__6699;
wire            n272____DOLLAR__1029;
wire            n2730____DOLLAR__6700;
wire            n2731____DOLLAR__6701;
wire            n2732____DOLLAR__6702;
wire            n2733____DOLLAR__6703;
wire            n2734____DOLLAR__6704;
wire            n2735____DOLLAR__6705;
wire            n2736____DOLLAR__6706;
wire            n2737____DOLLAR__6707;
wire            n2738____DOLLAR__6708;
wire            n2739____DOLLAR__6709;
wire            n273____DOLLAR__1030;
wire            n2740____DOLLAR__6710;
wire            n2741____DOLLAR__6711;
wire            n2742____DOLLAR__6712;
wire            n2743____DOLLAR__6713;
wire            n2744____DOLLAR__6714;
wire            n2745____DOLLAR__6715;
wire            n2746____DOLLAR__6716;
wire            n2747____DOLLAR__6717;
wire            n2748____DOLLAR__6718;
wire            n2749____DOLLAR__6719;
wire            n274____DOLLAR__1031;
wire            n2750____DOLLAR__6720;
wire            n2751____DOLLAR__6721;
wire            n2752____DOLLAR__6722;
wire            n2753____DOLLAR__6723;
wire            n2754____DOLLAR__6724;
wire            n2755____DOLLAR__6725;
wire            n2756____DOLLAR__6726;
wire            n2757____DOLLAR__6727;
wire            n2758____DOLLAR__6728;
wire            n2759____DOLLAR__6729;
wire            n275____DOLLAR__1032;
wire            n2760____DOLLAR__6730;
wire            n2761____DOLLAR__6731;
wire            n2762____DOLLAR__6732;
wire            n2763____DOLLAR__6733;
wire            n2764____DOLLAR__6734;
wire            n2765____DOLLAR__6735;
wire            n2766____DOLLAR__6736;
wire            n2767____DOLLAR__6737;
wire            n2768____DOLLAR__6738;
wire            n2769____DOLLAR__6739;
wire            n276____DOLLAR__1033;
wire            n2770____DOLLAR__6740;
wire            n2771____DOLLAR__6741;
wire            n2772____DOLLAR__6742;
wire            n2773____DOLLAR__6743;
wire            n2774____DOLLAR__6744;
wire            n2775____DOLLAR__6745;
wire            n2776____DOLLAR__6746;
wire            n2777____DOLLAR__6747;
wire            n2778____DOLLAR__6748;
wire            n2779____DOLLAR__6749;
wire            n277____DOLLAR__1034;
wire            n2780____DOLLAR__6750;
wire            n2781____DOLLAR__6751;
wire            n2782____DOLLAR__6752;
wire            n2783____DOLLAR__6753;
wire            n2784____DOLLAR__6754;
wire            n2785____DOLLAR__6755;
wire            n2786____DOLLAR__6756;
wire            n2787____DOLLAR__6757;
wire            n2788____DOLLAR__6758;
wire            n2789____DOLLAR__6759;
wire            n278____DOLLAR__1035;
wire            n2790____DOLLAR__6760;
wire            n2791____DOLLAR__6761;
wire            n2792____DOLLAR__6762;
wire            n2793____DOLLAR__6763;
wire            n2794____DOLLAR__6764;
wire            n2795____DOLLAR__6765;
wire            n2796____DOLLAR__6766;
wire            n2797____DOLLAR__6767;
wire     [15:0] n2798____DOLLAR__6770;
wire     [15:0] n2799____DOLLAR__6771;
wire            n279____DOLLAR__1036;
wire            n27____DOLLAR__153;
wire     [15:0] n2800____DOLLAR__6772;
wire     [15:0] n2801____DOLLAR__6773;
wire      [7:0] n2804____DOLLAR__6774;
wire            n2805____DOLLAR__6778;
wire            n2806____DOLLAR__6782;
wire            n2807____DOLLAR__6786;
wire            n2808____DOLLAR__6788;
wire            n2809____DOLLAR__6789;
wire            n280____DOLLAR__1037;
wire      [7:0] n2812____DOLLAR__6790;
wire            n2813____DOLLAR__6794;
wire            n2814____DOLLAR__6798;
wire            n2815____DOLLAR__6802;
wire            n2816____DOLLAR__6806;
wire            n2817____DOLLAR__6810;
wire            n2818____DOLLAR__6814;
wire            n2819____DOLLAR__6818;
wire            n281____DOLLAR__1038;
wire            n2820____DOLLAR__6822;
wire            n2821____DOLLAR__6826;
wire            n2822____DOLLAR__6830;
wire            n2823____DOLLAR__6834;
wire            n2824____DOLLAR__6838;
wire            n2825____DOLLAR__6842;
wire            n2826____DOLLAR__6846;
wire            n2827____DOLLAR__6850;
wire            n2828____DOLLAR__6854;
wire            n2829____DOLLAR__6858;
wire            n282____DOLLAR__1039;
wire            n2830____DOLLAR__6862;
wire            n2831____DOLLAR__6866;
wire            n2832____DOLLAR__6870;
wire            n2833____DOLLAR__6874;
wire            n2834____DOLLAR__6878;
wire            n2835____DOLLAR__6882;
wire            n2836____DOLLAR__6886;
wire            n2837____DOLLAR__6890;
wire            n2838____DOLLAR__6894;
wire            n2839____DOLLAR__6898;
wire            n283____DOLLAR__1040;
wire            n2840____DOLLAR__6902;
wire            n2841____DOLLAR__6906;
wire            n2842____DOLLAR__6910;
wire            n2843____DOLLAR__6914;
wire            n2844____DOLLAR__6918;
wire            n2845____DOLLAR__6922;
wire            n2846____DOLLAR__6926;
wire            n2847____DOLLAR__6930;
wire            n2848____DOLLAR__6934;
wire            n2849____DOLLAR__6938;
wire            n284____DOLLAR__1041;
wire            n2850____DOLLAR__6942;
wire            n2851____DOLLAR__6946;
wire            n2852____DOLLAR__6950;
wire            n2853____DOLLAR__6954;
wire            n2854____DOLLAR__6958;
wire            n2855____DOLLAR__6962;
wire            n2856____DOLLAR__6966;
wire            n2857____DOLLAR__6970;
wire            n2858____DOLLAR__6974;
wire            n2859____DOLLAR__6978;
wire            n285____DOLLAR__1042;
wire            n2860____DOLLAR__6982;
wire            n2861____DOLLAR__6986;
wire            n2862____DOLLAR__6990;
wire            n2863____DOLLAR__6994;
wire            n2864____DOLLAR__6998;
wire            n2865____DOLLAR__7002;
wire            n2866____DOLLAR__7006;
wire            n2867____DOLLAR__7010;
wire            n2868____DOLLAR__7014;
wire            n2869____DOLLAR__7018;
wire            n286____DOLLAR__1043;
wire            n2870____DOLLAR__7022;
wire            n2871____DOLLAR__7026;
wire            n2872____DOLLAR__7030;
wire            n2873____DOLLAR__7034;
wire            n2874____DOLLAR__7038;
wire            n2875____DOLLAR__7042;
wire            n2876____DOLLAR__7046;
wire            n2877____DOLLAR__7050;
wire            n2878____DOLLAR__7054;
wire            n2879____DOLLAR__7058;
wire            n287____DOLLAR__1044;
wire            n2880____DOLLAR__7062;
wire            n2881____DOLLAR__7066;
wire            n2882____DOLLAR__7070;
wire            n2883____DOLLAR__7074;
wire            n2884____DOLLAR__7078;
wire            n2885____DOLLAR__7082;
wire            n2886____DOLLAR__7086;
wire            n2887____DOLLAR__7090;
wire            n2888____DOLLAR__7094;
wire            n2889____DOLLAR__7098;
wire            n288____DOLLAR__1045;
wire            n2890____DOLLAR__7102;
wire            n2891____DOLLAR__7106;
wire            n2892____DOLLAR__7110;
wire            n2893____DOLLAR__7114;
wire            n2894____DOLLAR__7118;
wire            n2895____DOLLAR__7122;
wire            n2896____DOLLAR__7126;
wire            n2897____DOLLAR__7130;
wire            n2898____DOLLAR__7134;
wire            n2899____DOLLAR__7138;
wire            n289____DOLLAR__1046;
wire            n28____DOLLAR__157;
wire            n2900____DOLLAR__7142;
wire            n2901____DOLLAR__7146;
wire            n2902____DOLLAR__7150;
wire            n2903____DOLLAR__7154;
wire            n2904____DOLLAR__7158;
wire            n2905____DOLLAR__7162;
wire            n2906____DOLLAR__7166;
wire            n2907____DOLLAR__7170;
wire            n2908____DOLLAR__7174;
wire            n2909____DOLLAR__7178;
wire            n290____DOLLAR__1047;
wire            n2910____DOLLAR__7182;
wire            n2911____DOLLAR__7186;
wire            n2912____DOLLAR__7190;
wire            n2913____DOLLAR__7194;
wire            n2914____DOLLAR__7198;
wire            n2915____DOLLAR__7202;
wire            n2916____DOLLAR__7206;
wire            n2917____DOLLAR__7210;
wire            n2918____DOLLAR__7214;
wire            n2919____DOLLAR__7218;
wire            n291____DOLLAR__1048;
wire            n2920____DOLLAR__7222;
wire            n2921____DOLLAR__7226;
wire            n2922____DOLLAR__7230;
wire            n2923____DOLLAR__7234;
wire            n2924____DOLLAR__7238;
wire            n2925____DOLLAR__7242;
wire            n2926____DOLLAR__7246;
wire            n2927____DOLLAR__7250;
wire            n2928____DOLLAR__7254;
wire            n2929____DOLLAR__7258;
wire            n292____DOLLAR__1049;
wire            n2930____DOLLAR__7262;
wire            n2931____DOLLAR__7266;
wire            n2932____DOLLAR__7270;
wire            n2933____DOLLAR__7274;
wire            n2934____DOLLAR__7278;
wire            n2935____DOLLAR__7282;
wire            n2936____DOLLAR__7286;
wire            n2937____DOLLAR__7290;
wire            n2938____DOLLAR__7294;
wire            n2939____DOLLAR__7298;
wire            n293____DOLLAR__1050;
wire            n2940____DOLLAR__7302;
wire            n2941____DOLLAR__7306;
wire            n2942____DOLLAR__7310;
wire            n2943____DOLLAR__7314;
wire            n2944____DOLLAR__7318;
wire            n2945____DOLLAR__7322;
wire            n2946____DOLLAR__7326;
wire            n2947____DOLLAR__7330;
wire            n2948____DOLLAR__7334;
wire            n2949____DOLLAR__7338;
wire            n294____DOLLAR__1051;
wire            n2950____DOLLAR__7342;
wire            n2951____DOLLAR__7346;
wire            n2952____DOLLAR__7350;
wire            n2953____DOLLAR__7354;
wire            n2954____DOLLAR__7358;
wire            n2955____DOLLAR__7362;
wire            n2956____DOLLAR__7366;
wire            n2957____DOLLAR__7370;
wire            n2958____DOLLAR__7374;
wire            n2959____DOLLAR__7378;
wire            n295____DOLLAR__1052;
wire            n2960____DOLLAR__7382;
wire            n2961____DOLLAR__7386;
wire            n2962____DOLLAR__7390;
wire            n2963____DOLLAR__7394;
wire            n2964____DOLLAR__7398;
wire            n2965____DOLLAR__7402;
wire            n2966____DOLLAR__7406;
wire            n2967____DOLLAR__7410;
wire            n2968____DOLLAR__7414;
wire            n2969____DOLLAR__7418;
wire            n296____DOLLAR__1053;
wire            n2970____DOLLAR__7422;
wire            n2971____DOLLAR__7426;
wire            n2972____DOLLAR__7430;
wire            n2973____DOLLAR__7434;
wire            n2974____DOLLAR__7438;
wire            n2975____DOLLAR__7442;
wire            n2976____DOLLAR__7446;
wire            n2977____DOLLAR__7450;
wire            n2978____DOLLAR__7454;
wire            n2979____DOLLAR__7458;
wire            n297____DOLLAR__1054;
wire            n2980____DOLLAR__7462;
wire            n2981____DOLLAR__7466;
wire            n2982____DOLLAR__7470;
wire            n2983____DOLLAR__7474;
wire            n2984____DOLLAR__7478;
wire            n2985____DOLLAR__7482;
wire            n2986____DOLLAR__7486;
wire            n2987____DOLLAR__7490;
wire            n2988____DOLLAR__7494;
wire            n2989____DOLLAR__7498;
wire            n298____DOLLAR__1055;
wire            n2990____DOLLAR__7502;
wire            n2991____DOLLAR__7506;
wire            n2992____DOLLAR__7510;
wire            n2993____DOLLAR__7514;
wire            n2994____DOLLAR__7518;
wire            n2995____DOLLAR__7522;
wire            n2996____DOLLAR__7526;
wire            n2997____DOLLAR__7530;
wire            n2998____DOLLAR__7534;
wire            n2999____DOLLAR__7538;
wire            n299____DOLLAR__1056;
wire            n29____DOLLAR__161;
wire      [7:0] n2____DOLLAR__67;
wire            n3000____DOLLAR__7542;
wire            n3001____DOLLAR__7546;
wire            n3002____DOLLAR__7550;
wire            n3003____DOLLAR__7554;
wire            n3004____DOLLAR__7558;
wire            n3005____DOLLAR__7562;
wire            n3006____DOLLAR__7566;
wire            n3007____DOLLAR__7570;
wire            n3008____DOLLAR__7574;
wire            n3009____DOLLAR__7578;
wire            n300____DOLLAR__1057;
wire            n3010____DOLLAR__7582;
wire            n3011____DOLLAR__7586;
wire            n3012____DOLLAR__7590;
wire            n3013____DOLLAR__7594;
wire            n3014____DOLLAR__7598;
wire            n3015____DOLLAR__7602;
wire            n3016____DOLLAR__7606;
wire            n3017____DOLLAR__7610;
wire            n3018____DOLLAR__7614;
wire            n3019____DOLLAR__7618;
wire            n301____DOLLAR__1058;
wire            n3020____DOLLAR__7622;
wire            n3021____DOLLAR__7626;
wire            n3022____DOLLAR__7630;
wire            n3023____DOLLAR__7634;
wire            n3024____DOLLAR__7638;
wire            n3025____DOLLAR__7642;
wire            n3026____DOLLAR__7646;
wire            n3027____DOLLAR__7650;
wire            n3028____DOLLAR__7654;
wire            n3029____DOLLAR__7658;
wire            n302____DOLLAR__1059;
wire            n3030____DOLLAR__7662;
wire            n3031____DOLLAR__7666;
wire            n3032____DOLLAR__7670;
wire            n3033____DOLLAR__7674;
wire            n3034____DOLLAR__7678;
wire            n3035____DOLLAR__7682;
wire            n3036____DOLLAR__7686;
wire            n3037____DOLLAR__7690;
wire            n3038____DOLLAR__7694;
wire            n3039____DOLLAR__7698;
wire            n303____DOLLAR__1060;
wire            n3040____DOLLAR__7702;
wire            n3041____DOLLAR__7706;
wire            n3042____DOLLAR__7710;
wire            n3043____DOLLAR__7714;
wire            n3044____DOLLAR__7718;
wire            n3045____DOLLAR__7722;
wire            n3046____DOLLAR__7726;
wire            n3047____DOLLAR__7730;
wire            n3048____DOLLAR__7734;
wire            n3049____DOLLAR__7738;
wire            n304____DOLLAR__1061;
wire            n3050____DOLLAR__7742;
wire            n3051____DOLLAR__7746;
wire            n3052____DOLLAR__7750;
wire            n3053____DOLLAR__7754;
wire            n3054____DOLLAR__7758;
wire            n3055____DOLLAR__7762;
wire            n3056____DOLLAR__7766;
wire            n3057____DOLLAR__7770;
wire            n3058____DOLLAR__7774;
wire            n3059____DOLLAR__7778;
wire            n305____DOLLAR__1062;
wire            n3060____DOLLAR__7782;
wire            n3061____DOLLAR__7786;
wire            n3062____DOLLAR__7790;
wire            n3063____DOLLAR__7794;
wire            n3064____DOLLAR__7798;
wire            n3065____DOLLAR__7800;
wire            n3066____DOLLAR__7802;
wire            n3067____DOLLAR__7803;
wire            n3068____DOLLAR__7804;
wire            n3069____DOLLAR__7805;
wire            n306____DOLLAR__1063;
wire            n3070____DOLLAR__7806;
wire            n3071____DOLLAR__7807;
wire            n3072____DOLLAR__7808;
wire            n3073____DOLLAR__7809;
wire            n3074____DOLLAR__7810;
wire            n3075____DOLLAR__7811;
wire            n3076____DOLLAR__7812;
wire            n3077____DOLLAR__7813;
wire            n3078____DOLLAR__7814;
wire            n3079____DOLLAR__7815;
wire            n307____DOLLAR__1064;
wire            n3080____DOLLAR__7816;
wire            n3081____DOLLAR__7817;
wire            n3082____DOLLAR__7818;
wire            n3083____DOLLAR__7819;
wire            n3084____DOLLAR__7820;
wire            n3085____DOLLAR__7821;
wire            n3086____DOLLAR__7822;
wire            n3087____DOLLAR__7823;
wire            n3088____DOLLAR__7824;
wire            n3089____DOLLAR__7825;
wire            n308____DOLLAR__1065;
wire            n3090____DOLLAR__7826;
wire            n3091____DOLLAR__7827;
wire            n3092____DOLLAR__7828;
wire            n3093____DOLLAR__7829;
wire            n3094____DOLLAR__7830;
wire            n3095____DOLLAR__7831;
wire            n3096____DOLLAR__7832;
wire            n3097____DOLLAR__7833;
wire            n3098____DOLLAR__7834;
wire            n3099____DOLLAR__7835;
wire            n309____DOLLAR__1066;
wire            n30____DOLLAR__165;
wire            n3100____DOLLAR__7836;
wire            n3101____DOLLAR__7837;
wire            n3102____DOLLAR__7838;
wire            n3103____DOLLAR__7839;
wire            n3104____DOLLAR__7840;
wire            n3105____DOLLAR__7841;
wire            n3106____DOLLAR__7842;
wire            n3107____DOLLAR__7843;
wire            n3108____DOLLAR__7844;
wire            n3109____DOLLAR__7845;
wire            n310____DOLLAR__1067;
wire            n3110____DOLLAR__7846;
wire            n3111____DOLLAR__7847;
wire            n3112____DOLLAR__7848;
wire            n3113____DOLLAR__7849;
wire            n3114____DOLLAR__7850;
wire            n3115____DOLLAR__7851;
wire            n3116____DOLLAR__7852;
wire            n3117____DOLLAR__7853;
wire            n3118____DOLLAR__7854;
wire            n3119____DOLLAR__7855;
wire            n311____DOLLAR__1068;
wire            n3120____DOLLAR__7856;
wire            n3121____DOLLAR__7857;
wire            n3122____DOLLAR__7858;
wire            n3123____DOLLAR__7859;
wire            n3124____DOLLAR__7860;
wire            n3125____DOLLAR__7861;
wire            n3126____DOLLAR__7862;
wire            n3127____DOLLAR__7863;
wire            n3128____DOLLAR__7864;
wire            n3129____DOLLAR__7865;
wire            n312____DOLLAR__1069;
wire            n3130____DOLLAR__7866;
wire            n3131____DOLLAR__7867;
wire            n3132____DOLLAR__7868;
wire            n3133____DOLLAR__7869;
wire            n3134____DOLLAR__7870;
wire            n3135____DOLLAR__7871;
wire            n3136____DOLLAR__7872;
wire            n3137____DOLLAR__7873;
wire            n3138____DOLLAR__7874;
wire            n3139____DOLLAR__7875;
wire            n313____DOLLAR__1070;
wire            n3140____DOLLAR__7876;
wire            n3141____DOLLAR__7877;
wire            n3142____DOLLAR__7878;
wire            n3143____DOLLAR__7879;
wire            n3144____DOLLAR__7880;
wire            n3145____DOLLAR__7881;
wire            n3146____DOLLAR__7882;
wire            n3147____DOLLAR__7883;
wire            n3148____DOLLAR__7884;
wire            n3149____DOLLAR__7885;
wire            n314____DOLLAR__1071;
wire            n3150____DOLLAR__7886;
wire            n3151____DOLLAR__7887;
wire            n3152____DOLLAR__7888;
wire            n3153____DOLLAR__7889;
wire            n3154____DOLLAR__7890;
wire            n3155____DOLLAR__7891;
wire            n3156____DOLLAR__7892;
wire            n3157____DOLLAR__7893;
wire            n3158____DOLLAR__7894;
wire            n3159____DOLLAR__7895;
wire            n315____DOLLAR__1072;
wire            n3160____DOLLAR__7896;
wire            n3161____DOLLAR__7897;
wire            n3162____DOLLAR__7898;
wire            n3163____DOLLAR__7899;
wire            n3164____DOLLAR__7900;
wire            n3165____DOLLAR__7901;
wire            n3166____DOLLAR__7902;
wire            n3167____DOLLAR__7903;
wire            n3168____DOLLAR__7904;
wire            n3169____DOLLAR__7905;
wire            n316____DOLLAR__1073;
wire            n3170____DOLLAR__7906;
wire            n3171____DOLLAR__7907;
wire            n3172____DOLLAR__7908;
wire            n3173____DOLLAR__7909;
wire            n3174____DOLLAR__7910;
wire            n3175____DOLLAR__7911;
wire            n3176____DOLLAR__7912;
wire            n3177____DOLLAR__7913;
wire            n3178____DOLLAR__7914;
wire            n3179____DOLLAR__7915;
wire            n317____DOLLAR__1074;
wire            n3180____DOLLAR__7916;
wire            n3181____DOLLAR__7917;
wire            n3182____DOLLAR__7918;
wire            n3183____DOLLAR__7919;
wire            n3184____DOLLAR__7920;
wire            n3185____DOLLAR__7921;
wire            n3186____DOLLAR__7922;
wire            n3187____DOLLAR__7923;
wire            n3188____DOLLAR__7924;
wire            n3189____DOLLAR__7925;
wire            n318____DOLLAR__1075;
wire            n3190____DOLLAR__7926;
wire            n3191____DOLLAR__7927;
wire            n3192____DOLLAR__7928;
wire            n3193____DOLLAR__7929;
wire            n3194____DOLLAR__7930;
wire            n3195____DOLLAR__7931;
wire            n3196____DOLLAR__7932;
wire            n3197____DOLLAR__7933;
wire            n3198____DOLLAR__7934;
wire            n3199____DOLLAR__7935;
wire            n319____DOLLAR__1076;
wire            n31____DOLLAR__169;
wire            n3200____DOLLAR__7936;
wire            n3201____DOLLAR__7937;
wire            n3202____DOLLAR__7938;
wire            n3203____DOLLAR__7939;
wire            n3204____DOLLAR__7940;
wire            n3205____DOLLAR__7941;
wire            n3206____DOLLAR__7942;
wire            n3207____DOLLAR__7943;
wire            n3208____DOLLAR__7944;
wire            n3209____DOLLAR__7945;
wire            n320____DOLLAR__1077;
wire            n3210____DOLLAR__7946;
wire            n3211____DOLLAR__7947;
wire            n3212____DOLLAR__7948;
wire            n3213____DOLLAR__7949;
wire            n3214____DOLLAR__7950;
wire            n3215____DOLLAR__7951;
wire            n3216____DOLLAR__7952;
wire            n3217____DOLLAR__7953;
wire            n3218____DOLLAR__7954;
wire            n3219____DOLLAR__7955;
wire            n321____DOLLAR__1078;
wire            n3220____DOLLAR__7956;
wire            n3221____DOLLAR__7957;
wire            n3222____DOLLAR__7958;
wire            n3223____DOLLAR__7959;
wire            n3224____DOLLAR__7960;
wire            n3225____DOLLAR__7961;
wire            n3226____DOLLAR__7962;
wire            n3227____DOLLAR__7963;
wire            n3228____DOLLAR__7964;
wire            n3229____DOLLAR__7965;
wire            n322____DOLLAR__1079;
wire            n3230____DOLLAR__7966;
wire            n3231____DOLLAR__7967;
wire            n3232____DOLLAR__7968;
wire            n3233____DOLLAR__7969;
wire            n3234____DOLLAR__7970;
wire            n3235____DOLLAR__7971;
wire            n3236____DOLLAR__7972;
wire            n3237____DOLLAR__7973;
wire            n3238____DOLLAR__7974;
wire            n3239____DOLLAR__7975;
wire            n323____DOLLAR__1080;
wire            n3240____DOLLAR__7976;
wire            n3241____DOLLAR__7977;
wire            n3242____DOLLAR__7978;
wire            n3243____DOLLAR__7979;
wire            n3244____DOLLAR__7980;
wire            n3245____DOLLAR__7981;
wire            n3246____DOLLAR__7982;
wire            n3247____DOLLAR__7983;
wire            n3248____DOLLAR__7984;
wire            n3249____DOLLAR__7985;
wire            n324____DOLLAR__1081;
wire            n3250____DOLLAR__7986;
wire            n3251____DOLLAR__7987;
wire            n3252____DOLLAR__7988;
wire            n3253____DOLLAR__7989;
wire            n3254____DOLLAR__7990;
wire            n3255____DOLLAR__7991;
wire            n3256____DOLLAR__7992;
wire            n3257____DOLLAR__7993;
wire            n3258____DOLLAR__7994;
wire            n3259____DOLLAR__7995;
wire            n325____DOLLAR__1082;
wire            n3260____DOLLAR__7996;
wire            n3261____DOLLAR__7997;
wire            n3262____DOLLAR__7998;
wire            n3263____DOLLAR__7999;
wire            n3264____DOLLAR__8000;
wire            n3265____DOLLAR__8001;
wire            n3266____DOLLAR__8002;
wire            n3267____DOLLAR__8003;
wire            n3268____DOLLAR__8004;
wire            n3269____DOLLAR__8005;
wire            n326____DOLLAR__1083;
wire            n3270____DOLLAR__8006;
wire            n3271____DOLLAR__8007;
wire            n3272____DOLLAR__8008;
wire            n3273____DOLLAR__8009;
wire            n3274____DOLLAR__8010;
wire            n3275____DOLLAR__8011;
wire            n3276____DOLLAR__8012;
wire            n3277____DOLLAR__8013;
wire            n3278____DOLLAR__8014;
wire            n3279____DOLLAR__8015;
wire            n327____DOLLAR__1084;
wire            n3280____DOLLAR__8016;
wire            n3281____DOLLAR__8017;
wire            n3282____DOLLAR__8018;
wire            n3283____DOLLAR__8019;
wire            n3284____DOLLAR__8020;
wire            n3285____DOLLAR__8021;
wire            n3286____DOLLAR__8022;
wire            n3287____DOLLAR__8023;
wire            n3288____DOLLAR__8024;
wire            n3289____DOLLAR__8025;
wire            n328____DOLLAR__1085;
wire            n3290____DOLLAR__8026;
wire            n3291____DOLLAR__8027;
wire            n3292____DOLLAR__8028;
wire            n3293____DOLLAR__8029;
wire            n3294____DOLLAR__8030;
wire            n3295____DOLLAR__8031;
wire            n3296____DOLLAR__8032;
wire            n3297____DOLLAR__8033;
wire            n3298____DOLLAR__8034;
wire            n3299____DOLLAR__8035;
wire            n329____DOLLAR__1086;
wire            n32____DOLLAR__173;
wire            n3300____DOLLAR__8036;
wire            n3301____DOLLAR__8037;
wire            n3302____DOLLAR__8038;
wire            n3303____DOLLAR__8039;
wire            n3304____DOLLAR__8040;
wire            n3305____DOLLAR__8041;
wire            n3306____DOLLAR__8042;
wire            n3307____DOLLAR__8043;
wire            n3308____DOLLAR__8044;
wire            n3309____DOLLAR__8045;
wire            n330____DOLLAR__1087;
wire            n3310____DOLLAR__8046;
wire            n3311____DOLLAR__8047;
wire            n3312____DOLLAR__8048;
wire            n3313____DOLLAR__8049;
wire            n3314____DOLLAR__8050;
wire            n3315____DOLLAR__8051;
wire            n3316____DOLLAR__8052;
wire            n3317____DOLLAR__8053;
wire      [7:0] n3318____DOLLAR__8056;
wire      [7:0] n3319____DOLLAR__8057;
wire            n331____DOLLAR__1088;
wire            n332____DOLLAR__1089;
wire            n333____DOLLAR__1090;
wire            n334____DOLLAR__1091;
wire            n335____DOLLAR__1092;
wire            n336____DOLLAR__1093;
wire            n337____DOLLAR__1094;
wire            n338____DOLLAR__1095;
wire            n339____DOLLAR__1096;
wire            n33____DOLLAR__177;
wire            n340____DOLLAR__1097;
wire            n341____DOLLAR__1098;
wire            n342____DOLLAR__1099;
wire            n343____DOLLAR__1100;
wire            n344____DOLLAR__1101;
wire            n345____DOLLAR__1102;
wire            n346____DOLLAR__1103;
wire            n347____DOLLAR__1104;
wire            n348____DOLLAR__1105;
wire            n349____DOLLAR__1106;
wire            n34____DOLLAR__181;
wire            n350____DOLLAR__1107;
wire            n351____DOLLAR__1108;
wire            n352____DOLLAR__1109;
wire            n353____DOLLAR__1110;
wire            n354____DOLLAR__1111;
wire            n355____DOLLAR__1112;
wire            n356____DOLLAR__1113;
wire            n357____DOLLAR__1114;
wire            n358____DOLLAR__1115;
wire            n359____DOLLAR__1116;
wire            n35____DOLLAR__185;
wire            n360____DOLLAR__1117;
wire            n361____DOLLAR__1118;
wire            n362____DOLLAR__1119;
wire            n363____DOLLAR__1120;
wire            n364____DOLLAR__1121;
wire            n365____DOLLAR__1122;
wire            n366____DOLLAR__1123;
wire            n367____DOLLAR__1124;
wire            n368____DOLLAR__1125;
wire            n369____DOLLAR__1126;
wire            n36____DOLLAR__189;
wire            n370____DOLLAR__1127;
wire            n371____DOLLAR__1128;
wire            n372____DOLLAR__1129;
wire            n373____DOLLAR__1130;
wire            n374____DOLLAR__1131;
wire            n375____DOLLAR__1132;
wire            n376____DOLLAR__1133;
wire            n377____DOLLAR__1134;
wire            n378____DOLLAR__1135;
wire            n379____DOLLAR__1136;
wire            n37____DOLLAR__193;
wire            n380____DOLLAR__1137;
wire            n381____DOLLAR__1138;
wire            n382____DOLLAR__1139;
wire            n383____DOLLAR__1140;
wire            n384____DOLLAR__1141;
wire            n385____DOLLAR__1142;
wire            n386____DOLLAR__1143;
wire            n387____DOLLAR__1144;
wire            n388____DOLLAR__1145;
wire            n389____DOLLAR__1146;
wire            n38____DOLLAR__197;
wire            n390____DOLLAR__1147;
wire            n391____DOLLAR__1148;
wire            n392____DOLLAR__1149;
wire            n393____DOLLAR__1150;
wire            n394____DOLLAR__1151;
wire            n395____DOLLAR__1152;
wire            n396____DOLLAR__1153;
wire            n397____DOLLAR__1154;
wire            n398____DOLLAR__1155;
wire            n399____DOLLAR__1156;
wire            n39____DOLLAR__201;
wire            n3____DOLLAR__71;
wire            n400____DOLLAR__1157;
wire            n401____DOLLAR__1158;
wire            n402____DOLLAR__1159;
wire            n403____DOLLAR__1160;
wire            n404____DOLLAR__1161;
wire            n405____DOLLAR__1162;
wire            n406____DOLLAR__1163;
wire            n407____DOLLAR__1164;
wire            n408____DOLLAR__1165;
wire            n409____DOLLAR__1166;
wire            n40____DOLLAR__205;
wire            n410____DOLLAR__1167;
wire            n411____DOLLAR__1168;
wire            n412____DOLLAR__1169;
wire            n413____DOLLAR__1170;
wire            n414____DOLLAR__1171;
wire            n415____DOLLAR__1172;
wire            n416____DOLLAR__1173;
wire            n417____DOLLAR__1174;
wire            n418____DOLLAR__1175;
wire            n419____DOLLAR__1176;
wire            n41____DOLLAR__209;
wire            n420____DOLLAR__1177;
wire            n421____DOLLAR__1178;
wire            n422____DOLLAR__1179;
wire            n423____DOLLAR__1180;
wire            n424____DOLLAR__1181;
wire            n425____DOLLAR__1182;
wire            n426____DOLLAR__1183;
wire            n427____DOLLAR__1184;
wire            n428____DOLLAR__1185;
wire            n429____DOLLAR__1186;
wire            n42____DOLLAR__213;
wire            n430____DOLLAR__1187;
wire            n431____DOLLAR__1188;
wire            n432____DOLLAR__1189;
wire            n433____DOLLAR__1190;
wire            n434____DOLLAR__1191;
wire            n435____DOLLAR__1192;
wire            n436____DOLLAR__1193;
wire            n437____DOLLAR__1194;
wire            n438____DOLLAR__1195;
wire            n439____DOLLAR__1196;
wire            n43____DOLLAR__217;
wire            n440____DOLLAR__1197;
wire            n441____DOLLAR__1198;
wire            n442____DOLLAR__1199;
wire            n443____DOLLAR__1200;
wire            n444____DOLLAR__1201;
wire            n445____DOLLAR__1202;
wire            n446____DOLLAR__1203;
wire            n447____DOLLAR__1204;
wire            n448____DOLLAR__1205;
wire            n449____DOLLAR__1206;
wire            n44____DOLLAR__221;
wire            n450____DOLLAR__1207;
wire            n451____DOLLAR__1208;
wire            n452____DOLLAR__1209;
wire            n453____DOLLAR__1210;
wire            n454____DOLLAR__1211;
wire            n455____DOLLAR__1212;
wire            n456____DOLLAR__1213;
wire            n457____DOLLAR__1214;
wire            n458____DOLLAR__1215;
wire            n459____DOLLAR__1216;
wire            n45____DOLLAR__225;
wire            n460____DOLLAR__1217;
wire            n461____DOLLAR__1218;
wire            n462____DOLLAR__1219;
wire            n463____DOLLAR__1220;
wire            n464____DOLLAR__1221;
wire            n465____DOLLAR__1222;
wire            n466____DOLLAR__1223;
wire     [15:0] n467____DOLLAR__1228;
wire      [7:0] n468____DOLLAR__1230;
wire      [7:0] n469____DOLLAR__1232;
wire            n46____DOLLAR__229;
wire      [7:0] n472____DOLLAR__1233;
wire            n473____DOLLAR__1237;
wire            n474____DOLLAR__1241;
wire            n475____DOLLAR__1245;
wire            n476____DOLLAR__1249;
wire            n477____DOLLAR__1253;
wire            n478____DOLLAR__1257;
wire            n479____DOLLAR__1261;
wire            n47____DOLLAR__233;
wire            n480____DOLLAR__1265;
wire            n481____DOLLAR__1269;
wire            n482____DOLLAR__1273;
wire            n483____DOLLAR__1277;
wire            n484____DOLLAR__1281;
wire            n485____DOLLAR__1285;
wire            n486____DOLLAR__1289;
wire            n487____DOLLAR__1293;
wire            n488____DOLLAR__1297;
wire            n489____DOLLAR__1301;
wire            n48____DOLLAR__237;
wire            n490____DOLLAR__1305;
wire            n491____DOLLAR__1309;
wire            n492____DOLLAR__1313;
wire            n493____DOLLAR__1317;
wire            n494____DOLLAR__1321;
wire            n495____DOLLAR__1325;
wire            n496____DOLLAR__1329;
wire            n497____DOLLAR__1333;
wire            n498____DOLLAR__1337;
wire            n499____DOLLAR__1341;
wire            n49____DOLLAR__241;
wire            n500____DOLLAR__1345;
wire            n501____DOLLAR__1349;
wire            n502____DOLLAR__1353;
wire            n503____DOLLAR__1357;
wire            n504____DOLLAR__1361;
wire            n505____DOLLAR__1365;
wire            n506____DOLLAR__1369;
wire            n507____DOLLAR__1373;
wire            n508____DOLLAR__1377;
wire            n509____DOLLAR__1381;
wire            n50____DOLLAR__245;
wire            n510____DOLLAR__1385;
wire            n511____DOLLAR__1389;
wire            n512____DOLLAR__1393;
wire            n513____DOLLAR__1397;
wire            n514____DOLLAR__1401;
wire            n515____DOLLAR__1405;
wire            n516____DOLLAR__1409;
wire            n517____DOLLAR__1413;
wire            n518____DOLLAR__1417;
wire            n519____DOLLAR__1421;
wire            n51____DOLLAR__249;
wire            n520____DOLLAR__1425;
wire            n521____DOLLAR__1429;
wire            n522____DOLLAR__1433;
wire            n523____DOLLAR__1437;
wire            n524____DOLLAR__1441;
wire            n525____DOLLAR__1445;
wire            n526____DOLLAR__1449;
wire            n527____DOLLAR__1453;
wire            n528____DOLLAR__1457;
wire            n529____DOLLAR__1461;
wire            n52____DOLLAR__253;
wire            n530____DOLLAR__1465;
wire            n531____DOLLAR__1469;
wire            n532____DOLLAR__1473;
wire            n533____DOLLAR__1477;
wire            n534____DOLLAR__1481;
wire            n535____DOLLAR__1485;
wire            n536____DOLLAR__1489;
wire            n537____DOLLAR__1493;
wire            n538____DOLLAR__1497;
wire            n539____DOLLAR__1501;
wire            n53____DOLLAR__257;
wire            n540____DOLLAR__1505;
wire            n541____DOLLAR__1509;
wire            n542____DOLLAR__1513;
wire            n543____DOLLAR__1517;
wire            n544____DOLLAR__1521;
wire            n545____DOLLAR__1525;
wire            n546____DOLLAR__1529;
wire            n547____DOLLAR__1533;
wire            n548____DOLLAR__1537;
wire            n549____DOLLAR__1541;
wire            n54____DOLLAR__261;
wire            n550____DOLLAR__1545;
wire            n551____DOLLAR__1549;
wire            n552____DOLLAR__1553;
wire            n553____DOLLAR__1557;
wire            n554____DOLLAR__1561;
wire            n555____DOLLAR__1565;
wire            n556____DOLLAR__1569;
wire            n557____DOLLAR__1573;
wire            n558____DOLLAR__1577;
wire            n559____DOLLAR__1581;
wire            n55____DOLLAR__265;
wire            n560____DOLLAR__1585;
wire            n561____DOLLAR__1589;
wire            n562____DOLLAR__1593;
wire            n563____DOLLAR__1597;
wire            n564____DOLLAR__1601;
wire            n565____DOLLAR__1605;
wire            n566____DOLLAR__1609;
wire            n567____DOLLAR__1613;
wire            n568____DOLLAR__1617;
wire            n569____DOLLAR__1621;
wire            n56____DOLLAR__269;
wire            n570____DOLLAR__1625;
wire            n571____DOLLAR__1629;
wire            n572____DOLLAR__1633;
wire            n573____DOLLAR__1637;
wire            n574____DOLLAR__1641;
wire            n575____DOLLAR__1645;
wire            n576____DOLLAR__1649;
wire            n577____DOLLAR__1653;
wire            n578____DOLLAR__1657;
wire            n579____DOLLAR__1661;
wire            n57____DOLLAR__273;
wire            n580____DOLLAR__1665;
wire            n581____DOLLAR__1669;
wire            n582____DOLLAR__1673;
wire            n583____DOLLAR__1677;
wire            n584____DOLLAR__1681;
wire            n585____DOLLAR__1685;
wire            n586____DOLLAR__1689;
wire            n587____DOLLAR__1693;
wire            n588____DOLLAR__1697;
wire            n589____DOLLAR__1701;
wire            n58____DOLLAR__277;
wire            n590____DOLLAR__1705;
wire            n591____DOLLAR__1709;
wire            n592____DOLLAR__1713;
wire            n593____DOLLAR__1717;
wire            n594____DOLLAR__1721;
wire            n595____DOLLAR__1725;
wire            n596____DOLLAR__1729;
wire            n597____DOLLAR__1733;
wire            n598____DOLLAR__1737;
wire            n599____DOLLAR__1741;
wire            n59____DOLLAR__281;
wire            n600____DOLLAR__1745;
wire            n601____DOLLAR__1749;
wire            n602____DOLLAR__1753;
wire            n603____DOLLAR__1757;
wire            n604____DOLLAR__1761;
wire            n605____DOLLAR__1765;
wire            n606____DOLLAR__1769;
wire            n607____DOLLAR__1773;
wire            n608____DOLLAR__1777;
wire            n609____DOLLAR__1781;
wire            n60____DOLLAR__285;
wire            n610____DOLLAR__1785;
wire            n611____DOLLAR__1789;
wire            n612____DOLLAR__1793;
wire            n613____DOLLAR__1797;
wire            n614____DOLLAR__1801;
wire            n615____DOLLAR__1805;
wire            n616____DOLLAR__1809;
wire            n617____DOLLAR__1813;
wire            n618____DOLLAR__1817;
wire            n619____DOLLAR__1821;
wire            n61____DOLLAR__289;
wire            n620____DOLLAR__1825;
wire            n621____DOLLAR__1829;
wire            n622____DOLLAR__1833;
wire            n623____DOLLAR__1837;
wire            n624____DOLLAR__1841;
wire            n625____DOLLAR__1845;
wire            n626____DOLLAR__1849;
wire            n627____DOLLAR__1853;
wire            n628____DOLLAR__1857;
wire            n629____DOLLAR__1861;
wire            n62____DOLLAR__293;
wire            n630____DOLLAR__1865;
wire            n631____DOLLAR__1869;
wire            n632____DOLLAR__1873;
wire            n633____DOLLAR__1877;
wire            n634____DOLLAR__1881;
wire            n635____DOLLAR__1885;
wire            n636____DOLLAR__1889;
wire            n637____DOLLAR__1893;
wire            n638____DOLLAR__1897;
wire            n639____DOLLAR__1901;
wire            n63____DOLLAR__297;
wire            n640____DOLLAR__1905;
wire            n641____DOLLAR__1909;
wire            n642____DOLLAR__1913;
wire            n643____DOLLAR__1917;
wire            n644____DOLLAR__1921;
wire            n645____DOLLAR__1925;
wire            n646____DOLLAR__1929;
wire            n647____DOLLAR__1933;
wire            n648____DOLLAR__1937;
wire            n649____DOLLAR__1941;
wire            n64____DOLLAR__301;
wire            n650____DOLLAR__1945;
wire            n651____DOLLAR__1949;
wire            n652____DOLLAR__1953;
wire            n653____DOLLAR__1957;
wire            n654____DOLLAR__1961;
wire            n655____DOLLAR__1965;
wire            n656____DOLLAR__1969;
wire            n657____DOLLAR__1973;
wire            n658____DOLLAR__1977;
wire            n659____DOLLAR__1981;
wire            n65____DOLLAR__305;
wire            n660____DOLLAR__1985;
wire            n661____DOLLAR__1989;
wire            n662____DOLLAR__1993;
wire            n663____DOLLAR__1997;
wire            n664____DOLLAR__2001;
wire            n665____DOLLAR__2005;
wire            n666____DOLLAR__2009;
wire            n667____DOLLAR__2013;
wire            n668____DOLLAR__2017;
wire            n669____DOLLAR__2021;
wire            n66____DOLLAR__309;
wire            n670____DOLLAR__2025;
wire            n671____DOLLAR__2029;
wire            n672____DOLLAR__2033;
wire            n673____DOLLAR__2037;
wire            n674____DOLLAR__2041;
wire            n675____DOLLAR__2045;
wire            n676____DOLLAR__2049;
wire            n677____DOLLAR__2053;
wire            n678____DOLLAR__2057;
wire            n679____DOLLAR__2061;
wire            n67____DOLLAR__313;
wire            n680____DOLLAR__2065;
wire            n681____DOLLAR__2069;
wire            n682____DOLLAR__2073;
wire            n683____DOLLAR__2077;
wire            n684____DOLLAR__2081;
wire            n685____DOLLAR__2085;
wire            n686____DOLLAR__2089;
wire            n687____DOLLAR__2093;
wire            n688____DOLLAR__2097;
wire            n689____DOLLAR__2101;
wire            n68____DOLLAR__317;
wire            n690____DOLLAR__2105;
wire            n691____DOLLAR__2109;
wire            n692____DOLLAR__2113;
wire            n693____DOLLAR__2117;
wire            n694____DOLLAR__2121;
wire            n695____DOLLAR__2125;
wire            n696____DOLLAR__2129;
wire            n697____DOLLAR__2133;
wire            n698____DOLLAR__2137;
wire            n699____DOLLAR__2141;
wire            n69____DOLLAR__321;
wire            n700____DOLLAR__2143;
wire            n701____DOLLAR__2144;
wire            n702____DOLLAR__2145;
wire            n703____DOLLAR__2146;
wire            n704____DOLLAR__2147;
wire            n705____DOLLAR__2148;
wire            n706____DOLLAR__2149;
wire            n707____DOLLAR__2150;
wire            n708____DOLLAR__2151;
wire            n709____DOLLAR__2152;
wire            n70____DOLLAR__325;
wire            n710____DOLLAR__2153;
wire            n711____DOLLAR__2154;
wire            n712____DOLLAR__2155;
wire            n713____DOLLAR__2156;
wire            n714____DOLLAR__2157;
wire            n715____DOLLAR__2158;
wire            n716____DOLLAR__2159;
wire            n717____DOLLAR__2160;
wire            n718____DOLLAR__2161;
wire            n719____DOLLAR__2162;
wire            n71____DOLLAR__329;
wire            n720____DOLLAR__2163;
wire            n721____DOLLAR__2164;
wire            n722____DOLLAR__2165;
wire            n723____DOLLAR__2166;
wire            n724____DOLLAR__2167;
wire            n725____DOLLAR__2168;
wire            n726____DOLLAR__2169;
wire            n727____DOLLAR__2170;
wire            n728____DOLLAR__2171;
wire            n729____DOLLAR__2172;
wire            n72____DOLLAR__333;
wire            n730____DOLLAR__2173;
wire            n731____DOLLAR__2174;
wire            n732____DOLLAR__2175;
wire            n733____DOLLAR__2176;
wire            n734____DOLLAR__2177;
wire            n735____DOLLAR__2178;
wire            n736____DOLLAR__2179;
wire            n737____DOLLAR__2180;
wire            n738____DOLLAR__2181;
wire            n739____DOLLAR__2182;
wire            n73____DOLLAR__337;
wire            n740____DOLLAR__2183;
wire            n741____DOLLAR__2184;
wire            n742____DOLLAR__2185;
wire            n743____DOLLAR__2186;
wire            n744____DOLLAR__2187;
wire            n745____DOLLAR__2188;
wire            n746____DOLLAR__2189;
wire            n747____DOLLAR__2190;
wire            n748____DOLLAR__2191;
wire            n749____DOLLAR__2192;
wire            n74____DOLLAR__341;
wire            n750____DOLLAR__2193;
wire            n751____DOLLAR__2194;
wire            n752____DOLLAR__2195;
wire            n753____DOLLAR__2196;
wire            n754____DOLLAR__2197;
wire            n755____DOLLAR__2198;
wire            n756____DOLLAR__2199;
wire            n757____DOLLAR__2200;
wire            n758____DOLLAR__2201;
wire            n759____DOLLAR__2202;
wire            n75____DOLLAR__345;
wire            n760____DOLLAR__2203;
wire            n761____DOLLAR__2204;
wire            n762____DOLLAR__2205;
wire            n763____DOLLAR__2206;
wire            n764____DOLLAR__2207;
wire            n765____DOLLAR__2208;
wire            n766____DOLLAR__2209;
wire            n767____DOLLAR__2210;
wire            n768____DOLLAR__2211;
wire            n769____DOLLAR__2212;
wire            n76____DOLLAR__349;
wire            n770____DOLLAR__2213;
wire            n771____DOLLAR__2214;
wire            n772____DOLLAR__2215;
wire            n773____DOLLAR__2216;
wire            n774____DOLLAR__2217;
wire            n775____DOLLAR__2218;
wire            n776____DOLLAR__2219;
wire            n777____DOLLAR__2220;
wire            n778____DOLLAR__2221;
wire            n779____DOLLAR__2222;
wire            n77____DOLLAR__353;
wire            n780____DOLLAR__2223;
wire            n781____DOLLAR__2224;
wire            n782____DOLLAR__2225;
wire            n783____DOLLAR__2226;
wire            n784____DOLLAR__2227;
wire            n785____DOLLAR__2228;
wire            n786____DOLLAR__2229;
wire            n787____DOLLAR__2230;
wire            n788____DOLLAR__2231;
wire            n789____DOLLAR__2232;
wire            n78____DOLLAR__357;
wire            n790____DOLLAR__2233;
wire            n791____DOLLAR__2234;
wire            n792____DOLLAR__2235;
wire            n793____DOLLAR__2236;
wire            n794____DOLLAR__2237;
wire            n795____DOLLAR__2238;
wire            n796____DOLLAR__2239;
wire            n797____DOLLAR__2240;
wire            n798____DOLLAR__2241;
wire            n799____DOLLAR__2242;
wire            n79____DOLLAR__361;
wire      [7:0] n7____DOLLAR__73;
wire            n800____DOLLAR__2243;
wire            n801____DOLLAR__2244;
wire            n802____DOLLAR__2245;
wire            n803____DOLLAR__2246;
wire            n804____DOLLAR__2247;
wire            n805____DOLLAR__2248;
wire            n806____DOLLAR__2249;
wire            n807____DOLLAR__2250;
wire            n808____DOLLAR__2251;
wire            n809____DOLLAR__2252;
wire            n80____DOLLAR__365;
wire            n810____DOLLAR__2253;
wire            n811____DOLLAR__2254;
wire            n812____DOLLAR__2255;
wire            n813____DOLLAR__2256;
wire            n814____DOLLAR__2257;
wire            n815____DOLLAR__2258;
wire            n816____DOLLAR__2259;
wire            n817____DOLLAR__2260;
wire            n818____DOLLAR__2261;
wire            n819____DOLLAR__2262;
wire            n81____DOLLAR__369;
wire            n820____DOLLAR__2263;
wire            n821____DOLLAR__2264;
wire            n822____DOLLAR__2265;
wire            n823____DOLLAR__2266;
wire            n824____DOLLAR__2267;
wire            n825____DOLLAR__2268;
wire            n826____DOLLAR__2269;
wire            n827____DOLLAR__2270;
wire            n828____DOLLAR__2271;
wire            n829____DOLLAR__2272;
wire            n82____DOLLAR__373;
wire            n830____DOLLAR__2273;
wire            n831____DOLLAR__2274;
wire            n832____DOLLAR__2275;
wire            n833____DOLLAR__2276;
wire            n834____DOLLAR__2277;
wire            n835____DOLLAR__2278;
wire            n836____DOLLAR__2279;
wire            n837____DOLLAR__2280;
wire            n838____DOLLAR__2281;
wire            n839____DOLLAR__2282;
wire            n83____DOLLAR__377;
wire            n840____DOLLAR__2283;
wire            n841____DOLLAR__2284;
wire            n842____DOLLAR__2285;
wire            n843____DOLLAR__2286;
wire            n844____DOLLAR__2287;
wire            n845____DOLLAR__2288;
wire            n846____DOLLAR__2289;
wire            n847____DOLLAR__2290;
wire            n848____DOLLAR__2291;
wire            n849____DOLLAR__2292;
wire            n84____DOLLAR__381;
wire            n850____DOLLAR__2293;
wire            n851____DOLLAR__2294;
wire            n852____DOLLAR__2295;
wire            n853____DOLLAR__2296;
wire            n854____DOLLAR__2297;
wire            n855____DOLLAR__2298;
wire            n856____DOLLAR__2299;
wire            n857____DOLLAR__2300;
wire            n858____DOLLAR__2301;
wire            n859____DOLLAR__2302;
wire            n85____DOLLAR__385;
wire            n860____DOLLAR__2303;
wire            n861____DOLLAR__2304;
wire            n862____DOLLAR__2305;
wire            n863____DOLLAR__2306;
wire            n864____DOLLAR__2307;
wire            n865____DOLLAR__2308;
wire            n866____DOLLAR__2309;
wire            n867____DOLLAR__2310;
wire            n868____DOLLAR__2311;
wire            n869____DOLLAR__2312;
wire            n86____DOLLAR__389;
wire            n870____DOLLAR__2313;
wire            n871____DOLLAR__2314;
wire            n872____DOLLAR__2315;
wire            n873____DOLLAR__2316;
wire            n874____DOLLAR__2317;
wire            n875____DOLLAR__2318;
wire            n876____DOLLAR__2319;
wire            n877____DOLLAR__2320;
wire            n878____DOLLAR__2321;
wire            n879____DOLLAR__2322;
wire            n87____DOLLAR__393;
wire            n880____DOLLAR__2323;
wire            n881____DOLLAR__2324;
wire            n882____DOLLAR__2325;
wire            n883____DOLLAR__2326;
wire            n884____DOLLAR__2327;
wire            n885____DOLLAR__2328;
wire            n886____DOLLAR__2329;
wire            n887____DOLLAR__2330;
wire            n888____DOLLAR__2331;
wire            n889____DOLLAR__2332;
wire            n88____DOLLAR__397;
wire            n890____DOLLAR__2333;
wire            n891____DOLLAR__2334;
wire            n892____DOLLAR__2335;
wire            n893____DOLLAR__2336;
wire            n894____DOLLAR__2337;
wire            n895____DOLLAR__2338;
wire            n896____DOLLAR__2339;
wire            n897____DOLLAR__2340;
wire            n898____DOLLAR__2341;
wire            n899____DOLLAR__2342;
wire            n89____DOLLAR__401;
wire            n8____DOLLAR__77;
wire            n900____DOLLAR__2343;
wire            n901____DOLLAR__2344;
wire            n902____DOLLAR__2345;
wire            n903____DOLLAR__2346;
wire            n904____DOLLAR__2347;
wire            n905____DOLLAR__2348;
wire            n906____DOLLAR__2349;
wire            n907____DOLLAR__2350;
wire            n908____DOLLAR__2351;
wire            n909____DOLLAR__2352;
wire            n90____DOLLAR__405;
wire            n910____DOLLAR__2353;
wire            n911____DOLLAR__2354;
wire            n912____DOLLAR__2355;
wire            n913____DOLLAR__2356;
wire            n914____DOLLAR__2357;
wire            n915____DOLLAR__2358;
wire            n916____DOLLAR__2359;
wire            n917____DOLLAR__2360;
wire            n918____DOLLAR__2361;
wire            n919____DOLLAR__2362;
wire            n91____DOLLAR__409;
wire            n920____DOLLAR__2363;
wire            n921____DOLLAR__2364;
wire            n922____DOLLAR__2365;
wire            n923____DOLLAR__2366;
wire            n924____DOLLAR__2367;
wire            n925____DOLLAR__2368;
wire      [1:0] n926____DOLLAR__2371;
wire      [4:0] n927____DOLLAR__2379;
wire      [7:0] n928____DOLLAR__2385;
wire            n929____DOLLAR__2389;
wire            n92____DOLLAR__413;
wire      [7:0] n930____DOLLAR__2391;
wire      [7:0] n931____DOLLAR__2392;
wire      [7:0] n934____DOLLAR__2393;
wire            n935____DOLLAR__2397;
wire            n936____DOLLAR__2401;
wire            n937____DOLLAR__2403;
wire            n93____DOLLAR__417;
wire      [7:0] n940____DOLLAR__2404;
wire      [7:0] n941____DOLLAR__2408;
wire      [7:0] n944____DOLLAR__2409;
wire     [15:0] n945____DOLLAR__2415;
wire      [7:0] n948____DOLLAR__2417;
wire            n949____DOLLAR__2421;
wire            n94____DOLLAR__421;
wire            n950____DOLLAR__2425;
wire            n951____DOLLAR__2427;
wire     [15:0] n952____DOLLAR__2430;
wire      [4:0] n953____DOLLAR__2431;
wire      [7:0] n954____DOLLAR__2439;
wire     [15:0] n955____DOLLAR__2443;
wire      [7:0] n958____DOLLAR__2444;
wire     [15:0] n959____DOLLAR__2450;
wire            n95____DOLLAR__425;
wire      [7:0] n962____DOLLAR__2452;
wire            n963____DOLLAR__2456;
wire            n964____DOLLAR__2460;
wire            n965____DOLLAR__2462;
wire     [15:0] n966____DOLLAR__2465;
wire      [7:0] n969____DOLLAR__2466;
wire            n96____DOLLAR__429;
wire            n970____DOLLAR__2468;
wire            n971____DOLLAR__2472;
wire      [4:0] n972____DOLLAR__2474;
wire      [7:0] n973____DOLLAR__2482;
wire      [7:0] n974____DOLLAR__2484;
wire      [7:0] n975____DOLLAR__2488;
wire      [7:0] n976____DOLLAR__2489;
wire            n977____DOLLAR__2490;
wire            n978____DOLLAR__2494;
wire            n97____DOLLAR__433;
wire      [7:0] n981____DOLLAR__2496;
wire            n982____DOLLAR__2500;
wire            n983____DOLLAR__2504;
wire            n984____DOLLAR__2508;
wire            n985____DOLLAR__2512;
wire            n986____DOLLAR__2516;
wire            n987____DOLLAR__2520;
wire            n988____DOLLAR__2524;
wire            n989____DOLLAR__2528;
wire            n98____DOLLAR__437;
wire            n990____DOLLAR__2532;
wire            n991____DOLLAR__2536;
wire            n992____DOLLAR__2540;
wire            n993____DOLLAR__2544;
wire            n994____DOLLAR__2548;
wire            n995____DOLLAR__2552;
wire            n996____DOLLAR__2556;
wire            n997____DOLLAR__2560;
wire            n998____DOLLAR__2564;
wire            n999____DOLLAR__2568;
wire            n99____DOLLAR__441;
wire            n9____DOLLAR__81;
wire            rst;
assign __ILA_oc8051_valid__ = 1'b1 ;
assign ROM_addr_n0 = PC ;
assign n2____DOLLAR__67 = ROM_data_n1 ;
assign n3____DOLLAR__71 =  ( n2____DOLLAR__67 ) == ( 8'd0 )  ;
assign __ILA_oc8051_decode_of_I__DOT__0__ = n3____DOLLAR__71 ;
assign ROM_addr_n5 = PC ;
assign n7____DOLLAR__73 = ROM_data_n6 ;
assign n8____DOLLAR__77 =  ( n7____DOLLAR__73 ) == ( 8'd255 )  ;
assign n9____DOLLAR__81 =  ( n7____DOLLAR__73 ) == ( 8'd254 )  ;
assign n10____DOLLAR__85 =  ( n7____DOLLAR__73 ) == ( 8'd253 )  ;
assign n11____DOLLAR__89 =  ( n7____DOLLAR__73 ) == ( 8'd252 )  ;
assign n12____DOLLAR__93 =  ( n7____DOLLAR__73 ) == ( 8'd251 )  ;
assign n13____DOLLAR__97 =  ( n7____DOLLAR__73 ) == ( 8'd250 )  ;
assign n14____DOLLAR__101 =  ( n7____DOLLAR__73 ) == ( 8'd249 )  ;
assign n15____DOLLAR__105 =  ( n7____DOLLAR__73 ) == ( 8'd248 )  ;
assign n16____DOLLAR__109 =  ( n7____DOLLAR__73 ) == ( 8'd247 )  ;
assign n17____DOLLAR__113 =  ( n7____DOLLAR__73 ) == ( 8'd246 )  ;
assign n18____DOLLAR__117 =  ( n7____DOLLAR__73 ) == ( 8'd244 )  ;
assign n19____DOLLAR__121 =  ( n7____DOLLAR__73 ) == ( 8'd243 )  ;
assign n20____DOLLAR__125 =  ( n7____DOLLAR__73 ) == ( 8'd242 )  ;
assign n21____DOLLAR__129 =  ( n7____DOLLAR__73 ) == ( 8'd241 )  ;
assign n22____DOLLAR__133 =  ( n7____DOLLAR__73 ) == ( 8'd240 )  ;
assign n23____DOLLAR__137 =  ( n7____DOLLAR__73 ) == ( 8'd239 )  ;
assign n24____DOLLAR__141 =  ( n7____DOLLAR__73 ) == ( 8'd238 )  ;
assign n25____DOLLAR__145 =  ( n7____DOLLAR__73 ) == ( 8'd237 )  ;
assign n26____DOLLAR__149 =  ( n7____DOLLAR__73 ) == ( 8'd236 )  ;
assign n27____DOLLAR__153 =  ( n7____DOLLAR__73 ) == ( 8'd235 )  ;
assign n28____DOLLAR__157 =  ( n7____DOLLAR__73 ) == ( 8'd234 )  ;
assign n29____DOLLAR__161 =  ( n7____DOLLAR__73 ) == ( 8'd233 )  ;
assign n30____DOLLAR__165 =  ( n7____DOLLAR__73 ) == ( 8'd232 )  ;
assign n31____DOLLAR__169 =  ( n7____DOLLAR__73 ) == ( 8'd231 )  ;
assign n32____DOLLAR__173 =  ( n7____DOLLAR__73 ) == ( 8'd230 )  ;
assign n33____DOLLAR__177 =  ( n7____DOLLAR__73 ) == ( 8'd229 )  ;
assign n34____DOLLAR__181 =  ( n7____DOLLAR__73 ) == ( 8'd228 )  ;
assign n35____DOLLAR__185 =  ( n7____DOLLAR__73 ) == ( 8'd227 )  ;
assign n36____DOLLAR__189 =  ( n7____DOLLAR__73 ) == ( 8'd226 )  ;
assign n37____DOLLAR__193 =  ( n7____DOLLAR__73 ) == ( 8'd225 )  ;
assign n38____DOLLAR__197 =  ( n7____DOLLAR__73 ) == ( 8'd224 )  ;
assign n39____DOLLAR__201 =  ( n7____DOLLAR__73 ) == ( 8'd223 )  ;
assign n40____DOLLAR__205 =  ( n7____DOLLAR__73 ) == ( 8'd222 )  ;
assign n41____DOLLAR__209 =  ( n7____DOLLAR__73 ) == ( 8'd221 )  ;
assign n42____DOLLAR__213 =  ( n7____DOLLAR__73 ) == ( 8'd220 )  ;
assign n43____DOLLAR__217 =  ( n7____DOLLAR__73 ) == ( 8'd219 )  ;
assign n44____DOLLAR__221 =  ( n7____DOLLAR__73 ) == ( 8'd218 )  ;
assign n45____DOLLAR__225 =  ( n7____DOLLAR__73 ) == ( 8'd217 )  ;
assign n46____DOLLAR__229 =  ( n7____DOLLAR__73 ) == ( 8'd216 )  ;
assign n47____DOLLAR__233 =  ( n7____DOLLAR__73 ) == ( 8'd215 )  ;
assign n48____DOLLAR__237 =  ( n7____DOLLAR__73 ) == ( 8'd214 )  ;
assign n49____DOLLAR__241 =  ( n7____DOLLAR__73 ) == ( 8'd212 )  ;
assign n50____DOLLAR__245 =  ( n7____DOLLAR__73 ) == ( 8'd211 )  ;
assign n51____DOLLAR__249 =  ( n7____DOLLAR__73 ) == ( 8'd210 )  ;
assign n52____DOLLAR__253 =  ( n7____DOLLAR__73 ) == ( 8'd209 )  ;
assign n53____DOLLAR__257 =  ( n7____DOLLAR__73 ) == ( 8'd207 )  ;
assign n54____DOLLAR__261 =  ( n7____DOLLAR__73 ) == ( 8'd206 )  ;
assign n55____DOLLAR__265 =  ( n7____DOLLAR__73 ) == ( 8'd205 )  ;
assign n56____DOLLAR__269 =  ( n7____DOLLAR__73 ) == ( 8'd204 )  ;
assign n57____DOLLAR__273 =  ( n7____DOLLAR__73 ) == ( 8'd203 )  ;
assign n58____DOLLAR__277 =  ( n7____DOLLAR__73 ) == ( 8'd202 )  ;
assign n59____DOLLAR__281 =  ( n7____DOLLAR__73 ) == ( 8'd201 )  ;
assign n60____DOLLAR__285 =  ( n7____DOLLAR__73 ) == ( 8'd200 )  ;
assign n61____DOLLAR__289 =  ( n7____DOLLAR__73 ) == ( 8'd199 )  ;
assign n62____DOLLAR__293 =  ( n7____DOLLAR__73 ) == ( 8'd198 )  ;
assign n63____DOLLAR__297 =  ( n7____DOLLAR__73 ) == ( 8'd196 )  ;
assign n64____DOLLAR__301 =  ( n7____DOLLAR__73 ) == ( 8'd195 )  ;
assign n65____DOLLAR__305 =  ( n7____DOLLAR__73 ) == ( 8'd194 )  ;
assign n66____DOLLAR__309 =  ( n7____DOLLAR__73 ) == ( 8'd193 )  ;
assign n67____DOLLAR__313 =  ( n7____DOLLAR__73 ) == ( 8'd192 )  ;
assign n68____DOLLAR__317 =  ( n7____DOLLAR__73 ) == ( 8'd191 )  ;
assign n69____DOLLAR__321 =  ( n7____DOLLAR__73 ) == ( 8'd190 )  ;
assign n70____DOLLAR__325 =  ( n7____DOLLAR__73 ) == ( 8'd189 )  ;
assign n71____DOLLAR__329 =  ( n7____DOLLAR__73 ) == ( 8'd188 )  ;
assign n72____DOLLAR__333 =  ( n7____DOLLAR__73 ) == ( 8'd187 )  ;
assign n73____DOLLAR__337 =  ( n7____DOLLAR__73 ) == ( 8'd186 )  ;
assign n74____DOLLAR__341 =  ( n7____DOLLAR__73 ) == ( 8'd185 )  ;
assign n75____DOLLAR__345 =  ( n7____DOLLAR__73 ) == ( 8'd184 )  ;
assign n76____DOLLAR__349 =  ( n7____DOLLAR__73 ) == ( 8'd183 )  ;
assign n77____DOLLAR__353 =  ( n7____DOLLAR__73 ) == ( 8'd182 )  ;
assign n78____DOLLAR__357 =  ( n7____DOLLAR__73 ) == ( 8'd181 )  ;
assign n79____DOLLAR__361 =  ( n7____DOLLAR__73 ) == ( 8'd180 )  ;
assign n80____DOLLAR__365 =  ( n7____DOLLAR__73 ) == ( 8'd179 )  ;
assign n81____DOLLAR__369 =  ( n7____DOLLAR__73 ) == ( 8'd178 )  ;
assign n82____DOLLAR__373 =  ( n7____DOLLAR__73 ) == ( 8'd177 )  ;
assign n83____DOLLAR__377 =  ( n7____DOLLAR__73 ) == ( 8'd176 )  ;
assign n84____DOLLAR__381 =  ( n7____DOLLAR__73 ) == ( 8'd175 )  ;
assign n85____DOLLAR__385 =  ( n7____DOLLAR__73 ) == ( 8'd174 )  ;
assign n86____DOLLAR__389 =  ( n7____DOLLAR__73 ) == ( 8'd173 )  ;
assign n87____DOLLAR__393 =  ( n7____DOLLAR__73 ) == ( 8'd172 )  ;
assign n88____DOLLAR__397 =  ( n7____DOLLAR__73 ) == ( 8'd171 )  ;
assign n89____DOLLAR__401 =  ( n7____DOLLAR__73 ) == ( 8'd170 )  ;
assign n90____DOLLAR__405 =  ( n7____DOLLAR__73 ) == ( 8'd169 )  ;
assign n91____DOLLAR__409 =  ( n7____DOLLAR__73 ) == ( 8'd168 )  ;
assign n92____DOLLAR__413 =  ( n7____DOLLAR__73 ) == ( 8'd167 )  ;
assign n93____DOLLAR__417 =  ( n7____DOLLAR__73 ) == ( 8'd166 )  ;
assign n94____DOLLAR__421 =  ( n7____DOLLAR__73 ) == ( 8'd165 )  ;
assign n95____DOLLAR__425 =  ( n7____DOLLAR__73 ) == ( 8'd164 )  ;
assign n96____DOLLAR__429 =  ( n7____DOLLAR__73 ) == ( 8'd162 )  ;
assign n97____DOLLAR__433 =  ( n7____DOLLAR__73 ) == ( 8'd161 )  ;
assign n98____DOLLAR__437 =  ( n7____DOLLAR__73 ) == ( 8'd160 )  ;
assign n99____DOLLAR__441 =  ( n7____DOLLAR__73 ) == ( 8'd159 )  ;
assign n100____DOLLAR__445 =  ( n7____DOLLAR__73 ) == ( 8'd158 )  ;
assign n101____DOLLAR__449 =  ( n7____DOLLAR__73 ) == ( 8'd157 )  ;
assign n102____DOLLAR__453 =  ( n7____DOLLAR__73 ) == ( 8'd156 )  ;
assign n103____DOLLAR__457 =  ( n7____DOLLAR__73 ) == ( 8'd155 )  ;
assign n104____DOLLAR__461 =  ( n7____DOLLAR__73 ) == ( 8'd154 )  ;
assign n105____DOLLAR__465 =  ( n7____DOLLAR__73 ) == ( 8'd153 )  ;
assign n106____DOLLAR__469 =  ( n7____DOLLAR__73 ) == ( 8'd152 )  ;
assign n107____DOLLAR__473 =  ( n7____DOLLAR__73 ) == ( 8'd151 )  ;
assign n108____DOLLAR__477 =  ( n7____DOLLAR__73 ) == ( 8'd150 )  ;
assign n109____DOLLAR__481 =  ( n7____DOLLAR__73 ) == ( 8'd149 )  ;
assign n110____DOLLAR__485 =  ( n7____DOLLAR__73 ) == ( 8'd148 )  ;
assign n111____DOLLAR__489 =  ( n7____DOLLAR__73 ) == ( 8'd147 )  ;
assign n112____DOLLAR__493 =  ( n7____DOLLAR__73 ) == ( 8'd146 )  ;
assign n113____DOLLAR__497 =  ( n7____DOLLAR__73 ) == ( 8'd145 )  ;
assign n114____DOLLAR__501 =  ( n7____DOLLAR__73 ) == ( 8'd132 )  ;
assign n115____DOLLAR__505 =  ( n7____DOLLAR__73 ) == ( 8'd131 )  ;
assign n116____DOLLAR__509 =  ( n7____DOLLAR__73 ) == ( 8'd130 )  ;
assign n117____DOLLAR__513 =  ( n7____DOLLAR__73 ) == ( 8'd129 )  ;
assign n118____DOLLAR__517 =  ( n7____DOLLAR__73 ) == ( 8'd128 )  ;
assign n119____DOLLAR__521 =  ( n7____DOLLAR__73 ) == ( 8'd127 )  ;
assign n120____DOLLAR__525 =  ( n7____DOLLAR__73 ) == ( 8'd126 )  ;
assign n121____DOLLAR__529 =  ( n7____DOLLAR__73 ) == ( 8'd125 )  ;
assign n122____DOLLAR__533 =  ( n7____DOLLAR__73 ) == ( 8'd124 )  ;
assign n123____DOLLAR__537 =  ( n7____DOLLAR__73 ) == ( 8'd123 )  ;
assign n124____DOLLAR__541 =  ( n7____DOLLAR__73 ) == ( 8'd122 )  ;
assign n125____DOLLAR__545 =  ( n7____DOLLAR__73 ) == ( 8'd121 )  ;
assign n126____DOLLAR__549 =  ( n7____DOLLAR__73 ) == ( 8'd120 )  ;
assign n127____DOLLAR__553 =  ( n7____DOLLAR__73 ) == ( 8'd119 )  ;
assign n128____DOLLAR__557 =  ( n7____DOLLAR__73 ) == ( 8'd118 )  ;
assign n129____DOLLAR__561 =  ( n7____DOLLAR__73 ) == ( 8'd116 )  ;
assign n130____DOLLAR__565 =  ( n7____DOLLAR__73 ) == ( 8'd115 )  ;
assign n131____DOLLAR__569 =  ( n7____DOLLAR__73 ) == ( 8'd114 )  ;
assign n132____DOLLAR__573 =  ( n7____DOLLAR__73 ) == ( 8'd113 )  ;
assign n133____DOLLAR__577 =  ( n7____DOLLAR__73 ) == ( 8'd112 )  ;
assign n134____DOLLAR__581 =  ( n7____DOLLAR__73 ) == ( 8'd111 )  ;
assign n135____DOLLAR__585 =  ( n7____DOLLAR__73 ) == ( 8'd110 )  ;
assign n136____DOLLAR__589 =  ( n7____DOLLAR__73 ) == ( 8'd109 )  ;
assign n137____DOLLAR__593 =  ( n7____DOLLAR__73 ) == ( 8'd108 )  ;
assign n138____DOLLAR__597 =  ( n7____DOLLAR__73 ) == ( 8'd107 )  ;
assign n139____DOLLAR__601 =  ( n7____DOLLAR__73 ) == ( 8'd106 )  ;
assign n140____DOLLAR__605 =  ( n7____DOLLAR__73 ) == ( 8'd105 )  ;
assign n141____DOLLAR__609 =  ( n7____DOLLAR__73 ) == ( 8'd104 )  ;
assign n142____DOLLAR__613 =  ( n7____DOLLAR__73 ) == ( 8'd103 )  ;
assign n143____DOLLAR__617 =  ( n7____DOLLAR__73 ) == ( 8'd102 )  ;
assign n144____DOLLAR__621 =  ( n7____DOLLAR__73 ) == ( 8'd101 )  ;
assign n145____DOLLAR__625 =  ( n7____DOLLAR__73 ) == ( 8'd100 )  ;
assign n146____DOLLAR__629 =  ( n7____DOLLAR__73 ) == ( 8'd97 )  ;
assign n147____DOLLAR__633 =  ( n7____DOLLAR__73 ) == ( 8'd96 )  ;
assign n148____DOLLAR__637 =  ( n7____DOLLAR__73 ) == ( 8'd95 )  ;
assign n149____DOLLAR__641 =  ( n7____DOLLAR__73 ) == ( 8'd94 )  ;
assign n150____DOLLAR__645 =  ( n7____DOLLAR__73 ) == ( 8'd93 )  ;
assign n151____DOLLAR__649 =  ( n7____DOLLAR__73 ) == ( 8'd92 )  ;
assign n152____DOLLAR__653 =  ( n7____DOLLAR__73 ) == ( 8'd91 )  ;
assign n153____DOLLAR__657 =  ( n7____DOLLAR__73 ) == ( 8'd90 )  ;
assign n154____DOLLAR__661 =  ( n7____DOLLAR__73 ) == ( 8'd89 )  ;
assign n155____DOLLAR__665 =  ( n7____DOLLAR__73 ) == ( 8'd88 )  ;
assign n156____DOLLAR__669 =  ( n7____DOLLAR__73 ) == ( 8'd87 )  ;
assign n157____DOLLAR__673 =  ( n7____DOLLAR__73 ) == ( 8'd86 )  ;
assign n158____DOLLAR__677 =  ( n7____DOLLAR__73 ) == ( 8'd85 )  ;
assign n159____DOLLAR__681 =  ( n7____DOLLAR__73 ) == ( 8'd84 )  ;
assign n160____DOLLAR__685 =  ( n7____DOLLAR__73 ) == ( 8'd81 )  ;
assign n161____DOLLAR__689 =  ( n7____DOLLAR__73 ) == ( 8'd80 )  ;
assign n162____DOLLAR__693 =  ( n7____DOLLAR__73 ) == ( 8'd79 )  ;
assign n163____DOLLAR__697 =  ( n7____DOLLAR__73 ) == ( 8'd78 )  ;
assign n164____DOLLAR__701 =  ( n7____DOLLAR__73 ) == ( 8'd77 )  ;
assign n165____DOLLAR__705 =  ( n7____DOLLAR__73 ) == ( 8'd76 )  ;
assign n166____DOLLAR__709 =  ( n7____DOLLAR__73 ) == ( 8'd75 )  ;
assign n167____DOLLAR__713 =  ( n7____DOLLAR__73 ) == ( 8'd74 )  ;
assign n168____DOLLAR__717 =  ( n7____DOLLAR__73 ) == ( 8'd73 )  ;
assign n169____DOLLAR__721 =  ( n7____DOLLAR__73 ) == ( 8'd72 )  ;
assign n170____DOLLAR__725 =  ( n7____DOLLAR__73 ) == ( 8'd71 )  ;
assign n171____DOLLAR__729 =  ( n7____DOLLAR__73 ) == ( 8'd70 )  ;
assign n172____DOLLAR__733 =  ( n7____DOLLAR__73 ) == ( 8'd69 )  ;
assign n173____DOLLAR__737 =  ( n7____DOLLAR__73 ) == ( 8'd68 )  ;
assign n174____DOLLAR__741 =  ( n7____DOLLAR__73 ) == ( 8'd65 )  ;
assign n175____DOLLAR__745 =  ( n7____DOLLAR__73 ) == ( 8'd64 )  ;
assign n176____DOLLAR__749 =  ( n7____DOLLAR__73 ) == ( 8'd63 )  ;
assign n177____DOLLAR__753 =  ( n7____DOLLAR__73 ) == ( 8'd62 )  ;
assign n178____DOLLAR__757 =  ( n7____DOLLAR__73 ) == ( 8'd61 )  ;
assign n179____DOLLAR__761 =  ( n7____DOLLAR__73 ) == ( 8'd60 )  ;
assign n180____DOLLAR__765 =  ( n7____DOLLAR__73 ) == ( 8'd59 )  ;
assign n181____DOLLAR__769 =  ( n7____DOLLAR__73 ) == ( 8'd58 )  ;
assign n182____DOLLAR__773 =  ( n7____DOLLAR__73 ) == ( 8'd57 )  ;
assign n183____DOLLAR__777 =  ( n7____DOLLAR__73 ) == ( 8'd56 )  ;
assign n184____DOLLAR__781 =  ( n7____DOLLAR__73 ) == ( 8'd55 )  ;
assign n185____DOLLAR__785 =  ( n7____DOLLAR__73 ) == ( 8'd54 )  ;
assign n186____DOLLAR__789 =  ( n7____DOLLAR__73 ) == ( 8'd53 )  ;
assign n187____DOLLAR__793 =  ( n7____DOLLAR__73 ) == ( 8'd52 )  ;
assign n188____DOLLAR__797 =  ( n7____DOLLAR__73 ) == ( 8'd51 )  ;
assign n189____DOLLAR__801 =  ( n7____DOLLAR__73 ) == ( 8'd50 )  ;
assign n190____DOLLAR__805 =  ( n7____DOLLAR__73 ) == ( 8'd49 )  ;
assign n191____DOLLAR__809 =  ( n7____DOLLAR__73 ) == ( 8'd48 )  ;
assign n192____DOLLAR__813 =  ( n7____DOLLAR__73 ) == ( 8'd47 )  ;
assign n193____DOLLAR__817 =  ( n7____DOLLAR__73 ) == ( 8'd46 )  ;
assign n194____DOLLAR__821 =  ( n7____DOLLAR__73 ) == ( 8'd45 )  ;
assign n195____DOLLAR__825 =  ( n7____DOLLAR__73 ) == ( 8'd44 )  ;
assign n196____DOLLAR__829 =  ( n7____DOLLAR__73 ) == ( 8'd43 )  ;
assign n197____DOLLAR__833 =  ( n7____DOLLAR__73 ) == ( 8'd42 )  ;
assign n198____DOLLAR__837 =  ( n7____DOLLAR__73 ) == ( 8'd41 )  ;
assign n199____DOLLAR__841 =  ( n7____DOLLAR__73 ) == ( 8'd40 )  ;
assign n200____DOLLAR__845 =  ( n7____DOLLAR__73 ) == ( 8'd39 )  ;
assign n201____DOLLAR__849 =  ( n7____DOLLAR__73 ) == ( 8'd38 )  ;
assign n202____DOLLAR__853 =  ( n7____DOLLAR__73 ) == ( 8'd37 )  ;
assign n203____DOLLAR__857 =  ( n7____DOLLAR__73 ) == ( 8'd36 )  ;
assign n204____DOLLAR__861 =  ( n7____DOLLAR__73 ) == ( 8'd35 )  ;
assign n205____DOLLAR__865 =  ( n7____DOLLAR__73 ) == ( 8'd34 )  ;
assign n206____DOLLAR__869 =  ( n7____DOLLAR__73 ) == ( 8'd33 )  ;
assign n207____DOLLAR__873 =  ( n7____DOLLAR__73 ) == ( 8'd32 )  ;
assign n208____DOLLAR__877 =  ( n7____DOLLAR__73 ) == ( 8'd31 )  ;
assign n209____DOLLAR__881 =  ( n7____DOLLAR__73 ) == ( 8'd30 )  ;
assign n210____DOLLAR__885 =  ( n7____DOLLAR__73 ) == ( 8'd29 )  ;
assign n211____DOLLAR__889 =  ( n7____DOLLAR__73 ) == ( 8'd28 )  ;
assign n212____DOLLAR__893 =  ( n7____DOLLAR__73 ) == ( 8'd27 )  ;
assign n213____DOLLAR__897 =  ( n7____DOLLAR__73 ) == ( 8'd26 )  ;
assign n214____DOLLAR__901 =  ( n7____DOLLAR__73 ) == ( 8'd25 )  ;
assign n215____DOLLAR__905 =  ( n7____DOLLAR__73 ) == ( 8'd24 )  ;
assign n216____DOLLAR__909 =  ( n7____DOLLAR__73 ) == ( 8'd23 )  ;
assign n217____DOLLAR__913 =  ( n7____DOLLAR__73 ) == ( 8'd22 )  ;
assign n218____DOLLAR__917 =  ( n7____DOLLAR__73 ) == ( 8'd20 )  ;
assign n219____DOLLAR__921 =  ( n7____DOLLAR__73 ) == ( 8'd19 )  ;
assign n220____DOLLAR__925 =  ( n7____DOLLAR__73 ) == ( 8'd18 )  ;
assign n221____DOLLAR__929 =  ( n7____DOLLAR__73 ) == ( 8'd17 )  ;
assign n222____DOLLAR__933 =  ( n7____DOLLAR__73 ) == ( 8'd16 )  ;
assign n223____DOLLAR__937 =  ( n7____DOLLAR__73 ) == ( 8'd15 )  ;
assign n224____DOLLAR__941 =  ( n7____DOLLAR__73 ) == ( 8'd14 )  ;
assign n225____DOLLAR__945 =  ( n7____DOLLAR__73 ) == ( 8'd13 )  ;
assign n226____DOLLAR__949 =  ( n7____DOLLAR__73 ) == ( 8'd12 )  ;
assign n227____DOLLAR__953 =  ( n7____DOLLAR__73 ) == ( 8'd11 )  ;
assign n228____DOLLAR__957 =  ( n7____DOLLAR__73 ) == ( 8'd10 )  ;
assign n229____DOLLAR__961 =  ( n7____DOLLAR__73 ) == ( 8'd9 )  ;
assign n230____DOLLAR__965 =  ( n7____DOLLAR__73 ) == ( 8'd8 )  ;
assign n231____DOLLAR__969 =  ( n7____DOLLAR__73 ) == ( 8'd7 )  ;
assign n232____DOLLAR__973 =  ( n7____DOLLAR__73 ) == ( 8'd6 )  ;
assign n233____DOLLAR__977 =  ( n7____DOLLAR__73 ) == ( 8'd4 )  ;
assign n234____DOLLAR__981 =  ( n7____DOLLAR__73 ) == ( 8'd3 )  ;
assign n235____DOLLAR__985 =  ( n7____DOLLAR__73 ) == ( 8'd2 )  ;
assign n236____DOLLAR__989 =  ( n7____DOLLAR__73 ) == ( 8'd1 )  ;
assign n237____DOLLAR__993 =  ( n7____DOLLAR__73 ) == ( 8'd0 )  ;
assign n238____DOLLAR__995 =  ( n236____DOLLAR__989 ) | ( n237____DOLLAR__993 )  ;
assign n239____DOLLAR__996 =  ( n235____DOLLAR__985 ) | ( n238____DOLLAR__995 )  ;
assign n240____DOLLAR__997 =  ( n234____DOLLAR__981 ) | ( n239____DOLLAR__996 )  ;
assign n241____DOLLAR__998 =  ( n233____DOLLAR__977 ) | ( n240____DOLLAR__997 )  ;
assign n242____DOLLAR__999 =  ( n232____DOLLAR__973 ) | ( n241____DOLLAR__998 )  ;
assign n243____DOLLAR__1000 =  ( n231____DOLLAR__969 ) | ( n242____DOLLAR__999 )  ;
assign n244____DOLLAR__1001 =  ( n230____DOLLAR__965 ) | ( n243____DOLLAR__1000 )  ;
assign n245____DOLLAR__1002 =  ( n229____DOLLAR__961 ) | ( n244____DOLLAR__1001 )  ;
assign n246____DOLLAR__1003 =  ( n228____DOLLAR__957 ) | ( n245____DOLLAR__1002 )  ;
assign n247____DOLLAR__1004 =  ( n227____DOLLAR__953 ) | ( n246____DOLLAR__1003 )  ;
assign n248____DOLLAR__1005 =  ( n226____DOLLAR__949 ) | ( n247____DOLLAR__1004 )  ;
assign n249____DOLLAR__1006 =  ( n225____DOLLAR__945 ) | ( n248____DOLLAR__1005 )  ;
assign n250____DOLLAR__1007 =  ( n224____DOLLAR__941 ) | ( n249____DOLLAR__1006 )  ;
assign n251____DOLLAR__1008 =  ( n223____DOLLAR__937 ) | ( n250____DOLLAR__1007 )  ;
assign n252____DOLLAR__1009 =  ( n222____DOLLAR__933 ) | ( n251____DOLLAR__1008 )  ;
assign n253____DOLLAR__1010 =  ( n221____DOLLAR__929 ) | ( n252____DOLLAR__1009 )  ;
assign n254____DOLLAR__1011 =  ( n220____DOLLAR__925 ) | ( n253____DOLLAR__1010 )  ;
assign n255____DOLLAR__1012 =  ( n219____DOLLAR__921 ) | ( n254____DOLLAR__1011 )  ;
assign n256____DOLLAR__1013 =  ( n218____DOLLAR__917 ) | ( n255____DOLLAR__1012 )  ;
assign n257____DOLLAR__1014 =  ( n217____DOLLAR__913 ) | ( n256____DOLLAR__1013 )  ;
assign n258____DOLLAR__1015 =  ( n216____DOLLAR__909 ) | ( n257____DOLLAR__1014 )  ;
assign n259____DOLLAR__1016 =  ( n215____DOLLAR__905 ) | ( n258____DOLLAR__1015 )  ;
assign n260____DOLLAR__1017 =  ( n214____DOLLAR__901 ) | ( n259____DOLLAR__1016 )  ;
assign n261____DOLLAR__1018 =  ( n213____DOLLAR__897 ) | ( n260____DOLLAR__1017 )  ;
assign n262____DOLLAR__1019 =  ( n212____DOLLAR__893 ) | ( n261____DOLLAR__1018 )  ;
assign n263____DOLLAR__1020 =  ( n211____DOLLAR__889 ) | ( n262____DOLLAR__1019 )  ;
assign n264____DOLLAR__1021 =  ( n210____DOLLAR__885 ) | ( n263____DOLLAR__1020 )  ;
assign n265____DOLLAR__1022 =  ( n209____DOLLAR__881 ) | ( n264____DOLLAR__1021 )  ;
assign n266____DOLLAR__1023 =  ( n208____DOLLAR__877 ) | ( n265____DOLLAR__1022 )  ;
assign n267____DOLLAR__1024 =  ( n207____DOLLAR__873 ) | ( n266____DOLLAR__1023 )  ;
assign n268____DOLLAR__1025 =  ( n206____DOLLAR__869 ) | ( n267____DOLLAR__1024 )  ;
assign n269____DOLLAR__1026 =  ( n205____DOLLAR__865 ) | ( n268____DOLLAR__1025 )  ;
assign n270____DOLLAR__1027 =  ( n204____DOLLAR__861 ) | ( n269____DOLLAR__1026 )  ;
assign n271____DOLLAR__1028 =  ( n203____DOLLAR__857 ) | ( n270____DOLLAR__1027 )  ;
assign n272____DOLLAR__1029 =  ( n202____DOLLAR__853 ) | ( n271____DOLLAR__1028 )  ;
assign n273____DOLLAR__1030 =  ( n201____DOLLAR__849 ) | ( n272____DOLLAR__1029 )  ;
assign n274____DOLLAR__1031 =  ( n200____DOLLAR__845 ) | ( n273____DOLLAR__1030 )  ;
assign n275____DOLLAR__1032 =  ( n199____DOLLAR__841 ) | ( n274____DOLLAR__1031 )  ;
assign n276____DOLLAR__1033 =  ( n198____DOLLAR__837 ) | ( n275____DOLLAR__1032 )  ;
assign n277____DOLLAR__1034 =  ( n197____DOLLAR__833 ) | ( n276____DOLLAR__1033 )  ;
assign n278____DOLLAR__1035 =  ( n196____DOLLAR__829 ) | ( n277____DOLLAR__1034 )  ;
assign n279____DOLLAR__1036 =  ( n195____DOLLAR__825 ) | ( n278____DOLLAR__1035 )  ;
assign n280____DOLLAR__1037 =  ( n194____DOLLAR__821 ) | ( n279____DOLLAR__1036 )  ;
assign n281____DOLLAR__1038 =  ( n193____DOLLAR__817 ) | ( n280____DOLLAR__1037 )  ;
assign n282____DOLLAR__1039 =  ( n192____DOLLAR__813 ) | ( n281____DOLLAR__1038 )  ;
assign n283____DOLLAR__1040 =  ( n191____DOLLAR__809 ) | ( n282____DOLLAR__1039 )  ;
assign n284____DOLLAR__1041 =  ( n190____DOLLAR__805 ) | ( n283____DOLLAR__1040 )  ;
assign n285____DOLLAR__1042 =  ( n189____DOLLAR__801 ) | ( n284____DOLLAR__1041 )  ;
assign n286____DOLLAR__1043 =  ( n188____DOLLAR__797 ) | ( n285____DOLLAR__1042 )  ;
assign n287____DOLLAR__1044 =  ( n187____DOLLAR__793 ) | ( n286____DOLLAR__1043 )  ;
assign n288____DOLLAR__1045 =  ( n186____DOLLAR__789 ) | ( n287____DOLLAR__1044 )  ;
assign n289____DOLLAR__1046 =  ( n185____DOLLAR__785 ) | ( n288____DOLLAR__1045 )  ;
assign n290____DOLLAR__1047 =  ( n184____DOLLAR__781 ) | ( n289____DOLLAR__1046 )  ;
assign n291____DOLLAR__1048 =  ( n183____DOLLAR__777 ) | ( n290____DOLLAR__1047 )  ;
assign n292____DOLLAR__1049 =  ( n182____DOLLAR__773 ) | ( n291____DOLLAR__1048 )  ;
assign n293____DOLLAR__1050 =  ( n181____DOLLAR__769 ) | ( n292____DOLLAR__1049 )  ;
assign n294____DOLLAR__1051 =  ( n180____DOLLAR__765 ) | ( n293____DOLLAR__1050 )  ;
assign n295____DOLLAR__1052 =  ( n179____DOLLAR__761 ) | ( n294____DOLLAR__1051 )  ;
assign n296____DOLLAR__1053 =  ( n178____DOLLAR__757 ) | ( n295____DOLLAR__1052 )  ;
assign n297____DOLLAR__1054 =  ( n177____DOLLAR__753 ) | ( n296____DOLLAR__1053 )  ;
assign n298____DOLLAR__1055 =  ( n176____DOLLAR__749 ) | ( n297____DOLLAR__1054 )  ;
assign n299____DOLLAR__1056 =  ( n175____DOLLAR__745 ) | ( n298____DOLLAR__1055 )  ;
assign n300____DOLLAR__1057 =  ( n174____DOLLAR__741 ) | ( n299____DOLLAR__1056 )  ;
assign n301____DOLLAR__1058 =  ( n173____DOLLAR__737 ) | ( n300____DOLLAR__1057 )  ;
assign n302____DOLLAR__1059 =  ( n172____DOLLAR__733 ) | ( n301____DOLLAR__1058 )  ;
assign n303____DOLLAR__1060 =  ( n171____DOLLAR__729 ) | ( n302____DOLLAR__1059 )  ;
assign n304____DOLLAR__1061 =  ( n170____DOLLAR__725 ) | ( n303____DOLLAR__1060 )  ;
assign n305____DOLLAR__1062 =  ( n169____DOLLAR__721 ) | ( n304____DOLLAR__1061 )  ;
assign n306____DOLLAR__1063 =  ( n168____DOLLAR__717 ) | ( n305____DOLLAR__1062 )  ;
assign n307____DOLLAR__1064 =  ( n167____DOLLAR__713 ) | ( n306____DOLLAR__1063 )  ;
assign n308____DOLLAR__1065 =  ( n166____DOLLAR__709 ) | ( n307____DOLLAR__1064 )  ;
assign n309____DOLLAR__1066 =  ( n165____DOLLAR__705 ) | ( n308____DOLLAR__1065 )  ;
assign n310____DOLLAR__1067 =  ( n164____DOLLAR__701 ) | ( n309____DOLLAR__1066 )  ;
assign n311____DOLLAR__1068 =  ( n163____DOLLAR__697 ) | ( n310____DOLLAR__1067 )  ;
assign n312____DOLLAR__1069 =  ( n162____DOLLAR__693 ) | ( n311____DOLLAR__1068 )  ;
assign n313____DOLLAR__1070 =  ( n161____DOLLAR__689 ) | ( n312____DOLLAR__1069 )  ;
assign n314____DOLLAR__1071 =  ( n160____DOLLAR__685 ) | ( n313____DOLLAR__1070 )  ;
assign n315____DOLLAR__1072 =  ( n159____DOLLAR__681 ) | ( n314____DOLLAR__1071 )  ;
assign n316____DOLLAR__1073 =  ( n158____DOLLAR__677 ) | ( n315____DOLLAR__1072 )  ;
assign n317____DOLLAR__1074 =  ( n157____DOLLAR__673 ) | ( n316____DOLLAR__1073 )  ;
assign n318____DOLLAR__1075 =  ( n156____DOLLAR__669 ) | ( n317____DOLLAR__1074 )  ;
assign n319____DOLLAR__1076 =  ( n155____DOLLAR__665 ) | ( n318____DOLLAR__1075 )  ;
assign n320____DOLLAR__1077 =  ( n154____DOLLAR__661 ) | ( n319____DOLLAR__1076 )  ;
assign n321____DOLLAR__1078 =  ( n153____DOLLAR__657 ) | ( n320____DOLLAR__1077 )  ;
assign n322____DOLLAR__1079 =  ( n152____DOLLAR__653 ) | ( n321____DOLLAR__1078 )  ;
assign n323____DOLLAR__1080 =  ( n151____DOLLAR__649 ) | ( n322____DOLLAR__1079 )  ;
assign n324____DOLLAR__1081 =  ( n150____DOLLAR__645 ) | ( n323____DOLLAR__1080 )  ;
assign n325____DOLLAR__1082 =  ( n149____DOLLAR__641 ) | ( n324____DOLLAR__1081 )  ;
assign n326____DOLLAR__1083 =  ( n148____DOLLAR__637 ) | ( n325____DOLLAR__1082 )  ;
assign n327____DOLLAR__1084 =  ( n147____DOLLAR__633 ) | ( n326____DOLLAR__1083 )  ;
assign n328____DOLLAR__1085 =  ( n146____DOLLAR__629 ) | ( n327____DOLLAR__1084 )  ;
assign n329____DOLLAR__1086 =  ( n145____DOLLAR__625 ) | ( n328____DOLLAR__1085 )  ;
assign n330____DOLLAR__1087 =  ( n144____DOLLAR__621 ) | ( n329____DOLLAR__1086 )  ;
assign n331____DOLLAR__1088 =  ( n143____DOLLAR__617 ) | ( n330____DOLLAR__1087 )  ;
assign n332____DOLLAR__1089 =  ( n142____DOLLAR__613 ) | ( n331____DOLLAR__1088 )  ;
assign n333____DOLLAR__1090 =  ( n141____DOLLAR__609 ) | ( n332____DOLLAR__1089 )  ;
assign n334____DOLLAR__1091 =  ( n140____DOLLAR__605 ) | ( n333____DOLLAR__1090 )  ;
assign n335____DOLLAR__1092 =  ( n139____DOLLAR__601 ) | ( n334____DOLLAR__1091 )  ;
assign n336____DOLLAR__1093 =  ( n138____DOLLAR__597 ) | ( n335____DOLLAR__1092 )  ;
assign n337____DOLLAR__1094 =  ( n137____DOLLAR__593 ) | ( n336____DOLLAR__1093 )  ;
assign n338____DOLLAR__1095 =  ( n136____DOLLAR__589 ) | ( n337____DOLLAR__1094 )  ;
assign n339____DOLLAR__1096 =  ( n135____DOLLAR__585 ) | ( n338____DOLLAR__1095 )  ;
assign n340____DOLLAR__1097 =  ( n134____DOLLAR__581 ) | ( n339____DOLLAR__1096 )  ;
assign n341____DOLLAR__1098 =  ( n133____DOLLAR__577 ) | ( n340____DOLLAR__1097 )  ;
assign n342____DOLLAR__1099 =  ( n132____DOLLAR__573 ) | ( n341____DOLLAR__1098 )  ;
assign n343____DOLLAR__1100 =  ( n131____DOLLAR__569 ) | ( n342____DOLLAR__1099 )  ;
assign n344____DOLLAR__1101 =  ( n130____DOLLAR__565 ) | ( n343____DOLLAR__1100 )  ;
assign n345____DOLLAR__1102 =  ( n129____DOLLAR__561 ) | ( n344____DOLLAR__1101 )  ;
assign n346____DOLLAR__1103 =  ( n128____DOLLAR__557 ) | ( n345____DOLLAR__1102 )  ;
assign n347____DOLLAR__1104 =  ( n127____DOLLAR__553 ) | ( n346____DOLLAR__1103 )  ;
assign n348____DOLLAR__1105 =  ( n126____DOLLAR__549 ) | ( n347____DOLLAR__1104 )  ;
assign n349____DOLLAR__1106 =  ( n125____DOLLAR__545 ) | ( n348____DOLLAR__1105 )  ;
assign n350____DOLLAR__1107 =  ( n124____DOLLAR__541 ) | ( n349____DOLLAR__1106 )  ;
assign n351____DOLLAR__1108 =  ( n123____DOLLAR__537 ) | ( n350____DOLLAR__1107 )  ;
assign n352____DOLLAR__1109 =  ( n122____DOLLAR__533 ) | ( n351____DOLLAR__1108 )  ;
assign n353____DOLLAR__1110 =  ( n121____DOLLAR__529 ) | ( n352____DOLLAR__1109 )  ;
assign n354____DOLLAR__1111 =  ( n120____DOLLAR__525 ) | ( n353____DOLLAR__1110 )  ;
assign n355____DOLLAR__1112 =  ( n119____DOLLAR__521 ) | ( n354____DOLLAR__1111 )  ;
assign n356____DOLLAR__1113 =  ( n118____DOLLAR__517 ) | ( n355____DOLLAR__1112 )  ;
assign n357____DOLLAR__1114 =  ( n117____DOLLAR__513 ) | ( n356____DOLLAR__1113 )  ;
assign n358____DOLLAR__1115 =  ( n116____DOLLAR__509 ) | ( n357____DOLLAR__1114 )  ;
assign n359____DOLLAR__1116 =  ( n115____DOLLAR__505 ) | ( n358____DOLLAR__1115 )  ;
assign n360____DOLLAR__1117 =  ( n114____DOLLAR__501 ) | ( n359____DOLLAR__1116 )  ;
assign n361____DOLLAR__1118 =  ( n113____DOLLAR__497 ) | ( n360____DOLLAR__1117 )  ;
assign n362____DOLLAR__1119 =  ( n112____DOLLAR__493 ) | ( n361____DOLLAR__1118 )  ;
assign n363____DOLLAR__1120 =  ( n111____DOLLAR__489 ) | ( n362____DOLLAR__1119 )  ;
assign n364____DOLLAR__1121 =  ( n110____DOLLAR__485 ) | ( n363____DOLLAR__1120 )  ;
assign n365____DOLLAR__1122 =  ( n109____DOLLAR__481 ) | ( n364____DOLLAR__1121 )  ;
assign n366____DOLLAR__1123 =  ( n108____DOLLAR__477 ) | ( n365____DOLLAR__1122 )  ;
assign n367____DOLLAR__1124 =  ( n107____DOLLAR__473 ) | ( n366____DOLLAR__1123 )  ;
assign n368____DOLLAR__1125 =  ( n106____DOLLAR__469 ) | ( n367____DOLLAR__1124 )  ;
assign n369____DOLLAR__1126 =  ( n105____DOLLAR__465 ) | ( n368____DOLLAR__1125 )  ;
assign n370____DOLLAR__1127 =  ( n104____DOLLAR__461 ) | ( n369____DOLLAR__1126 )  ;
assign n371____DOLLAR__1128 =  ( n103____DOLLAR__457 ) | ( n370____DOLLAR__1127 )  ;
assign n372____DOLLAR__1129 =  ( n102____DOLLAR__453 ) | ( n371____DOLLAR__1128 )  ;
assign n373____DOLLAR__1130 =  ( n101____DOLLAR__449 ) | ( n372____DOLLAR__1129 )  ;
assign n374____DOLLAR__1131 =  ( n100____DOLLAR__445 ) | ( n373____DOLLAR__1130 )  ;
assign n375____DOLLAR__1132 =  ( n99____DOLLAR__441 ) | ( n374____DOLLAR__1131 )  ;
assign n376____DOLLAR__1133 =  ( n98____DOLLAR__437 ) | ( n375____DOLLAR__1132 )  ;
assign n377____DOLLAR__1134 =  ( n97____DOLLAR__433 ) | ( n376____DOLLAR__1133 )  ;
assign n378____DOLLAR__1135 =  ( n96____DOLLAR__429 ) | ( n377____DOLLAR__1134 )  ;
assign n379____DOLLAR__1136 =  ( n95____DOLLAR__425 ) | ( n378____DOLLAR__1135 )  ;
assign n380____DOLLAR__1137 =  ( n94____DOLLAR__421 ) | ( n379____DOLLAR__1136 )  ;
assign n381____DOLLAR__1138 =  ( n93____DOLLAR__417 ) | ( n380____DOLLAR__1137 )  ;
assign n382____DOLLAR__1139 =  ( n92____DOLLAR__413 ) | ( n381____DOLLAR__1138 )  ;
assign n383____DOLLAR__1140 =  ( n91____DOLLAR__409 ) | ( n382____DOLLAR__1139 )  ;
assign n384____DOLLAR__1141 =  ( n90____DOLLAR__405 ) | ( n383____DOLLAR__1140 )  ;
assign n385____DOLLAR__1142 =  ( n89____DOLLAR__401 ) | ( n384____DOLLAR__1141 )  ;
assign n386____DOLLAR__1143 =  ( n88____DOLLAR__397 ) | ( n385____DOLLAR__1142 )  ;
assign n387____DOLLAR__1144 =  ( n87____DOLLAR__393 ) | ( n386____DOLLAR__1143 )  ;
assign n388____DOLLAR__1145 =  ( n86____DOLLAR__389 ) | ( n387____DOLLAR__1144 )  ;
assign n389____DOLLAR__1146 =  ( n85____DOLLAR__385 ) | ( n388____DOLLAR__1145 )  ;
assign n390____DOLLAR__1147 =  ( n84____DOLLAR__381 ) | ( n389____DOLLAR__1146 )  ;
assign n391____DOLLAR__1148 =  ( n83____DOLLAR__377 ) | ( n390____DOLLAR__1147 )  ;
assign n392____DOLLAR__1149 =  ( n82____DOLLAR__373 ) | ( n391____DOLLAR__1148 )  ;
assign n393____DOLLAR__1150 =  ( n81____DOLLAR__369 ) | ( n392____DOLLAR__1149 )  ;
assign n394____DOLLAR__1151 =  ( n80____DOLLAR__365 ) | ( n393____DOLLAR__1150 )  ;
assign n395____DOLLAR__1152 =  ( n79____DOLLAR__361 ) | ( n394____DOLLAR__1151 )  ;
assign n396____DOLLAR__1153 =  ( n78____DOLLAR__357 ) | ( n395____DOLLAR__1152 )  ;
assign n397____DOLLAR__1154 =  ( n77____DOLLAR__353 ) | ( n396____DOLLAR__1153 )  ;
assign n398____DOLLAR__1155 =  ( n76____DOLLAR__349 ) | ( n397____DOLLAR__1154 )  ;
assign n399____DOLLAR__1156 =  ( n75____DOLLAR__345 ) | ( n398____DOLLAR__1155 )  ;
assign n400____DOLLAR__1157 =  ( n74____DOLLAR__341 ) | ( n399____DOLLAR__1156 )  ;
assign n401____DOLLAR__1158 =  ( n73____DOLLAR__337 ) | ( n400____DOLLAR__1157 )  ;
assign n402____DOLLAR__1159 =  ( n72____DOLLAR__333 ) | ( n401____DOLLAR__1158 )  ;
assign n403____DOLLAR__1160 =  ( n71____DOLLAR__329 ) | ( n402____DOLLAR__1159 )  ;
assign n404____DOLLAR__1161 =  ( n70____DOLLAR__325 ) | ( n403____DOLLAR__1160 )  ;
assign n405____DOLLAR__1162 =  ( n69____DOLLAR__321 ) | ( n404____DOLLAR__1161 )  ;
assign n406____DOLLAR__1163 =  ( n68____DOLLAR__317 ) | ( n405____DOLLAR__1162 )  ;
assign n407____DOLLAR__1164 =  ( n67____DOLLAR__313 ) | ( n406____DOLLAR__1163 )  ;
assign n408____DOLLAR__1165 =  ( n66____DOLLAR__309 ) | ( n407____DOLLAR__1164 )  ;
assign n409____DOLLAR__1166 =  ( n65____DOLLAR__305 ) | ( n408____DOLLAR__1165 )  ;
assign n410____DOLLAR__1167 =  ( n64____DOLLAR__301 ) | ( n409____DOLLAR__1166 )  ;
assign n411____DOLLAR__1168 =  ( n63____DOLLAR__297 ) | ( n410____DOLLAR__1167 )  ;
assign n412____DOLLAR__1169 =  ( n62____DOLLAR__293 ) | ( n411____DOLLAR__1168 )  ;
assign n413____DOLLAR__1170 =  ( n61____DOLLAR__289 ) | ( n412____DOLLAR__1169 )  ;
assign n414____DOLLAR__1171 =  ( n60____DOLLAR__285 ) | ( n413____DOLLAR__1170 )  ;
assign n415____DOLLAR__1172 =  ( n59____DOLLAR__281 ) | ( n414____DOLLAR__1171 )  ;
assign n416____DOLLAR__1173 =  ( n58____DOLLAR__277 ) | ( n415____DOLLAR__1172 )  ;
assign n417____DOLLAR__1174 =  ( n57____DOLLAR__273 ) | ( n416____DOLLAR__1173 )  ;
assign n418____DOLLAR__1175 =  ( n56____DOLLAR__269 ) | ( n417____DOLLAR__1174 )  ;
assign n419____DOLLAR__1176 =  ( n55____DOLLAR__265 ) | ( n418____DOLLAR__1175 )  ;
assign n420____DOLLAR__1177 =  ( n54____DOLLAR__261 ) | ( n419____DOLLAR__1176 )  ;
assign n421____DOLLAR__1178 =  ( n53____DOLLAR__257 ) | ( n420____DOLLAR__1177 )  ;
assign n422____DOLLAR__1179 =  ( n52____DOLLAR__253 ) | ( n421____DOLLAR__1178 )  ;
assign n423____DOLLAR__1180 =  ( n51____DOLLAR__249 ) | ( n422____DOLLAR__1179 )  ;
assign n424____DOLLAR__1181 =  ( n50____DOLLAR__245 ) | ( n423____DOLLAR__1180 )  ;
assign n425____DOLLAR__1182 =  ( n49____DOLLAR__241 ) | ( n424____DOLLAR__1181 )  ;
assign n426____DOLLAR__1183 =  ( n48____DOLLAR__237 ) | ( n425____DOLLAR__1182 )  ;
assign n427____DOLLAR__1184 =  ( n47____DOLLAR__233 ) | ( n426____DOLLAR__1183 )  ;
assign n428____DOLLAR__1185 =  ( n46____DOLLAR__229 ) | ( n427____DOLLAR__1184 )  ;
assign n429____DOLLAR__1186 =  ( n45____DOLLAR__225 ) | ( n428____DOLLAR__1185 )  ;
assign n430____DOLLAR__1187 =  ( n44____DOLLAR__221 ) | ( n429____DOLLAR__1186 )  ;
assign n431____DOLLAR__1188 =  ( n43____DOLLAR__217 ) | ( n430____DOLLAR__1187 )  ;
assign n432____DOLLAR__1189 =  ( n42____DOLLAR__213 ) | ( n431____DOLLAR__1188 )  ;
assign n433____DOLLAR__1190 =  ( n41____DOLLAR__209 ) | ( n432____DOLLAR__1189 )  ;
assign n434____DOLLAR__1191 =  ( n40____DOLLAR__205 ) | ( n433____DOLLAR__1190 )  ;
assign n435____DOLLAR__1192 =  ( n39____DOLLAR__201 ) | ( n434____DOLLAR__1191 )  ;
assign n436____DOLLAR__1193 =  ( n38____DOLLAR__197 ) | ( n435____DOLLAR__1192 )  ;
assign n437____DOLLAR__1194 =  ( n37____DOLLAR__193 ) | ( n436____DOLLAR__1193 )  ;
assign n438____DOLLAR__1195 =  ( n36____DOLLAR__189 ) | ( n437____DOLLAR__1194 )  ;
assign n439____DOLLAR__1196 =  ( n35____DOLLAR__185 ) | ( n438____DOLLAR__1195 )  ;
assign n440____DOLLAR__1197 =  ( n34____DOLLAR__181 ) | ( n439____DOLLAR__1196 )  ;
assign n441____DOLLAR__1198 =  ( n33____DOLLAR__177 ) | ( n440____DOLLAR__1197 )  ;
assign n442____DOLLAR__1199 =  ( n32____DOLLAR__173 ) | ( n441____DOLLAR__1198 )  ;
assign n443____DOLLAR__1200 =  ( n31____DOLLAR__169 ) | ( n442____DOLLAR__1199 )  ;
assign n444____DOLLAR__1201 =  ( n30____DOLLAR__165 ) | ( n443____DOLLAR__1200 )  ;
assign n445____DOLLAR__1202 =  ( n29____DOLLAR__161 ) | ( n444____DOLLAR__1201 )  ;
assign n446____DOLLAR__1203 =  ( n28____DOLLAR__157 ) | ( n445____DOLLAR__1202 )  ;
assign n447____DOLLAR__1204 =  ( n27____DOLLAR__153 ) | ( n446____DOLLAR__1203 )  ;
assign n448____DOLLAR__1205 =  ( n26____DOLLAR__149 ) | ( n447____DOLLAR__1204 )  ;
assign n449____DOLLAR__1206 =  ( n25____DOLLAR__145 ) | ( n448____DOLLAR__1205 )  ;
assign n450____DOLLAR__1207 =  ( n24____DOLLAR__141 ) | ( n449____DOLLAR__1206 )  ;
assign n451____DOLLAR__1208 =  ( n23____DOLLAR__137 ) | ( n450____DOLLAR__1207 )  ;
assign n452____DOLLAR__1209 =  ( n22____DOLLAR__133 ) | ( n451____DOLLAR__1208 )  ;
assign n453____DOLLAR__1210 =  ( n21____DOLLAR__129 ) | ( n452____DOLLAR__1209 )  ;
assign n454____DOLLAR__1211 =  ( n20____DOLLAR__125 ) | ( n453____DOLLAR__1210 )  ;
assign n455____DOLLAR__1212 =  ( n19____DOLLAR__121 ) | ( n454____DOLLAR__1211 )  ;
assign n456____DOLLAR__1213 =  ( n18____DOLLAR__117 ) | ( n455____DOLLAR__1212 )  ;
assign n457____DOLLAR__1214 =  ( n17____DOLLAR__113 ) | ( n456____DOLLAR__1213 )  ;
assign n458____DOLLAR__1215 =  ( n16____DOLLAR__109 ) | ( n457____DOLLAR__1214 )  ;
assign n459____DOLLAR__1216 =  ( n15____DOLLAR__105 ) | ( n458____DOLLAR__1215 )  ;
assign n460____DOLLAR__1217 =  ( n14____DOLLAR__101 ) | ( n459____DOLLAR__1216 )  ;
assign n461____DOLLAR__1218 =  ( n13____DOLLAR__97 ) | ( n460____DOLLAR__1217 )  ;
assign n462____DOLLAR__1219 =  ( n12____DOLLAR__93 ) | ( n461____DOLLAR__1218 )  ;
assign n463____DOLLAR__1220 =  ( n11____DOLLAR__89 ) | ( n462____DOLLAR__1219 )  ;
assign n464____DOLLAR__1221 =  ( n10____DOLLAR__85 ) | ( n463____DOLLAR__1220 )  ;
assign n465____DOLLAR__1222 =  ( n9____DOLLAR__81 ) | ( n464____DOLLAR__1221 )  ;
assign n466____DOLLAR__1223 =  ( n8____DOLLAR__77 ) | ( n465____DOLLAR__1222 )  ;
assign n467____DOLLAR__1228 =  { ( DPH ) , ( DPL ) }  ;
assign n468____DOLLAR__1230 = n467____DOLLAR__1228[7:0] ;
assign n469____DOLLAR__1232 =  ( n466____DOLLAR__1223 ) ? ( n468____DOLLAR__1230 ) : ( DPL ) ;
assign ROM_addr_n470 = PC ;
assign n472____DOLLAR__1233 = ROM_data_n471 ;
assign n473____DOLLAR__1237 =  ( n472____DOLLAR__1233 ) == ( 8'd255 )  ;
assign n474____DOLLAR__1241 =  ( n472____DOLLAR__1233 ) == ( 8'd254 )  ;
assign n475____DOLLAR__1245 =  ( n472____DOLLAR__1233 ) == ( 8'd253 )  ;
assign n476____DOLLAR__1249 =  ( n472____DOLLAR__1233 ) == ( 8'd252 )  ;
assign n477____DOLLAR__1253 =  ( n472____DOLLAR__1233 ) == ( 8'd251 )  ;
assign n478____DOLLAR__1257 =  ( n472____DOLLAR__1233 ) == ( 8'd250 )  ;
assign n479____DOLLAR__1261 =  ( n472____DOLLAR__1233 ) == ( 8'd249 )  ;
assign n480____DOLLAR__1265 =  ( n472____DOLLAR__1233 ) == ( 8'd248 )  ;
assign n481____DOLLAR__1269 =  ( n472____DOLLAR__1233 ) == ( 8'd247 )  ;
assign n482____DOLLAR__1273 =  ( n472____DOLLAR__1233 ) == ( 8'd246 )  ;
assign n483____DOLLAR__1277 =  ( n472____DOLLAR__1233 ) == ( 8'd244 )  ;
assign n484____DOLLAR__1281 =  ( n472____DOLLAR__1233 ) == ( 8'd243 )  ;
assign n485____DOLLAR__1285 =  ( n472____DOLLAR__1233 ) == ( 8'd242 )  ;
assign n486____DOLLAR__1289 =  ( n472____DOLLAR__1233 ) == ( 8'd241 )  ;
assign n487____DOLLAR__1293 =  ( n472____DOLLAR__1233 ) == ( 8'd240 )  ;
assign n488____DOLLAR__1297 =  ( n472____DOLLAR__1233 ) == ( 8'd239 )  ;
assign n489____DOLLAR__1301 =  ( n472____DOLLAR__1233 ) == ( 8'd238 )  ;
assign n490____DOLLAR__1305 =  ( n472____DOLLAR__1233 ) == ( 8'd237 )  ;
assign n491____DOLLAR__1309 =  ( n472____DOLLAR__1233 ) == ( 8'd236 )  ;
assign n492____DOLLAR__1313 =  ( n472____DOLLAR__1233 ) == ( 8'd235 )  ;
assign n493____DOLLAR__1317 =  ( n472____DOLLAR__1233 ) == ( 8'd234 )  ;
assign n494____DOLLAR__1321 =  ( n472____DOLLAR__1233 ) == ( 8'd233 )  ;
assign n495____DOLLAR__1325 =  ( n472____DOLLAR__1233 ) == ( 8'd232 )  ;
assign n496____DOLLAR__1329 =  ( n472____DOLLAR__1233 ) == ( 8'd231 )  ;
assign n497____DOLLAR__1333 =  ( n472____DOLLAR__1233 ) == ( 8'd230 )  ;
assign n498____DOLLAR__1337 =  ( n472____DOLLAR__1233 ) == ( 8'd229 )  ;
assign n499____DOLLAR__1341 =  ( n472____DOLLAR__1233 ) == ( 8'd228 )  ;
assign n500____DOLLAR__1345 =  ( n472____DOLLAR__1233 ) == ( 8'd227 )  ;
assign n501____DOLLAR__1349 =  ( n472____DOLLAR__1233 ) == ( 8'd226 )  ;
assign n502____DOLLAR__1353 =  ( n472____DOLLAR__1233 ) == ( 8'd225 )  ;
assign n503____DOLLAR__1357 =  ( n472____DOLLAR__1233 ) == ( 8'd224 )  ;
assign n504____DOLLAR__1361 =  ( n472____DOLLAR__1233 ) == ( 8'd223 )  ;
assign n505____DOLLAR__1365 =  ( n472____DOLLAR__1233 ) == ( 8'd222 )  ;
assign n506____DOLLAR__1369 =  ( n472____DOLLAR__1233 ) == ( 8'd221 )  ;
assign n507____DOLLAR__1373 =  ( n472____DOLLAR__1233 ) == ( 8'd220 )  ;
assign n508____DOLLAR__1377 =  ( n472____DOLLAR__1233 ) == ( 8'd219 )  ;
assign n509____DOLLAR__1381 =  ( n472____DOLLAR__1233 ) == ( 8'd218 )  ;
assign n510____DOLLAR__1385 =  ( n472____DOLLAR__1233 ) == ( 8'd217 )  ;
assign n511____DOLLAR__1389 =  ( n472____DOLLAR__1233 ) == ( 8'd216 )  ;
assign n512____DOLLAR__1393 =  ( n472____DOLLAR__1233 ) == ( 8'd215 )  ;
assign n513____DOLLAR__1397 =  ( n472____DOLLAR__1233 ) == ( 8'd214 )  ;
assign n514____DOLLAR__1401 =  ( n472____DOLLAR__1233 ) == ( 8'd212 )  ;
assign n515____DOLLAR__1405 =  ( n472____DOLLAR__1233 ) == ( 8'd211 )  ;
assign n516____DOLLAR__1409 =  ( n472____DOLLAR__1233 ) == ( 8'd209 )  ;
assign n517____DOLLAR__1413 =  ( n472____DOLLAR__1233 ) == ( 8'd207 )  ;
assign n518____DOLLAR__1417 =  ( n472____DOLLAR__1233 ) == ( 8'd206 )  ;
assign n519____DOLLAR__1421 =  ( n472____DOLLAR__1233 ) == ( 8'd205 )  ;
assign n520____DOLLAR__1425 =  ( n472____DOLLAR__1233 ) == ( 8'd204 )  ;
assign n521____DOLLAR__1429 =  ( n472____DOLLAR__1233 ) == ( 8'd203 )  ;
assign n522____DOLLAR__1433 =  ( n472____DOLLAR__1233 ) == ( 8'd202 )  ;
assign n523____DOLLAR__1437 =  ( n472____DOLLAR__1233 ) == ( 8'd201 )  ;
assign n524____DOLLAR__1441 =  ( n472____DOLLAR__1233 ) == ( 8'd200 )  ;
assign n525____DOLLAR__1445 =  ( n472____DOLLAR__1233 ) == ( 8'd199 )  ;
assign n526____DOLLAR__1449 =  ( n472____DOLLAR__1233 ) == ( 8'd198 )  ;
assign n527____DOLLAR__1453 =  ( n472____DOLLAR__1233 ) == ( 8'd196 )  ;
assign n528____DOLLAR__1457 =  ( n472____DOLLAR__1233 ) == ( 8'd195 )  ;
assign n529____DOLLAR__1461 =  ( n472____DOLLAR__1233 ) == ( 8'd193 )  ;
assign n530____DOLLAR__1465 =  ( n472____DOLLAR__1233 ) == ( 8'd192 )  ;
assign n531____DOLLAR__1469 =  ( n472____DOLLAR__1233 ) == ( 8'd191 )  ;
assign n532____DOLLAR__1473 =  ( n472____DOLLAR__1233 ) == ( 8'd190 )  ;
assign n533____DOLLAR__1477 =  ( n472____DOLLAR__1233 ) == ( 8'd189 )  ;
assign n534____DOLLAR__1481 =  ( n472____DOLLAR__1233 ) == ( 8'd188 )  ;
assign n535____DOLLAR__1485 =  ( n472____DOLLAR__1233 ) == ( 8'd187 )  ;
assign n536____DOLLAR__1489 =  ( n472____DOLLAR__1233 ) == ( 8'd186 )  ;
assign n537____DOLLAR__1493 =  ( n472____DOLLAR__1233 ) == ( 8'd185 )  ;
assign n538____DOLLAR__1497 =  ( n472____DOLLAR__1233 ) == ( 8'd184 )  ;
assign n539____DOLLAR__1501 =  ( n472____DOLLAR__1233 ) == ( 8'd183 )  ;
assign n540____DOLLAR__1505 =  ( n472____DOLLAR__1233 ) == ( 8'd182 )  ;
assign n541____DOLLAR__1509 =  ( n472____DOLLAR__1233 ) == ( 8'd181 )  ;
assign n542____DOLLAR__1513 =  ( n472____DOLLAR__1233 ) == ( 8'd180 )  ;
assign n543____DOLLAR__1517 =  ( n472____DOLLAR__1233 ) == ( 8'd179 )  ;
assign n544____DOLLAR__1521 =  ( n472____DOLLAR__1233 ) == ( 8'd177 )  ;
assign n545____DOLLAR__1525 =  ( n472____DOLLAR__1233 ) == ( 8'd176 )  ;
assign n546____DOLLAR__1529 =  ( n472____DOLLAR__1233 ) == ( 8'd175 )  ;
assign n547____DOLLAR__1533 =  ( n472____DOLLAR__1233 ) == ( 8'd174 )  ;
assign n548____DOLLAR__1537 =  ( n472____DOLLAR__1233 ) == ( 8'd173 )  ;
assign n549____DOLLAR__1541 =  ( n472____DOLLAR__1233 ) == ( 8'd172 )  ;
assign n550____DOLLAR__1545 =  ( n472____DOLLAR__1233 ) == ( 8'd171 )  ;
assign n551____DOLLAR__1549 =  ( n472____DOLLAR__1233 ) == ( 8'd170 )  ;
assign n552____DOLLAR__1553 =  ( n472____DOLLAR__1233 ) == ( 8'd169 )  ;
assign n553____DOLLAR__1557 =  ( n472____DOLLAR__1233 ) == ( 8'd168 )  ;
assign n554____DOLLAR__1561 =  ( n472____DOLLAR__1233 ) == ( 8'd167 )  ;
assign n555____DOLLAR__1565 =  ( n472____DOLLAR__1233 ) == ( 8'd166 )  ;
assign n556____DOLLAR__1569 =  ( n472____DOLLAR__1233 ) == ( 8'd165 )  ;
assign n557____DOLLAR__1573 =  ( n472____DOLLAR__1233 ) == ( 8'd164 )  ;
assign n558____DOLLAR__1577 =  ( n472____DOLLAR__1233 ) == ( 8'd163 )  ;
assign n559____DOLLAR__1581 =  ( n472____DOLLAR__1233 ) == ( 8'd162 )  ;
assign n560____DOLLAR__1585 =  ( n472____DOLLAR__1233 ) == ( 8'd161 )  ;
assign n561____DOLLAR__1589 =  ( n472____DOLLAR__1233 ) == ( 8'd160 )  ;
assign n562____DOLLAR__1593 =  ( n472____DOLLAR__1233 ) == ( 8'd159 )  ;
assign n563____DOLLAR__1597 =  ( n472____DOLLAR__1233 ) == ( 8'd158 )  ;
assign n564____DOLLAR__1601 =  ( n472____DOLLAR__1233 ) == ( 8'd157 )  ;
assign n565____DOLLAR__1605 =  ( n472____DOLLAR__1233 ) == ( 8'd156 )  ;
assign n566____DOLLAR__1609 =  ( n472____DOLLAR__1233 ) == ( 8'd155 )  ;
assign n567____DOLLAR__1613 =  ( n472____DOLLAR__1233 ) == ( 8'd154 )  ;
assign n568____DOLLAR__1617 =  ( n472____DOLLAR__1233 ) == ( 8'd153 )  ;
assign n569____DOLLAR__1621 =  ( n472____DOLLAR__1233 ) == ( 8'd152 )  ;
assign n570____DOLLAR__1625 =  ( n472____DOLLAR__1233 ) == ( 8'd151 )  ;
assign n571____DOLLAR__1629 =  ( n472____DOLLAR__1233 ) == ( 8'd150 )  ;
assign n572____DOLLAR__1633 =  ( n472____DOLLAR__1233 ) == ( 8'd149 )  ;
assign n573____DOLLAR__1637 =  ( n472____DOLLAR__1233 ) == ( 8'd148 )  ;
assign n574____DOLLAR__1641 =  ( n472____DOLLAR__1233 ) == ( 8'd147 )  ;
assign n575____DOLLAR__1645 =  ( n472____DOLLAR__1233 ) == ( 8'd145 )  ;
assign n576____DOLLAR__1649 =  ( n472____DOLLAR__1233 ) == ( 8'd144 )  ;
assign n577____DOLLAR__1653 =  ( n472____DOLLAR__1233 ) == ( 8'd132 )  ;
assign n578____DOLLAR__1657 =  ( n472____DOLLAR__1233 ) == ( 8'd131 )  ;
assign n579____DOLLAR__1661 =  ( n472____DOLLAR__1233 ) == ( 8'd130 )  ;
assign n580____DOLLAR__1665 =  ( n472____DOLLAR__1233 ) == ( 8'd129 )  ;
assign n581____DOLLAR__1669 =  ( n472____DOLLAR__1233 ) == ( 8'd128 )  ;
assign n582____DOLLAR__1673 =  ( n472____DOLLAR__1233 ) == ( 8'd127 )  ;
assign n583____DOLLAR__1677 =  ( n472____DOLLAR__1233 ) == ( 8'd126 )  ;
assign n584____DOLLAR__1681 =  ( n472____DOLLAR__1233 ) == ( 8'd125 )  ;
assign n585____DOLLAR__1685 =  ( n472____DOLLAR__1233 ) == ( 8'd124 )  ;
assign n586____DOLLAR__1689 =  ( n472____DOLLAR__1233 ) == ( 8'd123 )  ;
assign n587____DOLLAR__1693 =  ( n472____DOLLAR__1233 ) == ( 8'd122 )  ;
assign n588____DOLLAR__1697 =  ( n472____DOLLAR__1233 ) == ( 8'd121 )  ;
assign n589____DOLLAR__1701 =  ( n472____DOLLAR__1233 ) == ( 8'd120 )  ;
assign n590____DOLLAR__1705 =  ( n472____DOLLAR__1233 ) == ( 8'd119 )  ;
assign n591____DOLLAR__1709 =  ( n472____DOLLAR__1233 ) == ( 8'd118 )  ;
assign n592____DOLLAR__1713 =  ( n472____DOLLAR__1233 ) == ( 8'd116 )  ;
assign n593____DOLLAR__1717 =  ( n472____DOLLAR__1233 ) == ( 8'd115 )  ;
assign n594____DOLLAR__1721 =  ( n472____DOLLAR__1233 ) == ( 8'd114 )  ;
assign n595____DOLLAR__1725 =  ( n472____DOLLAR__1233 ) == ( 8'd113 )  ;
assign n596____DOLLAR__1729 =  ( n472____DOLLAR__1233 ) == ( 8'd112 )  ;
assign n597____DOLLAR__1733 =  ( n472____DOLLAR__1233 ) == ( 8'd111 )  ;
assign n598____DOLLAR__1737 =  ( n472____DOLLAR__1233 ) == ( 8'd110 )  ;
assign n599____DOLLAR__1741 =  ( n472____DOLLAR__1233 ) == ( 8'd109 )  ;
assign n600____DOLLAR__1745 =  ( n472____DOLLAR__1233 ) == ( 8'd108 )  ;
assign n601____DOLLAR__1749 =  ( n472____DOLLAR__1233 ) == ( 8'd107 )  ;
assign n602____DOLLAR__1753 =  ( n472____DOLLAR__1233 ) == ( 8'd106 )  ;
assign n603____DOLLAR__1757 =  ( n472____DOLLAR__1233 ) == ( 8'd105 )  ;
assign n604____DOLLAR__1761 =  ( n472____DOLLAR__1233 ) == ( 8'd104 )  ;
assign n605____DOLLAR__1765 =  ( n472____DOLLAR__1233 ) == ( 8'd103 )  ;
assign n606____DOLLAR__1769 =  ( n472____DOLLAR__1233 ) == ( 8'd102 )  ;
assign n607____DOLLAR__1773 =  ( n472____DOLLAR__1233 ) == ( 8'd101 )  ;
assign n608____DOLLAR__1777 =  ( n472____DOLLAR__1233 ) == ( 8'd100 )  ;
assign n609____DOLLAR__1781 =  ( n472____DOLLAR__1233 ) == ( 8'd97 )  ;
assign n610____DOLLAR__1785 =  ( n472____DOLLAR__1233 ) == ( 8'd96 )  ;
assign n611____DOLLAR__1789 =  ( n472____DOLLAR__1233 ) == ( 8'd95 )  ;
assign n612____DOLLAR__1793 =  ( n472____DOLLAR__1233 ) == ( 8'd94 )  ;
assign n613____DOLLAR__1797 =  ( n472____DOLLAR__1233 ) == ( 8'd93 )  ;
assign n614____DOLLAR__1801 =  ( n472____DOLLAR__1233 ) == ( 8'd92 )  ;
assign n615____DOLLAR__1805 =  ( n472____DOLLAR__1233 ) == ( 8'd91 )  ;
assign n616____DOLLAR__1809 =  ( n472____DOLLAR__1233 ) == ( 8'd90 )  ;
assign n617____DOLLAR__1813 =  ( n472____DOLLAR__1233 ) == ( 8'd89 )  ;
assign n618____DOLLAR__1817 =  ( n472____DOLLAR__1233 ) == ( 8'd88 )  ;
assign n619____DOLLAR__1821 =  ( n472____DOLLAR__1233 ) == ( 8'd87 )  ;
assign n620____DOLLAR__1825 =  ( n472____DOLLAR__1233 ) == ( 8'd86 )  ;
assign n621____DOLLAR__1829 =  ( n472____DOLLAR__1233 ) == ( 8'd85 )  ;
assign n622____DOLLAR__1833 =  ( n472____DOLLAR__1233 ) == ( 8'd84 )  ;
assign n623____DOLLAR__1837 =  ( n472____DOLLAR__1233 ) == ( 8'd81 )  ;
assign n624____DOLLAR__1841 =  ( n472____DOLLAR__1233 ) == ( 8'd80 )  ;
assign n625____DOLLAR__1845 =  ( n472____DOLLAR__1233 ) == ( 8'd79 )  ;
assign n626____DOLLAR__1849 =  ( n472____DOLLAR__1233 ) == ( 8'd78 )  ;
assign n627____DOLLAR__1853 =  ( n472____DOLLAR__1233 ) == ( 8'd77 )  ;
assign n628____DOLLAR__1857 =  ( n472____DOLLAR__1233 ) == ( 8'd76 )  ;
assign n629____DOLLAR__1861 =  ( n472____DOLLAR__1233 ) == ( 8'd75 )  ;
assign n630____DOLLAR__1865 =  ( n472____DOLLAR__1233 ) == ( 8'd74 )  ;
assign n631____DOLLAR__1869 =  ( n472____DOLLAR__1233 ) == ( 8'd73 )  ;
assign n632____DOLLAR__1873 =  ( n472____DOLLAR__1233 ) == ( 8'd72 )  ;
assign n633____DOLLAR__1877 =  ( n472____DOLLAR__1233 ) == ( 8'd71 )  ;
assign n634____DOLLAR__1881 =  ( n472____DOLLAR__1233 ) == ( 8'd70 )  ;
assign n635____DOLLAR__1885 =  ( n472____DOLLAR__1233 ) == ( 8'd69 )  ;
assign n636____DOLLAR__1889 =  ( n472____DOLLAR__1233 ) == ( 8'd68 )  ;
assign n637____DOLLAR__1893 =  ( n472____DOLLAR__1233 ) == ( 8'd65 )  ;
assign n638____DOLLAR__1897 =  ( n472____DOLLAR__1233 ) == ( 8'd64 )  ;
assign n639____DOLLAR__1901 =  ( n472____DOLLAR__1233 ) == ( 8'd63 )  ;
assign n640____DOLLAR__1905 =  ( n472____DOLLAR__1233 ) == ( 8'd62 )  ;
assign n641____DOLLAR__1909 =  ( n472____DOLLAR__1233 ) == ( 8'd61 )  ;
assign n642____DOLLAR__1913 =  ( n472____DOLLAR__1233 ) == ( 8'd60 )  ;
assign n643____DOLLAR__1917 =  ( n472____DOLLAR__1233 ) == ( 8'd59 )  ;
assign n644____DOLLAR__1921 =  ( n472____DOLLAR__1233 ) == ( 8'd58 )  ;
assign n645____DOLLAR__1925 =  ( n472____DOLLAR__1233 ) == ( 8'd57 )  ;
assign n646____DOLLAR__1929 =  ( n472____DOLLAR__1233 ) == ( 8'd56 )  ;
assign n647____DOLLAR__1933 =  ( n472____DOLLAR__1233 ) == ( 8'd55 )  ;
assign n648____DOLLAR__1937 =  ( n472____DOLLAR__1233 ) == ( 8'd54 )  ;
assign n649____DOLLAR__1941 =  ( n472____DOLLAR__1233 ) == ( 8'd53 )  ;
assign n650____DOLLAR__1945 =  ( n472____DOLLAR__1233 ) == ( 8'd52 )  ;
assign n651____DOLLAR__1949 =  ( n472____DOLLAR__1233 ) == ( 8'd51 )  ;
assign n652____DOLLAR__1953 =  ( n472____DOLLAR__1233 ) == ( 8'd50 )  ;
assign n653____DOLLAR__1957 =  ( n472____DOLLAR__1233 ) == ( 8'd49 )  ;
assign n654____DOLLAR__1961 =  ( n472____DOLLAR__1233 ) == ( 8'd48 )  ;
assign n655____DOLLAR__1965 =  ( n472____DOLLAR__1233 ) == ( 8'd47 )  ;
assign n656____DOLLAR__1969 =  ( n472____DOLLAR__1233 ) == ( 8'd46 )  ;
assign n657____DOLLAR__1973 =  ( n472____DOLLAR__1233 ) == ( 8'd45 )  ;
assign n658____DOLLAR__1977 =  ( n472____DOLLAR__1233 ) == ( 8'd44 )  ;
assign n659____DOLLAR__1981 =  ( n472____DOLLAR__1233 ) == ( 8'd43 )  ;
assign n660____DOLLAR__1985 =  ( n472____DOLLAR__1233 ) == ( 8'd42 )  ;
assign n661____DOLLAR__1989 =  ( n472____DOLLAR__1233 ) == ( 8'd41 )  ;
assign n662____DOLLAR__1993 =  ( n472____DOLLAR__1233 ) == ( 8'd40 )  ;
assign n663____DOLLAR__1997 =  ( n472____DOLLAR__1233 ) == ( 8'd39 )  ;
assign n664____DOLLAR__2001 =  ( n472____DOLLAR__1233 ) == ( 8'd38 )  ;
assign n665____DOLLAR__2005 =  ( n472____DOLLAR__1233 ) == ( 8'd37 )  ;
assign n666____DOLLAR__2009 =  ( n472____DOLLAR__1233 ) == ( 8'd36 )  ;
assign n667____DOLLAR__2013 =  ( n472____DOLLAR__1233 ) == ( 8'd35 )  ;
assign n668____DOLLAR__2017 =  ( n472____DOLLAR__1233 ) == ( 8'd34 )  ;
assign n669____DOLLAR__2021 =  ( n472____DOLLAR__1233 ) == ( 8'd33 )  ;
assign n670____DOLLAR__2025 =  ( n472____DOLLAR__1233 ) == ( 8'd32 )  ;
assign n671____DOLLAR__2029 =  ( n472____DOLLAR__1233 ) == ( 8'd31 )  ;
assign n672____DOLLAR__2033 =  ( n472____DOLLAR__1233 ) == ( 8'd30 )  ;
assign n673____DOLLAR__2037 =  ( n472____DOLLAR__1233 ) == ( 8'd29 )  ;
assign n674____DOLLAR__2041 =  ( n472____DOLLAR__1233 ) == ( 8'd28 )  ;
assign n675____DOLLAR__2045 =  ( n472____DOLLAR__1233 ) == ( 8'd27 )  ;
assign n676____DOLLAR__2049 =  ( n472____DOLLAR__1233 ) == ( 8'd26 )  ;
assign n677____DOLLAR__2053 =  ( n472____DOLLAR__1233 ) == ( 8'd25 )  ;
assign n678____DOLLAR__2057 =  ( n472____DOLLAR__1233 ) == ( 8'd24 )  ;
assign n679____DOLLAR__2061 =  ( n472____DOLLAR__1233 ) == ( 8'd23 )  ;
assign n680____DOLLAR__2065 =  ( n472____DOLLAR__1233 ) == ( 8'd22 )  ;
assign n681____DOLLAR__2069 =  ( n472____DOLLAR__1233 ) == ( 8'd20 )  ;
assign n682____DOLLAR__2073 =  ( n472____DOLLAR__1233 ) == ( 8'd19 )  ;
assign n683____DOLLAR__2077 =  ( n472____DOLLAR__1233 ) == ( 8'd18 )  ;
assign n684____DOLLAR__2081 =  ( n472____DOLLAR__1233 ) == ( 8'd17 )  ;
assign n685____DOLLAR__2085 =  ( n472____DOLLAR__1233 ) == ( 8'd15 )  ;
assign n686____DOLLAR__2089 =  ( n472____DOLLAR__1233 ) == ( 8'd14 )  ;
assign n687____DOLLAR__2093 =  ( n472____DOLLAR__1233 ) == ( 8'd13 )  ;
assign n688____DOLLAR__2097 =  ( n472____DOLLAR__1233 ) == ( 8'd12 )  ;
assign n689____DOLLAR__2101 =  ( n472____DOLLAR__1233 ) == ( 8'd11 )  ;
assign n690____DOLLAR__2105 =  ( n472____DOLLAR__1233 ) == ( 8'd10 )  ;
assign n691____DOLLAR__2109 =  ( n472____DOLLAR__1233 ) == ( 8'd9 )  ;
assign n692____DOLLAR__2113 =  ( n472____DOLLAR__1233 ) == ( 8'd8 )  ;
assign n693____DOLLAR__2117 =  ( n472____DOLLAR__1233 ) == ( 8'd7 )  ;
assign n694____DOLLAR__2121 =  ( n472____DOLLAR__1233 ) == ( 8'd6 )  ;
assign n695____DOLLAR__2125 =  ( n472____DOLLAR__1233 ) == ( 8'd4 )  ;
assign n696____DOLLAR__2129 =  ( n472____DOLLAR__1233 ) == ( 8'd3 )  ;
assign n697____DOLLAR__2133 =  ( n472____DOLLAR__1233 ) == ( 8'd2 )  ;
assign n698____DOLLAR__2137 =  ( n472____DOLLAR__1233 ) == ( 8'd1 )  ;
assign n699____DOLLAR__2141 =  ( n472____DOLLAR__1233 ) == ( 8'd0 )  ;
assign n700____DOLLAR__2143 =  ( n698____DOLLAR__2137 ) | ( n699____DOLLAR__2141 )  ;
assign n701____DOLLAR__2144 =  ( n697____DOLLAR__2133 ) | ( n700____DOLLAR__2143 )  ;
assign n702____DOLLAR__2145 =  ( n696____DOLLAR__2129 ) | ( n701____DOLLAR__2144 )  ;
assign n703____DOLLAR__2146 =  ( n695____DOLLAR__2125 ) | ( n702____DOLLAR__2145 )  ;
assign n704____DOLLAR__2147 =  ( n694____DOLLAR__2121 ) | ( n703____DOLLAR__2146 )  ;
assign n705____DOLLAR__2148 =  ( n693____DOLLAR__2117 ) | ( n704____DOLLAR__2147 )  ;
assign n706____DOLLAR__2149 =  ( n692____DOLLAR__2113 ) | ( n705____DOLLAR__2148 )  ;
assign n707____DOLLAR__2150 =  ( n691____DOLLAR__2109 ) | ( n706____DOLLAR__2149 )  ;
assign n708____DOLLAR__2151 =  ( n690____DOLLAR__2105 ) | ( n707____DOLLAR__2150 )  ;
assign n709____DOLLAR__2152 =  ( n689____DOLLAR__2101 ) | ( n708____DOLLAR__2151 )  ;
assign n710____DOLLAR__2153 =  ( n688____DOLLAR__2097 ) | ( n709____DOLLAR__2152 )  ;
assign n711____DOLLAR__2154 =  ( n687____DOLLAR__2093 ) | ( n710____DOLLAR__2153 )  ;
assign n712____DOLLAR__2155 =  ( n686____DOLLAR__2089 ) | ( n711____DOLLAR__2154 )  ;
assign n713____DOLLAR__2156 =  ( n685____DOLLAR__2085 ) | ( n712____DOLLAR__2155 )  ;
assign n714____DOLLAR__2157 =  ( n684____DOLLAR__2081 ) | ( n713____DOLLAR__2156 )  ;
assign n715____DOLLAR__2158 =  ( n683____DOLLAR__2077 ) | ( n714____DOLLAR__2157 )  ;
assign n716____DOLLAR__2159 =  ( n682____DOLLAR__2073 ) | ( n715____DOLLAR__2158 )  ;
assign n717____DOLLAR__2160 =  ( n681____DOLLAR__2069 ) | ( n716____DOLLAR__2159 )  ;
assign n718____DOLLAR__2161 =  ( n680____DOLLAR__2065 ) | ( n717____DOLLAR__2160 )  ;
assign n719____DOLLAR__2162 =  ( n679____DOLLAR__2061 ) | ( n718____DOLLAR__2161 )  ;
assign n720____DOLLAR__2163 =  ( n678____DOLLAR__2057 ) | ( n719____DOLLAR__2162 )  ;
assign n721____DOLLAR__2164 =  ( n677____DOLLAR__2053 ) | ( n720____DOLLAR__2163 )  ;
assign n722____DOLLAR__2165 =  ( n676____DOLLAR__2049 ) | ( n721____DOLLAR__2164 )  ;
assign n723____DOLLAR__2166 =  ( n675____DOLLAR__2045 ) | ( n722____DOLLAR__2165 )  ;
assign n724____DOLLAR__2167 =  ( n674____DOLLAR__2041 ) | ( n723____DOLLAR__2166 )  ;
assign n725____DOLLAR__2168 =  ( n673____DOLLAR__2037 ) | ( n724____DOLLAR__2167 )  ;
assign n726____DOLLAR__2169 =  ( n672____DOLLAR__2033 ) | ( n725____DOLLAR__2168 )  ;
assign n727____DOLLAR__2170 =  ( n671____DOLLAR__2029 ) | ( n726____DOLLAR__2169 )  ;
assign n728____DOLLAR__2171 =  ( n670____DOLLAR__2025 ) | ( n727____DOLLAR__2170 )  ;
assign n729____DOLLAR__2172 =  ( n669____DOLLAR__2021 ) | ( n728____DOLLAR__2171 )  ;
assign n730____DOLLAR__2173 =  ( n668____DOLLAR__2017 ) | ( n729____DOLLAR__2172 )  ;
assign n731____DOLLAR__2174 =  ( n667____DOLLAR__2013 ) | ( n730____DOLLAR__2173 )  ;
assign n732____DOLLAR__2175 =  ( n666____DOLLAR__2009 ) | ( n731____DOLLAR__2174 )  ;
assign n733____DOLLAR__2176 =  ( n665____DOLLAR__2005 ) | ( n732____DOLLAR__2175 )  ;
assign n734____DOLLAR__2177 =  ( n664____DOLLAR__2001 ) | ( n733____DOLLAR__2176 )  ;
assign n735____DOLLAR__2178 =  ( n663____DOLLAR__1997 ) | ( n734____DOLLAR__2177 )  ;
assign n736____DOLLAR__2179 =  ( n662____DOLLAR__1993 ) | ( n735____DOLLAR__2178 )  ;
assign n737____DOLLAR__2180 =  ( n661____DOLLAR__1989 ) | ( n736____DOLLAR__2179 )  ;
assign n738____DOLLAR__2181 =  ( n660____DOLLAR__1985 ) | ( n737____DOLLAR__2180 )  ;
assign n739____DOLLAR__2182 =  ( n659____DOLLAR__1981 ) | ( n738____DOLLAR__2181 )  ;
assign n740____DOLLAR__2183 =  ( n658____DOLLAR__1977 ) | ( n739____DOLLAR__2182 )  ;
assign n741____DOLLAR__2184 =  ( n657____DOLLAR__1973 ) | ( n740____DOLLAR__2183 )  ;
assign n742____DOLLAR__2185 =  ( n656____DOLLAR__1969 ) | ( n741____DOLLAR__2184 )  ;
assign n743____DOLLAR__2186 =  ( n655____DOLLAR__1965 ) | ( n742____DOLLAR__2185 )  ;
assign n744____DOLLAR__2187 =  ( n654____DOLLAR__1961 ) | ( n743____DOLLAR__2186 )  ;
assign n745____DOLLAR__2188 =  ( n653____DOLLAR__1957 ) | ( n744____DOLLAR__2187 )  ;
assign n746____DOLLAR__2189 =  ( n652____DOLLAR__1953 ) | ( n745____DOLLAR__2188 )  ;
assign n747____DOLLAR__2190 =  ( n651____DOLLAR__1949 ) | ( n746____DOLLAR__2189 )  ;
assign n748____DOLLAR__2191 =  ( n650____DOLLAR__1945 ) | ( n747____DOLLAR__2190 )  ;
assign n749____DOLLAR__2192 =  ( n649____DOLLAR__1941 ) | ( n748____DOLLAR__2191 )  ;
assign n750____DOLLAR__2193 =  ( n648____DOLLAR__1937 ) | ( n749____DOLLAR__2192 )  ;
assign n751____DOLLAR__2194 =  ( n647____DOLLAR__1933 ) | ( n750____DOLLAR__2193 )  ;
assign n752____DOLLAR__2195 =  ( n646____DOLLAR__1929 ) | ( n751____DOLLAR__2194 )  ;
assign n753____DOLLAR__2196 =  ( n645____DOLLAR__1925 ) | ( n752____DOLLAR__2195 )  ;
assign n754____DOLLAR__2197 =  ( n644____DOLLAR__1921 ) | ( n753____DOLLAR__2196 )  ;
assign n755____DOLLAR__2198 =  ( n643____DOLLAR__1917 ) | ( n754____DOLLAR__2197 )  ;
assign n756____DOLLAR__2199 =  ( n642____DOLLAR__1913 ) | ( n755____DOLLAR__2198 )  ;
assign n757____DOLLAR__2200 =  ( n641____DOLLAR__1909 ) | ( n756____DOLLAR__2199 )  ;
assign n758____DOLLAR__2201 =  ( n640____DOLLAR__1905 ) | ( n757____DOLLAR__2200 )  ;
assign n759____DOLLAR__2202 =  ( n639____DOLLAR__1901 ) | ( n758____DOLLAR__2201 )  ;
assign n760____DOLLAR__2203 =  ( n638____DOLLAR__1897 ) | ( n759____DOLLAR__2202 )  ;
assign n761____DOLLAR__2204 =  ( n637____DOLLAR__1893 ) | ( n760____DOLLAR__2203 )  ;
assign n762____DOLLAR__2205 =  ( n636____DOLLAR__1889 ) | ( n761____DOLLAR__2204 )  ;
assign n763____DOLLAR__2206 =  ( n635____DOLLAR__1885 ) | ( n762____DOLLAR__2205 )  ;
assign n764____DOLLAR__2207 =  ( n634____DOLLAR__1881 ) | ( n763____DOLLAR__2206 )  ;
assign n765____DOLLAR__2208 =  ( n633____DOLLAR__1877 ) | ( n764____DOLLAR__2207 )  ;
assign n766____DOLLAR__2209 =  ( n632____DOLLAR__1873 ) | ( n765____DOLLAR__2208 )  ;
assign n767____DOLLAR__2210 =  ( n631____DOLLAR__1869 ) | ( n766____DOLLAR__2209 )  ;
assign n768____DOLLAR__2211 =  ( n630____DOLLAR__1865 ) | ( n767____DOLLAR__2210 )  ;
assign n769____DOLLAR__2212 =  ( n629____DOLLAR__1861 ) | ( n768____DOLLAR__2211 )  ;
assign n770____DOLLAR__2213 =  ( n628____DOLLAR__1857 ) | ( n769____DOLLAR__2212 )  ;
assign n771____DOLLAR__2214 =  ( n627____DOLLAR__1853 ) | ( n770____DOLLAR__2213 )  ;
assign n772____DOLLAR__2215 =  ( n626____DOLLAR__1849 ) | ( n771____DOLLAR__2214 )  ;
assign n773____DOLLAR__2216 =  ( n625____DOLLAR__1845 ) | ( n772____DOLLAR__2215 )  ;
assign n774____DOLLAR__2217 =  ( n624____DOLLAR__1841 ) | ( n773____DOLLAR__2216 )  ;
assign n775____DOLLAR__2218 =  ( n623____DOLLAR__1837 ) | ( n774____DOLLAR__2217 )  ;
assign n776____DOLLAR__2219 =  ( n622____DOLLAR__1833 ) | ( n775____DOLLAR__2218 )  ;
assign n777____DOLLAR__2220 =  ( n621____DOLLAR__1829 ) | ( n776____DOLLAR__2219 )  ;
assign n778____DOLLAR__2221 =  ( n620____DOLLAR__1825 ) | ( n777____DOLLAR__2220 )  ;
assign n779____DOLLAR__2222 =  ( n619____DOLLAR__1821 ) | ( n778____DOLLAR__2221 )  ;
assign n780____DOLLAR__2223 =  ( n618____DOLLAR__1817 ) | ( n779____DOLLAR__2222 )  ;
assign n781____DOLLAR__2224 =  ( n617____DOLLAR__1813 ) | ( n780____DOLLAR__2223 )  ;
assign n782____DOLLAR__2225 =  ( n616____DOLLAR__1809 ) | ( n781____DOLLAR__2224 )  ;
assign n783____DOLLAR__2226 =  ( n615____DOLLAR__1805 ) | ( n782____DOLLAR__2225 )  ;
assign n784____DOLLAR__2227 =  ( n614____DOLLAR__1801 ) | ( n783____DOLLAR__2226 )  ;
assign n785____DOLLAR__2228 =  ( n613____DOLLAR__1797 ) | ( n784____DOLLAR__2227 )  ;
assign n786____DOLLAR__2229 =  ( n612____DOLLAR__1793 ) | ( n785____DOLLAR__2228 )  ;
assign n787____DOLLAR__2230 =  ( n611____DOLLAR__1789 ) | ( n786____DOLLAR__2229 )  ;
assign n788____DOLLAR__2231 =  ( n610____DOLLAR__1785 ) | ( n787____DOLLAR__2230 )  ;
assign n789____DOLLAR__2232 =  ( n609____DOLLAR__1781 ) | ( n788____DOLLAR__2231 )  ;
assign n790____DOLLAR__2233 =  ( n608____DOLLAR__1777 ) | ( n789____DOLLAR__2232 )  ;
assign n791____DOLLAR__2234 =  ( n607____DOLLAR__1773 ) | ( n790____DOLLAR__2233 )  ;
assign n792____DOLLAR__2235 =  ( n606____DOLLAR__1769 ) | ( n791____DOLLAR__2234 )  ;
assign n793____DOLLAR__2236 =  ( n605____DOLLAR__1765 ) | ( n792____DOLLAR__2235 )  ;
assign n794____DOLLAR__2237 =  ( n604____DOLLAR__1761 ) | ( n793____DOLLAR__2236 )  ;
assign n795____DOLLAR__2238 =  ( n603____DOLLAR__1757 ) | ( n794____DOLLAR__2237 )  ;
assign n796____DOLLAR__2239 =  ( n602____DOLLAR__1753 ) | ( n795____DOLLAR__2238 )  ;
assign n797____DOLLAR__2240 =  ( n601____DOLLAR__1749 ) | ( n796____DOLLAR__2239 )  ;
assign n798____DOLLAR__2241 =  ( n600____DOLLAR__1745 ) | ( n797____DOLLAR__2240 )  ;
assign n799____DOLLAR__2242 =  ( n599____DOLLAR__1741 ) | ( n798____DOLLAR__2241 )  ;
assign n800____DOLLAR__2243 =  ( n598____DOLLAR__1737 ) | ( n799____DOLLAR__2242 )  ;
assign n801____DOLLAR__2244 =  ( n597____DOLLAR__1733 ) | ( n800____DOLLAR__2243 )  ;
assign n802____DOLLAR__2245 =  ( n596____DOLLAR__1729 ) | ( n801____DOLLAR__2244 )  ;
assign n803____DOLLAR__2246 =  ( n595____DOLLAR__1725 ) | ( n802____DOLLAR__2245 )  ;
assign n804____DOLLAR__2247 =  ( n594____DOLLAR__1721 ) | ( n803____DOLLAR__2246 )  ;
assign n805____DOLLAR__2248 =  ( n593____DOLLAR__1717 ) | ( n804____DOLLAR__2247 )  ;
assign n806____DOLLAR__2249 =  ( n592____DOLLAR__1713 ) | ( n805____DOLLAR__2248 )  ;
assign n807____DOLLAR__2250 =  ( n591____DOLLAR__1709 ) | ( n806____DOLLAR__2249 )  ;
assign n808____DOLLAR__2251 =  ( n590____DOLLAR__1705 ) | ( n807____DOLLAR__2250 )  ;
assign n809____DOLLAR__2252 =  ( n589____DOLLAR__1701 ) | ( n808____DOLLAR__2251 )  ;
assign n810____DOLLAR__2253 =  ( n588____DOLLAR__1697 ) | ( n809____DOLLAR__2252 )  ;
assign n811____DOLLAR__2254 =  ( n587____DOLLAR__1693 ) | ( n810____DOLLAR__2253 )  ;
assign n812____DOLLAR__2255 =  ( n586____DOLLAR__1689 ) | ( n811____DOLLAR__2254 )  ;
assign n813____DOLLAR__2256 =  ( n585____DOLLAR__1685 ) | ( n812____DOLLAR__2255 )  ;
assign n814____DOLLAR__2257 =  ( n584____DOLLAR__1681 ) | ( n813____DOLLAR__2256 )  ;
assign n815____DOLLAR__2258 =  ( n583____DOLLAR__1677 ) | ( n814____DOLLAR__2257 )  ;
assign n816____DOLLAR__2259 =  ( n582____DOLLAR__1673 ) | ( n815____DOLLAR__2258 )  ;
assign n817____DOLLAR__2260 =  ( n581____DOLLAR__1669 ) | ( n816____DOLLAR__2259 )  ;
assign n818____DOLLAR__2261 =  ( n580____DOLLAR__1665 ) | ( n817____DOLLAR__2260 )  ;
assign n819____DOLLAR__2262 =  ( n579____DOLLAR__1661 ) | ( n818____DOLLAR__2261 )  ;
assign n820____DOLLAR__2263 =  ( n578____DOLLAR__1657 ) | ( n819____DOLLAR__2262 )  ;
assign n821____DOLLAR__2264 =  ( n577____DOLLAR__1653 ) | ( n820____DOLLAR__2263 )  ;
assign n822____DOLLAR__2265 =  ( n576____DOLLAR__1649 ) | ( n821____DOLLAR__2264 )  ;
assign n823____DOLLAR__2266 =  ( n575____DOLLAR__1645 ) | ( n822____DOLLAR__2265 )  ;
assign n824____DOLLAR__2267 =  ( n574____DOLLAR__1641 ) | ( n823____DOLLAR__2266 )  ;
assign n825____DOLLAR__2268 =  ( n573____DOLLAR__1637 ) | ( n824____DOLLAR__2267 )  ;
assign n826____DOLLAR__2269 =  ( n572____DOLLAR__1633 ) | ( n825____DOLLAR__2268 )  ;
assign n827____DOLLAR__2270 =  ( n571____DOLLAR__1629 ) | ( n826____DOLLAR__2269 )  ;
assign n828____DOLLAR__2271 =  ( n570____DOLLAR__1625 ) | ( n827____DOLLAR__2270 )  ;
assign n829____DOLLAR__2272 =  ( n569____DOLLAR__1621 ) | ( n828____DOLLAR__2271 )  ;
assign n830____DOLLAR__2273 =  ( n568____DOLLAR__1617 ) | ( n829____DOLLAR__2272 )  ;
assign n831____DOLLAR__2274 =  ( n567____DOLLAR__1613 ) | ( n830____DOLLAR__2273 )  ;
assign n832____DOLLAR__2275 =  ( n566____DOLLAR__1609 ) | ( n831____DOLLAR__2274 )  ;
assign n833____DOLLAR__2276 =  ( n565____DOLLAR__1605 ) | ( n832____DOLLAR__2275 )  ;
assign n834____DOLLAR__2277 =  ( n564____DOLLAR__1601 ) | ( n833____DOLLAR__2276 )  ;
assign n835____DOLLAR__2278 =  ( n563____DOLLAR__1597 ) | ( n834____DOLLAR__2277 )  ;
assign n836____DOLLAR__2279 =  ( n562____DOLLAR__1593 ) | ( n835____DOLLAR__2278 )  ;
assign n837____DOLLAR__2280 =  ( n561____DOLLAR__1589 ) | ( n836____DOLLAR__2279 )  ;
assign n838____DOLLAR__2281 =  ( n560____DOLLAR__1585 ) | ( n837____DOLLAR__2280 )  ;
assign n839____DOLLAR__2282 =  ( n559____DOLLAR__1581 ) | ( n838____DOLLAR__2281 )  ;
assign n840____DOLLAR__2283 =  ( n558____DOLLAR__1577 ) | ( n839____DOLLAR__2282 )  ;
assign n841____DOLLAR__2284 =  ( n557____DOLLAR__1573 ) | ( n840____DOLLAR__2283 )  ;
assign n842____DOLLAR__2285 =  ( n556____DOLLAR__1569 ) | ( n841____DOLLAR__2284 )  ;
assign n843____DOLLAR__2286 =  ( n555____DOLLAR__1565 ) | ( n842____DOLLAR__2285 )  ;
assign n844____DOLLAR__2287 =  ( n554____DOLLAR__1561 ) | ( n843____DOLLAR__2286 )  ;
assign n845____DOLLAR__2288 =  ( n553____DOLLAR__1557 ) | ( n844____DOLLAR__2287 )  ;
assign n846____DOLLAR__2289 =  ( n552____DOLLAR__1553 ) | ( n845____DOLLAR__2288 )  ;
assign n847____DOLLAR__2290 =  ( n551____DOLLAR__1549 ) | ( n846____DOLLAR__2289 )  ;
assign n848____DOLLAR__2291 =  ( n550____DOLLAR__1545 ) | ( n847____DOLLAR__2290 )  ;
assign n849____DOLLAR__2292 =  ( n549____DOLLAR__1541 ) | ( n848____DOLLAR__2291 )  ;
assign n850____DOLLAR__2293 =  ( n548____DOLLAR__1537 ) | ( n849____DOLLAR__2292 )  ;
assign n851____DOLLAR__2294 =  ( n547____DOLLAR__1533 ) | ( n850____DOLLAR__2293 )  ;
assign n852____DOLLAR__2295 =  ( n546____DOLLAR__1529 ) | ( n851____DOLLAR__2294 )  ;
assign n853____DOLLAR__2296 =  ( n545____DOLLAR__1525 ) | ( n852____DOLLAR__2295 )  ;
assign n854____DOLLAR__2297 =  ( n544____DOLLAR__1521 ) | ( n853____DOLLAR__2296 )  ;
assign n855____DOLLAR__2298 =  ( n543____DOLLAR__1517 ) | ( n854____DOLLAR__2297 )  ;
assign n856____DOLLAR__2299 =  ( n542____DOLLAR__1513 ) | ( n855____DOLLAR__2298 )  ;
assign n857____DOLLAR__2300 =  ( n541____DOLLAR__1509 ) | ( n856____DOLLAR__2299 )  ;
assign n858____DOLLAR__2301 =  ( n540____DOLLAR__1505 ) | ( n857____DOLLAR__2300 )  ;
assign n859____DOLLAR__2302 =  ( n539____DOLLAR__1501 ) | ( n858____DOLLAR__2301 )  ;
assign n860____DOLLAR__2303 =  ( n538____DOLLAR__1497 ) | ( n859____DOLLAR__2302 )  ;
assign n861____DOLLAR__2304 =  ( n537____DOLLAR__1493 ) | ( n860____DOLLAR__2303 )  ;
assign n862____DOLLAR__2305 =  ( n536____DOLLAR__1489 ) | ( n861____DOLLAR__2304 )  ;
assign n863____DOLLAR__2306 =  ( n535____DOLLAR__1485 ) | ( n862____DOLLAR__2305 )  ;
assign n864____DOLLAR__2307 =  ( n534____DOLLAR__1481 ) | ( n863____DOLLAR__2306 )  ;
assign n865____DOLLAR__2308 =  ( n533____DOLLAR__1477 ) | ( n864____DOLLAR__2307 )  ;
assign n866____DOLLAR__2309 =  ( n532____DOLLAR__1473 ) | ( n865____DOLLAR__2308 )  ;
assign n867____DOLLAR__2310 =  ( n531____DOLLAR__1469 ) | ( n866____DOLLAR__2309 )  ;
assign n868____DOLLAR__2311 =  ( n530____DOLLAR__1465 ) | ( n867____DOLLAR__2310 )  ;
assign n869____DOLLAR__2312 =  ( n529____DOLLAR__1461 ) | ( n868____DOLLAR__2311 )  ;
assign n870____DOLLAR__2313 =  ( n528____DOLLAR__1457 ) | ( n869____DOLLAR__2312 )  ;
assign n871____DOLLAR__2314 =  ( n527____DOLLAR__1453 ) | ( n870____DOLLAR__2313 )  ;
assign n872____DOLLAR__2315 =  ( n526____DOLLAR__1449 ) | ( n871____DOLLAR__2314 )  ;
assign n873____DOLLAR__2316 =  ( n525____DOLLAR__1445 ) | ( n872____DOLLAR__2315 )  ;
assign n874____DOLLAR__2317 =  ( n524____DOLLAR__1441 ) | ( n873____DOLLAR__2316 )  ;
assign n875____DOLLAR__2318 =  ( n523____DOLLAR__1437 ) | ( n874____DOLLAR__2317 )  ;
assign n876____DOLLAR__2319 =  ( n522____DOLLAR__1433 ) | ( n875____DOLLAR__2318 )  ;
assign n877____DOLLAR__2320 =  ( n521____DOLLAR__1429 ) | ( n876____DOLLAR__2319 )  ;
assign n878____DOLLAR__2321 =  ( n520____DOLLAR__1425 ) | ( n877____DOLLAR__2320 )  ;
assign n879____DOLLAR__2322 =  ( n519____DOLLAR__1421 ) | ( n878____DOLLAR__2321 )  ;
assign n880____DOLLAR__2323 =  ( n518____DOLLAR__1417 ) | ( n879____DOLLAR__2322 )  ;
assign n881____DOLLAR__2324 =  ( n517____DOLLAR__1413 ) | ( n880____DOLLAR__2323 )  ;
assign n882____DOLLAR__2325 =  ( n516____DOLLAR__1409 ) | ( n881____DOLLAR__2324 )  ;
assign n883____DOLLAR__2326 =  ( n515____DOLLAR__1405 ) | ( n882____DOLLAR__2325 )  ;
assign n884____DOLLAR__2327 =  ( n514____DOLLAR__1401 ) | ( n883____DOLLAR__2326 )  ;
assign n885____DOLLAR__2328 =  ( n513____DOLLAR__1397 ) | ( n884____DOLLAR__2327 )  ;
assign n886____DOLLAR__2329 =  ( n512____DOLLAR__1393 ) | ( n885____DOLLAR__2328 )  ;
assign n887____DOLLAR__2330 =  ( n511____DOLLAR__1389 ) | ( n886____DOLLAR__2329 )  ;
assign n888____DOLLAR__2331 =  ( n510____DOLLAR__1385 ) | ( n887____DOLLAR__2330 )  ;
assign n889____DOLLAR__2332 =  ( n509____DOLLAR__1381 ) | ( n888____DOLLAR__2331 )  ;
assign n890____DOLLAR__2333 =  ( n508____DOLLAR__1377 ) | ( n889____DOLLAR__2332 )  ;
assign n891____DOLLAR__2334 =  ( n507____DOLLAR__1373 ) | ( n890____DOLLAR__2333 )  ;
assign n892____DOLLAR__2335 =  ( n506____DOLLAR__1369 ) | ( n891____DOLLAR__2334 )  ;
assign n893____DOLLAR__2336 =  ( n505____DOLLAR__1365 ) | ( n892____DOLLAR__2335 )  ;
assign n894____DOLLAR__2337 =  ( n504____DOLLAR__1361 ) | ( n893____DOLLAR__2336 )  ;
assign n895____DOLLAR__2338 =  ( n503____DOLLAR__1357 ) | ( n894____DOLLAR__2337 )  ;
assign n896____DOLLAR__2339 =  ( n502____DOLLAR__1353 ) | ( n895____DOLLAR__2338 )  ;
assign n897____DOLLAR__2340 =  ( n501____DOLLAR__1349 ) | ( n896____DOLLAR__2339 )  ;
assign n898____DOLLAR__2341 =  ( n500____DOLLAR__1345 ) | ( n897____DOLLAR__2340 )  ;
assign n899____DOLLAR__2342 =  ( n499____DOLLAR__1341 ) | ( n898____DOLLAR__2341 )  ;
assign n900____DOLLAR__2343 =  ( n498____DOLLAR__1337 ) | ( n899____DOLLAR__2342 )  ;
assign n901____DOLLAR__2344 =  ( n497____DOLLAR__1333 ) | ( n900____DOLLAR__2343 )  ;
assign n902____DOLLAR__2345 =  ( n496____DOLLAR__1329 ) | ( n901____DOLLAR__2344 )  ;
assign n903____DOLLAR__2346 =  ( n495____DOLLAR__1325 ) | ( n902____DOLLAR__2345 )  ;
assign n904____DOLLAR__2347 =  ( n494____DOLLAR__1321 ) | ( n903____DOLLAR__2346 )  ;
assign n905____DOLLAR__2348 =  ( n493____DOLLAR__1317 ) | ( n904____DOLLAR__2347 )  ;
assign n906____DOLLAR__2349 =  ( n492____DOLLAR__1313 ) | ( n905____DOLLAR__2348 )  ;
assign n907____DOLLAR__2350 =  ( n491____DOLLAR__1309 ) | ( n906____DOLLAR__2349 )  ;
assign n908____DOLLAR__2351 =  ( n490____DOLLAR__1305 ) | ( n907____DOLLAR__2350 )  ;
assign n909____DOLLAR__2352 =  ( n489____DOLLAR__1301 ) | ( n908____DOLLAR__2351 )  ;
assign n910____DOLLAR__2353 =  ( n488____DOLLAR__1297 ) | ( n909____DOLLAR__2352 )  ;
assign n911____DOLLAR__2354 =  ( n487____DOLLAR__1293 ) | ( n910____DOLLAR__2353 )  ;
assign n912____DOLLAR__2355 =  ( n486____DOLLAR__1289 ) | ( n911____DOLLAR__2354 )  ;
assign n913____DOLLAR__2356 =  ( n485____DOLLAR__1285 ) | ( n912____DOLLAR__2355 )  ;
assign n914____DOLLAR__2357 =  ( n484____DOLLAR__1281 ) | ( n913____DOLLAR__2356 )  ;
assign n915____DOLLAR__2358 =  ( n483____DOLLAR__1277 ) | ( n914____DOLLAR__2357 )  ;
assign n916____DOLLAR__2359 =  ( n482____DOLLAR__1273 ) | ( n915____DOLLAR__2358 )  ;
assign n917____DOLLAR__2360 =  ( n481____DOLLAR__1269 ) | ( n916____DOLLAR__2359 )  ;
assign n918____DOLLAR__2361 =  ( n480____DOLLAR__1265 ) | ( n917____DOLLAR__2360 )  ;
assign n919____DOLLAR__2362 =  ( n479____DOLLAR__1261 ) | ( n918____DOLLAR__2361 )  ;
assign n920____DOLLAR__2363 =  ( n478____DOLLAR__1257 ) | ( n919____DOLLAR__2362 )  ;
assign n921____DOLLAR__2364 =  ( n477____DOLLAR__1253 ) | ( n920____DOLLAR__2363 )  ;
assign n922____DOLLAR__2365 =  ( n476____DOLLAR__1249 ) | ( n921____DOLLAR__2364 )  ;
assign n923____DOLLAR__2366 =  ( n475____DOLLAR__1245 ) | ( n922____DOLLAR__2365 )  ;
assign n924____DOLLAR__2367 =  ( n474____DOLLAR__1241 ) | ( n923____DOLLAR__2366 )  ;
assign n925____DOLLAR__2368 =  ( n473____DOLLAR__1237 ) | ( n924____DOLLAR__2367 )  ;
assign n926____DOLLAR__2371 = PSW[4:3] ;
assign n927____DOLLAR__2379 =  { ( n926____DOLLAR__2371 ) , ( 3'd7 ) }  ;
assign n928____DOLLAR__2385 =  { ( 3'd0 ) , ( n927____DOLLAR__2379 ) }  ;
assign n929____DOLLAR__2389 =  ( n928____DOLLAR__2385 ) == ( 8'd176 )  ;
assign n930____DOLLAR__2391 =  ( n929____DOLLAR__2389 ) ? ( ACC ) : ( P3 ) ;
assign n931____DOLLAR__2392 =  ( n925____DOLLAR__2368 ) ? ( n930____DOLLAR__2391 ) : ( P3 ) ;
assign ROM_addr_n932 = PC ;
assign n934____DOLLAR__2393 = ROM_data_n933 ;
assign n935____DOLLAR__2397 =  ( n934____DOLLAR__2393 ) == ( 8'd50 )  ;
assign n936____DOLLAR__2401 =  ( n934____DOLLAR__2393 ) == ( 8'd34 )  ;
assign n937____DOLLAR__2403 =  ( n935____DOLLAR__2397 ) | ( n936____DOLLAR__2401 )  ;
assign IRAM_addr_n938 = SP ;
assign n940____DOLLAR__2404 = IRAM_data_n939 ;
assign n941____DOLLAR__2408 =  ( SP ) - ( 8'd1 )  ;
assign IRAM_addr_n942 = n941____DOLLAR__2408 ;
assign n944____DOLLAR__2409 = IRAM_data_n943 ;
assign n945____DOLLAR__2415 =  { ( n940____DOLLAR__2404 ) , ( n944____DOLLAR__2409 ) }  ;
assign ROM_addr_n946 = PC ;
assign n948____DOLLAR__2417 = ROM_data_n947 ;
assign n949____DOLLAR__2421 =  ( n948____DOLLAR__2417 ) == ( 8'd49 )  ;
assign n950____DOLLAR__2425 =  ( n948____DOLLAR__2417 ) == ( 8'd33 )  ;
assign n951____DOLLAR__2427 =  ( n949____DOLLAR__2421 ) | ( n950____DOLLAR__2425 )  ;
assign n952____DOLLAR__2430 =  ( PC ) + ( 16'd2 )  ;
assign n953____DOLLAR__2431 = n952____DOLLAR__2430[15:11] ;
assign n954____DOLLAR__2439 =  { ( n953____DOLLAR__2431 ) , ( 3'd1 ) }  ;
assign n955____DOLLAR__2443 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n956 = n955____DOLLAR__2443 ;
assign n958____DOLLAR__2444 = ROM_data_n957 ;
assign n959____DOLLAR__2450 =  { ( n954____DOLLAR__2439 ) , ( n958____DOLLAR__2444 ) }  ;
assign ROM_addr_n960 = PC ;
assign n962____DOLLAR__2452 = ROM_data_n961 ;
assign n963____DOLLAR__2456 =  ( n962____DOLLAR__2452 ) == ( 8'd32 )  ;
assign n964____DOLLAR__2460 =  ( n962____DOLLAR__2452 ) == ( 8'd16 )  ;
assign n965____DOLLAR__2462 =  ( n963____DOLLAR__2456 ) | ( n964____DOLLAR__2460 )  ;
assign n966____DOLLAR__2465 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n967 = n966____DOLLAR__2465 ;
assign n969____DOLLAR__2466 = ROM_data_n968 ;
assign n970____DOLLAR__2468 = n969____DOLLAR__2466[7:7] ;
assign n971____DOLLAR__2472 =  ( n970____DOLLAR__2468 ) == ( 1'd1 )  ;
assign n972____DOLLAR__2474 = n969____DOLLAR__2466[7:3] ;
assign n973____DOLLAR__2482 =  { ( n972____DOLLAR__2474 ) , ( 3'd0 ) }  ;
assign n974____DOLLAR__2484 =  {3'd0 , n972____DOLLAR__2474}  ;
assign n975____DOLLAR__2488 =  ( n974____DOLLAR__2484 ) + ( 8'd32 )  ;
assign n976____DOLLAR__2489 =  ( n971____DOLLAR__2472 ) ? ( n973____DOLLAR__2482 ) : ( n975____DOLLAR__2488 ) ;
assign n977____DOLLAR__2490 = n976____DOLLAR__2489[7:7] ;
assign n978____DOLLAR__2494 =  ( n977____DOLLAR__2490 ) == ( 1'd0 )  ;
assign IRAM_addr_n979 = n976____DOLLAR__2489 ;
assign n981____DOLLAR__2496 = IRAM_data_n980 ;
assign n982____DOLLAR__2500 =  ( n976____DOLLAR__2489 ) == ( 8'd128 )  ;
assign n983____DOLLAR__2504 =  ( n976____DOLLAR__2489 ) == ( 8'd129 )  ;
assign n984____DOLLAR__2508 =  ( n976____DOLLAR__2489 ) == ( 8'd130 )  ;
assign n985____DOLLAR__2512 =  ( n976____DOLLAR__2489 ) == ( 8'd131 )  ;
assign n986____DOLLAR__2516 =  ( n976____DOLLAR__2489 ) == ( 8'd135 )  ;
assign n987____DOLLAR__2520 =  ( n976____DOLLAR__2489 ) == ( 8'd136 )  ;
assign n988____DOLLAR__2524 =  ( n976____DOLLAR__2489 ) == ( 8'd137 )  ;
assign n989____DOLLAR__2528 =  ( n976____DOLLAR__2489 ) == ( 8'd138 )  ;
assign n990____DOLLAR__2532 =  ( n976____DOLLAR__2489 ) == ( 8'd140 )  ;
assign n991____DOLLAR__2536 =  ( n976____DOLLAR__2489 ) == ( 8'd139 )  ;
assign n992____DOLLAR__2540 =  ( n976____DOLLAR__2489 ) == ( 8'd141 )  ;
assign n993____DOLLAR__2544 =  ( n976____DOLLAR__2489 ) == ( 8'd144 )  ;
assign n994____DOLLAR__2548 =  ( n976____DOLLAR__2489 ) == ( 8'd152 )  ;
assign n995____DOLLAR__2552 =  ( n976____DOLLAR__2489 ) == ( 8'd153 )  ;
assign n996____DOLLAR__2556 =  ( n976____DOLLAR__2489 ) == ( 8'd160 )  ;
assign n997____DOLLAR__2560 =  ( n976____DOLLAR__2489 ) == ( 8'd168 )  ;
assign n998____DOLLAR__2564 =  ( n976____DOLLAR__2489 ) == ( 8'd176 )  ;
assign n999____DOLLAR__2568 =  ( n976____DOLLAR__2489 ) == ( 8'd184 )  ;
assign n1000____DOLLAR__2572 =  ( n976____DOLLAR__2489 ) == ( 8'd208 )  ;
assign n1001____DOLLAR__2576 =  ( n976____DOLLAR__2489 ) == ( 8'd224 )  ;
assign n1002____DOLLAR__2580 =  ( n976____DOLLAR__2489 ) == ( 8'd240 )  ;
assign n1003____DOLLAR__2584 =  ( n1002____DOLLAR__2580 ) ? ( B ) : ( 8'd0 ) ;
assign n1004____DOLLAR__2585 =  ( n1001____DOLLAR__2576 ) ? ( ACC ) : ( n1003____DOLLAR__2584 ) ;
assign n1005____DOLLAR__2586 =  ( n1000____DOLLAR__2572 ) ? ( PSW ) : ( n1004____DOLLAR__2585 ) ;
assign n1006____DOLLAR__2587 =  ( n999____DOLLAR__2568 ) ? ( IP ) : ( n1005____DOLLAR__2586 ) ;
assign n1007____DOLLAR__2588 =  ( n998____DOLLAR__2564 ) ? ( P3 ) : ( n1006____DOLLAR__2587 ) ;
assign n1008____DOLLAR__2589 =  ( n997____DOLLAR__2560 ) ? ( IE ) : ( n1007____DOLLAR__2588 ) ;
assign n1009____DOLLAR__2590 =  ( n996____DOLLAR__2556 ) ? ( P2 ) : ( n1008____DOLLAR__2589 ) ;
assign n1010____DOLLAR__2591 =  ( n995____DOLLAR__2552 ) ? ( SBUF ) : ( n1009____DOLLAR__2590 ) ;
assign n1011____DOLLAR__2592 =  ( n994____DOLLAR__2548 ) ? ( SCON ) : ( n1010____DOLLAR__2591 ) ;
assign n1012____DOLLAR__2593 =  ( n993____DOLLAR__2544 ) ? ( P1 ) : ( n1011____DOLLAR__2592 ) ;
assign n1013____DOLLAR__2594 =  ( n992____DOLLAR__2540 ) ? ( TH1 ) : ( n1012____DOLLAR__2593 ) ;
assign n1014____DOLLAR__2595 =  ( n991____DOLLAR__2536 ) ? ( TL1 ) : ( n1013____DOLLAR__2594 ) ;
assign n1015____DOLLAR__2596 =  ( n990____DOLLAR__2532 ) ? ( TH0 ) : ( n1014____DOLLAR__2595 ) ;
assign n1016____DOLLAR__2597 =  ( n989____DOLLAR__2528 ) ? ( TL0 ) : ( n1015____DOLLAR__2596 ) ;
assign n1017____DOLLAR__2598 =  ( n988____DOLLAR__2524 ) ? ( TMOD ) : ( n1016____DOLLAR__2597 ) ;
assign n1018____DOLLAR__2599 =  ( n987____DOLLAR__2520 ) ? ( TCON ) : ( n1017____DOLLAR__2598 ) ;
assign n1019____DOLLAR__2600 =  ( n986____DOLLAR__2516 ) ? ( PCON ) : ( n1018____DOLLAR__2599 ) ;
assign n1020____DOLLAR__2601 =  ( n985____DOLLAR__2512 ) ? ( DPH ) : ( n1019____DOLLAR__2600 ) ;
assign n1021____DOLLAR__2602 =  ( n984____DOLLAR__2508 ) ? ( DPL ) : ( n1020____DOLLAR__2601 ) ;
assign n1022____DOLLAR__2603 =  ( n983____DOLLAR__2504 ) ? ( SP ) : ( n1021____DOLLAR__2602 ) ;
assign n1023____DOLLAR__2604 =  ( n982____DOLLAR__2500 ) ? ( P0 ) : ( n1022____DOLLAR__2603 ) ;
assign n1024____DOLLAR__2605 =  ( n978____DOLLAR__2494 ) ? ( n981____DOLLAR__2496 ) : ( n1023____DOLLAR__2604 ) ;
assign n1025____DOLLAR__2606 = n1024____DOLLAR__2605[0:0] ;
assign n1026____DOLLAR__2608 =  ( n1025____DOLLAR__2606 ) == ( 1'd1 )  ;
assign n1027____DOLLAR__2612 =  ( PC ) + ( 16'd3 )  ;
assign n1028____DOLLAR__2615 =  ( PC ) + ( 16'd2 )  ;
assign ROM_addr_n1029 = n1028____DOLLAR__2615 ;
assign n1031____DOLLAR__2616 = ROM_data_n1030 ;
assign n1032____DOLLAR__2618 =  { {8{n1031____DOLLAR__2616[7] }  }, n1031____DOLLAR__2616}  ;
assign n1033____DOLLAR__2620 =  ( n1027____DOLLAR__2612 ) + ( n1032____DOLLAR__2618 )  ;
assign n1034____DOLLAR__2623 =  ( PC ) + ( 16'd3 )  ;
assign n1035____DOLLAR__2624 =  ( n1026____DOLLAR__2608 ) ? ( n1033____DOLLAR__2620 ) : ( n1034____DOLLAR__2623 ) ;
assign ROM_addr_n1036 = PC ;
assign n1038____DOLLAR__2625 = ROM_data_n1037 ;
assign n1039____DOLLAR__2629 =  ( n1038____DOLLAR__2625 ) == ( 8'd245 )  ;
assign n1040____DOLLAR__2633 =  ( n1038____DOLLAR__2625 ) == ( 8'd229 )  ;
assign n1041____DOLLAR__2637 =  ( n1038____DOLLAR__2625 ) == ( 8'd210 )  ;
assign n1042____DOLLAR__2641 =  ( n1038____DOLLAR__2625 ) == ( 8'd208 )  ;
assign n1043____DOLLAR__2645 =  ( n1038____DOLLAR__2625 ) == ( 8'd197 )  ;
assign n1044____DOLLAR__2649 =  ( n1038____DOLLAR__2625 ) == ( 8'd194 )  ;
assign n1045____DOLLAR__2653 =  ( n1038____DOLLAR__2625 ) == ( 8'd192 )  ;
assign n1046____DOLLAR__2657 =  ( n1038____DOLLAR__2625 ) == ( 8'd178 )  ;
assign n1047____DOLLAR__2661 =  ( n1038____DOLLAR__2625 ) == ( 8'd176 )  ;
assign n1048____DOLLAR__2665 =  ( n1038____DOLLAR__2625 ) == ( 8'd175 )  ;
assign n1049____DOLLAR__2669 =  ( n1038____DOLLAR__2625 ) == ( 8'd174 )  ;
assign n1050____DOLLAR__2673 =  ( n1038____DOLLAR__2625 ) == ( 8'd173 )  ;
assign n1051____DOLLAR__2677 =  ( n1038____DOLLAR__2625 ) == ( 8'd172 )  ;
assign n1052____DOLLAR__2681 =  ( n1038____DOLLAR__2625 ) == ( 8'd171 )  ;
assign n1053____DOLLAR__2685 =  ( n1038____DOLLAR__2625 ) == ( 8'd170 )  ;
assign n1054____DOLLAR__2689 =  ( n1038____DOLLAR__2625 ) == ( 8'd169 )  ;
assign n1055____DOLLAR__2693 =  ( n1038____DOLLAR__2625 ) == ( 8'd168 )  ;
assign n1056____DOLLAR__2697 =  ( n1038____DOLLAR__2625 ) == ( 8'd167 )  ;
assign n1057____DOLLAR__2701 =  ( n1038____DOLLAR__2625 ) == ( 8'd166 )  ;
assign n1058____DOLLAR__2705 =  ( n1038____DOLLAR__2625 ) == ( 8'd162 )  ;
assign n1059____DOLLAR__2709 =  ( n1038____DOLLAR__2625 ) == ( 8'd160 )  ;
assign n1060____DOLLAR__2713 =  ( n1038____DOLLAR__2625 ) == ( 8'd149 )  ;
assign n1061____DOLLAR__2717 =  ( n1038____DOLLAR__2625 ) == ( 8'd148 )  ;
assign n1062____DOLLAR__2721 =  ( n1038____DOLLAR__2625 ) == ( 8'd146 )  ;
assign n1063____DOLLAR__2725 =  ( n1038____DOLLAR__2625 ) == ( 8'd143 )  ;
assign n1064____DOLLAR__2729 =  ( n1038____DOLLAR__2625 ) == ( 8'd142 )  ;
assign n1065____DOLLAR__2733 =  ( n1038____DOLLAR__2625 ) == ( 8'd141 )  ;
assign n1066____DOLLAR__2737 =  ( n1038____DOLLAR__2625 ) == ( 8'd140 )  ;
assign n1067____DOLLAR__2741 =  ( n1038____DOLLAR__2625 ) == ( 8'd139 )  ;
assign n1068____DOLLAR__2745 =  ( n1038____DOLLAR__2625 ) == ( 8'd138 )  ;
assign n1069____DOLLAR__2749 =  ( n1038____DOLLAR__2625 ) == ( 8'd137 )  ;
assign n1070____DOLLAR__2753 =  ( n1038____DOLLAR__2625 ) == ( 8'd136 )  ;
assign n1071____DOLLAR__2757 =  ( n1038____DOLLAR__2625 ) == ( 8'd135 )  ;
assign n1072____DOLLAR__2761 =  ( n1038____DOLLAR__2625 ) == ( 8'd134 )  ;
assign n1073____DOLLAR__2765 =  ( n1038____DOLLAR__2625 ) == ( 8'd130 )  ;
assign n1074____DOLLAR__2769 =  ( n1038____DOLLAR__2625 ) == ( 8'd127 )  ;
assign n1075____DOLLAR__2773 =  ( n1038____DOLLAR__2625 ) == ( 8'd126 )  ;
assign n1076____DOLLAR__2777 =  ( n1038____DOLLAR__2625 ) == ( 8'd125 )  ;
assign n1077____DOLLAR__2781 =  ( n1038____DOLLAR__2625 ) == ( 8'd124 )  ;
assign n1078____DOLLAR__2785 =  ( n1038____DOLLAR__2625 ) == ( 8'd123 )  ;
assign n1079____DOLLAR__2789 =  ( n1038____DOLLAR__2625 ) == ( 8'd122 )  ;
assign n1080____DOLLAR__2793 =  ( n1038____DOLLAR__2625 ) == ( 8'd121 )  ;
assign n1081____DOLLAR__2797 =  ( n1038____DOLLAR__2625 ) == ( 8'd120 )  ;
assign n1082____DOLLAR__2801 =  ( n1038____DOLLAR__2625 ) == ( 8'd119 )  ;
assign n1083____DOLLAR__2805 =  ( n1038____DOLLAR__2625 ) == ( 8'd118 )  ;
assign n1084____DOLLAR__2809 =  ( n1038____DOLLAR__2625 ) == ( 8'd116 )  ;
assign n1085____DOLLAR__2813 =  ( n1038____DOLLAR__2625 ) == ( 8'd114 )  ;
assign n1086____DOLLAR__2817 =  ( n1038____DOLLAR__2625 ) == ( 8'd101 )  ;
assign n1087____DOLLAR__2821 =  ( n1038____DOLLAR__2625 ) == ( 8'd100 )  ;
assign n1088____DOLLAR__2825 =  ( n1038____DOLLAR__2625 ) == ( 8'd98 )  ;
assign n1089____DOLLAR__2829 =  ( n1038____DOLLAR__2625 ) == ( 8'd85 )  ;
assign n1090____DOLLAR__2833 =  ( n1038____DOLLAR__2625 ) == ( 8'd84 )  ;
assign n1091____DOLLAR__2837 =  ( n1038____DOLLAR__2625 ) == ( 8'd82 )  ;
assign n1092____DOLLAR__2841 =  ( n1038____DOLLAR__2625 ) == ( 8'd69 )  ;
assign n1093____DOLLAR__2845 =  ( n1038____DOLLAR__2625 ) == ( 8'd68 )  ;
assign n1094____DOLLAR__2849 =  ( n1038____DOLLAR__2625 ) == ( 8'd66 )  ;
assign n1095____DOLLAR__2853 =  ( n1038____DOLLAR__2625 ) == ( 8'd53 )  ;
assign n1096____DOLLAR__2857 =  ( n1038____DOLLAR__2625 ) == ( 8'd52 )  ;
assign n1097____DOLLAR__2861 =  ( n1038____DOLLAR__2625 ) == ( 8'd37 )  ;
assign n1098____DOLLAR__2865 =  ( n1038____DOLLAR__2625 ) == ( 8'd36 )  ;
assign n1099____DOLLAR__2869 =  ( n1038____DOLLAR__2625 ) == ( 8'd21 )  ;
assign n1100____DOLLAR__2873 =  ( n1038____DOLLAR__2625 ) == ( 8'd5 )  ;
assign n1101____DOLLAR__2875 =  ( n1099____DOLLAR__2869 ) | ( n1100____DOLLAR__2873 )  ;
assign n1102____DOLLAR__2876 =  ( n1098____DOLLAR__2865 ) | ( n1101____DOLLAR__2875 )  ;
assign n1103____DOLLAR__2877 =  ( n1097____DOLLAR__2861 ) | ( n1102____DOLLAR__2876 )  ;
assign n1104____DOLLAR__2878 =  ( n1096____DOLLAR__2857 ) | ( n1103____DOLLAR__2877 )  ;
assign n1105____DOLLAR__2879 =  ( n1095____DOLLAR__2853 ) | ( n1104____DOLLAR__2878 )  ;
assign n1106____DOLLAR__2880 =  ( n1094____DOLLAR__2849 ) | ( n1105____DOLLAR__2879 )  ;
assign n1107____DOLLAR__2881 =  ( n1093____DOLLAR__2845 ) | ( n1106____DOLLAR__2880 )  ;
assign n1108____DOLLAR__2882 =  ( n1092____DOLLAR__2841 ) | ( n1107____DOLLAR__2881 )  ;
assign n1109____DOLLAR__2883 =  ( n1091____DOLLAR__2837 ) | ( n1108____DOLLAR__2882 )  ;
assign n1110____DOLLAR__2884 =  ( n1090____DOLLAR__2833 ) | ( n1109____DOLLAR__2883 )  ;
assign n1111____DOLLAR__2885 =  ( n1089____DOLLAR__2829 ) | ( n1110____DOLLAR__2884 )  ;
assign n1112____DOLLAR__2886 =  ( n1088____DOLLAR__2825 ) | ( n1111____DOLLAR__2885 )  ;
assign n1113____DOLLAR__2887 =  ( n1087____DOLLAR__2821 ) | ( n1112____DOLLAR__2886 )  ;
assign n1114____DOLLAR__2888 =  ( n1086____DOLLAR__2817 ) | ( n1113____DOLLAR__2887 )  ;
assign n1115____DOLLAR__2889 =  ( n1085____DOLLAR__2813 ) | ( n1114____DOLLAR__2888 )  ;
assign n1116____DOLLAR__2890 =  ( n1084____DOLLAR__2809 ) | ( n1115____DOLLAR__2889 )  ;
assign n1117____DOLLAR__2891 =  ( n1083____DOLLAR__2805 ) | ( n1116____DOLLAR__2890 )  ;
assign n1118____DOLLAR__2892 =  ( n1082____DOLLAR__2801 ) | ( n1117____DOLLAR__2891 )  ;
assign n1119____DOLLAR__2893 =  ( n1081____DOLLAR__2797 ) | ( n1118____DOLLAR__2892 )  ;
assign n1120____DOLLAR__2894 =  ( n1080____DOLLAR__2793 ) | ( n1119____DOLLAR__2893 )  ;
assign n1121____DOLLAR__2895 =  ( n1079____DOLLAR__2789 ) | ( n1120____DOLLAR__2894 )  ;
assign n1122____DOLLAR__2896 =  ( n1078____DOLLAR__2785 ) | ( n1121____DOLLAR__2895 )  ;
assign n1123____DOLLAR__2897 =  ( n1077____DOLLAR__2781 ) | ( n1122____DOLLAR__2896 )  ;
assign n1124____DOLLAR__2898 =  ( n1076____DOLLAR__2777 ) | ( n1123____DOLLAR__2897 )  ;
assign n1125____DOLLAR__2899 =  ( n1075____DOLLAR__2773 ) | ( n1124____DOLLAR__2898 )  ;
assign n1126____DOLLAR__2900 =  ( n1074____DOLLAR__2769 ) | ( n1125____DOLLAR__2899 )  ;
assign n1127____DOLLAR__2901 =  ( n1073____DOLLAR__2765 ) | ( n1126____DOLLAR__2900 )  ;
assign n1128____DOLLAR__2902 =  ( n1072____DOLLAR__2761 ) | ( n1127____DOLLAR__2901 )  ;
assign n1129____DOLLAR__2903 =  ( n1071____DOLLAR__2757 ) | ( n1128____DOLLAR__2902 )  ;
assign n1130____DOLLAR__2904 =  ( n1070____DOLLAR__2753 ) | ( n1129____DOLLAR__2903 )  ;
assign n1131____DOLLAR__2905 =  ( n1069____DOLLAR__2749 ) | ( n1130____DOLLAR__2904 )  ;
assign n1132____DOLLAR__2906 =  ( n1068____DOLLAR__2745 ) | ( n1131____DOLLAR__2905 )  ;
assign n1133____DOLLAR__2907 =  ( n1067____DOLLAR__2741 ) | ( n1132____DOLLAR__2906 )  ;
assign n1134____DOLLAR__2908 =  ( n1066____DOLLAR__2737 ) | ( n1133____DOLLAR__2907 )  ;
assign n1135____DOLLAR__2909 =  ( n1065____DOLLAR__2733 ) | ( n1134____DOLLAR__2908 )  ;
assign n1136____DOLLAR__2910 =  ( n1064____DOLLAR__2729 ) | ( n1135____DOLLAR__2909 )  ;
assign n1137____DOLLAR__2911 =  ( n1063____DOLLAR__2725 ) | ( n1136____DOLLAR__2910 )  ;
assign n1138____DOLLAR__2912 =  ( n1062____DOLLAR__2721 ) | ( n1137____DOLLAR__2911 )  ;
assign n1139____DOLLAR__2913 =  ( n1061____DOLLAR__2717 ) | ( n1138____DOLLAR__2912 )  ;
assign n1140____DOLLAR__2914 =  ( n1060____DOLLAR__2713 ) | ( n1139____DOLLAR__2913 )  ;
assign n1141____DOLLAR__2915 =  ( n1059____DOLLAR__2709 ) | ( n1140____DOLLAR__2914 )  ;
assign n1142____DOLLAR__2916 =  ( n1058____DOLLAR__2705 ) | ( n1141____DOLLAR__2915 )  ;
assign n1143____DOLLAR__2917 =  ( n1057____DOLLAR__2701 ) | ( n1142____DOLLAR__2916 )  ;
assign n1144____DOLLAR__2918 =  ( n1056____DOLLAR__2697 ) | ( n1143____DOLLAR__2917 )  ;
assign n1145____DOLLAR__2919 =  ( n1055____DOLLAR__2693 ) | ( n1144____DOLLAR__2918 )  ;
assign n1146____DOLLAR__2920 =  ( n1054____DOLLAR__2689 ) | ( n1145____DOLLAR__2919 )  ;
assign n1147____DOLLAR__2921 =  ( n1053____DOLLAR__2685 ) | ( n1146____DOLLAR__2920 )  ;
assign n1148____DOLLAR__2922 =  ( n1052____DOLLAR__2681 ) | ( n1147____DOLLAR__2921 )  ;
assign n1149____DOLLAR__2923 =  ( n1051____DOLLAR__2677 ) | ( n1148____DOLLAR__2922 )  ;
assign n1150____DOLLAR__2924 =  ( n1050____DOLLAR__2673 ) | ( n1149____DOLLAR__2923 )  ;
assign n1151____DOLLAR__2925 =  ( n1049____DOLLAR__2669 ) | ( n1150____DOLLAR__2924 )  ;
assign n1152____DOLLAR__2926 =  ( n1048____DOLLAR__2665 ) | ( n1151____DOLLAR__2925 )  ;
assign n1153____DOLLAR__2927 =  ( n1047____DOLLAR__2661 ) | ( n1152____DOLLAR__2926 )  ;
assign n1154____DOLLAR__2928 =  ( n1046____DOLLAR__2657 ) | ( n1153____DOLLAR__2927 )  ;
assign n1155____DOLLAR__2929 =  ( n1045____DOLLAR__2653 ) | ( n1154____DOLLAR__2928 )  ;
assign n1156____DOLLAR__2930 =  ( n1044____DOLLAR__2649 ) | ( n1155____DOLLAR__2929 )  ;
assign n1157____DOLLAR__2931 =  ( n1043____DOLLAR__2645 ) | ( n1156____DOLLAR__2930 )  ;
assign n1158____DOLLAR__2932 =  ( n1042____DOLLAR__2641 ) | ( n1157____DOLLAR__2931 )  ;
assign n1159____DOLLAR__2933 =  ( n1041____DOLLAR__2637 ) | ( n1158____DOLLAR__2932 )  ;
assign n1160____DOLLAR__2934 =  ( n1040____DOLLAR__2633 ) | ( n1159____DOLLAR__2933 )  ;
assign n1161____DOLLAR__2935 =  ( n1039____DOLLAR__2629 ) | ( n1160____DOLLAR__2934 )  ;
assign n1162____DOLLAR__2938 =  ( PC ) + ( 16'd2 )  ;
assign ROM_addr_n1163 = PC ;
assign n1165____DOLLAR__2939 = ROM_data_n1164 ;
assign n1166____DOLLAR__2943 =  ( n1165____DOLLAR__2939 ) == ( 8'd18 )  ;
assign n1167____DOLLAR__2947 =  ( n1165____DOLLAR__2939 ) == ( 8'd2 )  ;
assign n1168____DOLLAR__2949 =  ( n1166____DOLLAR__2943 ) | ( n1167____DOLLAR__2947 )  ;
assign n1169____DOLLAR__2952 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n1170 = n1169____DOLLAR__2952 ;
assign n1172____DOLLAR__2953 = ROM_data_n1171 ;
assign n1173____DOLLAR__2957 =  ( PC ) + ( 16'd2 )  ;
assign ROM_addr_n1174 = n1173____DOLLAR__2957 ;
assign n1176____DOLLAR__2958 = ROM_data_n1175 ;
assign n1177____DOLLAR__2964 =  { ( n1172____DOLLAR__2953 ) , ( n1176____DOLLAR__2958 ) }  ;
assign ROM_addr_n1178 = PC ;
assign n1180____DOLLAR__2966 = ROM_data_n1179 ;
assign n1181____DOLLAR__2970 =  ( n1180____DOLLAR__2966 ) == ( 8'd17 )  ;
assign n1182____DOLLAR__2974 =  ( n1180____DOLLAR__2966 ) == ( 8'd1 )  ;
assign n1183____DOLLAR__2976 =  ( n1181____DOLLAR__2970 ) | ( n1182____DOLLAR__2974 )  ;
assign n1184____DOLLAR__2979 =  ( PC ) + ( 16'd2 )  ;
assign n1185____DOLLAR__2980 = n1184____DOLLAR__2979[15:11] ;
assign n1186____DOLLAR__2988 =  { ( n1185____DOLLAR__2980 ) , ( 3'd0 ) }  ;
assign n1187____DOLLAR__2992 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n1188 = n1187____DOLLAR__2992 ;
assign n1190____DOLLAR__2993 = ROM_data_n1189 ;
assign n1191____DOLLAR__2999 =  { ( n1186____DOLLAR__2988 ) , ( n1190____DOLLAR__2993 ) }  ;
assign ROM_addr_n1192 = PC ;
assign n1194____DOLLAR__3001 = ROM_data_n1193 ;
assign n1195____DOLLAR__3005 =  ( n1194____DOLLAR__3001 ) == ( 8'd255 )  ;
assign n1196____DOLLAR__3009 =  ( n1194____DOLLAR__3001 ) == ( 8'd254 )  ;
assign n1197____DOLLAR__3013 =  ( n1194____DOLLAR__3001 ) == ( 8'd253 )  ;
assign n1198____DOLLAR__3017 =  ( n1194____DOLLAR__3001 ) == ( 8'd252 )  ;
assign n1199____DOLLAR__3021 =  ( n1194____DOLLAR__3001 ) == ( 8'd251 )  ;
assign n1200____DOLLAR__3025 =  ( n1194____DOLLAR__3001 ) == ( 8'd250 )  ;
assign n1201____DOLLAR__3029 =  ( n1194____DOLLAR__3001 ) == ( 8'd249 )  ;
assign n1202____DOLLAR__3033 =  ( n1194____DOLLAR__3001 ) == ( 8'd248 )  ;
assign n1203____DOLLAR__3037 =  ( n1194____DOLLAR__3001 ) == ( 8'd247 )  ;
assign n1204____DOLLAR__3041 =  ( n1194____DOLLAR__3001 ) == ( 8'd246 )  ;
assign n1205____DOLLAR__3045 =  ( n1194____DOLLAR__3001 ) == ( 8'd244 )  ;
assign n1206____DOLLAR__3049 =  ( n1194____DOLLAR__3001 ) == ( 8'd243 )  ;
assign n1207____DOLLAR__3053 =  ( n1194____DOLLAR__3001 ) == ( 8'd242 )  ;
assign n1208____DOLLAR__3057 =  ( n1194____DOLLAR__3001 ) == ( 8'd240 )  ;
assign n1209____DOLLAR__3061 =  ( n1194____DOLLAR__3001 ) == ( 8'd239 )  ;
assign n1210____DOLLAR__3065 =  ( n1194____DOLLAR__3001 ) == ( 8'd238 )  ;
assign n1211____DOLLAR__3069 =  ( n1194____DOLLAR__3001 ) == ( 8'd237 )  ;
assign n1212____DOLLAR__3073 =  ( n1194____DOLLAR__3001 ) == ( 8'd236 )  ;
assign n1213____DOLLAR__3077 =  ( n1194____DOLLAR__3001 ) == ( 8'd235 )  ;
assign n1214____DOLLAR__3081 =  ( n1194____DOLLAR__3001 ) == ( 8'd234 )  ;
assign n1215____DOLLAR__3085 =  ( n1194____DOLLAR__3001 ) == ( 8'd233 )  ;
assign n1216____DOLLAR__3089 =  ( n1194____DOLLAR__3001 ) == ( 8'd232 )  ;
assign n1217____DOLLAR__3093 =  ( n1194____DOLLAR__3001 ) == ( 8'd231 )  ;
assign n1218____DOLLAR__3097 =  ( n1194____DOLLAR__3001 ) == ( 8'd230 )  ;
assign n1219____DOLLAR__3101 =  ( n1194____DOLLAR__3001 ) == ( 8'd228 )  ;
assign n1220____DOLLAR__3105 =  ( n1194____DOLLAR__3001 ) == ( 8'd227 )  ;
assign n1221____DOLLAR__3109 =  ( n1194____DOLLAR__3001 ) == ( 8'd226 )  ;
assign n1222____DOLLAR__3113 =  ( n1194____DOLLAR__3001 ) == ( 8'd224 )  ;
assign n1223____DOLLAR__3117 =  ( n1194____DOLLAR__3001 ) == ( 8'd215 )  ;
assign n1224____DOLLAR__3121 =  ( n1194____DOLLAR__3001 ) == ( 8'd214 )  ;
assign n1225____DOLLAR__3125 =  ( n1194____DOLLAR__3001 ) == ( 8'd212 )  ;
assign n1226____DOLLAR__3129 =  ( n1194____DOLLAR__3001 ) == ( 8'd211 )  ;
assign n1227____DOLLAR__3133 =  ( n1194____DOLLAR__3001 ) == ( 8'd207 )  ;
assign n1228____DOLLAR__3137 =  ( n1194____DOLLAR__3001 ) == ( 8'd206 )  ;
assign n1229____DOLLAR__3141 =  ( n1194____DOLLAR__3001 ) == ( 8'd205 )  ;
assign n1230____DOLLAR__3145 =  ( n1194____DOLLAR__3001 ) == ( 8'd204 )  ;
assign n1231____DOLLAR__3149 =  ( n1194____DOLLAR__3001 ) == ( 8'd203 )  ;
assign n1232____DOLLAR__3153 =  ( n1194____DOLLAR__3001 ) == ( 8'd202 )  ;
assign n1233____DOLLAR__3157 =  ( n1194____DOLLAR__3001 ) == ( 8'd201 )  ;
assign n1234____DOLLAR__3161 =  ( n1194____DOLLAR__3001 ) == ( 8'd200 )  ;
assign n1235____DOLLAR__3165 =  ( n1194____DOLLAR__3001 ) == ( 8'd199 )  ;
assign n1236____DOLLAR__3169 =  ( n1194____DOLLAR__3001 ) == ( 8'd198 )  ;
assign n1237____DOLLAR__3173 =  ( n1194____DOLLAR__3001 ) == ( 8'd196 )  ;
assign n1238____DOLLAR__3177 =  ( n1194____DOLLAR__3001 ) == ( 8'd195 )  ;
assign n1239____DOLLAR__3181 =  ( n1194____DOLLAR__3001 ) == ( 8'd179 )  ;
assign n1240____DOLLAR__3185 =  ( n1194____DOLLAR__3001 ) == ( 8'd165 )  ;
assign n1241____DOLLAR__3189 =  ( n1194____DOLLAR__3001 ) == ( 8'd164 )  ;
assign n1242____DOLLAR__3193 =  ( n1194____DOLLAR__3001 ) == ( 8'd163 )  ;
assign n1243____DOLLAR__3197 =  ( n1194____DOLLAR__3001 ) == ( 8'd159 )  ;
assign n1244____DOLLAR__3201 =  ( n1194____DOLLAR__3001 ) == ( 8'd158 )  ;
assign n1245____DOLLAR__3205 =  ( n1194____DOLLAR__3001 ) == ( 8'd157 )  ;
assign n1246____DOLLAR__3209 =  ( n1194____DOLLAR__3001 ) == ( 8'd156 )  ;
assign n1247____DOLLAR__3213 =  ( n1194____DOLLAR__3001 ) == ( 8'd155 )  ;
assign n1248____DOLLAR__3217 =  ( n1194____DOLLAR__3001 ) == ( 8'd154 )  ;
assign n1249____DOLLAR__3221 =  ( n1194____DOLLAR__3001 ) == ( 8'd153 )  ;
assign n1250____DOLLAR__3225 =  ( n1194____DOLLAR__3001 ) == ( 8'd152 )  ;
assign n1251____DOLLAR__3229 =  ( n1194____DOLLAR__3001 ) == ( 8'd151 )  ;
assign n1252____DOLLAR__3233 =  ( n1194____DOLLAR__3001 ) == ( 8'd150 )  ;
assign n1253____DOLLAR__3237 =  ( n1194____DOLLAR__3001 ) == ( 8'd147 )  ;
assign n1254____DOLLAR__3241 =  ( n1194____DOLLAR__3001 ) == ( 8'd132 )  ;
assign n1255____DOLLAR__3245 =  ( n1194____DOLLAR__3001 ) == ( 8'd131 )  ;
assign n1256____DOLLAR__3249 =  ( n1194____DOLLAR__3001 ) == ( 8'd111 )  ;
assign n1257____DOLLAR__3253 =  ( n1194____DOLLAR__3001 ) == ( 8'd110 )  ;
assign n1258____DOLLAR__3257 =  ( n1194____DOLLAR__3001 ) == ( 8'd109 )  ;
assign n1259____DOLLAR__3261 =  ( n1194____DOLLAR__3001 ) == ( 8'd108 )  ;
assign n1260____DOLLAR__3265 =  ( n1194____DOLLAR__3001 ) == ( 8'd107 )  ;
assign n1261____DOLLAR__3269 =  ( n1194____DOLLAR__3001 ) == ( 8'd106 )  ;
assign n1262____DOLLAR__3273 =  ( n1194____DOLLAR__3001 ) == ( 8'd105 )  ;
assign n1263____DOLLAR__3277 =  ( n1194____DOLLAR__3001 ) == ( 8'd104 )  ;
assign n1264____DOLLAR__3281 =  ( n1194____DOLLAR__3001 ) == ( 8'd103 )  ;
assign n1265____DOLLAR__3285 =  ( n1194____DOLLAR__3001 ) == ( 8'd102 )  ;
assign n1266____DOLLAR__3289 =  ( n1194____DOLLAR__3001 ) == ( 8'd95 )  ;
assign n1267____DOLLAR__3293 =  ( n1194____DOLLAR__3001 ) == ( 8'd94 )  ;
assign n1268____DOLLAR__3297 =  ( n1194____DOLLAR__3001 ) == ( 8'd93 )  ;
assign n1269____DOLLAR__3301 =  ( n1194____DOLLAR__3001 ) == ( 8'd92 )  ;
assign n1270____DOLLAR__3305 =  ( n1194____DOLLAR__3001 ) == ( 8'd91 )  ;
assign n1271____DOLLAR__3309 =  ( n1194____DOLLAR__3001 ) == ( 8'd90 )  ;
assign n1272____DOLLAR__3313 =  ( n1194____DOLLAR__3001 ) == ( 8'd89 )  ;
assign n1273____DOLLAR__3317 =  ( n1194____DOLLAR__3001 ) == ( 8'd88 )  ;
assign n1274____DOLLAR__3321 =  ( n1194____DOLLAR__3001 ) == ( 8'd87 )  ;
assign n1275____DOLLAR__3325 =  ( n1194____DOLLAR__3001 ) == ( 8'd86 )  ;
assign n1276____DOLLAR__3329 =  ( n1194____DOLLAR__3001 ) == ( 8'd79 )  ;
assign n1277____DOLLAR__3333 =  ( n1194____DOLLAR__3001 ) == ( 8'd78 )  ;
assign n1278____DOLLAR__3337 =  ( n1194____DOLLAR__3001 ) == ( 8'd77 )  ;
assign n1279____DOLLAR__3341 =  ( n1194____DOLLAR__3001 ) == ( 8'd76 )  ;
assign n1280____DOLLAR__3345 =  ( n1194____DOLLAR__3001 ) == ( 8'd75 )  ;
assign n1281____DOLLAR__3349 =  ( n1194____DOLLAR__3001 ) == ( 8'd74 )  ;
assign n1282____DOLLAR__3353 =  ( n1194____DOLLAR__3001 ) == ( 8'd73 )  ;
assign n1283____DOLLAR__3357 =  ( n1194____DOLLAR__3001 ) == ( 8'd72 )  ;
assign n1284____DOLLAR__3361 =  ( n1194____DOLLAR__3001 ) == ( 8'd71 )  ;
assign n1285____DOLLAR__3365 =  ( n1194____DOLLAR__3001 ) == ( 8'd70 )  ;
assign n1286____DOLLAR__3369 =  ( n1194____DOLLAR__3001 ) == ( 8'd63 )  ;
assign n1287____DOLLAR__3373 =  ( n1194____DOLLAR__3001 ) == ( 8'd62 )  ;
assign n1288____DOLLAR__3377 =  ( n1194____DOLLAR__3001 ) == ( 8'd61 )  ;
assign n1289____DOLLAR__3381 =  ( n1194____DOLLAR__3001 ) == ( 8'd60 )  ;
assign n1290____DOLLAR__3385 =  ( n1194____DOLLAR__3001 ) == ( 8'd59 )  ;
assign n1291____DOLLAR__3389 =  ( n1194____DOLLAR__3001 ) == ( 8'd58 )  ;
assign n1292____DOLLAR__3393 =  ( n1194____DOLLAR__3001 ) == ( 8'd57 )  ;
assign n1293____DOLLAR__3397 =  ( n1194____DOLLAR__3001 ) == ( 8'd56 )  ;
assign n1294____DOLLAR__3401 =  ( n1194____DOLLAR__3001 ) == ( 8'd55 )  ;
assign n1295____DOLLAR__3405 =  ( n1194____DOLLAR__3001 ) == ( 8'd54 )  ;
assign n1296____DOLLAR__3409 =  ( n1194____DOLLAR__3001 ) == ( 8'd51 )  ;
assign n1297____DOLLAR__3413 =  ( n1194____DOLLAR__3001 ) == ( 8'd47 )  ;
assign n1298____DOLLAR__3417 =  ( n1194____DOLLAR__3001 ) == ( 8'd46 )  ;
assign n1299____DOLLAR__3421 =  ( n1194____DOLLAR__3001 ) == ( 8'd45 )  ;
assign n1300____DOLLAR__3425 =  ( n1194____DOLLAR__3001 ) == ( 8'd44 )  ;
assign n1301____DOLLAR__3429 =  ( n1194____DOLLAR__3001 ) == ( 8'd43 )  ;
assign n1302____DOLLAR__3433 =  ( n1194____DOLLAR__3001 ) == ( 8'd42 )  ;
assign n1303____DOLLAR__3437 =  ( n1194____DOLLAR__3001 ) == ( 8'd41 )  ;
assign n1304____DOLLAR__3441 =  ( n1194____DOLLAR__3001 ) == ( 8'd40 )  ;
assign n1305____DOLLAR__3445 =  ( n1194____DOLLAR__3001 ) == ( 8'd39 )  ;
assign n1306____DOLLAR__3449 =  ( n1194____DOLLAR__3001 ) == ( 8'd38 )  ;
assign n1307____DOLLAR__3453 =  ( n1194____DOLLAR__3001 ) == ( 8'd35 )  ;
assign n1308____DOLLAR__3457 =  ( n1194____DOLLAR__3001 ) == ( 8'd31 )  ;
assign n1309____DOLLAR__3461 =  ( n1194____DOLLAR__3001 ) == ( 8'd30 )  ;
assign n1310____DOLLAR__3465 =  ( n1194____DOLLAR__3001 ) == ( 8'd29 )  ;
assign n1311____DOLLAR__3469 =  ( n1194____DOLLAR__3001 ) == ( 8'd28 )  ;
assign n1312____DOLLAR__3473 =  ( n1194____DOLLAR__3001 ) == ( 8'd27 )  ;
assign n1313____DOLLAR__3477 =  ( n1194____DOLLAR__3001 ) == ( 8'd26 )  ;
assign n1314____DOLLAR__3481 =  ( n1194____DOLLAR__3001 ) == ( 8'd25 )  ;
assign n1315____DOLLAR__3485 =  ( n1194____DOLLAR__3001 ) == ( 8'd24 )  ;
assign n1316____DOLLAR__3489 =  ( n1194____DOLLAR__3001 ) == ( 8'd23 )  ;
assign n1317____DOLLAR__3493 =  ( n1194____DOLLAR__3001 ) == ( 8'd22 )  ;
assign n1318____DOLLAR__3497 =  ( n1194____DOLLAR__3001 ) == ( 8'd20 )  ;
assign n1319____DOLLAR__3501 =  ( n1194____DOLLAR__3001 ) == ( 8'd19 )  ;
assign n1320____DOLLAR__3505 =  ( n1194____DOLLAR__3001 ) == ( 8'd15 )  ;
assign n1321____DOLLAR__3509 =  ( n1194____DOLLAR__3001 ) == ( 8'd14 )  ;
assign n1322____DOLLAR__3513 =  ( n1194____DOLLAR__3001 ) == ( 8'd13 )  ;
assign n1323____DOLLAR__3517 =  ( n1194____DOLLAR__3001 ) == ( 8'd12 )  ;
assign n1324____DOLLAR__3521 =  ( n1194____DOLLAR__3001 ) == ( 8'd11 )  ;
assign n1325____DOLLAR__3525 =  ( n1194____DOLLAR__3001 ) == ( 8'd10 )  ;
assign n1326____DOLLAR__3529 =  ( n1194____DOLLAR__3001 ) == ( 8'd9 )  ;
assign n1327____DOLLAR__3533 =  ( n1194____DOLLAR__3001 ) == ( 8'd8 )  ;
assign n1328____DOLLAR__3537 =  ( n1194____DOLLAR__3001 ) == ( 8'd7 )  ;
assign n1329____DOLLAR__3541 =  ( n1194____DOLLAR__3001 ) == ( 8'd6 )  ;
assign n1330____DOLLAR__3545 =  ( n1194____DOLLAR__3001 ) == ( 8'd4 )  ;
assign n1331____DOLLAR__3549 =  ( n1194____DOLLAR__3001 ) == ( 8'd3 )  ;
assign n1332____DOLLAR__3553 =  ( n1194____DOLLAR__3001 ) == ( 8'd0 )  ;
assign n1333____DOLLAR__3555 =  ( n1331____DOLLAR__3549 ) | ( n1332____DOLLAR__3553 )  ;
assign n1334____DOLLAR__3556 =  ( n1330____DOLLAR__3545 ) | ( n1333____DOLLAR__3555 )  ;
assign n1335____DOLLAR__3557 =  ( n1329____DOLLAR__3541 ) | ( n1334____DOLLAR__3556 )  ;
assign n1336____DOLLAR__3558 =  ( n1328____DOLLAR__3537 ) | ( n1335____DOLLAR__3557 )  ;
assign n1337____DOLLAR__3559 =  ( n1327____DOLLAR__3533 ) | ( n1336____DOLLAR__3558 )  ;
assign n1338____DOLLAR__3560 =  ( n1326____DOLLAR__3529 ) | ( n1337____DOLLAR__3559 )  ;
assign n1339____DOLLAR__3561 =  ( n1325____DOLLAR__3525 ) | ( n1338____DOLLAR__3560 )  ;
assign n1340____DOLLAR__3562 =  ( n1324____DOLLAR__3521 ) | ( n1339____DOLLAR__3561 )  ;
assign n1341____DOLLAR__3563 =  ( n1323____DOLLAR__3517 ) | ( n1340____DOLLAR__3562 )  ;
assign n1342____DOLLAR__3564 =  ( n1322____DOLLAR__3513 ) | ( n1341____DOLLAR__3563 )  ;
assign n1343____DOLLAR__3565 =  ( n1321____DOLLAR__3509 ) | ( n1342____DOLLAR__3564 )  ;
assign n1344____DOLLAR__3566 =  ( n1320____DOLLAR__3505 ) | ( n1343____DOLLAR__3565 )  ;
assign n1345____DOLLAR__3567 =  ( n1319____DOLLAR__3501 ) | ( n1344____DOLLAR__3566 )  ;
assign n1346____DOLLAR__3568 =  ( n1318____DOLLAR__3497 ) | ( n1345____DOLLAR__3567 )  ;
assign n1347____DOLLAR__3569 =  ( n1317____DOLLAR__3493 ) | ( n1346____DOLLAR__3568 )  ;
assign n1348____DOLLAR__3570 =  ( n1316____DOLLAR__3489 ) | ( n1347____DOLLAR__3569 )  ;
assign n1349____DOLLAR__3571 =  ( n1315____DOLLAR__3485 ) | ( n1348____DOLLAR__3570 )  ;
assign n1350____DOLLAR__3572 =  ( n1314____DOLLAR__3481 ) | ( n1349____DOLLAR__3571 )  ;
assign n1351____DOLLAR__3573 =  ( n1313____DOLLAR__3477 ) | ( n1350____DOLLAR__3572 )  ;
assign n1352____DOLLAR__3574 =  ( n1312____DOLLAR__3473 ) | ( n1351____DOLLAR__3573 )  ;
assign n1353____DOLLAR__3575 =  ( n1311____DOLLAR__3469 ) | ( n1352____DOLLAR__3574 )  ;
assign n1354____DOLLAR__3576 =  ( n1310____DOLLAR__3465 ) | ( n1353____DOLLAR__3575 )  ;
assign n1355____DOLLAR__3577 =  ( n1309____DOLLAR__3461 ) | ( n1354____DOLLAR__3576 )  ;
assign n1356____DOLLAR__3578 =  ( n1308____DOLLAR__3457 ) | ( n1355____DOLLAR__3577 )  ;
assign n1357____DOLLAR__3579 =  ( n1307____DOLLAR__3453 ) | ( n1356____DOLLAR__3578 )  ;
assign n1358____DOLLAR__3580 =  ( n1306____DOLLAR__3449 ) | ( n1357____DOLLAR__3579 )  ;
assign n1359____DOLLAR__3581 =  ( n1305____DOLLAR__3445 ) | ( n1358____DOLLAR__3580 )  ;
assign n1360____DOLLAR__3582 =  ( n1304____DOLLAR__3441 ) | ( n1359____DOLLAR__3581 )  ;
assign n1361____DOLLAR__3583 =  ( n1303____DOLLAR__3437 ) | ( n1360____DOLLAR__3582 )  ;
assign n1362____DOLLAR__3584 =  ( n1302____DOLLAR__3433 ) | ( n1361____DOLLAR__3583 )  ;
assign n1363____DOLLAR__3585 =  ( n1301____DOLLAR__3429 ) | ( n1362____DOLLAR__3584 )  ;
assign n1364____DOLLAR__3586 =  ( n1300____DOLLAR__3425 ) | ( n1363____DOLLAR__3585 )  ;
assign n1365____DOLLAR__3587 =  ( n1299____DOLLAR__3421 ) | ( n1364____DOLLAR__3586 )  ;
assign n1366____DOLLAR__3588 =  ( n1298____DOLLAR__3417 ) | ( n1365____DOLLAR__3587 )  ;
assign n1367____DOLLAR__3589 =  ( n1297____DOLLAR__3413 ) | ( n1366____DOLLAR__3588 )  ;
assign n1368____DOLLAR__3590 =  ( n1296____DOLLAR__3409 ) | ( n1367____DOLLAR__3589 )  ;
assign n1369____DOLLAR__3591 =  ( n1295____DOLLAR__3405 ) | ( n1368____DOLLAR__3590 )  ;
assign n1370____DOLLAR__3592 =  ( n1294____DOLLAR__3401 ) | ( n1369____DOLLAR__3591 )  ;
assign n1371____DOLLAR__3593 =  ( n1293____DOLLAR__3397 ) | ( n1370____DOLLAR__3592 )  ;
assign n1372____DOLLAR__3594 =  ( n1292____DOLLAR__3393 ) | ( n1371____DOLLAR__3593 )  ;
assign n1373____DOLLAR__3595 =  ( n1291____DOLLAR__3389 ) | ( n1372____DOLLAR__3594 )  ;
assign n1374____DOLLAR__3596 =  ( n1290____DOLLAR__3385 ) | ( n1373____DOLLAR__3595 )  ;
assign n1375____DOLLAR__3597 =  ( n1289____DOLLAR__3381 ) | ( n1374____DOLLAR__3596 )  ;
assign n1376____DOLLAR__3598 =  ( n1288____DOLLAR__3377 ) | ( n1375____DOLLAR__3597 )  ;
assign n1377____DOLLAR__3599 =  ( n1287____DOLLAR__3373 ) | ( n1376____DOLLAR__3598 )  ;
assign n1378____DOLLAR__3600 =  ( n1286____DOLLAR__3369 ) | ( n1377____DOLLAR__3599 )  ;
assign n1379____DOLLAR__3601 =  ( n1285____DOLLAR__3365 ) | ( n1378____DOLLAR__3600 )  ;
assign n1380____DOLLAR__3602 =  ( n1284____DOLLAR__3361 ) | ( n1379____DOLLAR__3601 )  ;
assign n1381____DOLLAR__3603 =  ( n1283____DOLLAR__3357 ) | ( n1380____DOLLAR__3602 )  ;
assign n1382____DOLLAR__3604 =  ( n1282____DOLLAR__3353 ) | ( n1381____DOLLAR__3603 )  ;
assign n1383____DOLLAR__3605 =  ( n1281____DOLLAR__3349 ) | ( n1382____DOLLAR__3604 )  ;
assign n1384____DOLLAR__3606 =  ( n1280____DOLLAR__3345 ) | ( n1383____DOLLAR__3605 )  ;
assign n1385____DOLLAR__3607 =  ( n1279____DOLLAR__3341 ) | ( n1384____DOLLAR__3606 )  ;
assign n1386____DOLLAR__3608 =  ( n1278____DOLLAR__3337 ) | ( n1385____DOLLAR__3607 )  ;
assign n1387____DOLLAR__3609 =  ( n1277____DOLLAR__3333 ) | ( n1386____DOLLAR__3608 )  ;
assign n1388____DOLLAR__3610 =  ( n1276____DOLLAR__3329 ) | ( n1387____DOLLAR__3609 )  ;
assign n1389____DOLLAR__3611 =  ( n1275____DOLLAR__3325 ) | ( n1388____DOLLAR__3610 )  ;
assign n1390____DOLLAR__3612 =  ( n1274____DOLLAR__3321 ) | ( n1389____DOLLAR__3611 )  ;
assign n1391____DOLLAR__3613 =  ( n1273____DOLLAR__3317 ) | ( n1390____DOLLAR__3612 )  ;
assign n1392____DOLLAR__3614 =  ( n1272____DOLLAR__3313 ) | ( n1391____DOLLAR__3613 )  ;
assign n1393____DOLLAR__3615 =  ( n1271____DOLLAR__3309 ) | ( n1392____DOLLAR__3614 )  ;
assign n1394____DOLLAR__3616 =  ( n1270____DOLLAR__3305 ) | ( n1393____DOLLAR__3615 )  ;
assign n1395____DOLLAR__3617 =  ( n1269____DOLLAR__3301 ) | ( n1394____DOLLAR__3616 )  ;
assign n1396____DOLLAR__3618 =  ( n1268____DOLLAR__3297 ) | ( n1395____DOLLAR__3617 )  ;
assign n1397____DOLLAR__3619 =  ( n1267____DOLLAR__3293 ) | ( n1396____DOLLAR__3618 )  ;
assign n1398____DOLLAR__3620 =  ( n1266____DOLLAR__3289 ) | ( n1397____DOLLAR__3619 )  ;
assign n1399____DOLLAR__3621 =  ( n1265____DOLLAR__3285 ) | ( n1398____DOLLAR__3620 )  ;
assign n1400____DOLLAR__3622 =  ( n1264____DOLLAR__3281 ) | ( n1399____DOLLAR__3621 )  ;
assign n1401____DOLLAR__3623 =  ( n1263____DOLLAR__3277 ) | ( n1400____DOLLAR__3622 )  ;
assign n1402____DOLLAR__3624 =  ( n1262____DOLLAR__3273 ) | ( n1401____DOLLAR__3623 )  ;
assign n1403____DOLLAR__3625 =  ( n1261____DOLLAR__3269 ) | ( n1402____DOLLAR__3624 )  ;
assign n1404____DOLLAR__3626 =  ( n1260____DOLLAR__3265 ) | ( n1403____DOLLAR__3625 )  ;
assign n1405____DOLLAR__3627 =  ( n1259____DOLLAR__3261 ) | ( n1404____DOLLAR__3626 )  ;
assign n1406____DOLLAR__3628 =  ( n1258____DOLLAR__3257 ) | ( n1405____DOLLAR__3627 )  ;
assign n1407____DOLLAR__3629 =  ( n1257____DOLLAR__3253 ) | ( n1406____DOLLAR__3628 )  ;
assign n1408____DOLLAR__3630 =  ( n1256____DOLLAR__3249 ) | ( n1407____DOLLAR__3629 )  ;
assign n1409____DOLLAR__3631 =  ( n1255____DOLLAR__3245 ) | ( n1408____DOLLAR__3630 )  ;
assign n1410____DOLLAR__3632 =  ( n1254____DOLLAR__3241 ) | ( n1409____DOLLAR__3631 )  ;
assign n1411____DOLLAR__3633 =  ( n1253____DOLLAR__3237 ) | ( n1410____DOLLAR__3632 )  ;
assign n1412____DOLLAR__3634 =  ( n1252____DOLLAR__3233 ) | ( n1411____DOLLAR__3633 )  ;
assign n1413____DOLLAR__3635 =  ( n1251____DOLLAR__3229 ) | ( n1412____DOLLAR__3634 )  ;
assign n1414____DOLLAR__3636 =  ( n1250____DOLLAR__3225 ) | ( n1413____DOLLAR__3635 )  ;
assign n1415____DOLLAR__3637 =  ( n1249____DOLLAR__3221 ) | ( n1414____DOLLAR__3636 )  ;
assign n1416____DOLLAR__3638 =  ( n1248____DOLLAR__3217 ) | ( n1415____DOLLAR__3637 )  ;
assign n1417____DOLLAR__3639 =  ( n1247____DOLLAR__3213 ) | ( n1416____DOLLAR__3638 )  ;
assign n1418____DOLLAR__3640 =  ( n1246____DOLLAR__3209 ) | ( n1417____DOLLAR__3639 )  ;
assign n1419____DOLLAR__3641 =  ( n1245____DOLLAR__3205 ) | ( n1418____DOLLAR__3640 )  ;
assign n1420____DOLLAR__3642 =  ( n1244____DOLLAR__3201 ) | ( n1419____DOLLAR__3641 )  ;
assign n1421____DOLLAR__3643 =  ( n1243____DOLLAR__3197 ) | ( n1420____DOLLAR__3642 )  ;
assign n1422____DOLLAR__3644 =  ( n1242____DOLLAR__3193 ) | ( n1421____DOLLAR__3643 )  ;
assign n1423____DOLLAR__3645 =  ( n1241____DOLLAR__3189 ) | ( n1422____DOLLAR__3644 )  ;
assign n1424____DOLLAR__3646 =  ( n1240____DOLLAR__3185 ) | ( n1423____DOLLAR__3645 )  ;
assign n1425____DOLLAR__3647 =  ( n1239____DOLLAR__3181 ) | ( n1424____DOLLAR__3646 )  ;
assign n1426____DOLLAR__3648 =  ( n1238____DOLLAR__3177 ) | ( n1425____DOLLAR__3647 )  ;
assign n1427____DOLLAR__3649 =  ( n1237____DOLLAR__3173 ) | ( n1426____DOLLAR__3648 )  ;
assign n1428____DOLLAR__3650 =  ( n1236____DOLLAR__3169 ) | ( n1427____DOLLAR__3649 )  ;
assign n1429____DOLLAR__3651 =  ( n1235____DOLLAR__3165 ) | ( n1428____DOLLAR__3650 )  ;
assign n1430____DOLLAR__3652 =  ( n1234____DOLLAR__3161 ) | ( n1429____DOLLAR__3651 )  ;
assign n1431____DOLLAR__3653 =  ( n1233____DOLLAR__3157 ) | ( n1430____DOLLAR__3652 )  ;
assign n1432____DOLLAR__3654 =  ( n1232____DOLLAR__3153 ) | ( n1431____DOLLAR__3653 )  ;
assign n1433____DOLLAR__3655 =  ( n1231____DOLLAR__3149 ) | ( n1432____DOLLAR__3654 )  ;
assign n1434____DOLLAR__3656 =  ( n1230____DOLLAR__3145 ) | ( n1433____DOLLAR__3655 )  ;
assign n1435____DOLLAR__3657 =  ( n1229____DOLLAR__3141 ) | ( n1434____DOLLAR__3656 )  ;
assign n1436____DOLLAR__3658 =  ( n1228____DOLLAR__3137 ) | ( n1435____DOLLAR__3657 )  ;
assign n1437____DOLLAR__3659 =  ( n1227____DOLLAR__3133 ) | ( n1436____DOLLAR__3658 )  ;
assign n1438____DOLLAR__3660 =  ( n1226____DOLLAR__3129 ) | ( n1437____DOLLAR__3659 )  ;
assign n1439____DOLLAR__3661 =  ( n1225____DOLLAR__3125 ) | ( n1438____DOLLAR__3660 )  ;
assign n1440____DOLLAR__3662 =  ( n1224____DOLLAR__3121 ) | ( n1439____DOLLAR__3661 )  ;
assign n1441____DOLLAR__3663 =  ( n1223____DOLLAR__3117 ) | ( n1440____DOLLAR__3662 )  ;
assign n1442____DOLLAR__3664 =  ( n1222____DOLLAR__3113 ) | ( n1441____DOLLAR__3663 )  ;
assign n1443____DOLLAR__3665 =  ( n1221____DOLLAR__3109 ) | ( n1442____DOLLAR__3664 )  ;
assign n1444____DOLLAR__3666 =  ( n1220____DOLLAR__3105 ) | ( n1443____DOLLAR__3665 )  ;
assign n1445____DOLLAR__3667 =  ( n1219____DOLLAR__3101 ) | ( n1444____DOLLAR__3666 )  ;
assign n1446____DOLLAR__3668 =  ( n1218____DOLLAR__3097 ) | ( n1445____DOLLAR__3667 )  ;
assign n1447____DOLLAR__3669 =  ( n1217____DOLLAR__3093 ) | ( n1446____DOLLAR__3668 )  ;
assign n1448____DOLLAR__3670 =  ( n1216____DOLLAR__3089 ) | ( n1447____DOLLAR__3669 )  ;
assign n1449____DOLLAR__3671 =  ( n1215____DOLLAR__3085 ) | ( n1448____DOLLAR__3670 )  ;
assign n1450____DOLLAR__3672 =  ( n1214____DOLLAR__3081 ) | ( n1449____DOLLAR__3671 )  ;
assign n1451____DOLLAR__3673 =  ( n1213____DOLLAR__3077 ) | ( n1450____DOLLAR__3672 )  ;
assign n1452____DOLLAR__3674 =  ( n1212____DOLLAR__3073 ) | ( n1451____DOLLAR__3673 )  ;
assign n1453____DOLLAR__3675 =  ( n1211____DOLLAR__3069 ) | ( n1452____DOLLAR__3674 )  ;
assign n1454____DOLLAR__3676 =  ( n1210____DOLLAR__3065 ) | ( n1453____DOLLAR__3675 )  ;
assign n1455____DOLLAR__3677 =  ( n1209____DOLLAR__3061 ) | ( n1454____DOLLAR__3676 )  ;
assign n1456____DOLLAR__3678 =  ( n1208____DOLLAR__3057 ) | ( n1455____DOLLAR__3677 )  ;
assign n1457____DOLLAR__3679 =  ( n1207____DOLLAR__3053 ) | ( n1456____DOLLAR__3678 )  ;
assign n1458____DOLLAR__3680 =  ( n1206____DOLLAR__3049 ) | ( n1457____DOLLAR__3679 )  ;
assign n1459____DOLLAR__3681 =  ( n1205____DOLLAR__3045 ) | ( n1458____DOLLAR__3680 )  ;
assign n1460____DOLLAR__3682 =  ( n1204____DOLLAR__3041 ) | ( n1459____DOLLAR__3681 )  ;
assign n1461____DOLLAR__3683 =  ( n1203____DOLLAR__3037 ) | ( n1460____DOLLAR__3682 )  ;
assign n1462____DOLLAR__3684 =  ( n1202____DOLLAR__3033 ) | ( n1461____DOLLAR__3683 )  ;
assign n1463____DOLLAR__3685 =  ( n1201____DOLLAR__3029 ) | ( n1462____DOLLAR__3684 )  ;
assign n1464____DOLLAR__3686 =  ( n1200____DOLLAR__3025 ) | ( n1463____DOLLAR__3685 )  ;
assign n1465____DOLLAR__3687 =  ( n1199____DOLLAR__3021 ) | ( n1464____DOLLAR__3686 )  ;
assign n1466____DOLLAR__3688 =  ( n1198____DOLLAR__3017 ) | ( n1465____DOLLAR__3687 )  ;
assign n1467____DOLLAR__3689 =  ( n1197____DOLLAR__3013 ) | ( n1466____DOLLAR__3688 )  ;
assign n1468____DOLLAR__3690 =  ( n1196____DOLLAR__3009 ) | ( n1467____DOLLAR__3689 )  ;
assign n1469____DOLLAR__3691 =  ( n1195____DOLLAR__3005 ) | ( n1468____DOLLAR__3690 )  ;
assign n1470____DOLLAR__3694 =  ( PC ) + ( 16'd1 )  ;
assign n1471____DOLLAR__3695 =  ( n1469____DOLLAR__3691 ) ? ( n1470____DOLLAR__3694 ) : ( PC ) ;
assign n1472____DOLLAR__3696 =  ( n1183____DOLLAR__2976 ) ? ( n1191____DOLLAR__2999 ) : ( n1471____DOLLAR__3695 ) ;
assign n1473____DOLLAR__3697 =  ( n1168____DOLLAR__2949 ) ? ( n1177____DOLLAR__2964 ) : ( n1472____DOLLAR__3696 ) ;
assign n1474____DOLLAR__3698 =  ( n1161____DOLLAR__2935 ) ? ( n1162____DOLLAR__2938 ) : ( n1473____DOLLAR__3697 ) ;
assign n1475____DOLLAR__3699 =  ( n965____DOLLAR__2462 ) ? ( n1035____DOLLAR__2624 ) : ( n1474____DOLLAR__3698 ) ;
assign n1476____DOLLAR__3700 =  ( n951____DOLLAR__2427 ) ? ( n959____DOLLAR__2450 ) : ( n1475____DOLLAR__3699 ) ;
assign n1477____DOLLAR__3701 =  ( n937____DOLLAR__2403 ) ? ( n945____DOLLAR__2415 ) : ( n1476____DOLLAR__3700 ) ;
assign ROM_addr_n1478 = PC ;
assign n1480____DOLLAR__3702 = ROM_data_n1479 ;
assign n1481____DOLLAR__3706 =  ( n1480____DOLLAR__3702 ) == ( 8'd255 )  ;
assign n1482____DOLLAR__3710 =  ( n1480____DOLLAR__3702 ) == ( 8'd254 )  ;
assign n1483____DOLLAR__3714 =  ( n1480____DOLLAR__3702 ) == ( 8'd253 )  ;
assign n1484____DOLLAR__3718 =  ( n1480____DOLLAR__3702 ) == ( 8'd252 )  ;
assign n1485____DOLLAR__3722 =  ( n1480____DOLLAR__3702 ) == ( 8'd251 )  ;
assign n1486____DOLLAR__3726 =  ( n1480____DOLLAR__3702 ) == ( 8'd250 )  ;
assign n1487____DOLLAR__3730 =  ( n1480____DOLLAR__3702 ) == ( 8'd249 )  ;
assign n1488____DOLLAR__3734 =  ( n1480____DOLLAR__3702 ) == ( 8'd248 )  ;
assign n1489____DOLLAR__3738 =  ( n1480____DOLLAR__3702 ) == ( 8'd247 )  ;
assign n1490____DOLLAR__3742 =  ( n1480____DOLLAR__3702 ) == ( 8'd246 )  ;
assign n1491____DOLLAR__3746 =  ( n1480____DOLLAR__3702 ) == ( 8'd244 )  ;
assign n1492____DOLLAR__3750 =  ( n1480____DOLLAR__3702 ) == ( 8'd243 )  ;
assign n1493____DOLLAR__3754 =  ( n1480____DOLLAR__3702 ) == ( 8'd242 )  ;
assign n1494____DOLLAR__3758 =  ( n1480____DOLLAR__3702 ) == ( 8'd240 )  ;
assign n1495____DOLLAR__3762 =  ( n1480____DOLLAR__3702 ) == ( 8'd239 )  ;
assign n1496____DOLLAR__3766 =  ( n1480____DOLLAR__3702 ) == ( 8'd238 )  ;
assign n1497____DOLLAR__3770 =  ( n1480____DOLLAR__3702 ) == ( 8'd237 )  ;
assign n1498____DOLLAR__3774 =  ( n1480____DOLLAR__3702 ) == ( 8'd236 )  ;
assign n1499____DOLLAR__3778 =  ( n1480____DOLLAR__3702 ) == ( 8'd235 )  ;
assign n1500____DOLLAR__3782 =  ( n1480____DOLLAR__3702 ) == ( 8'd234 )  ;
assign n1501____DOLLAR__3786 =  ( n1480____DOLLAR__3702 ) == ( 8'd233 )  ;
assign n1502____DOLLAR__3790 =  ( n1480____DOLLAR__3702 ) == ( 8'd232 )  ;
assign n1503____DOLLAR__3794 =  ( n1480____DOLLAR__3702 ) == ( 8'd231 )  ;
assign n1504____DOLLAR__3798 =  ( n1480____DOLLAR__3702 ) == ( 8'd230 )  ;
assign n1505____DOLLAR__3802 =  ( n1480____DOLLAR__3702 ) == ( 8'd229 )  ;
assign n1506____DOLLAR__3806 =  ( n1480____DOLLAR__3702 ) == ( 8'd228 )  ;
assign n1507____DOLLAR__3810 =  ( n1480____DOLLAR__3702 ) == ( 8'd227 )  ;
assign n1508____DOLLAR__3814 =  ( n1480____DOLLAR__3702 ) == ( 8'd226 )  ;
assign n1509____DOLLAR__3818 =  ( n1480____DOLLAR__3702 ) == ( 8'd225 )  ;
assign n1510____DOLLAR__3822 =  ( n1480____DOLLAR__3702 ) == ( 8'd224 )  ;
assign n1511____DOLLAR__3826 =  ( n1480____DOLLAR__3702 ) == ( 8'd223 )  ;
assign n1512____DOLLAR__3830 =  ( n1480____DOLLAR__3702 ) == ( 8'd222 )  ;
assign n1513____DOLLAR__3834 =  ( n1480____DOLLAR__3702 ) == ( 8'd221 )  ;
assign n1514____DOLLAR__3838 =  ( n1480____DOLLAR__3702 ) == ( 8'd220 )  ;
assign n1515____DOLLAR__3842 =  ( n1480____DOLLAR__3702 ) == ( 8'd219 )  ;
assign n1516____DOLLAR__3846 =  ( n1480____DOLLAR__3702 ) == ( 8'd218 )  ;
assign n1517____DOLLAR__3850 =  ( n1480____DOLLAR__3702 ) == ( 8'd217 )  ;
assign n1518____DOLLAR__3854 =  ( n1480____DOLLAR__3702 ) == ( 8'd216 )  ;
assign n1519____DOLLAR__3858 =  ( n1480____DOLLAR__3702 ) == ( 8'd215 )  ;
assign n1520____DOLLAR__3862 =  ( n1480____DOLLAR__3702 ) == ( 8'd214 )  ;
assign n1521____DOLLAR__3866 =  ( n1480____DOLLAR__3702 ) == ( 8'd212 )  ;
assign n1522____DOLLAR__3870 =  ( n1480____DOLLAR__3702 ) == ( 8'd211 )  ;
assign n1523____DOLLAR__3874 =  ( n1480____DOLLAR__3702 ) == ( 8'd210 )  ;
assign n1524____DOLLAR__3878 =  ( n1480____DOLLAR__3702 ) == ( 8'd207 )  ;
assign n1525____DOLLAR__3882 =  ( n1480____DOLLAR__3702 ) == ( 8'd206 )  ;
assign n1526____DOLLAR__3886 =  ( n1480____DOLLAR__3702 ) == ( 8'd205 )  ;
assign n1527____DOLLAR__3890 =  ( n1480____DOLLAR__3702 ) == ( 8'd204 )  ;
assign n1528____DOLLAR__3894 =  ( n1480____DOLLAR__3702 ) == ( 8'd203 )  ;
assign n1529____DOLLAR__3898 =  ( n1480____DOLLAR__3702 ) == ( 8'd202 )  ;
assign n1530____DOLLAR__3902 =  ( n1480____DOLLAR__3702 ) == ( 8'd201 )  ;
assign n1531____DOLLAR__3906 =  ( n1480____DOLLAR__3702 ) == ( 8'd200 )  ;
assign n1532____DOLLAR__3910 =  ( n1480____DOLLAR__3702 ) == ( 8'd199 )  ;
assign n1533____DOLLAR__3914 =  ( n1480____DOLLAR__3702 ) == ( 8'd198 )  ;
assign n1534____DOLLAR__3918 =  ( n1480____DOLLAR__3702 ) == ( 8'd196 )  ;
assign n1535____DOLLAR__3922 =  ( n1480____DOLLAR__3702 ) == ( 8'd195 )  ;
assign n1536____DOLLAR__3926 =  ( n1480____DOLLAR__3702 ) == ( 8'd194 )  ;
assign n1537____DOLLAR__3930 =  ( n1480____DOLLAR__3702 ) == ( 8'd193 )  ;
assign n1538____DOLLAR__3934 =  ( n1480____DOLLAR__3702 ) == ( 8'd191 )  ;
assign n1539____DOLLAR__3938 =  ( n1480____DOLLAR__3702 ) == ( 8'd190 )  ;
assign n1540____DOLLAR__3942 =  ( n1480____DOLLAR__3702 ) == ( 8'd189 )  ;
assign n1541____DOLLAR__3946 =  ( n1480____DOLLAR__3702 ) == ( 8'd188 )  ;
assign n1542____DOLLAR__3950 =  ( n1480____DOLLAR__3702 ) == ( 8'd187 )  ;
assign n1543____DOLLAR__3954 =  ( n1480____DOLLAR__3702 ) == ( 8'd186 )  ;
assign n1544____DOLLAR__3958 =  ( n1480____DOLLAR__3702 ) == ( 8'd185 )  ;
assign n1545____DOLLAR__3962 =  ( n1480____DOLLAR__3702 ) == ( 8'd184 )  ;
assign n1546____DOLLAR__3966 =  ( n1480____DOLLAR__3702 ) == ( 8'd183 )  ;
assign n1547____DOLLAR__3970 =  ( n1480____DOLLAR__3702 ) == ( 8'd182 )  ;
assign n1548____DOLLAR__3974 =  ( n1480____DOLLAR__3702 ) == ( 8'd181 )  ;
assign n1549____DOLLAR__3978 =  ( n1480____DOLLAR__3702 ) == ( 8'd180 )  ;
assign n1550____DOLLAR__3982 =  ( n1480____DOLLAR__3702 ) == ( 8'd179 )  ;
assign n1551____DOLLAR__3986 =  ( n1480____DOLLAR__3702 ) == ( 8'd178 )  ;
assign n1552____DOLLAR__3990 =  ( n1480____DOLLAR__3702 ) == ( 8'd176 )  ;
assign n1553____DOLLAR__3994 =  ( n1480____DOLLAR__3702 ) == ( 8'd175 )  ;
assign n1554____DOLLAR__3998 =  ( n1480____DOLLAR__3702 ) == ( 8'd174 )  ;
assign n1555____DOLLAR__4002 =  ( n1480____DOLLAR__3702 ) == ( 8'd173 )  ;
assign n1556____DOLLAR__4006 =  ( n1480____DOLLAR__3702 ) == ( 8'd172 )  ;
assign n1557____DOLLAR__4010 =  ( n1480____DOLLAR__3702 ) == ( 8'd171 )  ;
assign n1558____DOLLAR__4014 =  ( n1480____DOLLAR__3702 ) == ( 8'd170 )  ;
assign n1559____DOLLAR__4018 =  ( n1480____DOLLAR__3702 ) == ( 8'd169 )  ;
assign n1560____DOLLAR__4022 =  ( n1480____DOLLAR__3702 ) == ( 8'd168 )  ;
assign n1561____DOLLAR__4026 =  ( n1480____DOLLAR__3702 ) == ( 8'd167 )  ;
assign n1562____DOLLAR__4030 =  ( n1480____DOLLAR__3702 ) == ( 8'd166 )  ;
assign n1563____DOLLAR__4034 =  ( n1480____DOLLAR__3702 ) == ( 8'd165 )  ;
assign n1564____DOLLAR__4038 =  ( n1480____DOLLAR__3702 ) == ( 8'd164 )  ;
assign n1565____DOLLAR__4042 =  ( n1480____DOLLAR__3702 ) == ( 8'd163 )  ;
assign n1566____DOLLAR__4046 =  ( n1480____DOLLAR__3702 ) == ( 8'd162 )  ;
assign n1567____DOLLAR__4050 =  ( n1480____DOLLAR__3702 ) == ( 8'd161 )  ;
assign n1568____DOLLAR__4054 =  ( n1480____DOLLAR__3702 ) == ( 8'd160 )  ;
assign n1569____DOLLAR__4058 =  ( n1480____DOLLAR__3702 ) == ( 8'd159 )  ;
assign n1570____DOLLAR__4062 =  ( n1480____DOLLAR__3702 ) == ( 8'd158 )  ;
assign n1571____DOLLAR__4066 =  ( n1480____DOLLAR__3702 ) == ( 8'd157 )  ;
assign n1572____DOLLAR__4070 =  ( n1480____DOLLAR__3702 ) == ( 8'd156 )  ;
assign n1573____DOLLAR__4074 =  ( n1480____DOLLAR__3702 ) == ( 8'd155 )  ;
assign n1574____DOLLAR__4078 =  ( n1480____DOLLAR__3702 ) == ( 8'd154 )  ;
assign n1575____DOLLAR__4082 =  ( n1480____DOLLAR__3702 ) == ( 8'd153 )  ;
assign n1576____DOLLAR__4086 =  ( n1480____DOLLAR__3702 ) == ( 8'd152 )  ;
assign n1577____DOLLAR__4090 =  ( n1480____DOLLAR__3702 ) == ( 8'd151 )  ;
assign n1578____DOLLAR__4094 =  ( n1480____DOLLAR__3702 ) == ( 8'd150 )  ;
assign n1579____DOLLAR__4098 =  ( n1480____DOLLAR__3702 ) == ( 8'd149 )  ;
assign n1580____DOLLAR__4102 =  ( n1480____DOLLAR__3702 ) == ( 8'd148 )  ;
assign n1581____DOLLAR__4106 =  ( n1480____DOLLAR__3702 ) == ( 8'd147 )  ;
assign n1582____DOLLAR__4110 =  ( n1480____DOLLAR__3702 ) == ( 8'd146 )  ;
assign n1583____DOLLAR__4114 =  ( n1480____DOLLAR__3702 ) == ( 8'd144 )  ;
assign n1584____DOLLAR__4118 =  ( n1480____DOLLAR__3702 ) == ( 8'd132 )  ;
assign n1585____DOLLAR__4122 =  ( n1480____DOLLAR__3702 ) == ( 8'd131 )  ;
assign n1586____DOLLAR__4126 =  ( n1480____DOLLAR__3702 ) == ( 8'd130 )  ;
assign n1587____DOLLAR__4130 =  ( n1480____DOLLAR__3702 ) == ( 8'd129 )  ;
assign n1588____DOLLAR__4134 =  ( n1480____DOLLAR__3702 ) == ( 8'd128 )  ;
assign n1589____DOLLAR__4138 =  ( n1480____DOLLAR__3702 ) == ( 8'd127 )  ;
assign n1590____DOLLAR__4142 =  ( n1480____DOLLAR__3702 ) == ( 8'd126 )  ;
assign n1591____DOLLAR__4146 =  ( n1480____DOLLAR__3702 ) == ( 8'd125 )  ;
assign n1592____DOLLAR__4150 =  ( n1480____DOLLAR__3702 ) == ( 8'd124 )  ;
assign n1593____DOLLAR__4154 =  ( n1480____DOLLAR__3702 ) == ( 8'd123 )  ;
assign n1594____DOLLAR__4158 =  ( n1480____DOLLAR__3702 ) == ( 8'd122 )  ;
assign n1595____DOLLAR__4162 =  ( n1480____DOLLAR__3702 ) == ( 8'd121 )  ;
assign n1596____DOLLAR__4166 =  ( n1480____DOLLAR__3702 ) == ( 8'd120 )  ;
assign n1597____DOLLAR__4170 =  ( n1480____DOLLAR__3702 ) == ( 8'd119 )  ;
assign n1598____DOLLAR__4174 =  ( n1480____DOLLAR__3702 ) == ( 8'd118 )  ;
assign n1599____DOLLAR__4178 =  ( n1480____DOLLAR__3702 ) == ( 8'd116 )  ;
assign n1600____DOLLAR__4182 =  ( n1480____DOLLAR__3702 ) == ( 8'd115 )  ;
assign n1601____DOLLAR__4186 =  ( n1480____DOLLAR__3702 ) == ( 8'd114 )  ;
assign n1602____DOLLAR__4190 =  ( n1480____DOLLAR__3702 ) == ( 8'd112 )  ;
assign n1603____DOLLAR__4194 =  ( n1480____DOLLAR__3702 ) == ( 8'd111 )  ;
assign n1604____DOLLAR__4198 =  ( n1480____DOLLAR__3702 ) == ( 8'd110 )  ;
assign n1605____DOLLAR__4202 =  ( n1480____DOLLAR__3702 ) == ( 8'd109 )  ;
assign n1606____DOLLAR__4206 =  ( n1480____DOLLAR__3702 ) == ( 8'd108 )  ;
assign n1607____DOLLAR__4210 =  ( n1480____DOLLAR__3702 ) == ( 8'd107 )  ;
assign n1608____DOLLAR__4214 =  ( n1480____DOLLAR__3702 ) == ( 8'd106 )  ;
assign n1609____DOLLAR__4218 =  ( n1480____DOLLAR__3702 ) == ( 8'd105 )  ;
assign n1610____DOLLAR__4222 =  ( n1480____DOLLAR__3702 ) == ( 8'd104 )  ;
assign n1611____DOLLAR__4226 =  ( n1480____DOLLAR__3702 ) == ( 8'd103 )  ;
assign n1612____DOLLAR__4230 =  ( n1480____DOLLAR__3702 ) == ( 8'd102 )  ;
assign n1613____DOLLAR__4234 =  ( n1480____DOLLAR__3702 ) == ( 8'd101 )  ;
assign n1614____DOLLAR__4238 =  ( n1480____DOLLAR__3702 ) == ( 8'd100 )  ;
assign n1615____DOLLAR__4242 =  ( n1480____DOLLAR__3702 ) == ( 8'd97 )  ;
assign n1616____DOLLAR__4246 =  ( n1480____DOLLAR__3702 ) == ( 8'd96 )  ;
assign n1617____DOLLAR__4250 =  ( n1480____DOLLAR__3702 ) == ( 8'd95 )  ;
assign n1618____DOLLAR__4254 =  ( n1480____DOLLAR__3702 ) == ( 8'd94 )  ;
assign n1619____DOLLAR__4258 =  ( n1480____DOLLAR__3702 ) == ( 8'd93 )  ;
assign n1620____DOLLAR__4262 =  ( n1480____DOLLAR__3702 ) == ( 8'd92 )  ;
assign n1621____DOLLAR__4266 =  ( n1480____DOLLAR__3702 ) == ( 8'd91 )  ;
assign n1622____DOLLAR__4270 =  ( n1480____DOLLAR__3702 ) == ( 8'd90 )  ;
assign n1623____DOLLAR__4274 =  ( n1480____DOLLAR__3702 ) == ( 8'd89 )  ;
assign n1624____DOLLAR__4278 =  ( n1480____DOLLAR__3702 ) == ( 8'd88 )  ;
assign n1625____DOLLAR__4282 =  ( n1480____DOLLAR__3702 ) == ( 8'd87 )  ;
assign n1626____DOLLAR__4286 =  ( n1480____DOLLAR__3702 ) == ( 8'd86 )  ;
assign n1627____DOLLAR__4290 =  ( n1480____DOLLAR__3702 ) == ( 8'd85 )  ;
assign n1628____DOLLAR__4294 =  ( n1480____DOLLAR__3702 ) == ( 8'd84 )  ;
assign n1629____DOLLAR__4298 =  ( n1480____DOLLAR__3702 ) == ( 8'd80 )  ;
assign n1630____DOLLAR__4302 =  ( n1480____DOLLAR__3702 ) == ( 8'd79 )  ;
assign n1631____DOLLAR__4306 =  ( n1480____DOLLAR__3702 ) == ( 8'd78 )  ;
assign n1632____DOLLAR__4310 =  ( n1480____DOLLAR__3702 ) == ( 8'd77 )  ;
assign n1633____DOLLAR__4314 =  ( n1480____DOLLAR__3702 ) == ( 8'd76 )  ;
assign n1634____DOLLAR__4318 =  ( n1480____DOLLAR__3702 ) == ( 8'd75 )  ;
assign n1635____DOLLAR__4322 =  ( n1480____DOLLAR__3702 ) == ( 8'd74 )  ;
assign n1636____DOLLAR__4326 =  ( n1480____DOLLAR__3702 ) == ( 8'd73 )  ;
assign n1637____DOLLAR__4330 =  ( n1480____DOLLAR__3702 ) == ( 8'd72 )  ;
assign n1638____DOLLAR__4334 =  ( n1480____DOLLAR__3702 ) == ( 8'd71 )  ;
assign n1639____DOLLAR__4338 =  ( n1480____DOLLAR__3702 ) == ( 8'd70 )  ;
assign n1640____DOLLAR__4342 =  ( n1480____DOLLAR__3702 ) == ( 8'd69 )  ;
assign n1641____DOLLAR__4346 =  ( n1480____DOLLAR__3702 ) == ( 8'd68 )  ;
assign n1642____DOLLAR__4350 =  ( n1480____DOLLAR__3702 ) == ( 8'd65 )  ;
assign n1643____DOLLAR__4354 =  ( n1480____DOLLAR__3702 ) == ( 8'd64 )  ;
assign n1644____DOLLAR__4358 =  ( n1480____DOLLAR__3702 ) == ( 8'd63 )  ;
assign n1645____DOLLAR__4362 =  ( n1480____DOLLAR__3702 ) == ( 8'd62 )  ;
assign n1646____DOLLAR__4366 =  ( n1480____DOLLAR__3702 ) == ( 8'd61 )  ;
assign n1647____DOLLAR__4370 =  ( n1480____DOLLAR__3702 ) == ( 8'd60 )  ;
assign n1648____DOLLAR__4374 =  ( n1480____DOLLAR__3702 ) == ( 8'd59 )  ;
assign n1649____DOLLAR__4378 =  ( n1480____DOLLAR__3702 ) == ( 8'd58 )  ;
assign n1650____DOLLAR__4382 =  ( n1480____DOLLAR__3702 ) == ( 8'd57 )  ;
assign n1651____DOLLAR__4386 =  ( n1480____DOLLAR__3702 ) == ( 8'd56 )  ;
assign n1652____DOLLAR__4390 =  ( n1480____DOLLAR__3702 ) == ( 8'd55 )  ;
assign n1653____DOLLAR__4394 =  ( n1480____DOLLAR__3702 ) == ( 8'd54 )  ;
assign n1654____DOLLAR__4398 =  ( n1480____DOLLAR__3702 ) == ( 8'd53 )  ;
assign n1655____DOLLAR__4402 =  ( n1480____DOLLAR__3702 ) == ( 8'd52 )  ;
assign n1656____DOLLAR__4406 =  ( n1480____DOLLAR__3702 ) == ( 8'd51 )  ;
assign n1657____DOLLAR__4410 =  ( n1480____DOLLAR__3702 ) == ( 8'd48 )  ;
assign n1658____DOLLAR__4414 =  ( n1480____DOLLAR__3702 ) == ( 8'd47 )  ;
assign n1659____DOLLAR__4418 =  ( n1480____DOLLAR__3702 ) == ( 8'd46 )  ;
assign n1660____DOLLAR__4422 =  ( n1480____DOLLAR__3702 ) == ( 8'd45 )  ;
assign n1661____DOLLAR__4426 =  ( n1480____DOLLAR__3702 ) == ( 8'd44 )  ;
assign n1662____DOLLAR__4430 =  ( n1480____DOLLAR__3702 ) == ( 8'd43 )  ;
assign n1663____DOLLAR__4434 =  ( n1480____DOLLAR__3702 ) == ( 8'd42 )  ;
assign n1664____DOLLAR__4438 =  ( n1480____DOLLAR__3702 ) == ( 8'd41 )  ;
assign n1665____DOLLAR__4442 =  ( n1480____DOLLAR__3702 ) == ( 8'd40 )  ;
assign n1666____DOLLAR__4446 =  ( n1480____DOLLAR__3702 ) == ( 8'd39 )  ;
assign n1667____DOLLAR__4450 =  ( n1480____DOLLAR__3702 ) == ( 8'd38 )  ;
assign n1668____DOLLAR__4454 =  ( n1480____DOLLAR__3702 ) == ( 8'd37 )  ;
assign n1669____DOLLAR__4458 =  ( n1480____DOLLAR__3702 ) == ( 8'd36 )  ;
assign n1670____DOLLAR__4462 =  ( n1480____DOLLAR__3702 ) == ( 8'd35 )  ;
assign n1671____DOLLAR__4466 =  ( n1480____DOLLAR__3702 ) == ( 8'd33 )  ;
assign n1672____DOLLAR__4470 =  ( n1480____DOLLAR__3702 ) == ( 8'd32 )  ;
assign n1673____DOLLAR__4474 =  ( n1480____DOLLAR__3702 ) == ( 8'd31 )  ;
assign n1674____DOLLAR__4478 =  ( n1480____DOLLAR__3702 ) == ( 8'd30 )  ;
assign n1675____DOLLAR__4482 =  ( n1480____DOLLAR__3702 ) == ( 8'd29 )  ;
assign n1676____DOLLAR__4486 =  ( n1480____DOLLAR__3702 ) == ( 8'd28 )  ;
assign n1677____DOLLAR__4490 =  ( n1480____DOLLAR__3702 ) == ( 8'd27 )  ;
assign n1678____DOLLAR__4494 =  ( n1480____DOLLAR__3702 ) == ( 8'd26 )  ;
assign n1679____DOLLAR__4498 =  ( n1480____DOLLAR__3702 ) == ( 8'd25 )  ;
assign n1680____DOLLAR__4502 =  ( n1480____DOLLAR__3702 ) == ( 8'd24 )  ;
assign n1681____DOLLAR__4506 =  ( n1480____DOLLAR__3702 ) == ( 8'd23 )  ;
assign n1682____DOLLAR__4510 =  ( n1480____DOLLAR__3702 ) == ( 8'd22 )  ;
assign n1683____DOLLAR__4514 =  ( n1480____DOLLAR__3702 ) == ( 8'd20 )  ;
assign n1684____DOLLAR__4518 =  ( n1480____DOLLAR__3702 ) == ( 8'd19 )  ;
assign n1685____DOLLAR__4522 =  ( n1480____DOLLAR__3702 ) == ( 8'd16 )  ;
assign n1686____DOLLAR__4526 =  ( n1480____DOLLAR__3702 ) == ( 8'd15 )  ;
assign n1687____DOLLAR__4530 =  ( n1480____DOLLAR__3702 ) == ( 8'd14 )  ;
assign n1688____DOLLAR__4534 =  ( n1480____DOLLAR__3702 ) == ( 8'd13 )  ;
assign n1689____DOLLAR__4538 =  ( n1480____DOLLAR__3702 ) == ( 8'd12 )  ;
assign n1690____DOLLAR__4542 =  ( n1480____DOLLAR__3702 ) == ( 8'd11 )  ;
assign n1691____DOLLAR__4546 =  ( n1480____DOLLAR__3702 ) == ( 8'd10 )  ;
assign n1692____DOLLAR__4550 =  ( n1480____DOLLAR__3702 ) == ( 8'd9 )  ;
assign n1693____DOLLAR__4554 =  ( n1480____DOLLAR__3702 ) == ( 8'd8 )  ;
assign n1694____DOLLAR__4558 =  ( n1480____DOLLAR__3702 ) == ( 8'd7 )  ;
assign n1695____DOLLAR__4562 =  ( n1480____DOLLAR__3702 ) == ( 8'd6 )  ;
assign n1696____DOLLAR__4566 =  ( n1480____DOLLAR__3702 ) == ( 8'd4 )  ;
assign n1697____DOLLAR__4570 =  ( n1480____DOLLAR__3702 ) == ( 8'd3 )  ;
assign n1698____DOLLAR__4574 =  ( n1480____DOLLAR__3702 ) == ( 8'd2 )  ;
assign n1699____DOLLAR__4578 =  ( n1480____DOLLAR__3702 ) == ( 8'd1 )  ;
assign n1700____DOLLAR__4582 =  ( n1480____DOLLAR__3702 ) == ( 8'd0 )  ;
assign n1701____DOLLAR__4584 =  ( n1699____DOLLAR__4578 ) | ( n1700____DOLLAR__4582 )  ;
assign n1702____DOLLAR__4585 =  ( n1698____DOLLAR__4574 ) | ( n1701____DOLLAR__4584 )  ;
assign n1703____DOLLAR__4586 =  ( n1697____DOLLAR__4570 ) | ( n1702____DOLLAR__4585 )  ;
assign n1704____DOLLAR__4587 =  ( n1696____DOLLAR__4566 ) | ( n1703____DOLLAR__4586 )  ;
assign n1705____DOLLAR__4588 =  ( n1695____DOLLAR__4562 ) | ( n1704____DOLLAR__4587 )  ;
assign n1706____DOLLAR__4589 =  ( n1694____DOLLAR__4558 ) | ( n1705____DOLLAR__4588 )  ;
assign n1707____DOLLAR__4590 =  ( n1693____DOLLAR__4554 ) | ( n1706____DOLLAR__4589 )  ;
assign n1708____DOLLAR__4591 =  ( n1692____DOLLAR__4550 ) | ( n1707____DOLLAR__4590 )  ;
assign n1709____DOLLAR__4592 =  ( n1691____DOLLAR__4546 ) | ( n1708____DOLLAR__4591 )  ;
assign n1710____DOLLAR__4593 =  ( n1690____DOLLAR__4542 ) | ( n1709____DOLLAR__4592 )  ;
assign n1711____DOLLAR__4594 =  ( n1689____DOLLAR__4538 ) | ( n1710____DOLLAR__4593 )  ;
assign n1712____DOLLAR__4595 =  ( n1688____DOLLAR__4534 ) | ( n1711____DOLLAR__4594 )  ;
assign n1713____DOLLAR__4596 =  ( n1687____DOLLAR__4530 ) | ( n1712____DOLLAR__4595 )  ;
assign n1714____DOLLAR__4597 =  ( n1686____DOLLAR__4526 ) | ( n1713____DOLLAR__4596 )  ;
assign n1715____DOLLAR__4598 =  ( n1685____DOLLAR__4522 ) | ( n1714____DOLLAR__4597 )  ;
assign n1716____DOLLAR__4599 =  ( n1684____DOLLAR__4518 ) | ( n1715____DOLLAR__4598 )  ;
assign n1717____DOLLAR__4600 =  ( n1683____DOLLAR__4514 ) | ( n1716____DOLLAR__4599 )  ;
assign n1718____DOLLAR__4601 =  ( n1682____DOLLAR__4510 ) | ( n1717____DOLLAR__4600 )  ;
assign n1719____DOLLAR__4602 =  ( n1681____DOLLAR__4506 ) | ( n1718____DOLLAR__4601 )  ;
assign n1720____DOLLAR__4603 =  ( n1680____DOLLAR__4502 ) | ( n1719____DOLLAR__4602 )  ;
assign n1721____DOLLAR__4604 =  ( n1679____DOLLAR__4498 ) | ( n1720____DOLLAR__4603 )  ;
assign n1722____DOLLAR__4605 =  ( n1678____DOLLAR__4494 ) | ( n1721____DOLLAR__4604 )  ;
assign n1723____DOLLAR__4606 =  ( n1677____DOLLAR__4490 ) | ( n1722____DOLLAR__4605 )  ;
assign n1724____DOLLAR__4607 =  ( n1676____DOLLAR__4486 ) | ( n1723____DOLLAR__4606 )  ;
assign n1725____DOLLAR__4608 =  ( n1675____DOLLAR__4482 ) | ( n1724____DOLLAR__4607 )  ;
assign n1726____DOLLAR__4609 =  ( n1674____DOLLAR__4478 ) | ( n1725____DOLLAR__4608 )  ;
assign n1727____DOLLAR__4610 =  ( n1673____DOLLAR__4474 ) | ( n1726____DOLLAR__4609 )  ;
assign n1728____DOLLAR__4611 =  ( n1672____DOLLAR__4470 ) | ( n1727____DOLLAR__4610 )  ;
assign n1729____DOLLAR__4612 =  ( n1671____DOLLAR__4466 ) | ( n1728____DOLLAR__4611 )  ;
assign n1730____DOLLAR__4613 =  ( n1670____DOLLAR__4462 ) | ( n1729____DOLLAR__4612 )  ;
assign n1731____DOLLAR__4614 =  ( n1669____DOLLAR__4458 ) | ( n1730____DOLLAR__4613 )  ;
assign n1732____DOLLAR__4615 =  ( n1668____DOLLAR__4454 ) | ( n1731____DOLLAR__4614 )  ;
assign n1733____DOLLAR__4616 =  ( n1667____DOLLAR__4450 ) | ( n1732____DOLLAR__4615 )  ;
assign n1734____DOLLAR__4617 =  ( n1666____DOLLAR__4446 ) | ( n1733____DOLLAR__4616 )  ;
assign n1735____DOLLAR__4618 =  ( n1665____DOLLAR__4442 ) | ( n1734____DOLLAR__4617 )  ;
assign n1736____DOLLAR__4619 =  ( n1664____DOLLAR__4438 ) | ( n1735____DOLLAR__4618 )  ;
assign n1737____DOLLAR__4620 =  ( n1663____DOLLAR__4434 ) | ( n1736____DOLLAR__4619 )  ;
assign n1738____DOLLAR__4621 =  ( n1662____DOLLAR__4430 ) | ( n1737____DOLLAR__4620 )  ;
assign n1739____DOLLAR__4622 =  ( n1661____DOLLAR__4426 ) | ( n1738____DOLLAR__4621 )  ;
assign n1740____DOLLAR__4623 =  ( n1660____DOLLAR__4422 ) | ( n1739____DOLLAR__4622 )  ;
assign n1741____DOLLAR__4624 =  ( n1659____DOLLAR__4418 ) | ( n1740____DOLLAR__4623 )  ;
assign n1742____DOLLAR__4625 =  ( n1658____DOLLAR__4414 ) | ( n1741____DOLLAR__4624 )  ;
assign n1743____DOLLAR__4626 =  ( n1657____DOLLAR__4410 ) | ( n1742____DOLLAR__4625 )  ;
assign n1744____DOLLAR__4627 =  ( n1656____DOLLAR__4406 ) | ( n1743____DOLLAR__4626 )  ;
assign n1745____DOLLAR__4628 =  ( n1655____DOLLAR__4402 ) | ( n1744____DOLLAR__4627 )  ;
assign n1746____DOLLAR__4629 =  ( n1654____DOLLAR__4398 ) | ( n1745____DOLLAR__4628 )  ;
assign n1747____DOLLAR__4630 =  ( n1653____DOLLAR__4394 ) | ( n1746____DOLLAR__4629 )  ;
assign n1748____DOLLAR__4631 =  ( n1652____DOLLAR__4390 ) | ( n1747____DOLLAR__4630 )  ;
assign n1749____DOLLAR__4632 =  ( n1651____DOLLAR__4386 ) | ( n1748____DOLLAR__4631 )  ;
assign n1750____DOLLAR__4633 =  ( n1650____DOLLAR__4382 ) | ( n1749____DOLLAR__4632 )  ;
assign n1751____DOLLAR__4634 =  ( n1649____DOLLAR__4378 ) | ( n1750____DOLLAR__4633 )  ;
assign n1752____DOLLAR__4635 =  ( n1648____DOLLAR__4374 ) | ( n1751____DOLLAR__4634 )  ;
assign n1753____DOLLAR__4636 =  ( n1647____DOLLAR__4370 ) | ( n1752____DOLLAR__4635 )  ;
assign n1754____DOLLAR__4637 =  ( n1646____DOLLAR__4366 ) | ( n1753____DOLLAR__4636 )  ;
assign n1755____DOLLAR__4638 =  ( n1645____DOLLAR__4362 ) | ( n1754____DOLLAR__4637 )  ;
assign n1756____DOLLAR__4639 =  ( n1644____DOLLAR__4358 ) | ( n1755____DOLLAR__4638 )  ;
assign n1757____DOLLAR__4640 =  ( n1643____DOLLAR__4354 ) | ( n1756____DOLLAR__4639 )  ;
assign n1758____DOLLAR__4641 =  ( n1642____DOLLAR__4350 ) | ( n1757____DOLLAR__4640 )  ;
assign n1759____DOLLAR__4642 =  ( n1641____DOLLAR__4346 ) | ( n1758____DOLLAR__4641 )  ;
assign n1760____DOLLAR__4643 =  ( n1640____DOLLAR__4342 ) | ( n1759____DOLLAR__4642 )  ;
assign n1761____DOLLAR__4644 =  ( n1639____DOLLAR__4338 ) | ( n1760____DOLLAR__4643 )  ;
assign n1762____DOLLAR__4645 =  ( n1638____DOLLAR__4334 ) | ( n1761____DOLLAR__4644 )  ;
assign n1763____DOLLAR__4646 =  ( n1637____DOLLAR__4330 ) | ( n1762____DOLLAR__4645 )  ;
assign n1764____DOLLAR__4647 =  ( n1636____DOLLAR__4326 ) | ( n1763____DOLLAR__4646 )  ;
assign n1765____DOLLAR__4648 =  ( n1635____DOLLAR__4322 ) | ( n1764____DOLLAR__4647 )  ;
assign n1766____DOLLAR__4649 =  ( n1634____DOLLAR__4318 ) | ( n1765____DOLLAR__4648 )  ;
assign n1767____DOLLAR__4650 =  ( n1633____DOLLAR__4314 ) | ( n1766____DOLLAR__4649 )  ;
assign n1768____DOLLAR__4651 =  ( n1632____DOLLAR__4310 ) | ( n1767____DOLLAR__4650 )  ;
assign n1769____DOLLAR__4652 =  ( n1631____DOLLAR__4306 ) | ( n1768____DOLLAR__4651 )  ;
assign n1770____DOLLAR__4653 =  ( n1630____DOLLAR__4302 ) | ( n1769____DOLLAR__4652 )  ;
assign n1771____DOLLAR__4654 =  ( n1629____DOLLAR__4298 ) | ( n1770____DOLLAR__4653 )  ;
assign n1772____DOLLAR__4655 =  ( n1628____DOLLAR__4294 ) | ( n1771____DOLLAR__4654 )  ;
assign n1773____DOLLAR__4656 =  ( n1627____DOLLAR__4290 ) | ( n1772____DOLLAR__4655 )  ;
assign n1774____DOLLAR__4657 =  ( n1626____DOLLAR__4286 ) | ( n1773____DOLLAR__4656 )  ;
assign n1775____DOLLAR__4658 =  ( n1625____DOLLAR__4282 ) | ( n1774____DOLLAR__4657 )  ;
assign n1776____DOLLAR__4659 =  ( n1624____DOLLAR__4278 ) | ( n1775____DOLLAR__4658 )  ;
assign n1777____DOLLAR__4660 =  ( n1623____DOLLAR__4274 ) | ( n1776____DOLLAR__4659 )  ;
assign n1778____DOLLAR__4661 =  ( n1622____DOLLAR__4270 ) | ( n1777____DOLLAR__4660 )  ;
assign n1779____DOLLAR__4662 =  ( n1621____DOLLAR__4266 ) | ( n1778____DOLLAR__4661 )  ;
assign n1780____DOLLAR__4663 =  ( n1620____DOLLAR__4262 ) | ( n1779____DOLLAR__4662 )  ;
assign n1781____DOLLAR__4664 =  ( n1619____DOLLAR__4258 ) | ( n1780____DOLLAR__4663 )  ;
assign n1782____DOLLAR__4665 =  ( n1618____DOLLAR__4254 ) | ( n1781____DOLLAR__4664 )  ;
assign n1783____DOLLAR__4666 =  ( n1617____DOLLAR__4250 ) | ( n1782____DOLLAR__4665 )  ;
assign n1784____DOLLAR__4667 =  ( n1616____DOLLAR__4246 ) | ( n1783____DOLLAR__4666 )  ;
assign n1785____DOLLAR__4668 =  ( n1615____DOLLAR__4242 ) | ( n1784____DOLLAR__4667 )  ;
assign n1786____DOLLAR__4669 =  ( n1614____DOLLAR__4238 ) | ( n1785____DOLLAR__4668 )  ;
assign n1787____DOLLAR__4670 =  ( n1613____DOLLAR__4234 ) | ( n1786____DOLLAR__4669 )  ;
assign n1788____DOLLAR__4671 =  ( n1612____DOLLAR__4230 ) | ( n1787____DOLLAR__4670 )  ;
assign n1789____DOLLAR__4672 =  ( n1611____DOLLAR__4226 ) | ( n1788____DOLLAR__4671 )  ;
assign n1790____DOLLAR__4673 =  ( n1610____DOLLAR__4222 ) | ( n1789____DOLLAR__4672 )  ;
assign n1791____DOLLAR__4674 =  ( n1609____DOLLAR__4218 ) | ( n1790____DOLLAR__4673 )  ;
assign n1792____DOLLAR__4675 =  ( n1608____DOLLAR__4214 ) | ( n1791____DOLLAR__4674 )  ;
assign n1793____DOLLAR__4676 =  ( n1607____DOLLAR__4210 ) | ( n1792____DOLLAR__4675 )  ;
assign n1794____DOLLAR__4677 =  ( n1606____DOLLAR__4206 ) | ( n1793____DOLLAR__4676 )  ;
assign n1795____DOLLAR__4678 =  ( n1605____DOLLAR__4202 ) | ( n1794____DOLLAR__4677 )  ;
assign n1796____DOLLAR__4679 =  ( n1604____DOLLAR__4198 ) | ( n1795____DOLLAR__4678 )  ;
assign n1797____DOLLAR__4680 =  ( n1603____DOLLAR__4194 ) | ( n1796____DOLLAR__4679 )  ;
assign n1798____DOLLAR__4681 =  ( n1602____DOLLAR__4190 ) | ( n1797____DOLLAR__4680 )  ;
assign n1799____DOLLAR__4682 =  ( n1601____DOLLAR__4186 ) | ( n1798____DOLLAR__4681 )  ;
assign n1800____DOLLAR__4683 =  ( n1600____DOLLAR__4182 ) | ( n1799____DOLLAR__4682 )  ;
assign n1801____DOLLAR__4684 =  ( n1599____DOLLAR__4178 ) | ( n1800____DOLLAR__4683 )  ;
assign n1802____DOLLAR__4685 =  ( n1598____DOLLAR__4174 ) | ( n1801____DOLLAR__4684 )  ;
assign n1803____DOLLAR__4686 =  ( n1597____DOLLAR__4170 ) | ( n1802____DOLLAR__4685 )  ;
assign n1804____DOLLAR__4687 =  ( n1596____DOLLAR__4166 ) | ( n1803____DOLLAR__4686 )  ;
assign n1805____DOLLAR__4688 =  ( n1595____DOLLAR__4162 ) | ( n1804____DOLLAR__4687 )  ;
assign n1806____DOLLAR__4689 =  ( n1594____DOLLAR__4158 ) | ( n1805____DOLLAR__4688 )  ;
assign n1807____DOLLAR__4690 =  ( n1593____DOLLAR__4154 ) | ( n1806____DOLLAR__4689 )  ;
assign n1808____DOLLAR__4691 =  ( n1592____DOLLAR__4150 ) | ( n1807____DOLLAR__4690 )  ;
assign n1809____DOLLAR__4692 =  ( n1591____DOLLAR__4146 ) | ( n1808____DOLLAR__4691 )  ;
assign n1810____DOLLAR__4693 =  ( n1590____DOLLAR__4142 ) | ( n1809____DOLLAR__4692 )  ;
assign n1811____DOLLAR__4694 =  ( n1589____DOLLAR__4138 ) | ( n1810____DOLLAR__4693 )  ;
assign n1812____DOLLAR__4695 =  ( n1588____DOLLAR__4134 ) | ( n1811____DOLLAR__4694 )  ;
assign n1813____DOLLAR__4696 =  ( n1587____DOLLAR__4130 ) | ( n1812____DOLLAR__4695 )  ;
assign n1814____DOLLAR__4697 =  ( n1586____DOLLAR__4126 ) | ( n1813____DOLLAR__4696 )  ;
assign n1815____DOLLAR__4698 =  ( n1585____DOLLAR__4122 ) | ( n1814____DOLLAR__4697 )  ;
assign n1816____DOLLAR__4699 =  ( n1584____DOLLAR__4118 ) | ( n1815____DOLLAR__4698 )  ;
assign n1817____DOLLAR__4700 =  ( n1583____DOLLAR__4114 ) | ( n1816____DOLLAR__4699 )  ;
assign n1818____DOLLAR__4701 =  ( n1582____DOLLAR__4110 ) | ( n1817____DOLLAR__4700 )  ;
assign n1819____DOLLAR__4702 =  ( n1581____DOLLAR__4106 ) | ( n1818____DOLLAR__4701 )  ;
assign n1820____DOLLAR__4703 =  ( n1580____DOLLAR__4102 ) | ( n1819____DOLLAR__4702 )  ;
assign n1821____DOLLAR__4704 =  ( n1579____DOLLAR__4098 ) | ( n1820____DOLLAR__4703 )  ;
assign n1822____DOLLAR__4705 =  ( n1578____DOLLAR__4094 ) | ( n1821____DOLLAR__4704 )  ;
assign n1823____DOLLAR__4706 =  ( n1577____DOLLAR__4090 ) | ( n1822____DOLLAR__4705 )  ;
assign n1824____DOLLAR__4707 =  ( n1576____DOLLAR__4086 ) | ( n1823____DOLLAR__4706 )  ;
assign n1825____DOLLAR__4708 =  ( n1575____DOLLAR__4082 ) | ( n1824____DOLLAR__4707 )  ;
assign n1826____DOLLAR__4709 =  ( n1574____DOLLAR__4078 ) | ( n1825____DOLLAR__4708 )  ;
assign n1827____DOLLAR__4710 =  ( n1573____DOLLAR__4074 ) | ( n1826____DOLLAR__4709 )  ;
assign n1828____DOLLAR__4711 =  ( n1572____DOLLAR__4070 ) | ( n1827____DOLLAR__4710 )  ;
assign n1829____DOLLAR__4712 =  ( n1571____DOLLAR__4066 ) | ( n1828____DOLLAR__4711 )  ;
assign n1830____DOLLAR__4713 =  ( n1570____DOLLAR__4062 ) | ( n1829____DOLLAR__4712 )  ;
assign n1831____DOLLAR__4714 =  ( n1569____DOLLAR__4058 ) | ( n1830____DOLLAR__4713 )  ;
assign n1832____DOLLAR__4715 =  ( n1568____DOLLAR__4054 ) | ( n1831____DOLLAR__4714 )  ;
assign n1833____DOLLAR__4716 =  ( n1567____DOLLAR__4050 ) | ( n1832____DOLLAR__4715 )  ;
assign n1834____DOLLAR__4717 =  ( n1566____DOLLAR__4046 ) | ( n1833____DOLLAR__4716 )  ;
assign n1835____DOLLAR__4718 =  ( n1565____DOLLAR__4042 ) | ( n1834____DOLLAR__4717 )  ;
assign n1836____DOLLAR__4719 =  ( n1564____DOLLAR__4038 ) | ( n1835____DOLLAR__4718 )  ;
assign n1837____DOLLAR__4720 =  ( n1563____DOLLAR__4034 ) | ( n1836____DOLLAR__4719 )  ;
assign n1838____DOLLAR__4721 =  ( n1562____DOLLAR__4030 ) | ( n1837____DOLLAR__4720 )  ;
assign n1839____DOLLAR__4722 =  ( n1561____DOLLAR__4026 ) | ( n1838____DOLLAR__4721 )  ;
assign n1840____DOLLAR__4723 =  ( n1560____DOLLAR__4022 ) | ( n1839____DOLLAR__4722 )  ;
assign n1841____DOLLAR__4724 =  ( n1559____DOLLAR__4018 ) | ( n1840____DOLLAR__4723 )  ;
assign n1842____DOLLAR__4725 =  ( n1558____DOLLAR__4014 ) | ( n1841____DOLLAR__4724 )  ;
assign n1843____DOLLAR__4726 =  ( n1557____DOLLAR__4010 ) | ( n1842____DOLLAR__4725 )  ;
assign n1844____DOLLAR__4727 =  ( n1556____DOLLAR__4006 ) | ( n1843____DOLLAR__4726 )  ;
assign n1845____DOLLAR__4728 =  ( n1555____DOLLAR__4002 ) | ( n1844____DOLLAR__4727 )  ;
assign n1846____DOLLAR__4729 =  ( n1554____DOLLAR__3998 ) | ( n1845____DOLLAR__4728 )  ;
assign n1847____DOLLAR__4730 =  ( n1553____DOLLAR__3994 ) | ( n1846____DOLLAR__4729 )  ;
assign n1848____DOLLAR__4731 =  ( n1552____DOLLAR__3990 ) | ( n1847____DOLLAR__4730 )  ;
assign n1849____DOLLAR__4732 =  ( n1551____DOLLAR__3986 ) | ( n1848____DOLLAR__4731 )  ;
assign n1850____DOLLAR__4733 =  ( n1550____DOLLAR__3982 ) | ( n1849____DOLLAR__4732 )  ;
assign n1851____DOLLAR__4734 =  ( n1549____DOLLAR__3978 ) | ( n1850____DOLLAR__4733 )  ;
assign n1852____DOLLAR__4735 =  ( n1548____DOLLAR__3974 ) | ( n1851____DOLLAR__4734 )  ;
assign n1853____DOLLAR__4736 =  ( n1547____DOLLAR__3970 ) | ( n1852____DOLLAR__4735 )  ;
assign n1854____DOLLAR__4737 =  ( n1546____DOLLAR__3966 ) | ( n1853____DOLLAR__4736 )  ;
assign n1855____DOLLAR__4738 =  ( n1545____DOLLAR__3962 ) | ( n1854____DOLLAR__4737 )  ;
assign n1856____DOLLAR__4739 =  ( n1544____DOLLAR__3958 ) | ( n1855____DOLLAR__4738 )  ;
assign n1857____DOLLAR__4740 =  ( n1543____DOLLAR__3954 ) | ( n1856____DOLLAR__4739 )  ;
assign n1858____DOLLAR__4741 =  ( n1542____DOLLAR__3950 ) | ( n1857____DOLLAR__4740 )  ;
assign n1859____DOLLAR__4742 =  ( n1541____DOLLAR__3946 ) | ( n1858____DOLLAR__4741 )  ;
assign n1860____DOLLAR__4743 =  ( n1540____DOLLAR__3942 ) | ( n1859____DOLLAR__4742 )  ;
assign n1861____DOLLAR__4744 =  ( n1539____DOLLAR__3938 ) | ( n1860____DOLLAR__4743 )  ;
assign n1862____DOLLAR__4745 =  ( n1538____DOLLAR__3934 ) | ( n1861____DOLLAR__4744 )  ;
assign n1863____DOLLAR__4746 =  ( n1537____DOLLAR__3930 ) | ( n1862____DOLLAR__4745 )  ;
assign n1864____DOLLAR__4747 =  ( n1536____DOLLAR__3926 ) | ( n1863____DOLLAR__4746 )  ;
assign n1865____DOLLAR__4748 =  ( n1535____DOLLAR__3922 ) | ( n1864____DOLLAR__4747 )  ;
assign n1866____DOLLAR__4749 =  ( n1534____DOLLAR__3918 ) | ( n1865____DOLLAR__4748 )  ;
assign n1867____DOLLAR__4750 =  ( n1533____DOLLAR__3914 ) | ( n1866____DOLLAR__4749 )  ;
assign n1868____DOLLAR__4751 =  ( n1532____DOLLAR__3910 ) | ( n1867____DOLLAR__4750 )  ;
assign n1869____DOLLAR__4752 =  ( n1531____DOLLAR__3906 ) | ( n1868____DOLLAR__4751 )  ;
assign n1870____DOLLAR__4753 =  ( n1530____DOLLAR__3902 ) | ( n1869____DOLLAR__4752 )  ;
assign n1871____DOLLAR__4754 =  ( n1529____DOLLAR__3898 ) | ( n1870____DOLLAR__4753 )  ;
assign n1872____DOLLAR__4755 =  ( n1528____DOLLAR__3894 ) | ( n1871____DOLLAR__4754 )  ;
assign n1873____DOLLAR__4756 =  ( n1527____DOLLAR__3890 ) | ( n1872____DOLLAR__4755 )  ;
assign n1874____DOLLAR__4757 =  ( n1526____DOLLAR__3886 ) | ( n1873____DOLLAR__4756 )  ;
assign n1875____DOLLAR__4758 =  ( n1525____DOLLAR__3882 ) | ( n1874____DOLLAR__4757 )  ;
assign n1876____DOLLAR__4759 =  ( n1524____DOLLAR__3878 ) | ( n1875____DOLLAR__4758 )  ;
assign n1877____DOLLAR__4760 =  ( n1523____DOLLAR__3874 ) | ( n1876____DOLLAR__4759 )  ;
assign n1878____DOLLAR__4761 =  ( n1522____DOLLAR__3870 ) | ( n1877____DOLLAR__4760 )  ;
assign n1879____DOLLAR__4762 =  ( n1521____DOLLAR__3866 ) | ( n1878____DOLLAR__4761 )  ;
assign n1880____DOLLAR__4763 =  ( n1520____DOLLAR__3862 ) | ( n1879____DOLLAR__4762 )  ;
assign n1881____DOLLAR__4764 =  ( n1519____DOLLAR__3858 ) | ( n1880____DOLLAR__4763 )  ;
assign n1882____DOLLAR__4765 =  ( n1518____DOLLAR__3854 ) | ( n1881____DOLLAR__4764 )  ;
assign n1883____DOLLAR__4766 =  ( n1517____DOLLAR__3850 ) | ( n1882____DOLLAR__4765 )  ;
assign n1884____DOLLAR__4767 =  ( n1516____DOLLAR__3846 ) | ( n1883____DOLLAR__4766 )  ;
assign n1885____DOLLAR__4768 =  ( n1515____DOLLAR__3842 ) | ( n1884____DOLLAR__4767 )  ;
assign n1886____DOLLAR__4769 =  ( n1514____DOLLAR__3838 ) | ( n1885____DOLLAR__4768 )  ;
assign n1887____DOLLAR__4770 =  ( n1513____DOLLAR__3834 ) | ( n1886____DOLLAR__4769 )  ;
assign n1888____DOLLAR__4771 =  ( n1512____DOLLAR__3830 ) | ( n1887____DOLLAR__4770 )  ;
assign n1889____DOLLAR__4772 =  ( n1511____DOLLAR__3826 ) | ( n1888____DOLLAR__4771 )  ;
assign n1890____DOLLAR__4773 =  ( n1510____DOLLAR__3822 ) | ( n1889____DOLLAR__4772 )  ;
assign n1891____DOLLAR__4774 =  ( n1509____DOLLAR__3818 ) | ( n1890____DOLLAR__4773 )  ;
assign n1892____DOLLAR__4775 =  ( n1508____DOLLAR__3814 ) | ( n1891____DOLLAR__4774 )  ;
assign n1893____DOLLAR__4776 =  ( n1507____DOLLAR__3810 ) | ( n1892____DOLLAR__4775 )  ;
assign n1894____DOLLAR__4777 =  ( n1506____DOLLAR__3806 ) | ( n1893____DOLLAR__4776 )  ;
assign n1895____DOLLAR__4778 =  ( n1505____DOLLAR__3802 ) | ( n1894____DOLLAR__4777 )  ;
assign n1896____DOLLAR__4779 =  ( n1504____DOLLAR__3798 ) | ( n1895____DOLLAR__4778 )  ;
assign n1897____DOLLAR__4780 =  ( n1503____DOLLAR__3794 ) | ( n1896____DOLLAR__4779 )  ;
assign n1898____DOLLAR__4781 =  ( n1502____DOLLAR__3790 ) | ( n1897____DOLLAR__4780 )  ;
assign n1899____DOLLAR__4782 =  ( n1501____DOLLAR__3786 ) | ( n1898____DOLLAR__4781 )  ;
assign n1900____DOLLAR__4783 =  ( n1500____DOLLAR__3782 ) | ( n1899____DOLLAR__4782 )  ;
assign n1901____DOLLAR__4784 =  ( n1499____DOLLAR__3778 ) | ( n1900____DOLLAR__4783 )  ;
assign n1902____DOLLAR__4785 =  ( n1498____DOLLAR__3774 ) | ( n1901____DOLLAR__4784 )  ;
assign n1903____DOLLAR__4786 =  ( n1497____DOLLAR__3770 ) | ( n1902____DOLLAR__4785 )  ;
assign n1904____DOLLAR__4787 =  ( n1496____DOLLAR__3766 ) | ( n1903____DOLLAR__4786 )  ;
assign n1905____DOLLAR__4788 =  ( n1495____DOLLAR__3762 ) | ( n1904____DOLLAR__4787 )  ;
assign n1906____DOLLAR__4789 =  ( n1494____DOLLAR__3758 ) | ( n1905____DOLLAR__4788 )  ;
assign n1907____DOLLAR__4790 =  ( n1493____DOLLAR__3754 ) | ( n1906____DOLLAR__4789 )  ;
assign n1908____DOLLAR__4791 =  ( n1492____DOLLAR__3750 ) | ( n1907____DOLLAR__4790 )  ;
assign n1909____DOLLAR__4792 =  ( n1491____DOLLAR__3746 ) | ( n1908____DOLLAR__4791 )  ;
assign n1910____DOLLAR__4793 =  ( n1490____DOLLAR__3742 ) | ( n1909____DOLLAR__4792 )  ;
assign n1911____DOLLAR__4794 =  ( n1489____DOLLAR__3738 ) | ( n1910____DOLLAR__4793 )  ;
assign n1912____DOLLAR__4795 =  ( n1488____DOLLAR__3734 ) | ( n1911____DOLLAR__4794 )  ;
assign n1913____DOLLAR__4796 =  ( n1487____DOLLAR__3730 ) | ( n1912____DOLLAR__4795 )  ;
assign n1914____DOLLAR__4797 =  ( n1486____DOLLAR__3726 ) | ( n1913____DOLLAR__4796 )  ;
assign n1915____DOLLAR__4798 =  ( n1485____DOLLAR__3722 ) | ( n1914____DOLLAR__4797 )  ;
assign n1916____DOLLAR__4799 =  ( n1484____DOLLAR__3718 ) | ( n1915____DOLLAR__4798 )  ;
assign n1917____DOLLAR__4800 =  ( n1483____DOLLAR__3714 ) | ( n1916____DOLLAR__4799 )  ;
assign n1918____DOLLAR__4801 =  ( n1482____DOLLAR__3710 ) | ( n1917____DOLLAR__4800 )  ;
assign n1919____DOLLAR__4802 =  ( n1481____DOLLAR__3706 ) | ( n1918____DOLLAR__4801 )  ;
assign n1920____DOLLAR__4805 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n1921 = n1920____DOLLAR__4805 ;
assign n1923____DOLLAR__4806 = ROM_data_n1922 ;
assign n1924____DOLLAR__4808 = n1923____DOLLAR__4806[7:7] ;
assign n1925____DOLLAR__4812 =  ( n1924____DOLLAR__4808 ) == ( 1'd1 )  ;
assign n1926____DOLLAR__4814 = n1923____DOLLAR__4806[7:3] ;
assign n1927____DOLLAR__4822 =  { ( n1926____DOLLAR__4814 ) , ( 3'd0 ) }  ;
assign n1928____DOLLAR__4824 =  {3'd0 , n1926____DOLLAR__4814}  ;
assign n1929____DOLLAR__4828 =  ( n1928____DOLLAR__4824 ) + ( 8'd32 )  ;
assign n1930____DOLLAR__4829 =  ( n1925____DOLLAR__4812 ) ? ( n1927____DOLLAR__4822 ) : ( n1929____DOLLAR__4828 ) ;
assign n1931____DOLLAR__4832 =  ( n1930____DOLLAR__4829 ) == ( 8'd129 )  ;
assign n1932____DOLLAR__4836 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n1933 = n1932____DOLLAR__4836 ;
assign n1935____DOLLAR__4837 = ROM_data_n1934 ;
assign n1936____DOLLAR__4839 = n1935____DOLLAR__4837[2:0] ;
assign n1937____DOLLAR__4841 =  {5'd0 , n1936____DOLLAR__4839}  ;
assign n1938____DOLLAR__4843 =  ( 8'd1 ) << ( n1937____DOLLAR__4841 )  ;
assign n1939____DOLLAR__4844 = ~ ( n1938____DOLLAR__4843 ) ;
assign n1940____DOLLAR__4845 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n1941 = n1940____DOLLAR__4845 ;
assign n1943____DOLLAR__4846 = ROM_data_n1942 ;
assign n1944____DOLLAR__4848 = n1943____DOLLAR__4846[7:7] ;
assign n1945____DOLLAR__4850 =  ( n1944____DOLLAR__4848 ) == ( 1'd1 )  ;
assign n1946____DOLLAR__4852 = n1943____DOLLAR__4846[7:3] ;
assign n1947____DOLLAR__4858 =  { ( n1946____DOLLAR__4852 ) , ( 3'd0 ) }  ;
assign n1948____DOLLAR__4860 =  {3'd0 , n1946____DOLLAR__4852}  ;
assign n1949____DOLLAR__4862 =  ( n1948____DOLLAR__4860 ) + ( 8'd32 )  ;
assign n1950____DOLLAR__4863 =  ( n1945____DOLLAR__4850 ) ? ( n1947____DOLLAR__4858 ) : ( n1949____DOLLAR__4862 ) ;
assign n1951____DOLLAR__4864 = n1950____DOLLAR__4863[7:7] ;
assign n1952____DOLLAR__4868 =  ( n1951____DOLLAR__4864 ) == ( 1'd0 )  ;
assign n1953____DOLLAR__4870 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n1954 = n1953____DOLLAR__4870 ;
assign n1956____DOLLAR__4871 = ROM_data_n1955 ;
assign n1957____DOLLAR__4873 = n1956____DOLLAR__4871[7:7] ;
assign n1958____DOLLAR__4875 =  ( n1957____DOLLAR__4873 ) == ( 1'd1 )  ;
assign n1959____DOLLAR__4877 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n1960 = n1959____DOLLAR__4877 ;
assign n1962____DOLLAR__4878 = ROM_data_n1961 ;
assign n1963____DOLLAR__4880 = n1962____DOLLAR__4878[7:3] ;
assign n1964____DOLLAR__4886 =  { ( n1963____DOLLAR__4880 ) , ( 3'd0 ) }  ;
assign n1965____DOLLAR__4888 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n1966 = n1965____DOLLAR__4888 ;
assign n1968____DOLLAR__4889 = ROM_data_n1967 ;
assign n1969____DOLLAR__4891 = n1968____DOLLAR__4889[7:3] ;
assign n1970____DOLLAR__4893 =  {3'd0 , n1969____DOLLAR__4891}  ;
assign n1971____DOLLAR__4895 =  ( n1970____DOLLAR__4893 ) + ( 8'd32 )  ;
assign n1972____DOLLAR__4896 =  ( n1958____DOLLAR__4875 ) ? ( n1964____DOLLAR__4886 ) : ( n1971____DOLLAR__4895 ) ;
assign IRAM_addr_n1973 = n1972____DOLLAR__4896 ;
assign n1975____DOLLAR__4897 = IRAM_data_n1974 ;
assign n1976____DOLLAR__4899 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n1977 = n1976____DOLLAR__4899 ;
assign n1979____DOLLAR__4900 = ROM_data_n1978 ;
assign n1980____DOLLAR__4902 = n1979____DOLLAR__4900[7:7] ;
assign n1981____DOLLAR__4904 =  ( n1980____DOLLAR__4902 ) == ( 1'd1 )  ;
assign n1982____DOLLAR__4906 = n1979____DOLLAR__4900[7:3] ;
assign n1983____DOLLAR__4912 =  { ( n1982____DOLLAR__4906 ) , ( 3'd0 ) }  ;
assign n1984____DOLLAR__4914 =  {3'd0 , n1982____DOLLAR__4906}  ;
assign n1985____DOLLAR__4916 =  ( n1984____DOLLAR__4914 ) + ( 8'd32 )  ;
assign n1986____DOLLAR__4917 =  ( n1981____DOLLAR__4904 ) ? ( n1983____DOLLAR__4912 ) : ( n1985____DOLLAR__4916 ) ;
assign n1987____DOLLAR__4920 =  ( n1986____DOLLAR__4917 ) == ( 8'd128 )  ;
assign n1988____DOLLAR__4922 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n1989 = n1988____DOLLAR__4922 ;
assign n1991____DOLLAR__4923 = ROM_data_n1990 ;
assign n1992____DOLLAR__4925 = n1991____DOLLAR__4923[7:7] ;
assign n1993____DOLLAR__4927 =  ( n1992____DOLLAR__4925 ) == ( 1'd1 )  ;
assign n1994____DOLLAR__4929 = n1991____DOLLAR__4923[7:3] ;
assign n1995____DOLLAR__4935 =  { ( n1994____DOLLAR__4929 ) , ( 3'd0 ) }  ;
assign n1996____DOLLAR__4937 =  {3'd0 , n1994____DOLLAR__4929}  ;
assign n1997____DOLLAR__4939 =  ( n1996____DOLLAR__4937 ) + ( 8'd32 )  ;
assign n1998____DOLLAR__4940 =  ( n1993____DOLLAR__4927 ) ? ( n1995____DOLLAR__4935 ) : ( n1997____DOLLAR__4939 ) ;
assign n1999____DOLLAR__4943 =  ( n1998____DOLLAR__4940 ) == ( 8'd129 )  ;
assign n2000____DOLLAR__4945 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n2001 = n2000____DOLLAR__4945 ;
assign n2003____DOLLAR__4946 = ROM_data_n2002 ;
assign n2004____DOLLAR__4948 = n2003____DOLLAR__4946[7:7] ;
assign n2005____DOLLAR__4950 =  ( n2004____DOLLAR__4948 ) == ( 1'd1 )  ;
assign n2006____DOLLAR__4952 = n2003____DOLLAR__4946[7:3] ;
assign n2007____DOLLAR__4958 =  { ( n2006____DOLLAR__4952 ) , ( 3'd0 ) }  ;
assign n2008____DOLLAR__4960 =  {3'd0 , n2006____DOLLAR__4952}  ;
assign n2009____DOLLAR__4962 =  ( n2008____DOLLAR__4960 ) + ( 8'd32 )  ;
assign n2010____DOLLAR__4963 =  ( n2005____DOLLAR__4950 ) ? ( n2007____DOLLAR__4958 ) : ( n2009____DOLLAR__4962 ) ;
assign n2011____DOLLAR__4966 =  ( n2010____DOLLAR__4963 ) == ( 8'd130 )  ;
assign n2012____DOLLAR__4968 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n2013 = n2012____DOLLAR__4968 ;
assign n2015____DOLLAR__4969 = ROM_data_n2014 ;
assign n2016____DOLLAR__4971 = n2015____DOLLAR__4969[7:7] ;
assign n2017____DOLLAR__4973 =  ( n2016____DOLLAR__4971 ) == ( 1'd1 )  ;
assign n2018____DOLLAR__4975 = n2015____DOLLAR__4969[7:3] ;
assign n2019____DOLLAR__4981 =  { ( n2018____DOLLAR__4975 ) , ( 3'd0 ) }  ;
assign n2020____DOLLAR__4983 =  {3'd0 , n2018____DOLLAR__4975}  ;
assign n2021____DOLLAR__4985 =  ( n2020____DOLLAR__4983 ) + ( 8'd32 )  ;
assign n2022____DOLLAR__4986 =  ( n2017____DOLLAR__4973 ) ? ( n2019____DOLLAR__4981 ) : ( n2021____DOLLAR__4985 ) ;
assign n2023____DOLLAR__4989 =  ( n2022____DOLLAR__4986 ) == ( 8'd131 )  ;
assign n2024____DOLLAR__4991 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n2025 = n2024____DOLLAR__4991 ;
assign n2027____DOLLAR__4992 = ROM_data_n2026 ;
assign n2028____DOLLAR__4994 = n2027____DOLLAR__4992[7:7] ;
assign n2029____DOLLAR__4996 =  ( n2028____DOLLAR__4994 ) == ( 1'd1 )  ;
assign n2030____DOLLAR__4998 = n2027____DOLLAR__4992[7:3] ;
assign n2031____DOLLAR__5004 =  { ( n2030____DOLLAR__4998 ) , ( 3'd0 ) }  ;
assign n2032____DOLLAR__5006 =  {3'd0 , n2030____DOLLAR__4998}  ;
assign n2033____DOLLAR__5008 =  ( n2032____DOLLAR__5006 ) + ( 8'd32 )  ;
assign n2034____DOLLAR__5009 =  ( n2029____DOLLAR__4996 ) ? ( n2031____DOLLAR__5004 ) : ( n2033____DOLLAR__5008 ) ;
assign n2035____DOLLAR__5012 =  ( n2034____DOLLAR__5009 ) == ( 8'd135 )  ;
assign n2036____DOLLAR__5014 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n2037 = n2036____DOLLAR__5014 ;
assign n2039____DOLLAR__5015 = ROM_data_n2038 ;
assign n2040____DOLLAR__5017 = n2039____DOLLAR__5015[7:7] ;
assign n2041____DOLLAR__5019 =  ( n2040____DOLLAR__5017 ) == ( 1'd1 )  ;
assign n2042____DOLLAR__5021 = n2039____DOLLAR__5015[7:3] ;
assign n2043____DOLLAR__5027 =  { ( n2042____DOLLAR__5021 ) , ( 3'd0 ) }  ;
assign n2044____DOLLAR__5029 =  {3'd0 , n2042____DOLLAR__5021}  ;
assign n2045____DOLLAR__5031 =  ( n2044____DOLLAR__5029 ) + ( 8'd32 )  ;
assign n2046____DOLLAR__5032 =  ( n2041____DOLLAR__5019 ) ? ( n2043____DOLLAR__5027 ) : ( n2045____DOLLAR__5031 ) ;
assign n2047____DOLLAR__5035 =  ( n2046____DOLLAR__5032 ) == ( 8'd136 )  ;
assign n2048____DOLLAR__5037 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n2049 = n2048____DOLLAR__5037 ;
assign n2051____DOLLAR__5038 = ROM_data_n2050 ;
assign n2052____DOLLAR__5040 = n2051____DOLLAR__5038[7:7] ;
assign n2053____DOLLAR__5042 =  ( n2052____DOLLAR__5040 ) == ( 1'd1 )  ;
assign n2054____DOLLAR__5044 = n2051____DOLLAR__5038[7:3] ;
assign n2055____DOLLAR__5050 =  { ( n2054____DOLLAR__5044 ) , ( 3'd0 ) }  ;
assign n2056____DOLLAR__5052 =  {3'd0 , n2054____DOLLAR__5044}  ;
assign n2057____DOLLAR__5054 =  ( n2056____DOLLAR__5052 ) + ( 8'd32 )  ;
assign n2058____DOLLAR__5055 =  ( n2053____DOLLAR__5042 ) ? ( n2055____DOLLAR__5050 ) : ( n2057____DOLLAR__5054 ) ;
assign n2059____DOLLAR__5058 =  ( n2058____DOLLAR__5055 ) == ( 8'd137 )  ;
assign n2060____DOLLAR__5060 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n2061 = n2060____DOLLAR__5060 ;
assign n2063____DOLLAR__5061 = ROM_data_n2062 ;
assign n2064____DOLLAR__5063 = n2063____DOLLAR__5061[7:7] ;
assign n2065____DOLLAR__5065 =  ( n2064____DOLLAR__5063 ) == ( 1'd1 )  ;
assign n2066____DOLLAR__5067 = n2063____DOLLAR__5061[7:3] ;
assign n2067____DOLLAR__5073 =  { ( n2066____DOLLAR__5067 ) , ( 3'd0 ) }  ;
assign n2068____DOLLAR__5075 =  {3'd0 , n2066____DOLLAR__5067}  ;
assign n2069____DOLLAR__5077 =  ( n2068____DOLLAR__5075 ) + ( 8'd32 )  ;
assign n2070____DOLLAR__5078 =  ( n2065____DOLLAR__5065 ) ? ( n2067____DOLLAR__5073 ) : ( n2069____DOLLAR__5077 ) ;
assign n2071____DOLLAR__5081 =  ( n2070____DOLLAR__5078 ) == ( 8'd138 )  ;
assign n2072____DOLLAR__5083 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n2073 = n2072____DOLLAR__5083 ;
assign n2075____DOLLAR__5084 = ROM_data_n2074 ;
assign n2076____DOLLAR__5086 = n2075____DOLLAR__5084[7:7] ;
assign n2077____DOLLAR__5088 =  ( n2076____DOLLAR__5086 ) == ( 1'd1 )  ;
assign n2078____DOLLAR__5090 = n2075____DOLLAR__5084[7:3] ;
assign n2079____DOLLAR__5096 =  { ( n2078____DOLLAR__5090 ) , ( 3'd0 ) }  ;
assign n2080____DOLLAR__5098 =  {3'd0 , n2078____DOLLAR__5090}  ;
assign n2081____DOLLAR__5100 =  ( n2080____DOLLAR__5098 ) + ( 8'd32 )  ;
assign n2082____DOLLAR__5101 =  ( n2077____DOLLAR__5088 ) ? ( n2079____DOLLAR__5096 ) : ( n2081____DOLLAR__5100 ) ;
assign n2083____DOLLAR__5104 =  ( n2082____DOLLAR__5101 ) == ( 8'd140 )  ;
assign n2084____DOLLAR__5106 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n2085 = n2084____DOLLAR__5106 ;
assign n2087____DOLLAR__5107 = ROM_data_n2086 ;
assign n2088____DOLLAR__5109 = n2087____DOLLAR__5107[7:7] ;
assign n2089____DOLLAR__5111 =  ( n2088____DOLLAR__5109 ) == ( 1'd1 )  ;
assign n2090____DOLLAR__5113 = n2087____DOLLAR__5107[7:3] ;
assign n2091____DOLLAR__5119 =  { ( n2090____DOLLAR__5113 ) , ( 3'd0 ) }  ;
assign n2092____DOLLAR__5121 =  {3'd0 , n2090____DOLLAR__5113}  ;
assign n2093____DOLLAR__5123 =  ( n2092____DOLLAR__5121 ) + ( 8'd32 )  ;
assign n2094____DOLLAR__5124 =  ( n2089____DOLLAR__5111 ) ? ( n2091____DOLLAR__5119 ) : ( n2093____DOLLAR__5123 ) ;
assign n2095____DOLLAR__5127 =  ( n2094____DOLLAR__5124 ) == ( 8'd139 )  ;
assign n2096____DOLLAR__5129 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n2097 = n2096____DOLLAR__5129 ;
assign n2099____DOLLAR__5130 = ROM_data_n2098 ;
assign n2100____DOLLAR__5132 = n2099____DOLLAR__5130[7:7] ;
assign n2101____DOLLAR__5134 =  ( n2100____DOLLAR__5132 ) == ( 1'd1 )  ;
assign n2102____DOLLAR__5136 = n2099____DOLLAR__5130[7:3] ;
assign n2103____DOLLAR__5142 =  { ( n2102____DOLLAR__5136 ) , ( 3'd0 ) }  ;
assign n2104____DOLLAR__5144 =  {3'd0 , n2102____DOLLAR__5136}  ;
assign n2105____DOLLAR__5146 =  ( n2104____DOLLAR__5144 ) + ( 8'd32 )  ;
assign n2106____DOLLAR__5147 =  ( n2101____DOLLAR__5134 ) ? ( n2103____DOLLAR__5142 ) : ( n2105____DOLLAR__5146 ) ;
assign n2107____DOLLAR__5150 =  ( n2106____DOLLAR__5147 ) == ( 8'd141 )  ;
assign n2108____DOLLAR__5152 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n2109 = n2108____DOLLAR__5152 ;
assign n2111____DOLLAR__5153 = ROM_data_n2110 ;
assign n2112____DOLLAR__5155 = n2111____DOLLAR__5153[7:7] ;
assign n2113____DOLLAR__5157 =  ( n2112____DOLLAR__5155 ) == ( 1'd1 )  ;
assign n2114____DOLLAR__5159 = n2111____DOLLAR__5153[7:3] ;
assign n2115____DOLLAR__5165 =  { ( n2114____DOLLAR__5159 ) , ( 3'd0 ) }  ;
assign n2116____DOLLAR__5167 =  {3'd0 , n2114____DOLLAR__5159}  ;
assign n2117____DOLLAR__5169 =  ( n2116____DOLLAR__5167 ) + ( 8'd32 )  ;
assign n2118____DOLLAR__5170 =  ( n2113____DOLLAR__5157 ) ? ( n2115____DOLLAR__5165 ) : ( n2117____DOLLAR__5169 ) ;
assign n2119____DOLLAR__5173 =  ( n2118____DOLLAR__5170 ) == ( 8'd144 )  ;
assign n2120____DOLLAR__5175 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n2121 = n2120____DOLLAR__5175 ;
assign n2123____DOLLAR__5176 = ROM_data_n2122 ;
assign n2124____DOLLAR__5178 = n2123____DOLLAR__5176[7:7] ;
assign n2125____DOLLAR__5180 =  ( n2124____DOLLAR__5178 ) == ( 1'd1 )  ;
assign n2126____DOLLAR__5182 = n2123____DOLLAR__5176[7:3] ;
assign n2127____DOLLAR__5188 =  { ( n2126____DOLLAR__5182 ) , ( 3'd0 ) }  ;
assign n2128____DOLLAR__5190 =  {3'd0 , n2126____DOLLAR__5182}  ;
assign n2129____DOLLAR__5192 =  ( n2128____DOLLAR__5190 ) + ( 8'd32 )  ;
assign n2130____DOLLAR__5193 =  ( n2125____DOLLAR__5180 ) ? ( n2127____DOLLAR__5188 ) : ( n2129____DOLLAR__5192 ) ;
assign n2131____DOLLAR__5196 =  ( n2130____DOLLAR__5193 ) == ( 8'd152 )  ;
assign n2132____DOLLAR__5198 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n2133 = n2132____DOLLAR__5198 ;
assign n2135____DOLLAR__5199 = ROM_data_n2134 ;
assign n2136____DOLLAR__5201 = n2135____DOLLAR__5199[7:7] ;
assign n2137____DOLLAR__5203 =  ( n2136____DOLLAR__5201 ) == ( 1'd1 )  ;
assign n2138____DOLLAR__5205 = n2135____DOLLAR__5199[7:3] ;
assign n2139____DOLLAR__5211 =  { ( n2138____DOLLAR__5205 ) , ( 3'd0 ) }  ;
assign n2140____DOLLAR__5213 =  {3'd0 , n2138____DOLLAR__5205}  ;
assign n2141____DOLLAR__5215 =  ( n2140____DOLLAR__5213 ) + ( 8'd32 )  ;
assign n2142____DOLLAR__5216 =  ( n2137____DOLLAR__5203 ) ? ( n2139____DOLLAR__5211 ) : ( n2141____DOLLAR__5215 ) ;
assign n2143____DOLLAR__5219 =  ( n2142____DOLLAR__5216 ) == ( 8'd153 )  ;
assign n2144____DOLLAR__5221 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n2145 = n2144____DOLLAR__5221 ;
assign n2147____DOLLAR__5222 = ROM_data_n2146 ;
assign n2148____DOLLAR__5224 = n2147____DOLLAR__5222[7:7] ;
assign n2149____DOLLAR__5226 =  ( n2148____DOLLAR__5224 ) == ( 1'd1 )  ;
assign n2150____DOLLAR__5228 = n2147____DOLLAR__5222[7:3] ;
assign n2151____DOLLAR__5234 =  { ( n2150____DOLLAR__5228 ) , ( 3'd0 ) }  ;
assign n2152____DOLLAR__5236 =  {3'd0 , n2150____DOLLAR__5228}  ;
assign n2153____DOLLAR__5238 =  ( n2152____DOLLAR__5236 ) + ( 8'd32 )  ;
assign n2154____DOLLAR__5239 =  ( n2149____DOLLAR__5226 ) ? ( n2151____DOLLAR__5234 ) : ( n2153____DOLLAR__5238 ) ;
assign n2155____DOLLAR__5242 =  ( n2154____DOLLAR__5239 ) == ( 8'd160 )  ;
assign n2156____DOLLAR__5244 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n2157 = n2156____DOLLAR__5244 ;
assign n2159____DOLLAR__5245 = ROM_data_n2158 ;
assign n2160____DOLLAR__5247 = n2159____DOLLAR__5245[7:7] ;
assign n2161____DOLLAR__5249 =  ( n2160____DOLLAR__5247 ) == ( 1'd1 )  ;
assign n2162____DOLLAR__5251 = n2159____DOLLAR__5245[7:3] ;
assign n2163____DOLLAR__5257 =  { ( n2162____DOLLAR__5251 ) , ( 3'd0 ) }  ;
assign n2164____DOLLAR__5259 =  {3'd0 , n2162____DOLLAR__5251}  ;
assign n2165____DOLLAR__5261 =  ( n2164____DOLLAR__5259 ) + ( 8'd32 )  ;
assign n2166____DOLLAR__5262 =  ( n2161____DOLLAR__5249 ) ? ( n2163____DOLLAR__5257 ) : ( n2165____DOLLAR__5261 ) ;
assign n2167____DOLLAR__5265 =  ( n2166____DOLLAR__5262 ) == ( 8'd168 )  ;
assign n2168____DOLLAR__5267 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n2169 = n2168____DOLLAR__5267 ;
assign n2171____DOLLAR__5268 = ROM_data_n2170 ;
assign n2172____DOLLAR__5270 = n2171____DOLLAR__5268[7:7] ;
assign n2173____DOLLAR__5272 =  ( n2172____DOLLAR__5270 ) == ( 1'd1 )  ;
assign n2174____DOLLAR__5274 = n2171____DOLLAR__5268[7:3] ;
assign n2175____DOLLAR__5280 =  { ( n2174____DOLLAR__5274 ) , ( 3'd0 ) }  ;
assign n2176____DOLLAR__5282 =  {3'd0 , n2174____DOLLAR__5274}  ;
assign n2177____DOLLAR__5284 =  ( n2176____DOLLAR__5282 ) + ( 8'd32 )  ;
assign n2178____DOLLAR__5285 =  ( n2173____DOLLAR__5272 ) ? ( n2175____DOLLAR__5280 ) : ( n2177____DOLLAR__5284 ) ;
assign n2179____DOLLAR__5288 =  ( n2178____DOLLAR__5285 ) == ( 8'd176 )  ;
assign n2180____DOLLAR__5290 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n2181 = n2180____DOLLAR__5290 ;
assign n2183____DOLLAR__5291 = ROM_data_n2182 ;
assign n2184____DOLLAR__5293 = n2183____DOLLAR__5291[7:7] ;
assign n2185____DOLLAR__5295 =  ( n2184____DOLLAR__5293 ) == ( 1'd1 )  ;
assign n2186____DOLLAR__5297 = n2183____DOLLAR__5291[7:3] ;
assign n2187____DOLLAR__5303 =  { ( n2186____DOLLAR__5297 ) , ( 3'd0 ) }  ;
assign n2188____DOLLAR__5305 =  {3'd0 , n2186____DOLLAR__5297}  ;
assign n2189____DOLLAR__5307 =  ( n2188____DOLLAR__5305 ) + ( 8'd32 )  ;
assign n2190____DOLLAR__5308 =  ( n2185____DOLLAR__5295 ) ? ( n2187____DOLLAR__5303 ) : ( n2189____DOLLAR__5307 ) ;
assign n2191____DOLLAR__5311 =  ( n2190____DOLLAR__5308 ) == ( 8'd184 )  ;
assign n2192____DOLLAR__5313 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n2193 = n2192____DOLLAR__5313 ;
assign n2195____DOLLAR__5314 = ROM_data_n2194 ;
assign n2196____DOLLAR__5316 = n2195____DOLLAR__5314[7:7] ;
assign n2197____DOLLAR__5318 =  ( n2196____DOLLAR__5316 ) == ( 1'd1 )  ;
assign n2198____DOLLAR__5320 = n2195____DOLLAR__5314[7:3] ;
assign n2199____DOLLAR__5326 =  { ( n2198____DOLLAR__5320 ) , ( 3'd0 ) }  ;
assign n2200____DOLLAR__5328 =  {3'd0 , n2198____DOLLAR__5320}  ;
assign n2201____DOLLAR__5330 =  ( n2200____DOLLAR__5328 ) + ( 8'd32 )  ;
assign n2202____DOLLAR__5331 =  ( n2197____DOLLAR__5318 ) ? ( n2199____DOLLAR__5326 ) : ( n2201____DOLLAR__5330 ) ;
assign n2203____DOLLAR__5334 =  ( n2202____DOLLAR__5331 ) == ( 8'd208 )  ;
assign n2204____DOLLAR__5336 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n2205 = n2204____DOLLAR__5336 ;
assign n2207____DOLLAR__5337 = ROM_data_n2206 ;
assign n2208____DOLLAR__5339 = n2207____DOLLAR__5337[7:7] ;
assign n2209____DOLLAR__5341 =  ( n2208____DOLLAR__5339 ) == ( 1'd1 )  ;
assign n2210____DOLLAR__5343 = n2207____DOLLAR__5337[7:3] ;
assign n2211____DOLLAR__5349 =  { ( n2210____DOLLAR__5343 ) , ( 3'd0 ) }  ;
assign n2212____DOLLAR__5351 =  {3'd0 , n2210____DOLLAR__5343}  ;
assign n2213____DOLLAR__5353 =  ( n2212____DOLLAR__5351 ) + ( 8'd32 )  ;
assign n2214____DOLLAR__5354 =  ( n2209____DOLLAR__5341 ) ? ( n2211____DOLLAR__5349 ) : ( n2213____DOLLAR__5353 ) ;
assign n2215____DOLLAR__5357 =  ( n2214____DOLLAR__5354 ) == ( 8'd224 )  ;
assign n2216____DOLLAR__5359 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n2217 = n2216____DOLLAR__5359 ;
assign n2219____DOLLAR__5360 = ROM_data_n2218 ;
assign n2220____DOLLAR__5362 = n2219____DOLLAR__5360[7:7] ;
assign n2221____DOLLAR__5364 =  ( n2220____DOLLAR__5362 ) == ( 1'd1 )  ;
assign n2222____DOLLAR__5366 = n2219____DOLLAR__5360[7:3] ;
assign n2223____DOLLAR__5372 =  { ( n2222____DOLLAR__5366 ) , ( 3'd0 ) }  ;
assign n2224____DOLLAR__5374 =  {3'd0 , n2222____DOLLAR__5366}  ;
assign n2225____DOLLAR__5376 =  ( n2224____DOLLAR__5374 ) + ( 8'd32 )  ;
assign n2226____DOLLAR__5377 =  ( n2221____DOLLAR__5364 ) ? ( n2223____DOLLAR__5372 ) : ( n2225____DOLLAR__5376 ) ;
assign n2227____DOLLAR__5380 =  ( n2226____DOLLAR__5377 ) == ( 8'd240 )  ;
assign n2228____DOLLAR__5384 =  ( n2227____DOLLAR__5380 ) ? ( B ) : ( 8'd0 ) ;
assign n2229____DOLLAR__5385 =  ( n2215____DOLLAR__5357 ) ? ( ACC ) : ( n2228____DOLLAR__5384 ) ;
assign n2230____DOLLAR__5386 =  ( n2203____DOLLAR__5334 ) ? ( PSW ) : ( n2229____DOLLAR__5385 ) ;
assign n2231____DOLLAR__5387 =  ( n2191____DOLLAR__5311 ) ? ( IP ) : ( n2230____DOLLAR__5386 ) ;
assign n2232____DOLLAR__5388 =  ( n2179____DOLLAR__5288 ) ? ( P3 ) : ( n2231____DOLLAR__5387 ) ;
assign n2233____DOLLAR__5389 =  ( n2167____DOLLAR__5265 ) ? ( IE ) : ( n2232____DOLLAR__5388 ) ;
assign n2234____DOLLAR__5390 =  ( n2155____DOLLAR__5242 ) ? ( P2 ) : ( n2233____DOLLAR__5389 ) ;
assign n2235____DOLLAR__5391 =  ( n2143____DOLLAR__5219 ) ? ( SBUF ) : ( n2234____DOLLAR__5390 ) ;
assign n2236____DOLLAR__5392 =  ( n2131____DOLLAR__5196 ) ? ( SCON ) : ( n2235____DOLLAR__5391 ) ;
assign n2237____DOLLAR__5393 =  ( n2119____DOLLAR__5173 ) ? ( P1 ) : ( n2236____DOLLAR__5392 ) ;
assign n2238____DOLLAR__5394 =  ( n2107____DOLLAR__5150 ) ? ( TH1 ) : ( n2237____DOLLAR__5393 ) ;
assign n2239____DOLLAR__5395 =  ( n2095____DOLLAR__5127 ) ? ( TL1 ) : ( n2238____DOLLAR__5394 ) ;
assign n2240____DOLLAR__5396 =  ( n2083____DOLLAR__5104 ) ? ( TH0 ) : ( n2239____DOLLAR__5395 ) ;
assign n2241____DOLLAR__5397 =  ( n2071____DOLLAR__5081 ) ? ( TL0 ) : ( n2240____DOLLAR__5396 ) ;
assign n2242____DOLLAR__5398 =  ( n2059____DOLLAR__5058 ) ? ( TMOD ) : ( n2241____DOLLAR__5397 ) ;
assign n2243____DOLLAR__5399 =  ( n2047____DOLLAR__5035 ) ? ( TCON ) : ( n2242____DOLLAR__5398 ) ;
assign n2244____DOLLAR__5400 =  ( n2035____DOLLAR__5012 ) ? ( PCON ) : ( n2243____DOLLAR__5399 ) ;
assign n2245____DOLLAR__5401 =  ( n2023____DOLLAR__4989 ) ? ( DPH ) : ( n2244____DOLLAR__5400 ) ;
assign n2246____DOLLAR__5402 =  ( n2011____DOLLAR__4966 ) ? ( DPL ) : ( n2245____DOLLAR__5401 ) ;
assign n2247____DOLLAR__5403 =  ( n1999____DOLLAR__4943 ) ? ( SP ) : ( n2246____DOLLAR__5402 ) ;
assign n2248____DOLLAR__5404 =  ( n1987____DOLLAR__4920 ) ? ( P0 ) : ( n2247____DOLLAR__5403 ) ;
assign n2249____DOLLAR__5405 =  ( n1952____DOLLAR__4868 ) ? ( n1975____DOLLAR__4897 ) : ( n2248____DOLLAR__5404 ) ;
assign n2250____DOLLAR__5406 =  ( n1939____DOLLAR__4844 ) & ( n2249____DOLLAR__5405 )  ;
assign n2251____DOLLAR__5407 = PSW[7:7] ;
assign n2252____DOLLAR__5409 =  {7'd0 , n2251____DOLLAR__5407}  ;
assign n2253____DOLLAR__5411 =  ( PC ) + ( 16'd1 )  ;
assign ROM_addr_n2254 = n2253____DOLLAR__5411 ;
assign n2256____DOLLAR__5412 = ROM_data_n2255 ;
assign n2257____DOLLAR__5414 = n2256____DOLLAR__5412[2:0] ;
assign n2258____DOLLAR__5416 =  {5'd0 , n2257____DOLLAR__5414}  ;
assign n2259____DOLLAR__5418 =  ( n2252____DOLLAR__5409 ) << ( n2258____DOLLAR__5416 )  ;
assign n2260____DOLLAR__5419 =  ( n2250____DOLLAR__5406 ) | ( n2259____DOLLAR__5418 )  ;
assign n2261____DOLLAR__5420 =  ( n1931____DOLLAR__4832 ) ? ( n2260____DOLLAR__5419 ) : ( SP ) ;
assign n2262____DOLLAR__5421 =  ( n1919____DOLLAR__4802 ) ? ( n2261____DOLLAR__5420 ) : ( SP ) ;
assign ROM_addr_n2263 = PC ;
assign n2265____DOLLAR__5422 = ROM_data_n2264 ;
assign n2266____DOLLAR__5426 =  ( n2265____DOLLAR__5422 ) == ( 8'd243 )  ;
assign n2267____DOLLAR__5430 =  ( n2265____DOLLAR__5422 ) == ( 8'd227 )  ;
assign n2268____DOLLAR__5432 =  ( n2266____DOLLAR__5426 ) | ( n2267____DOLLAR__5430 )  ;
assign n2269____DOLLAR__5437 = PSW[4:3] ;
assign n2270____DOLLAR__5445 =  { ( n2269____DOLLAR__5437 ) , ( 3'd1 ) }  ;
assign n2271____DOLLAR__5451 =  { ( 3'd0 ) , ( n2270____DOLLAR__5445 ) }  ;
assign IRAM_addr_n2272 = n2271____DOLLAR__5451 ;
assign n2274____DOLLAR__5453 = IRAM_data_n2273 ;
assign n2275____DOLLAR__5459 =  { ( 8'd0 ) , ( n2274____DOLLAR__5453 ) }  ;
assign ROM_addr_n2276 = PC ;
assign n2278____DOLLAR__5461 = ROM_data_n2277 ;
assign n2279____DOLLAR__5465 =  ( n2278____DOLLAR__5461 ) == ( 8'd242 )  ;
assign n2280____DOLLAR__5469 =  ( n2278____DOLLAR__5461 ) == ( 8'd226 )  ;
assign n2281____DOLLAR__5471 =  ( n2279____DOLLAR__5465 ) | ( n2280____DOLLAR__5469 )  ;
assign n2282____DOLLAR__5476 = PSW[4:3] ;
assign n2283____DOLLAR__5484 =  { ( n2282____DOLLAR__5476 ) , ( 3'd0 ) }  ;
assign n2284____DOLLAR__5490 =  { ( 3'd0 ) , ( n2283____DOLLAR__5484 ) }  ;
assign IRAM_addr_n2285 = n2284____DOLLAR__5490 ;
assign n2287____DOLLAR__5492 = IRAM_data_n2286 ;
assign n2288____DOLLAR__5498 =  { ( 8'd0 ) , ( n2287____DOLLAR__5492 ) }  ;
assign ROM_addr_n2289 = PC ;
assign n2291____DOLLAR__5500 = ROM_data_n2290 ;
assign n2292____DOLLAR__5504 =  ( n2291____DOLLAR__5500 ) == ( 8'd240 )  ;
assign n2293____DOLLAR__5508 =  ( n2291____DOLLAR__5500 ) == ( 8'd224 )  ;
assign n2294____DOLLAR__5510 =  ( n2292____DOLLAR__5504 ) | ( n2293____DOLLAR__5508 )  ;
assign n2295____DOLLAR__5515 =  { ( DPH ) , ( DPL ) }  ;
assign ROM_addr_n2296 = PC ;
assign n2298____DOLLAR__5517 = ROM_data_n2297 ;
assign n2299____DOLLAR__5521 =  ( n2298____DOLLAR__5517 ) == ( 8'd255 )  ;
assign n2300____DOLLAR__5525 =  ( n2298____DOLLAR__5517 ) == ( 8'd254 )  ;
assign n2301____DOLLAR__5529 =  ( n2298____DOLLAR__5517 ) == ( 8'd253 )  ;
assign n2302____DOLLAR__5533 =  ( n2298____DOLLAR__5517 ) == ( 8'd252 )  ;
assign n2303____DOLLAR__5537 =  ( n2298____DOLLAR__5517 ) == ( 8'd251 )  ;
assign n2304____DOLLAR__5541 =  ( n2298____DOLLAR__5517 ) == ( 8'd250 )  ;
assign n2305____DOLLAR__5545 =  ( n2298____DOLLAR__5517 ) == ( 8'd249 )  ;
assign n2306____DOLLAR__5549 =  ( n2298____DOLLAR__5517 ) == ( 8'd248 )  ;
assign n2307____DOLLAR__5553 =  ( n2298____DOLLAR__5517 ) == ( 8'd247 )  ;
assign n2308____DOLLAR__5557 =  ( n2298____DOLLAR__5517 ) == ( 8'd246 )  ;
assign n2309____DOLLAR__5561 =  ( n2298____DOLLAR__5517 ) == ( 8'd245 )  ;
assign n2310____DOLLAR__5565 =  ( n2298____DOLLAR__5517 ) == ( 8'd244 )  ;
assign n2311____DOLLAR__5569 =  ( n2298____DOLLAR__5517 ) == ( 8'd241 )  ;
assign n2312____DOLLAR__5573 =  ( n2298____DOLLAR__5517 ) == ( 8'd239 )  ;
assign n2313____DOLLAR__5577 =  ( n2298____DOLLAR__5517 ) == ( 8'd238 )  ;
assign n2314____DOLLAR__5581 =  ( n2298____DOLLAR__5517 ) == ( 8'd237 )  ;
assign n2315____DOLLAR__5585 =  ( n2298____DOLLAR__5517 ) == ( 8'd236 )  ;
assign n2316____DOLLAR__5589 =  ( n2298____DOLLAR__5517 ) == ( 8'd235 )  ;
assign n2317____DOLLAR__5593 =  ( n2298____DOLLAR__5517 ) == ( 8'd234 )  ;
assign n2318____DOLLAR__5597 =  ( n2298____DOLLAR__5517 ) == ( 8'd233 )  ;
assign n2319____DOLLAR__5601 =  ( n2298____DOLLAR__5517 ) == ( 8'd232 )  ;
assign n2320____DOLLAR__5605 =  ( n2298____DOLLAR__5517 ) == ( 8'd231 )  ;
assign n2321____DOLLAR__5609 =  ( n2298____DOLLAR__5517 ) == ( 8'd230 )  ;
assign n2322____DOLLAR__5613 =  ( n2298____DOLLAR__5517 ) == ( 8'd229 )  ;
assign n2323____DOLLAR__5617 =  ( n2298____DOLLAR__5517 ) == ( 8'd228 )  ;
assign n2324____DOLLAR__5621 =  ( n2298____DOLLAR__5517 ) == ( 8'd225 )  ;
assign n2325____DOLLAR__5625 =  ( n2298____DOLLAR__5517 ) == ( 8'd223 )  ;
assign n2326____DOLLAR__5629 =  ( n2298____DOLLAR__5517 ) == ( 8'd222 )  ;
assign n2327____DOLLAR__5633 =  ( n2298____DOLLAR__5517 ) == ( 8'd221 )  ;
assign n2328____DOLLAR__5637 =  ( n2298____DOLLAR__5517 ) == ( 8'd220 )  ;
assign n2329____DOLLAR__5641 =  ( n2298____DOLLAR__5517 ) == ( 8'd219 )  ;
assign n2330____DOLLAR__5645 =  ( n2298____DOLLAR__5517 ) == ( 8'd218 )  ;
assign n2331____DOLLAR__5649 =  ( n2298____DOLLAR__5517 ) == ( 8'd217 )  ;
assign n2332____DOLLAR__5653 =  ( n2298____DOLLAR__5517 ) == ( 8'd216 )  ;
assign n2333____DOLLAR__5657 =  ( n2298____DOLLAR__5517 ) == ( 8'd215 )  ;
assign n2334____DOLLAR__5661 =  ( n2298____DOLLAR__5517 ) == ( 8'd214 )  ;
assign n2335____DOLLAR__5665 =  ( n2298____DOLLAR__5517 ) == ( 8'd213 )  ;
assign n2336____DOLLAR__5669 =  ( n2298____DOLLAR__5517 ) == ( 8'd212 )  ;
assign n2337____DOLLAR__5673 =  ( n2298____DOLLAR__5517 ) == ( 8'd211 )  ;
assign n2338____DOLLAR__5677 =  ( n2298____DOLLAR__5517 ) == ( 8'd210 )  ;
assign n2339____DOLLAR__5681 =  ( n2298____DOLLAR__5517 ) == ( 8'd209 )  ;
assign n2340____DOLLAR__5685 =  ( n2298____DOLLAR__5517 ) == ( 8'd208 )  ;
assign n2341____DOLLAR__5689 =  ( n2298____DOLLAR__5517 ) == ( 8'd207 )  ;
assign n2342____DOLLAR__5693 =  ( n2298____DOLLAR__5517 ) == ( 8'd206 )  ;
assign n2343____DOLLAR__5697 =  ( n2298____DOLLAR__5517 ) == ( 8'd205 )  ;
assign n2344____DOLLAR__5701 =  ( n2298____DOLLAR__5517 ) == ( 8'd204 )  ;
assign n2345____DOLLAR__5705 =  ( n2298____DOLLAR__5517 ) == ( 8'd203 )  ;
assign n2346____DOLLAR__5709 =  ( n2298____DOLLAR__5517 ) == ( 8'd202 )  ;
assign n2347____DOLLAR__5713 =  ( n2298____DOLLAR__5517 ) == ( 8'd201 )  ;
assign n2348____DOLLAR__5717 =  ( n2298____DOLLAR__5517 ) == ( 8'd200 )  ;
assign n2349____DOLLAR__5721 =  ( n2298____DOLLAR__5517 ) == ( 8'd199 )  ;
assign n2350____DOLLAR__5725 =  ( n2298____DOLLAR__5517 ) == ( 8'd198 )  ;
assign n2351____DOLLAR__5729 =  ( n2298____DOLLAR__5517 ) == ( 8'd197 )  ;
assign n2352____DOLLAR__5733 =  ( n2298____DOLLAR__5517 ) == ( 8'd196 )  ;
assign n2353____DOLLAR__5737 =  ( n2298____DOLLAR__5517 ) == ( 8'd195 )  ;
assign n2354____DOLLAR__5741 =  ( n2298____DOLLAR__5517 ) == ( 8'd194 )  ;
assign n2355____DOLLAR__5745 =  ( n2298____DOLLAR__5517 ) == ( 8'd193 )  ;
assign n2356____DOLLAR__5749 =  ( n2298____DOLLAR__5517 ) == ( 8'd192 )  ;
assign n2357____DOLLAR__5753 =  ( n2298____DOLLAR__5517 ) == ( 8'd191 )  ;
assign n2358____DOLLAR__5757 =  ( n2298____DOLLAR__5517 ) == ( 8'd190 )  ;
assign n2359____DOLLAR__5761 =  ( n2298____DOLLAR__5517 ) == ( 8'd189 )  ;
assign n2360____DOLLAR__5765 =  ( n2298____DOLLAR__5517 ) == ( 8'd188 )  ;
assign n2361____DOLLAR__5769 =  ( n2298____DOLLAR__5517 ) == ( 8'd187 )  ;
assign n2362____DOLLAR__5773 =  ( n2298____DOLLAR__5517 ) == ( 8'd186 )  ;
assign n2363____DOLLAR__5777 =  ( n2298____DOLLAR__5517 ) == ( 8'd185 )  ;
assign n2364____DOLLAR__5781 =  ( n2298____DOLLAR__5517 ) == ( 8'd184 )  ;
assign n2365____DOLLAR__5785 =  ( n2298____DOLLAR__5517 ) == ( 8'd183 )  ;
assign n2366____DOLLAR__5789 =  ( n2298____DOLLAR__5517 ) == ( 8'd182 )  ;
assign n2367____DOLLAR__5793 =  ( n2298____DOLLAR__5517 ) == ( 8'd181 )  ;
assign n2368____DOLLAR__5797 =  ( n2298____DOLLAR__5517 ) == ( 8'd180 )  ;
assign n2369____DOLLAR__5801 =  ( n2298____DOLLAR__5517 ) == ( 8'd179 )  ;
assign n2370____DOLLAR__5805 =  ( n2298____DOLLAR__5517 ) == ( 8'd178 )  ;
assign n2371____DOLLAR__5809 =  ( n2298____DOLLAR__5517 ) == ( 8'd177 )  ;
assign n2372____DOLLAR__5813 =  ( n2298____DOLLAR__5517 ) == ( 8'd176 )  ;
assign n2373____DOLLAR__5817 =  ( n2298____DOLLAR__5517 ) == ( 8'd175 )  ;
assign n2374____DOLLAR__5821 =  ( n2298____DOLLAR__5517 ) == ( 8'd174 )  ;
assign n2375____DOLLAR__5825 =  ( n2298____DOLLAR__5517 ) == ( 8'd173 )  ;
assign n2376____DOLLAR__5829 =  ( n2298____DOLLAR__5517 ) == ( 8'd172 )  ;
assign n2377____DOLLAR__5833 =  ( n2298____DOLLAR__5517 ) == ( 8'd171 )  ;
assign n2378____DOLLAR__5837 =  ( n2298____DOLLAR__5517 ) == ( 8'd170 )  ;
assign n2379____DOLLAR__5841 =  ( n2298____DOLLAR__5517 ) == ( 8'd169 )  ;
assign n2380____DOLLAR__5845 =  ( n2298____DOLLAR__5517 ) == ( 8'd168 )  ;
assign n2381____DOLLAR__5849 =  ( n2298____DOLLAR__5517 ) == ( 8'd167 )  ;
assign n2382____DOLLAR__5853 =  ( n2298____DOLLAR__5517 ) == ( 8'd166 )  ;
assign n2383____DOLLAR__5857 =  ( n2298____DOLLAR__5517 ) == ( 8'd165 )  ;
assign n2384____DOLLAR__5861 =  ( n2298____DOLLAR__5517 ) == ( 8'd164 )  ;
assign n2385____DOLLAR__5865 =  ( n2298____DOLLAR__5517 ) == ( 8'd163 )  ;
assign n2386____DOLLAR__5869 =  ( n2298____DOLLAR__5517 ) == ( 8'd162 )  ;
assign n2387____DOLLAR__5873 =  ( n2298____DOLLAR__5517 ) == ( 8'd161 )  ;
assign n2388____DOLLAR__5877 =  ( n2298____DOLLAR__5517 ) == ( 8'd160 )  ;
assign n2389____DOLLAR__5881 =  ( n2298____DOLLAR__5517 ) == ( 8'd159 )  ;
assign n2390____DOLLAR__5885 =  ( n2298____DOLLAR__5517 ) == ( 8'd158 )  ;
assign n2391____DOLLAR__5889 =  ( n2298____DOLLAR__5517 ) == ( 8'd157 )  ;
assign n2392____DOLLAR__5893 =  ( n2298____DOLLAR__5517 ) == ( 8'd156 )  ;
assign n2393____DOLLAR__5897 =  ( n2298____DOLLAR__5517 ) == ( 8'd155 )  ;
assign n2394____DOLLAR__5901 =  ( n2298____DOLLAR__5517 ) == ( 8'd154 )  ;
assign n2395____DOLLAR__5905 =  ( n2298____DOLLAR__5517 ) == ( 8'd153 )  ;
assign n2396____DOLLAR__5909 =  ( n2298____DOLLAR__5517 ) == ( 8'd152 )  ;
assign n2397____DOLLAR__5913 =  ( n2298____DOLLAR__5517 ) == ( 8'd151 )  ;
assign n2398____DOLLAR__5917 =  ( n2298____DOLLAR__5517 ) == ( 8'd150 )  ;
assign n2399____DOLLAR__5921 =  ( n2298____DOLLAR__5517 ) == ( 8'd149 )  ;
assign n2400____DOLLAR__5925 =  ( n2298____DOLLAR__5517 ) == ( 8'd148 )  ;
assign n2401____DOLLAR__5929 =  ( n2298____DOLLAR__5517 ) == ( 8'd147 )  ;
assign n2402____DOLLAR__5933 =  ( n2298____DOLLAR__5517 ) == ( 8'd146 )  ;
assign n2403____DOLLAR__5937 =  ( n2298____DOLLAR__5517 ) == ( 8'd145 )  ;
assign n2404____DOLLAR__5941 =  ( n2298____DOLLAR__5517 ) == ( 8'd144 )  ;
assign n2405____DOLLAR__5945 =  ( n2298____DOLLAR__5517 ) == ( 8'd143 )  ;
assign n2406____DOLLAR__5949 =  ( n2298____DOLLAR__5517 ) == ( 8'd142 )  ;
assign n2407____DOLLAR__5953 =  ( n2298____DOLLAR__5517 ) == ( 8'd141 )  ;
assign n2408____DOLLAR__5957 =  ( n2298____DOLLAR__5517 ) == ( 8'd140 )  ;
assign n2409____DOLLAR__5961 =  ( n2298____DOLLAR__5517 ) == ( 8'd139 )  ;
assign n2410____DOLLAR__5965 =  ( n2298____DOLLAR__5517 ) == ( 8'd138 )  ;
assign n2411____DOLLAR__5969 =  ( n2298____DOLLAR__5517 ) == ( 8'd137 )  ;
assign n2412____DOLLAR__5973 =  ( n2298____DOLLAR__5517 ) == ( 8'd136 )  ;
assign n2413____DOLLAR__5977 =  ( n2298____DOLLAR__5517 ) == ( 8'd135 )  ;
assign n2414____DOLLAR__5981 =  ( n2298____DOLLAR__5517 ) == ( 8'd134 )  ;
assign n2415____DOLLAR__5985 =  ( n2298____DOLLAR__5517 ) == ( 8'd133 )  ;
assign n2416____DOLLAR__5989 =  ( n2298____DOLLAR__5517 ) == ( 8'd132 )  ;
assign n2417____DOLLAR__5993 =  ( n2298____DOLLAR__5517 ) == ( 8'd131 )  ;
assign n2418____DOLLAR__5997 =  ( n2298____DOLLAR__5517 ) == ( 8'd130 )  ;
assign n2419____DOLLAR__6001 =  ( n2298____DOLLAR__5517 ) == ( 8'd129 )  ;
assign n2420____DOLLAR__6005 =  ( n2298____DOLLAR__5517 ) == ( 8'd128 )  ;
assign n2421____DOLLAR__6009 =  ( n2298____DOLLAR__5517 ) == ( 8'd127 )  ;
assign n2422____DOLLAR__6013 =  ( n2298____DOLLAR__5517 ) == ( 8'd126 )  ;
assign n2423____DOLLAR__6017 =  ( n2298____DOLLAR__5517 ) == ( 8'd125 )  ;
assign n2424____DOLLAR__6021 =  ( n2298____DOLLAR__5517 ) == ( 8'd124 )  ;
assign n2425____DOLLAR__6025 =  ( n2298____DOLLAR__5517 ) == ( 8'd123 )  ;
assign n2426____DOLLAR__6029 =  ( n2298____DOLLAR__5517 ) == ( 8'd122 )  ;
assign n2427____DOLLAR__6033 =  ( n2298____DOLLAR__5517 ) == ( 8'd121 )  ;
assign n2428____DOLLAR__6037 =  ( n2298____DOLLAR__5517 ) == ( 8'd120 )  ;
assign n2429____DOLLAR__6041 =  ( n2298____DOLLAR__5517 ) == ( 8'd119 )  ;
assign n2430____DOLLAR__6045 =  ( n2298____DOLLAR__5517 ) == ( 8'd118 )  ;
assign n2431____DOLLAR__6049 =  ( n2298____DOLLAR__5517 ) == ( 8'd117 )  ;
assign n2432____DOLLAR__6053 =  ( n2298____DOLLAR__5517 ) == ( 8'd116 )  ;
assign n2433____DOLLAR__6057 =  ( n2298____DOLLAR__5517 ) == ( 8'd115 )  ;
assign n2434____DOLLAR__6061 =  ( n2298____DOLLAR__5517 ) == ( 8'd114 )  ;
assign n2435____DOLLAR__6065 =  ( n2298____DOLLAR__5517 ) == ( 8'd113 )  ;
assign n2436____DOLLAR__6069 =  ( n2298____DOLLAR__5517 ) == ( 8'd112 )  ;
assign n2437____DOLLAR__6073 =  ( n2298____DOLLAR__5517 ) == ( 8'd111 )  ;
assign n2438____DOLLAR__6077 =  ( n2298____DOLLAR__5517 ) == ( 8'd110 )  ;
assign n2439____DOLLAR__6081 =  ( n2298____DOLLAR__5517 ) == ( 8'd109 )  ;
assign n2440____DOLLAR__6085 =  ( n2298____DOLLAR__5517 ) == ( 8'd108 )  ;
assign n2441____DOLLAR__6089 =  ( n2298____DOLLAR__5517 ) == ( 8'd107 )  ;
assign n2442____DOLLAR__6093 =  ( n2298____DOLLAR__5517 ) == ( 8'd106 )  ;
assign n2443____DOLLAR__6097 =  ( n2298____DOLLAR__5517 ) == ( 8'd105 )  ;
assign n2444____DOLLAR__6101 =  ( n2298____DOLLAR__5517 ) == ( 8'd104 )  ;
assign n2445____DOLLAR__6105 =  ( n2298____DOLLAR__5517 ) == ( 8'd103 )  ;
assign n2446____DOLLAR__6109 =  ( n2298____DOLLAR__5517 ) == ( 8'd102 )  ;
assign n2447____DOLLAR__6113 =  ( n2298____DOLLAR__5517 ) == ( 8'd101 )  ;
assign n2448____DOLLAR__6117 =  ( n2298____DOLLAR__5517 ) == ( 8'd100 )  ;
assign n2449____DOLLAR__6121 =  ( n2298____DOLLAR__5517 ) == ( 8'd99 )  ;
assign n2450____DOLLAR__6125 =  ( n2298____DOLLAR__5517 ) == ( 8'd98 )  ;
assign n2451____DOLLAR__6129 =  ( n2298____DOLLAR__5517 ) == ( 8'd97 )  ;
assign n2452____DOLLAR__6133 =  ( n2298____DOLLAR__5517 ) == ( 8'd96 )  ;
assign n2453____DOLLAR__6137 =  ( n2298____DOLLAR__5517 ) == ( 8'd95 )  ;
assign n2454____DOLLAR__6141 =  ( n2298____DOLLAR__5517 ) == ( 8'd94 )  ;
assign n2455____DOLLAR__6145 =  ( n2298____DOLLAR__5517 ) == ( 8'd93 )  ;
assign n2456____DOLLAR__6149 =  ( n2298____DOLLAR__5517 ) == ( 8'd92 )  ;
assign n2457____DOLLAR__6153 =  ( n2298____DOLLAR__5517 ) == ( 8'd91 )  ;
assign n2458____DOLLAR__6157 =  ( n2298____DOLLAR__5517 ) == ( 8'd90 )  ;
assign n2459____DOLLAR__6161 =  ( n2298____DOLLAR__5517 ) == ( 8'd89 )  ;
assign n2460____DOLLAR__6165 =  ( n2298____DOLLAR__5517 ) == ( 8'd88 )  ;
assign n2461____DOLLAR__6169 =  ( n2298____DOLLAR__5517 ) == ( 8'd87 )  ;
assign n2462____DOLLAR__6173 =  ( n2298____DOLLAR__5517 ) == ( 8'd86 )  ;
assign n2463____DOLLAR__6177 =  ( n2298____DOLLAR__5517 ) == ( 8'd85 )  ;
assign n2464____DOLLAR__6181 =  ( n2298____DOLLAR__5517 ) == ( 8'd84 )  ;
assign n2465____DOLLAR__6185 =  ( n2298____DOLLAR__5517 ) == ( 8'd83 )  ;
assign n2466____DOLLAR__6189 =  ( n2298____DOLLAR__5517 ) == ( 8'd82 )  ;
assign n2467____DOLLAR__6193 =  ( n2298____DOLLAR__5517 ) == ( 8'd81 )  ;
assign n2468____DOLLAR__6197 =  ( n2298____DOLLAR__5517 ) == ( 8'd80 )  ;
assign n2469____DOLLAR__6201 =  ( n2298____DOLLAR__5517 ) == ( 8'd79 )  ;
assign n2470____DOLLAR__6205 =  ( n2298____DOLLAR__5517 ) == ( 8'd78 )  ;
assign n2471____DOLLAR__6209 =  ( n2298____DOLLAR__5517 ) == ( 8'd77 )  ;
assign n2472____DOLLAR__6213 =  ( n2298____DOLLAR__5517 ) == ( 8'd76 )  ;
assign n2473____DOLLAR__6217 =  ( n2298____DOLLAR__5517 ) == ( 8'd75 )  ;
assign n2474____DOLLAR__6221 =  ( n2298____DOLLAR__5517 ) == ( 8'd74 )  ;
assign n2475____DOLLAR__6225 =  ( n2298____DOLLAR__5517 ) == ( 8'd73 )  ;
assign n2476____DOLLAR__6229 =  ( n2298____DOLLAR__5517 ) == ( 8'd72 )  ;
assign n2477____DOLLAR__6233 =  ( n2298____DOLLAR__5517 ) == ( 8'd71 )  ;
assign n2478____DOLLAR__6237 =  ( n2298____DOLLAR__5517 ) == ( 8'd70 )  ;
assign n2479____DOLLAR__6241 =  ( n2298____DOLLAR__5517 ) == ( 8'd69 )  ;
assign n2480____DOLLAR__6245 =  ( n2298____DOLLAR__5517 ) == ( 8'd68 )  ;
assign n2481____DOLLAR__6249 =  ( n2298____DOLLAR__5517 ) == ( 8'd67 )  ;
assign n2482____DOLLAR__6253 =  ( n2298____DOLLAR__5517 ) == ( 8'd66 )  ;
assign n2483____DOLLAR__6257 =  ( n2298____DOLLAR__5517 ) == ( 8'd65 )  ;
assign n2484____DOLLAR__6261 =  ( n2298____DOLLAR__5517 ) == ( 8'd64 )  ;
assign n2485____DOLLAR__6265 =  ( n2298____DOLLAR__5517 ) == ( 8'd63 )  ;
assign n2486____DOLLAR__6269 =  ( n2298____DOLLAR__5517 ) == ( 8'd62 )  ;
assign n2487____DOLLAR__6273 =  ( n2298____DOLLAR__5517 ) == ( 8'd61 )  ;
assign n2488____DOLLAR__6277 =  ( n2298____DOLLAR__5517 ) == ( 8'd60 )  ;
assign n2489____DOLLAR__6281 =  ( n2298____DOLLAR__5517 ) == ( 8'd59 )  ;
assign n2490____DOLLAR__6285 =  ( n2298____DOLLAR__5517 ) == ( 8'd58 )  ;
assign n2491____DOLLAR__6289 =  ( n2298____DOLLAR__5517 ) == ( 8'd57 )  ;
assign n2492____DOLLAR__6293 =  ( n2298____DOLLAR__5517 ) == ( 8'd56 )  ;
assign n2493____DOLLAR__6297 =  ( n2298____DOLLAR__5517 ) == ( 8'd55 )  ;
assign n2494____DOLLAR__6301 =  ( n2298____DOLLAR__5517 ) == ( 8'd54 )  ;
assign n2495____DOLLAR__6305 =  ( n2298____DOLLAR__5517 ) == ( 8'd53 )  ;
assign n2496____DOLLAR__6309 =  ( n2298____DOLLAR__5517 ) == ( 8'd52 )  ;
assign n2497____DOLLAR__6313 =  ( n2298____DOLLAR__5517 ) == ( 8'd51 )  ;
assign n2498____DOLLAR__6317 =  ( n2298____DOLLAR__5517 ) == ( 8'd50 )  ;
assign n2499____DOLLAR__6321 =  ( n2298____DOLLAR__5517 ) == ( 8'd49 )  ;
assign n2500____DOLLAR__6325 =  ( n2298____DOLLAR__5517 ) == ( 8'd48 )  ;
assign n2501____DOLLAR__6329 =  ( n2298____DOLLAR__5517 ) == ( 8'd47 )  ;
assign n2502____DOLLAR__6333 =  ( n2298____DOLLAR__5517 ) == ( 8'd46 )  ;
assign n2503____DOLLAR__6337 =  ( n2298____DOLLAR__5517 ) == ( 8'd45 )  ;
assign n2504____DOLLAR__6341 =  ( n2298____DOLLAR__5517 ) == ( 8'd44 )  ;
assign n2505____DOLLAR__6345 =  ( n2298____DOLLAR__5517 ) == ( 8'd43 )  ;
assign n2506____DOLLAR__6349 =  ( n2298____DOLLAR__5517 ) == ( 8'd42 )  ;
assign n2507____DOLLAR__6353 =  ( n2298____DOLLAR__5517 ) == ( 8'd41 )  ;
assign n2508____DOLLAR__6357 =  ( n2298____DOLLAR__5517 ) == ( 8'd40 )  ;
assign n2509____DOLLAR__6361 =  ( n2298____DOLLAR__5517 ) == ( 8'd39 )  ;
assign n2510____DOLLAR__6365 =  ( n2298____DOLLAR__5517 ) == ( 8'd38 )  ;
assign n2511____DOLLAR__6369 =  ( n2298____DOLLAR__5517 ) == ( 8'd37 )  ;
assign n2512____DOLLAR__6373 =  ( n2298____DOLLAR__5517 ) == ( 8'd36 )  ;
assign n2513____DOLLAR__6377 =  ( n2298____DOLLAR__5517 ) == ( 8'd35 )  ;
assign n2514____DOLLAR__6381 =  ( n2298____DOLLAR__5517 ) == ( 8'd34 )  ;
assign n2515____DOLLAR__6385 =  ( n2298____DOLLAR__5517 ) == ( 8'd33 )  ;
assign n2516____DOLLAR__6389 =  ( n2298____DOLLAR__5517 ) == ( 8'd32 )  ;
assign n2517____DOLLAR__6393 =  ( n2298____DOLLAR__5517 ) == ( 8'd31 )  ;
assign n2518____DOLLAR__6397 =  ( n2298____DOLLAR__5517 ) == ( 8'd30 )  ;
assign n2519____DOLLAR__6401 =  ( n2298____DOLLAR__5517 ) == ( 8'd29 )  ;
assign n2520____DOLLAR__6405 =  ( n2298____DOLLAR__5517 ) == ( 8'd28 )  ;
assign n2521____DOLLAR__6409 =  ( n2298____DOLLAR__5517 ) == ( 8'd27 )  ;
assign n2522____DOLLAR__6413 =  ( n2298____DOLLAR__5517 ) == ( 8'd26 )  ;
assign n2523____DOLLAR__6417 =  ( n2298____DOLLAR__5517 ) == ( 8'd25 )  ;
assign n2524____DOLLAR__6421 =  ( n2298____DOLLAR__5517 ) == ( 8'd24 )  ;
assign n2525____DOLLAR__6425 =  ( n2298____DOLLAR__5517 ) == ( 8'd23 )  ;
assign n2526____DOLLAR__6429 =  ( n2298____DOLLAR__5517 ) == ( 8'd22 )  ;
assign n2527____DOLLAR__6433 =  ( n2298____DOLLAR__5517 ) == ( 8'd21 )  ;
assign n2528____DOLLAR__6437 =  ( n2298____DOLLAR__5517 ) == ( 8'd20 )  ;
assign n2529____DOLLAR__6441 =  ( n2298____DOLLAR__5517 ) == ( 8'd19 )  ;
assign n2530____DOLLAR__6445 =  ( n2298____DOLLAR__5517 ) == ( 8'd18 )  ;
assign n2531____DOLLAR__6449 =  ( n2298____DOLLAR__5517 ) == ( 8'd17 )  ;
assign n2532____DOLLAR__6453 =  ( n2298____DOLLAR__5517 ) == ( 8'd16 )  ;
assign n2533____DOLLAR__6457 =  ( n2298____DOLLAR__5517 ) == ( 8'd15 )  ;
assign n2534____DOLLAR__6461 =  ( n2298____DOLLAR__5517 ) == ( 8'd14 )  ;
assign n2535____DOLLAR__6465 =  ( n2298____DOLLAR__5517 ) == ( 8'd13 )  ;
assign n2536____DOLLAR__6469 =  ( n2298____DOLLAR__5517 ) == ( 8'd12 )  ;
assign n2537____DOLLAR__6473 =  ( n2298____DOLLAR__5517 ) == ( 8'd11 )  ;
assign n2538____DOLLAR__6477 =  ( n2298____DOLLAR__5517 ) == ( 8'd10 )  ;
assign n2539____DOLLAR__6481 =  ( n2298____DOLLAR__5517 ) == ( 8'd9 )  ;
assign n2540____DOLLAR__6485 =  ( n2298____DOLLAR__5517 ) == ( 8'd8 )  ;
assign n2541____DOLLAR__6489 =  ( n2298____DOLLAR__5517 ) == ( 8'd7 )  ;
assign n2542____DOLLAR__6493 =  ( n2298____DOLLAR__5517 ) == ( 8'd6 )  ;
assign n2543____DOLLAR__6497 =  ( n2298____DOLLAR__5517 ) == ( 8'd5 )  ;
assign n2544____DOLLAR__6501 =  ( n2298____DOLLAR__5517 ) == ( 8'd4 )  ;
assign n2545____DOLLAR__6505 =  ( n2298____DOLLAR__5517 ) == ( 8'd3 )  ;
assign n2546____DOLLAR__6509 =  ( n2298____DOLLAR__5517 ) == ( 8'd2 )  ;
assign n2547____DOLLAR__6513 =  ( n2298____DOLLAR__5517 ) == ( 8'd1 )  ;
assign n2548____DOLLAR__6517 =  ( n2298____DOLLAR__5517 ) == ( 8'd0 )  ;
assign n2549____DOLLAR__6519 =  ( n2547____DOLLAR__6513 ) | ( n2548____DOLLAR__6517 )  ;
assign n2550____DOLLAR__6520 =  ( n2546____DOLLAR__6509 ) | ( n2549____DOLLAR__6519 )  ;
assign n2551____DOLLAR__6521 =  ( n2545____DOLLAR__6505 ) | ( n2550____DOLLAR__6520 )  ;
assign n2552____DOLLAR__6522 =  ( n2544____DOLLAR__6501 ) | ( n2551____DOLLAR__6521 )  ;
assign n2553____DOLLAR__6523 =  ( n2543____DOLLAR__6497 ) | ( n2552____DOLLAR__6522 )  ;
assign n2554____DOLLAR__6524 =  ( n2542____DOLLAR__6493 ) | ( n2553____DOLLAR__6523 )  ;
assign n2555____DOLLAR__6525 =  ( n2541____DOLLAR__6489 ) | ( n2554____DOLLAR__6524 )  ;
assign n2556____DOLLAR__6526 =  ( n2540____DOLLAR__6485 ) | ( n2555____DOLLAR__6525 )  ;
assign n2557____DOLLAR__6527 =  ( n2539____DOLLAR__6481 ) | ( n2556____DOLLAR__6526 )  ;
assign n2558____DOLLAR__6528 =  ( n2538____DOLLAR__6477 ) | ( n2557____DOLLAR__6527 )  ;
assign n2559____DOLLAR__6529 =  ( n2537____DOLLAR__6473 ) | ( n2558____DOLLAR__6528 )  ;
assign n2560____DOLLAR__6530 =  ( n2536____DOLLAR__6469 ) | ( n2559____DOLLAR__6529 )  ;
assign n2561____DOLLAR__6531 =  ( n2535____DOLLAR__6465 ) | ( n2560____DOLLAR__6530 )  ;
assign n2562____DOLLAR__6532 =  ( n2534____DOLLAR__6461 ) | ( n2561____DOLLAR__6531 )  ;
assign n2563____DOLLAR__6533 =  ( n2533____DOLLAR__6457 ) | ( n2562____DOLLAR__6532 )  ;
assign n2564____DOLLAR__6534 =  ( n2532____DOLLAR__6453 ) | ( n2563____DOLLAR__6533 )  ;
assign n2565____DOLLAR__6535 =  ( n2531____DOLLAR__6449 ) | ( n2564____DOLLAR__6534 )  ;
assign n2566____DOLLAR__6536 =  ( n2530____DOLLAR__6445 ) | ( n2565____DOLLAR__6535 )  ;
assign n2567____DOLLAR__6537 =  ( n2529____DOLLAR__6441 ) | ( n2566____DOLLAR__6536 )  ;
assign n2568____DOLLAR__6538 =  ( n2528____DOLLAR__6437 ) | ( n2567____DOLLAR__6537 )  ;
assign n2569____DOLLAR__6539 =  ( n2527____DOLLAR__6433 ) | ( n2568____DOLLAR__6538 )  ;
assign n2570____DOLLAR__6540 =  ( n2526____DOLLAR__6429 ) | ( n2569____DOLLAR__6539 )  ;
assign n2571____DOLLAR__6541 =  ( n2525____DOLLAR__6425 ) | ( n2570____DOLLAR__6540 )  ;
assign n2572____DOLLAR__6542 =  ( n2524____DOLLAR__6421 ) | ( n2571____DOLLAR__6541 )  ;
assign n2573____DOLLAR__6543 =  ( n2523____DOLLAR__6417 ) | ( n2572____DOLLAR__6542 )  ;
assign n2574____DOLLAR__6544 =  ( n2522____DOLLAR__6413 ) | ( n2573____DOLLAR__6543 )  ;
assign n2575____DOLLAR__6545 =  ( n2521____DOLLAR__6409 ) | ( n2574____DOLLAR__6544 )  ;
assign n2576____DOLLAR__6546 =  ( n2520____DOLLAR__6405 ) | ( n2575____DOLLAR__6545 )  ;
assign n2577____DOLLAR__6547 =  ( n2519____DOLLAR__6401 ) | ( n2576____DOLLAR__6546 )  ;
assign n2578____DOLLAR__6548 =  ( n2518____DOLLAR__6397 ) | ( n2577____DOLLAR__6547 )  ;
assign n2579____DOLLAR__6549 =  ( n2517____DOLLAR__6393 ) | ( n2578____DOLLAR__6548 )  ;
assign n2580____DOLLAR__6550 =  ( n2516____DOLLAR__6389 ) | ( n2579____DOLLAR__6549 )  ;
assign n2581____DOLLAR__6551 =  ( n2515____DOLLAR__6385 ) | ( n2580____DOLLAR__6550 )  ;
assign n2582____DOLLAR__6552 =  ( n2514____DOLLAR__6381 ) | ( n2581____DOLLAR__6551 )  ;
assign n2583____DOLLAR__6553 =  ( n2513____DOLLAR__6377 ) | ( n2582____DOLLAR__6552 )  ;
assign n2584____DOLLAR__6554 =  ( n2512____DOLLAR__6373 ) | ( n2583____DOLLAR__6553 )  ;
assign n2585____DOLLAR__6555 =  ( n2511____DOLLAR__6369 ) | ( n2584____DOLLAR__6554 )  ;
assign n2586____DOLLAR__6556 =  ( n2510____DOLLAR__6365 ) | ( n2585____DOLLAR__6555 )  ;
assign n2587____DOLLAR__6557 =  ( n2509____DOLLAR__6361 ) | ( n2586____DOLLAR__6556 )  ;
assign n2588____DOLLAR__6558 =  ( n2508____DOLLAR__6357 ) | ( n2587____DOLLAR__6557 )  ;
assign n2589____DOLLAR__6559 =  ( n2507____DOLLAR__6353 ) | ( n2588____DOLLAR__6558 )  ;
assign n2590____DOLLAR__6560 =  ( n2506____DOLLAR__6349 ) | ( n2589____DOLLAR__6559 )  ;
assign n2591____DOLLAR__6561 =  ( n2505____DOLLAR__6345 ) | ( n2590____DOLLAR__6560 )  ;
assign n2592____DOLLAR__6562 =  ( n2504____DOLLAR__6341 ) | ( n2591____DOLLAR__6561 )  ;
assign n2593____DOLLAR__6563 =  ( n2503____DOLLAR__6337 ) | ( n2592____DOLLAR__6562 )  ;
assign n2594____DOLLAR__6564 =  ( n2502____DOLLAR__6333 ) | ( n2593____DOLLAR__6563 )  ;
assign n2595____DOLLAR__6565 =  ( n2501____DOLLAR__6329 ) | ( n2594____DOLLAR__6564 )  ;
assign n2596____DOLLAR__6566 =  ( n2500____DOLLAR__6325 ) | ( n2595____DOLLAR__6565 )  ;
assign n2597____DOLLAR__6567 =  ( n2499____DOLLAR__6321 ) | ( n2596____DOLLAR__6566 )  ;
assign n2598____DOLLAR__6568 =  ( n2498____DOLLAR__6317 ) | ( n2597____DOLLAR__6567 )  ;
assign n2599____DOLLAR__6569 =  ( n2497____DOLLAR__6313 ) | ( n2598____DOLLAR__6568 )  ;
assign n2600____DOLLAR__6570 =  ( n2496____DOLLAR__6309 ) | ( n2599____DOLLAR__6569 )  ;
assign n2601____DOLLAR__6571 =  ( n2495____DOLLAR__6305 ) | ( n2600____DOLLAR__6570 )  ;
assign n2602____DOLLAR__6572 =  ( n2494____DOLLAR__6301 ) | ( n2601____DOLLAR__6571 )  ;
assign n2603____DOLLAR__6573 =  ( n2493____DOLLAR__6297 ) | ( n2602____DOLLAR__6572 )  ;
assign n2604____DOLLAR__6574 =  ( n2492____DOLLAR__6293 ) | ( n2603____DOLLAR__6573 )  ;
assign n2605____DOLLAR__6575 =  ( n2491____DOLLAR__6289 ) | ( n2604____DOLLAR__6574 )  ;
assign n2606____DOLLAR__6576 =  ( n2490____DOLLAR__6285 ) | ( n2605____DOLLAR__6575 )  ;
assign n2607____DOLLAR__6577 =  ( n2489____DOLLAR__6281 ) | ( n2606____DOLLAR__6576 )  ;
assign n2608____DOLLAR__6578 =  ( n2488____DOLLAR__6277 ) | ( n2607____DOLLAR__6577 )  ;
assign n2609____DOLLAR__6579 =  ( n2487____DOLLAR__6273 ) | ( n2608____DOLLAR__6578 )  ;
assign n2610____DOLLAR__6580 =  ( n2486____DOLLAR__6269 ) | ( n2609____DOLLAR__6579 )  ;
assign n2611____DOLLAR__6581 =  ( n2485____DOLLAR__6265 ) | ( n2610____DOLLAR__6580 )  ;
assign n2612____DOLLAR__6582 =  ( n2484____DOLLAR__6261 ) | ( n2611____DOLLAR__6581 )  ;
assign n2613____DOLLAR__6583 =  ( n2483____DOLLAR__6257 ) | ( n2612____DOLLAR__6582 )  ;
assign n2614____DOLLAR__6584 =  ( n2482____DOLLAR__6253 ) | ( n2613____DOLLAR__6583 )  ;
assign n2615____DOLLAR__6585 =  ( n2481____DOLLAR__6249 ) | ( n2614____DOLLAR__6584 )  ;
assign n2616____DOLLAR__6586 =  ( n2480____DOLLAR__6245 ) | ( n2615____DOLLAR__6585 )  ;
assign n2617____DOLLAR__6587 =  ( n2479____DOLLAR__6241 ) | ( n2616____DOLLAR__6586 )  ;
assign n2618____DOLLAR__6588 =  ( n2478____DOLLAR__6237 ) | ( n2617____DOLLAR__6587 )  ;
assign n2619____DOLLAR__6589 =  ( n2477____DOLLAR__6233 ) | ( n2618____DOLLAR__6588 )  ;
assign n2620____DOLLAR__6590 =  ( n2476____DOLLAR__6229 ) | ( n2619____DOLLAR__6589 )  ;
assign n2621____DOLLAR__6591 =  ( n2475____DOLLAR__6225 ) | ( n2620____DOLLAR__6590 )  ;
assign n2622____DOLLAR__6592 =  ( n2474____DOLLAR__6221 ) | ( n2621____DOLLAR__6591 )  ;
assign n2623____DOLLAR__6593 =  ( n2473____DOLLAR__6217 ) | ( n2622____DOLLAR__6592 )  ;
assign n2624____DOLLAR__6594 =  ( n2472____DOLLAR__6213 ) | ( n2623____DOLLAR__6593 )  ;
assign n2625____DOLLAR__6595 =  ( n2471____DOLLAR__6209 ) | ( n2624____DOLLAR__6594 )  ;
assign n2626____DOLLAR__6596 =  ( n2470____DOLLAR__6205 ) | ( n2625____DOLLAR__6595 )  ;
assign n2627____DOLLAR__6597 =  ( n2469____DOLLAR__6201 ) | ( n2626____DOLLAR__6596 )  ;
assign n2628____DOLLAR__6598 =  ( n2468____DOLLAR__6197 ) | ( n2627____DOLLAR__6597 )  ;
assign n2629____DOLLAR__6599 =  ( n2467____DOLLAR__6193 ) | ( n2628____DOLLAR__6598 )  ;
assign n2630____DOLLAR__6600 =  ( n2466____DOLLAR__6189 ) | ( n2629____DOLLAR__6599 )  ;
assign n2631____DOLLAR__6601 =  ( n2465____DOLLAR__6185 ) | ( n2630____DOLLAR__6600 )  ;
assign n2632____DOLLAR__6602 =  ( n2464____DOLLAR__6181 ) | ( n2631____DOLLAR__6601 )  ;
assign n2633____DOLLAR__6603 =  ( n2463____DOLLAR__6177 ) | ( n2632____DOLLAR__6602 )  ;
assign n2634____DOLLAR__6604 =  ( n2462____DOLLAR__6173 ) | ( n2633____DOLLAR__6603 )  ;
assign n2635____DOLLAR__6605 =  ( n2461____DOLLAR__6169 ) | ( n2634____DOLLAR__6604 )  ;
assign n2636____DOLLAR__6606 =  ( n2460____DOLLAR__6165 ) | ( n2635____DOLLAR__6605 )  ;
assign n2637____DOLLAR__6607 =  ( n2459____DOLLAR__6161 ) | ( n2636____DOLLAR__6606 )  ;
assign n2638____DOLLAR__6608 =  ( n2458____DOLLAR__6157 ) | ( n2637____DOLLAR__6607 )  ;
assign n2639____DOLLAR__6609 =  ( n2457____DOLLAR__6153 ) | ( n2638____DOLLAR__6608 )  ;
assign n2640____DOLLAR__6610 =  ( n2456____DOLLAR__6149 ) | ( n2639____DOLLAR__6609 )  ;
assign n2641____DOLLAR__6611 =  ( n2455____DOLLAR__6145 ) | ( n2640____DOLLAR__6610 )  ;
assign n2642____DOLLAR__6612 =  ( n2454____DOLLAR__6141 ) | ( n2641____DOLLAR__6611 )  ;
assign n2643____DOLLAR__6613 =  ( n2453____DOLLAR__6137 ) | ( n2642____DOLLAR__6612 )  ;
assign n2644____DOLLAR__6614 =  ( n2452____DOLLAR__6133 ) | ( n2643____DOLLAR__6613 )  ;
assign n2645____DOLLAR__6615 =  ( n2451____DOLLAR__6129 ) | ( n2644____DOLLAR__6614 )  ;
assign n2646____DOLLAR__6616 =  ( n2450____DOLLAR__6125 ) | ( n2645____DOLLAR__6615 )  ;
assign n2647____DOLLAR__6617 =  ( n2449____DOLLAR__6121 ) | ( n2646____DOLLAR__6616 )  ;
assign n2648____DOLLAR__6618 =  ( n2448____DOLLAR__6117 ) | ( n2647____DOLLAR__6617 )  ;
assign n2649____DOLLAR__6619 =  ( n2447____DOLLAR__6113 ) | ( n2648____DOLLAR__6618 )  ;
assign n2650____DOLLAR__6620 =  ( n2446____DOLLAR__6109 ) | ( n2649____DOLLAR__6619 )  ;
assign n2651____DOLLAR__6621 =  ( n2445____DOLLAR__6105 ) | ( n2650____DOLLAR__6620 )  ;
assign n2652____DOLLAR__6622 =  ( n2444____DOLLAR__6101 ) | ( n2651____DOLLAR__6621 )  ;
assign n2653____DOLLAR__6623 =  ( n2443____DOLLAR__6097 ) | ( n2652____DOLLAR__6622 )  ;
assign n2654____DOLLAR__6624 =  ( n2442____DOLLAR__6093 ) | ( n2653____DOLLAR__6623 )  ;
assign n2655____DOLLAR__6625 =  ( n2441____DOLLAR__6089 ) | ( n2654____DOLLAR__6624 )  ;
assign n2656____DOLLAR__6626 =  ( n2440____DOLLAR__6085 ) | ( n2655____DOLLAR__6625 )  ;
assign n2657____DOLLAR__6627 =  ( n2439____DOLLAR__6081 ) | ( n2656____DOLLAR__6626 )  ;
assign n2658____DOLLAR__6628 =  ( n2438____DOLLAR__6077 ) | ( n2657____DOLLAR__6627 )  ;
assign n2659____DOLLAR__6629 =  ( n2437____DOLLAR__6073 ) | ( n2658____DOLLAR__6628 )  ;
assign n2660____DOLLAR__6630 =  ( n2436____DOLLAR__6069 ) | ( n2659____DOLLAR__6629 )  ;
assign n2661____DOLLAR__6631 =  ( n2435____DOLLAR__6065 ) | ( n2660____DOLLAR__6630 )  ;
assign n2662____DOLLAR__6632 =  ( n2434____DOLLAR__6061 ) | ( n2661____DOLLAR__6631 )  ;
assign n2663____DOLLAR__6633 =  ( n2433____DOLLAR__6057 ) | ( n2662____DOLLAR__6632 )  ;
assign n2664____DOLLAR__6634 =  ( n2432____DOLLAR__6053 ) | ( n2663____DOLLAR__6633 )  ;
assign n2665____DOLLAR__6635 =  ( n2431____DOLLAR__6049 ) | ( n2664____DOLLAR__6634 )  ;
assign n2666____DOLLAR__6636 =  ( n2430____DOLLAR__6045 ) | ( n2665____DOLLAR__6635 )  ;
assign n2667____DOLLAR__6637 =  ( n2429____DOLLAR__6041 ) | ( n2666____DOLLAR__6636 )  ;
assign n2668____DOLLAR__6638 =  ( n2428____DOLLAR__6037 ) | ( n2667____DOLLAR__6637 )  ;
assign n2669____DOLLAR__6639 =  ( n2427____DOLLAR__6033 ) | ( n2668____DOLLAR__6638 )  ;
assign n2670____DOLLAR__6640 =  ( n2426____DOLLAR__6029 ) | ( n2669____DOLLAR__6639 )  ;
assign n2671____DOLLAR__6641 =  ( n2425____DOLLAR__6025 ) | ( n2670____DOLLAR__6640 )  ;
assign n2672____DOLLAR__6642 =  ( n2424____DOLLAR__6021 ) | ( n2671____DOLLAR__6641 )  ;
assign n2673____DOLLAR__6643 =  ( n2423____DOLLAR__6017 ) | ( n2672____DOLLAR__6642 )  ;
assign n2674____DOLLAR__6644 =  ( n2422____DOLLAR__6013 ) | ( n2673____DOLLAR__6643 )  ;
assign n2675____DOLLAR__6645 =  ( n2421____DOLLAR__6009 ) | ( n2674____DOLLAR__6644 )  ;
assign n2676____DOLLAR__6646 =  ( n2420____DOLLAR__6005 ) | ( n2675____DOLLAR__6645 )  ;
assign n2677____DOLLAR__6647 =  ( n2419____DOLLAR__6001 ) | ( n2676____DOLLAR__6646 )  ;
assign n2678____DOLLAR__6648 =  ( n2418____DOLLAR__5997 ) | ( n2677____DOLLAR__6647 )  ;
assign n2679____DOLLAR__6649 =  ( n2417____DOLLAR__5993 ) | ( n2678____DOLLAR__6648 )  ;
assign n2680____DOLLAR__6650 =  ( n2416____DOLLAR__5989 ) | ( n2679____DOLLAR__6649 )  ;
assign n2681____DOLLAR__6651 =  ( n2415____DOLLAR__5985 ) | ( n2680____DOLLAR__6650 )  ;
assign n2682____DOLLAR__6652 =  ( n2414____DOLLAR__5981 ) | ( n2681____DOLLAR__6651 )  ;
assign n2683____DOLLAR__6653 =  ( n2413____DOLLAR__5977 ) | ( n2682____DOLLAR__6652 )  ;
assign n2684____DOLLAR__6654 =  ( n2412____DOLLAR__5973 ) | ( n2683____DOLLAR__6653 )  ;
assign n2685____DOLLAR__6655 =  ( n2411____DOLLAR__5969 ) | ( n2684____DOLLAR__6654 )  ;
assign n2686____DOLLAR__6656 =  ( n2410____DOLLAR__5965 ) | ( n2685____DOLLAR__6655 )  ;
assign n2687____DOLLAR__6657 =  ( n2409____DOLLAR__5961 ) | ( n2686____DOLLAR__6656 )  ;
assign n2688____DOLLAR__6658 =  ( n2408____DOLLAR__5957 ) | ( n2687____DOLLAR__6657 )  ;
assign n2689____DOLLAR__6659 =  ( n2407____DOLLAR__5953 ) | ( n2688____DOLLAR__6658 )  ;
assign n2690____DOLLAR__6660 =  ( n2406____DOLLAR__5949 ) | ( n2689____DOLLAR__6659 )  ;
assign n2691____DOLLAR__6661 =  ( n2405____DOLLAR__5945 ) | ( n2690____DOLLAR__6660 )  ;
assign n2692____DOLLAR__6662 =  ( n2404____DOLLAR__5941 ) | ( n2691____DOLLAR__6661 )  ;
assign n2693____DOLLAR__6663 =  ( n2403____DOLLAR__5937 ) | ( n2692____DOLLAR__6662 )  ;
assign n2694____DOLLAR__6664 =  ( n2402____DOLLAR__5933 ) | ( n2693____DOLLAR__6663 )  ;
assign n2695____DOLLAR__6665 =  ( n2401____DOLLAR__5929 ) | ( n2694____DOLLAR__6664 )  ;
assign n2696____DOLLAR__6666 =  ( n2400____DOLLAR__5925 ) | ( n2695____DOLLAR__6665 )  ;
assign n2697____DOLLAR__6667 =  ( n2399____DOLLAR__5921 ) | ( n2696____DOLLAR__6666 )  ;
assign n2698____DOLLAR__6668 =  ( n2398____DOLLAR__5917 ) | ( n2697____DOLLAR__6667 )  ;
assign n2699____DOLLAR__6669 =  ( n2397____DOLLAR__5913 ) | ( n2698____DOLLAR__6668 )  ;
assign n2700____DOLLAR__6670 =  ( n2396____DOLLAR__5909 ) | ( n2699____DOLLAR__6669 )  ;
assign n2701____DOLLAR__6671 =  ( n2395____DOLLAR__5905 ) | ( n2700____DOLLAR__6670 )  ;
assign n2702____DOLLAR__6672 =  ( n2394____DOLLAR__5901 ) | ( n2701____DOLLAR__6671 )  ;
assign n2703____DOLLAR__6673 =  ( n2393____DOLLAR__5897 ) | ( n2702____DOLLAR__6672 )  ;
assign n2704____DOLLAR__6674 =  ( n2392____DOLLAR__5893 ) | ( n2703____DOLLAR__6673 )  ;
assign n2705____DOLLAR__6675 =  ( n2391____DOLLAR__5889 ) | ( n2704____DOLLAR__6674 )  ;
assign n2706____DOLLAR__6676 =  ( n2390____DOLLAR__5885 ) | ( n2705____DOLLAR__6675 )  ;
assign n2707____DOLLAR__6677 =  ( n2389____DOLLAR__5881 ) | ( n2706____DOLLAR__6676 )  ;
assign n2708____DOLLAR__6678 =  ( n2388____DOLLAR__5877 ) | ( n2707____DOLLAR__6677 )  ;
assign n2709____DOLLAR__6679 =  ( n2387____DOLLAR__5873 ) | ( n2708____DOLLAR__6678 )  ;
assign n2710____DOLLAR__6680 =  ( n2386____DOLLAR__5869 ) | ( n2709____DOLLAR__6679 )  ;
assign n2711____DOLLAR__6681 =  ( n2385____DOLLAR__5865 ) | ( n2710____DOLLAR__6680 )  ;
assign n2712____DOLLAR__6682 =  ( n2384____DOLLAR__5861 ) | ( n2711____DOLLAR__6681 )  ;
assign n2713____DOLLAR__6683 =  ( n2383____DOLLAR__5857 ) | ( n2712____DOLLAR__6682 )  ;
assign n2714____DOLLAR__6684 =  ( n2382____DOLLAR__5853 ) | ( n2713____DOLLAR__6683 )  ;
assign n2715____DOLLAR__6685 =  ( n2381____DOLLAR__5849 ) | ( n2714____DOLLAR__6684 )  ;
assign n2716____DOLLAR__6686 =  ( n2380____DOLLAR__5845 ) | ( n2715____DOLLAR__6685 )  ;
assign n2717____DOLLAR__6687 =  ( n2379____DOLLAR__5841 ) | ( n2716____DOLLAR__6686 )  ;
assign n2718____DOLLAR__6688 =  ( n2378____DOLLAR__5837 ) | ( n2717____DOLLAR__6687 )  ;
assign n2719____DOLLAR__6689 =  ( n2377____DOLLAR__5833 ) | ( n2718____DOLLAR__6688 )  ;
assign n2720____DOLLAR__6690 =  ( n2376____DOLLAR__5829 ) | ( n2719____DOLLAR__6689 )  ;
assign n2721____DOLLAR__6691 =  ( n2375____DOLLAR__5825 ) | ( n2720____DOLLAR__6690 )  ;
assign n2722____DOLLAR__6692 =  ( n2374____DOLLAR__5821 ) | ( n2721____DOLLAR__6691 )  ;
assign n2723____DOLLAR__6693 =  ( n2373____DOLLAR__5817 ) | ( n2722____DOLLAR__6692 )  ;
assign n2724____DOLLAR__6694 =  ( n2372____DOLLAR__5813 ) | ( n2723____DOLLAR__6693 )  ;
assign n2725____DOLLAR__6695 =  ( n2371____DOLLAR__5809 ) | ( n2724____DOLLAR__6694 )  ;
assign n2726____DOLLAR__6696 =  ( n2370____DOLLAR__5805 ) | ( n2725____DOLLAR__6695 )  ;
assign n2727____DOLLAR__6697 =  ( n2369____DOLLAR__5801 ) | ( n2726____DOLLAR__6696 )  ;
assign n2728____DOLLAR__6698 =  ( n2368____DOLLAR__5797 ) | ( n2727____DOLLAR__6697 )  ;
assign n2729____DOLLAR__6699 =  ( n2367____DOLLAR__5793 ) | ( n2728____DOLLAR__6698 )  ;
assign n2730____DOLLAR__6700 =  ( n2366____DOLLAR__5789 ) | ( n2729____DOLLAR__6699 )  ;
assign n2731____DOLLAR__6701 =  ( n2365____DOLLAR__5785 ) | ( n2730____DOLLAR__6700 )  ;
assign n2732____DOLLAR__6702 =  ( n2364____DOLLAR__5781 ) | ( n2731____DOLLAR__6701 )  ;
assign n2733____DOLLAR__6703 =  ( n2363____DOLLAR__5777 ) | ( n2732____DOLLAR__6702 )  ;
assign n2734____DOLLAR__6704 =  ( n2362____DOLLAR__5773 ) | ( n2733____DOLLAR__6703 )  ;
assign n2735____DOLLAR__6705 =  ( n2361____DOLLAR__5769 ) | ( n2734____DOLLAR__6704 )  ;
assign n2736____DOLLAR__6706 =  ( n2360____DOLLAR__5765 ) | ( n2735____DOLLAR__6705 )  ;
assign n2737____DOLLAR__6707 =  ( n2359____DOLLAR__5761 ) | ( n2736____DOLLAR__6706 )  ;
assign n2738____DOLLAR__6708 =  ( n2358____DOLLAR__5757 ) | ( n2737____DOLLAR__6707 )  ;
assign n2739____DOLLAR__6709 =  ( n2357____DOLLAR__5753 ) | ( n2738____DOLLAR__6708 )  ;
assign n2740____DOLLAR__6710 =  ( n2356____DOLLAR__5749 ) | ( n2739____DOLLAR__6709 )  ;
assign n2741____DOLLAR__6711 =  ( n2355____DOLLAR__5745 ) | ( n2740____DOLLAR__6710 )  ;
assign n2742____DOLLAR__6712 =  ( n2354____DOLLAR__5741 ) | ( n2741____DOLLAR__6711 )  ;
assign n2743____DOLLAR__6713 =  ( n2353____DOLLAR__5737 ) | ( n2742____DOLLAR__6712 )  ;
assign n2744____DOLLAR__6714 =  ( n2352____DOLLAR__5733 ) | ( n2743____DOLLAR__6713 )  ;
assign n2745____DOLLAR__6715 =  ( n2351____DOLLAR__5729 ) | ( n2744____DOLLAR__6714 )  ;
assign n2746____DOLLAR__6716 =  ( n2350____DOLLAR__5725 ) | ( n2745____DOLLAR__6715 )  ;
assign n2747____DOLLAR__6717 =  ( n2349____DOLLAR__5721 ) | ( n2746____DOLLAR__6716 )  ;
assign n2748____DOLLAR__6718 =  ( n2348____DOLLAR__5717 ) | ( n2747____DOLLAR__6717 )  ;
assign n2749____DOLLAR__6719 =  ( n2347____DOLLAR__5713 ) | ( n2748____DOLLAR__6718 )  ;
assign n2750____DOLLAR__6720 =  ( n2346____DOLLAR__5709 ) | ( n2749____DOLLAR__6719 )  ;
assign n2751____DOLLAR__6721 =  ( n2345____DOLLAR__5705 ) | ( n2750____DOLLAR__6720 )  ;
assign n2752____DOLLAR__6722 =  ( n2344____DOLLAR__5701 ) | ( n2751____DOLLAR__6721 )  ;
assign n2753____DOLLAR__6723 =  ( n2343____DOLLAR__5697 ) | ( n2752____DOLLAR__6722 )  ;
assign n2754____DOLLAR__6724 =  ( n2342____DOLLAR__5693 ) | ( n2753____DOLLAR__6723 )  ;
assign n2755____DOLLAR__6725 =  ( n2341____DOLLAR__5689 ) | ( n2754____DOLLAR__6724 )  ;
assign n2756____DOLLAR__6726 =  ( n2340____DOLLAR__5685 ) | ( n2755____DOLLAR__6725 )  ;
assign n2757____DOLLAR__6727 =  ( n2339____DOLLAR__5681 ) | ( n2756____DOLLAR__6726 )  ;
assign n2758____DOLLAR__6728 =  ( n2338____DOLLAR__5677 ) | ( n2757____DOLLAR__6727 )  ;
assign n2759____DOLLAR__6729 =  ( n2337____DOLLAR__5673 ) | ( n2758____DOLLAR__6728 )  ;
assign n2760____DOLLAR__6730 =  ( n2336____DOLLAR__5669 ) | ( n2759____DOLLAR__6729 )  ;
assign n2761____DOLLAR__6731 =  ( n2335____DOLLAR__5665 ) | ( n2760____DOLLAR__6730 )  ;
assign n2762____DOLLAR__6732 =  ( n2334____DOLLAR__5661 ) | ( n2761____DOLLAR__6731 )  ;
assign n2763____DOLLAR__6733 =  ( n2333____DOLLAR__5657 ) | ( n2762____DOLLAR__6732 )  ;
assign n2764____DOLLAR__6734 =  ( n2332____DOLLAR__5653 ) | ( n2763____DOLLAR__6733 )  ;
assign n2765____DOLLAR__6735 =  ( n2331____DOLLAR__5649 ) | ( n2764____DOLLAR__6734 )  ;
assign n2766____DOLLAR__6736 =  ( n2330____DOLLAR__5645 ) | ( n2765____DOLLAR__6735 )  ;
assign n2767____DOLLAR__6737 =  ( n2329____DOLLAR__5641 ) | ( n2766____DOLLAR__6736 )  ;
assign n2768____DOLLAR__6738 =  ( n2328____DOLLAR__5637 ) | ( n2767____DOLLAR__6737 )  ;
assign n2769____DOLLAR__6739 =  ( n2327____DOLLAR__5633 ) | ( n2768____DOLLAR__6738 )  ;
assign n2770____DOLLAR__6740 =  ( n2326____DOLLAR__5629 ) | ( n2769____DOLLAR__6739 )  ;
assign n2771____DOLLAR__6741 =  ( n2325____DOLLAR__5625 ) | ( n2770____DOLLAR__6740 )  ;
assign n2772____DOLLAR__6742 =  ( n2324____DOLLAR__5621 ) | ( n2771____DOLLAR__6741 )  ;
assign n2773____DOLLAR__6743 =  ( n2323____DOLLAR__5617 ) | ( n2772____DOLLAR__6742 )  ;
assign n2774____DOLLAR__6744 =  ( n2322____DOLLAR__5613 ) | ( n2773____DOLLAR__6743 )  ;
assign n2775____DOLLAR__6745 =  ( n2321____DOLLAR__5609 ) | ( n2774____DOLLAR__6744 )  ;
assign n2776____DOLLAR__6746 =  ( n2320____DOLLAR__5605 ) | ( n2775____DOLLAR__6745 )  ;
assign n2777____DOLLAR__6747 =  ( n2319____DOLLAR__5601 ) | ( n2776____DOLLAR__6746 )  ;
assign n2778____DOLLAR__6748 =  ( n2318____DOLLAR__5597 ) | ( n2777____DOLLAR__6747 )  ;
assign n2779____DOLLAR__6749 =  ( n2317____DOLLAR__5593 ) | ( n2778____DOLLAR__6748 )  ;
assign n2780____DOLLAR__6750 =  ( n2316____DOLLAR__5589 ) | ( n2779____DOLLAR__6749 )  ;
assign n2781____DOLLAR__6751 =  ( n2315____DOLLAR__5585 ) | ( n2780____DOLLAR__6750 )  ;
assign n2782____DOLLAR__6752 =  ( n2314____DOLLAR__5581 ) | ( n2781____DOLLAR__6751 )  ;
assign n2783____DOLLAR__6753 =  ( n2313____DOLLAR__5577 ) | ( n2782____DOLLAR__6752 )  ;
assign n2784____DOLLAR__6754 =  ( n2312____DOLLAR__5573 ) | ( n2783____DOLLAR__6753 )  ;
assign n2785____DOLLAR__6755 =  ( n2311____DOLLAR__5569 ) | ( n2784____DOLLAR__6754 )  ;
assign n2786____DOLLAR__6756 =  ( n2310____DOLLAR__5565 ) | ( n2785____DOLLAR__6755 )  ;
assign n2787____DOLLAR__6757 =  ( n2309____DOLLAR__5561 ) | ( n2786____DOLLAR__6756 )  ;
assign n2788____DOLLAR__6758 =  ( n2308____DOLLAR__5557 ) | ( n2787____DOLLAR__6757 )  ;
assign n2789____DOLLAR__6759 =  ( n2307____DOLLAR__5553 ) | ( n2788____DOLLAR__6758 )  ;
assign n2790____DOLLAR__6760 =  ( n2306____DOLLAR__5549 ) | ( n2789____DOLLAR__6759 )  ;
assign n2791____DOLLAR__6761 =  ( n2305____DOLLAR__5545 ) | ( n2790____DOLLAR__6760 )  ;
assign n2792____DOLLAR__6762 =  ( n2304____DOLLAR__5541 ) | ( n2791____DOLLAR__6761 )  ;
assign n2793____DOLLAR__6763 =  ( n2303____DOLLAR__5537 ) | ( n2792____DOLLAR__6762 )  ;
assign n2794____DOLLAR__6764 =  ( n2302____DOLLAR__5533 ) | ( n2793____DOLLAR__6763 )  ;
assign n2795____DOLLAR__6765 =  ( n2301____DOLLAR__5529 ) | ( n2794____DOLLAR__6764 )  ;
assign n2796____DOLLAR__6766 =  ( n2300____DOLLAR__5525 ) | ( n2795____DOLLAR__6765 )  ;
assign n2797____DOLLAR__6767 =  ( n2299____DOLLAR__5521 ) | ( n2796____DOLLAR__6766 )  ;
assign n2798____DOLLAR__6770 =  ( n2797____DOLLAR__6767 ) ? ( 16'd0 ) : ( XRAM_ADDR ) ;
assign n2799____DOLLAR__6771 =  ( n2294____DOLLAR__5510 ) ? ( n2295____DOLLAR__5515 ) : ( n2798____DOLLAR__6770 ) ;
assign n2800____DOLLAR__6772 =  ( n2281____DOLLAR__5471 ) ? ( n2288____DOLLAR__5498 ) : ( n2799____DOLLAR__6771 ) ;
assign n2801____DOLLAR__6773 =  ( n2268____DOLLAR__5432 ) ? ( n2275____DOLLAR__5459 ) : ( n2800____DOLLAR__6772 ) ;
assign ROM_addr_n2802 = PC ;
assign n2804____DOLLAR__6774 = ROM_data_n2803 ;
assign n2805____DOLLAR__6778 =  ( n2804____DOLLAR__6774 ) == ( 8'd243 )  ;
assign n2806____DOLLAR__6782 =  ( n2804____DOLLAR__6774 ) == ( 8'd242 )  ;
assign n2807____DOLLAR__6786 =  ( n2804____DOLLAR__6774 ) == ( 8'd240 )  ;
assign n2808____DOLLAR__6788 =  ( n2806____DOLLAR__6782 ) | ( n2807____DOLLAR__6786 )  ;
assign n2809____DOLLAR__6789 =  ( n2805____DOLLAR__6778 ) | ( n2808____DOLLAR__6788 )  ;
assign ROM_addr_n2810 = PC ;
assign n2812____DOLLAR__6790 = ROM_data_n2811 ;
assign n2813____DOLLAR__6794 =  ( n2812____DOLLAR__6790 ) == ( 8'd255 )  ;
assign n2814____DOLLAR__6798 =  ( n2812____DOLLAR__6790 ) == ( 8'd254 )  ;
assign n2815____DOLLAR__6802 =  ( n2812____DOLLAR__6790 ) == ( 8'd253 )  ;
assign n2816____DOLLAR__6806 =  ( n2812____DOLLAR__6790 ) == ( 8'd252 )  ;
assign n2817____DOLLAR__6810 =  ( n2812____DOLLAR__6790 ) == ( 8'd251 )  ;
assign n2818____DOLLAR__6814 =  ( n2812____DOLLAR__6790 ) == ( 8'd250 )  ;
assign n2819____DOLLAR__6818 =  ( n2812____DOLLAR__6790 ) == ( 8'd249 )  ;
assign n2820____DOLLAR__6822 =  ( n2812____DOLLAR__6790 ) == ( 8'd248 )  ;
assign n2821____DOLLAR__6826 =  ( n2812____DOLLAR__6790 ) == ( 8'd247 )  ;
assign n2822____DOLLAR__6830 =  ( n2812____DOLLAR__6790 ) == ( 8'd246 )  ;
assign n2823____DOLLAR__6834 =  ( n2812____DOLLAR__6790 ) == ( 8'd245 )  ;
assign n2824____DOLLAR__6838 =  ( n2812____DOLLAR__6790 ) == ( 8'd244 )  ;
assign n2825____DOLLAR__6842 =  ( n2812____DOLLAR__6790 ) == ( 8'd241 )  ;
assign n2826____DOLLAR__6846 =  ( n2812____DOLLAR__6790 ) == ( 8'd239 )  ;
assign n2827____DOLLAR__6850 =  ( n2812____DOLLAR__6790 ) == ( 8'd238 )  ;
assign n2828____DOLLAR__6854 =  ( n2812____DOLLAR__6790 ) == ( 8'd237 )  ;
assign n2829____DOLLAR__6858 =  ( n2812____DOLLAR__6790 ) == ( 8'd236 )  ;
assign n2830____DOLLAR__6862 =  ( n2812____DOLLAR__6790 ) == ( 8'd235 )  ;
assign n2831____DOLLAR__6866 =  ( n2812____DOLLAR__6790 ) == ( 8'd234 )  ;
assign n2832____DOLLAR__6870 =  ( n2812____DOLLAR__6790 ) == ( 8'd233 )  ;
assign n2833____DOLLAR__6874 =  ( n2812____DOLLAR__6790 ) == ( 8'd232 )  ;
assign n2834____DOLLAR__6878 =  ( n2812____DOLLAR__6790 ) == ( 8'd231 )  ;
assign n2835____DOLLAR__6882 =  ( n2812____DOLLAR__6790 ) == ( 8'd230 )  ;
assign n2836____DOLLAR__6886 =  ( n2812____DOLLAR__6790 ) == ( 8'd229 )  ;
assign n2837____DOLLAR__6890 =  ( n2812____DOLLAR__6790 ) == ( 8'd228 )  ;
assign n2838____DOLLAR__6894 =  ( n2812____DOLLAR__6790 ) == ( 8'd227 )  ;
assign n2839____DOLLAR__6898 =  ( n2812____DOLLAR__6790 ) == ( 8'd226 )  ;
assign n2840____DOLLAR__6902 =  ( n2812____DOLLAR__6790 ) == ( 8'd225 )  ;
assign n2841____DOLLAR__6906 =  ( n2812____DOLLAR__6790 ) == ( 8'd224 )  ;
assign n2842____DOLLAR__6910 =  ( n2812____DOLLAR__6790 ) == ( 8'd223 )  ;
assign n2843____DOLLAR__6914 =  ( n2812____DOLLAR__6790 ) == ( 8'd222 )  ;
assign n2844____DOLLAR__6918 =  ( n2812____DOLLAR__6790 ) == ( 8'd221 )  ;
assign n2845____DOLLAR__6922 =  ( n2812____DOLLAR__6790 ) == ( 8'd220 )  ;
assign n2846____DOLLAR__6926 =  ( n2812____DOLLAR__6790 ) == ( 8'd219 )  ;
assign n2847____DOLLAR__6930 =  ( n2812____DOLLAR__6790 ) == ( 8'd218 )  ;
assign n2848____DOLLAR__6934 =  ( n2812____DOLLAR__6790 ) == ( 8'd217 )  ;
assign n2849____DOLLAR__6938 =  ( n2812____DOLLAR__6790 ) == ( 8'd216 )  ;
assign n2850____DOLLAR__6942 =  ( n2812____DOLLAR__6790 ) == ( 8'd215 )  ;
assign n2851____DOLLAR__6946 =  ( n2812____DOLLAR__6790 ) == ( 8'd214 )  ;
assign n2852____DOLLAR__6950 =  ( n2812____DOLLAR__6790 ) == ( 8'd213 )  ;
assign n2853____DOLLAR__6954 =  ( n2812____DOLLAR__6790 ) == ( 8'd212 )  ;
assign n2854____DOLLAR__6958 =  ( n2812____DOLLAR__6790 ) == ( 8'd211 )  ;
assign n2855____DOLLAR__6962 =  ( n2812____DOLLAR__6790 ) == ( 8'd210 )  ;
assign n2856____DOLLAR__6966 =  ( n2812____DOLLAR__6790 ) == ( 8'd209 )  ;
assign n2857____DOLLAR__6970 =  ( n2812____DOLLAR__6790 ) == ( 8'd208 )  ;
assign n2858____DOLLAR__6974 =  ( n2812____DOLLAR__6790 ) == ( 8'd207 )  ;
assign n2859____DOLLAR__6978 =  ( n2812____DOLLAR__6790 ) == ( 8'd206 )  ;
assign n2860____DOLLAR__6982 =  ( n2812____DOLLAR__6790 ) == ( 8'd205 )  ;
assign n2861____DOLLAR__6986 =  ( n2812____DOLLAR__6790 ) == ( 8'd204 )  ;
assign n2862____DOLLAR__6990 =  ( n2812____DOLLAR__6790 ) == ( 8'd203 )  ;
assign n2863____DOLLAR__6994 =  ( n2812____DOLLAR__6790 ) == ( 8'd202 )  ;
assign n2864____DOLLAR__6998 =  ( n2812____DOLLAR__6790 ) == ( 8'd201 )  ;
assign n2865____DOLLAR__7002 =  ( n2812____DOLLAR__6790 ) == ( 8'd200 )  ;
assign n2866____DOLLAR__7006 =  ( n2812____DOLLAR__6790 ) == ( 8'd199 )  ;
assign n2867____DOLLAR__7010 =  ( n2812____DOLLAR__6790 ) == ( 8'd198 )  ;
assign n2868____DOLLAR__7014 =  ( n2812____DOLLAR__6790 ) == ( 8'd197 )  ;
assign n2869____DOLLAR__7018 =  ( n2812____DOLLAR__6790 ) == ( 8'd196 )  ;
assign n2870____DOLLAR__7022 =  ( n2812____DOLLAR__6790 ) == ( 8'd195 )  ;
assign n2871____DOLLAR__7026 =  ( n2812____DOLLAR__6790 ) == ( 8'd194 )  ;
assign n2872____DOLLAR__7030 =  ( n2812____DOLLAR__6790 ) == ( 8'd193 )  ;
assign n2873____DOLLAR__7034 =  ( n2812____DOLLAR__6790 ) == ( 8'd192 )  ;
assign n2874____DOLLAR__7038 =  ( n2812____DOLLAR__6790 ) == ( 8'd191 )  ;
assign n2875____DOLLAR__7042 =  ( n2812____DOLLAR__6790 ) == ( 8'd190 )  ;
assign n2876____DOLLAR__7046 =  ( n2812____DOLLAR__6790 ) == ( 8'd189 )  ;
assign n2877____DOLLAR__7050 =  ( n2812____DOLLAR__6790 ) == ( 8'd188 )  ;
assign n2878____DOLLAR__7054 =  ( n2812____DOLLAR__6790 ) == ( 8'd187 )  ;
assign n2879____DOLLAR__7058 =  ( n2812____DOLLAR__6790 ) == ( 8'd186 )  ;
assign n2880____DOLLAR__7062 =  ( n2812____DOLLAR__6790 ) == ( 8'd185 )  ;
assign n2881____DOLLAR__7066 =  ( n2812____DOLLAR__6790 ) == ( 8'd184 )  ;
assign n2882____DOLLAR__7070 =  ( n2812____DOLLAR__6790 ) == ( 8'd183 )  ;
assign n2883____DOLLAR__7074 =  ( n2812____DOLLAR__6790 ) == ( 8'd182 )  ;
assign n2884____DOLLAR__7078 =  ( n2812____DOLLAR__6790 ) == ( 8'd181 )  ;
assign n2885____DOLLAR__7082 =  ( n2812____DOLLAR__6790 ) == ( 8'd180 )  ;
assign n2886____DOLLAR__7086 =  ( n2812____DOLLAR__6790 ) == ( 8'd179 )  ;
assign n2887____DOLLAR__7090 =  ( n2812____DOLLAR__6790 ) == ( 8'd178 )  ;
assign n2888____DOLLAR__7094 =  ( n2812____DOLLAR__6790 ) == ( 8'd177 )  ;
assign n2889____DOLLAR__7098 =  ( n2812____DOLLAR__6790 ) == ( 8'd176 )  ;
assign n2890____DOLLAR__7102 =  ( n2812____DOLLAR__6790 ) == ( 8'd175 )  ;
assign n2891____DOLLAR__7106 =  ( n2812____DOLLAR__6790 ) == ( 8'd174 )  ;
assign n2892____DOLLAR__7110 =  ( n2812____DOLLAR__6790 ) == ( 8'd173 )  ;
assign n2893____DOLLAR__7114 =  ( n2812____DOLLAR__6790 ) == ( 8'd172 )  ;
assign n2894____DOLLAR__7118 =  ( n2812____DOLLAR__6790 ) == ( 8'd171 )  ;
assign n2895____DOLLAR__7122 =  ( n2812____DOLLAR__6790 ) == ( 8'd170 )  ;
assign n2896____DOLLAR__7126 =  ( n2812____DOLLAR__6790 ) == ( 8'd169 )  ;
assign n2897____DOLLAR__7130 =  ( n2812____DOLLAR__6790 ) == ( 8'd168 )  ;
assign n2898____DOLLAR__7134 =  ( n2812____DOLLAR__6790 ) == ( 8'd167 )  ;
assign n2899____DOLLAR__7138 =  ( n2812____DOLLAR__6790 ) == ( 8'd166 )  ;
assign n2900____DOLLAR__7142 =  ( n2812____DOLLAR__6790 ) == ( 8'd165 )  ;
assign n2901____DOLLAR__7146 =  ( n2812____DOLLAR__6790 ) == ( 8'd164 )  ;
assign n2902____DOLLAR__7150 =  ( n2812____DOLLAR__6790 ) == ( 8'd163 )  ;
assign n2903____DOLLAR__7154 =  ( n2812____DOLLAR__6790 ) == ( 8'd162 )  ;
assign n2904____DOLLAR__7158 =  ( n2812____DOLLAR__6790 ) == ( 8'd161 )  ;
assign n2905____DOLLAR__7162 =  ( n2812____DOLLAR__6790 ) == ( 8'd160 )  ;
assign n2906____DOLLAR__7166 =  ( n2812____DOLLAR__6790 ) == ( 8'd159 )  ;
assign n2907____DOLLAR__7170 =  ( n2812____DOLLAR__6790 ) == ( 8'd158 )  ;
assign n2908____DOLLAR__7174 =  ( n2812____DOLLAR__6790 ) == ( 8'd157 )  ;
assign n2909____DOLLAR__7178 =  ( n2812____DOLLAR__6790 ) == ( 8'd156 )  ;
assign n2910____DOLLAR__7182 =  ( n2812____DOLLAR__6790 ) == ( 8'd155 )  ;
assign n2911____DOLLAR__7186 =  ( n2812____DOLLAR__6790 ) == ( 8'd154 )  ;
assign n2912____DOLLAR__7190 =  ( n2812____DOLLAR__6790 ) == ( 8'd153 )  ;
assign n2913____DOLLAR__7194 =  ( n2812____DOLLAR__6790 ) == ( 8'd152 )  ;
assign n2914____DOLLAR__7198 =  ( n2812____DOLLAR__6790 ) == ( 8'd151 )  ;
assign n2915____DOLLAR__7202 =  ( n2812____DOLLAR__6790 ) == ( 8'd150 )  ;
assign n2916____DOLLAR__7206 =  ( n2812____DOLLAR__6790 ) == ( 8'd149 )  ;
assign n2917____DOLLAR__7210 =  ( n2812____DOLLAR__6790 ) == ( 8'd148 )  ;
assign n2918____DOLLAR__7214 =  ( n2812____DOLLAR__6790 ) == ( 8'd147 )  ;
assign n2919____DOLLAR__7218 =  ( n2812____DOLLAR__6790 ) == ( 8'd146 )  ;
assign n2920____DOLLAR__7222 =  ( n2812____DOLLAR__6790 ) == ( 8'd145 )  ;
assign n2921____DOLLAR__7226 =  ( n2812____DOLLAR__6790 ) == ( 8'd144 )  ;
assign n2922____DOLLAR__7230 =  ( n2812____DOLLAR__6790 ) == ( 8'd143 )  ;
assign n2923____DOLLAR__7234 =  ( n2812____DOLLAR__6790 ) == ( 8'd142 )  ;
assign n2924____DOLLAR__7238 =  ( n2812____DOLLAR__6790 ) == ( 8'd141 )  ;
assign n2925____DOLLAR__7242 =  ( n2812____DOLLAR__6790 ) == ( 8'd140 )  ;
assign n2926____DOLLAR__7246 =  ( n2812____DOLLAR__6790 ) == ( 8'd139 )  ;
assign n2927____DOLLAR__7250 =  ( n2812____DOLLAR__6790 ) == ( 8'd138 )  ;
assign n2928____DOLLAR__7254 =  ( n2812____DOLLAR__6790 ) == ( 8'd137 )  ;
assign n2929____DOLLAR__7258 =  ( n2812____DOLLAR__6790 ) == ( 8'd136 )  ;
assign n2930____DOLLAR__7262 =  ( n2812____DOLLAR__6790 ) == ( 8'd135 )  ;
assign n2931____DOLLAR__7266 =  ( n2812____DOLLAR__6790 ) == ( 8'd134 )  ;
assign n2932____DOLLAR__7270 =  ( n2812____DOLLAR__6790 ) == ( 8'd133 )  ;
assign n2933____DOLLAR__7274 =  ( n2812____DOLLAR__6790 ) == ( 8'd132 )  ;
assign n2934____DOLLAR__7278 =  ( n2812____DOLLAR__6790 ) == ( 8'd131 )  ;
assign n2935____DOLLAR__7282 =  ( n2812____DOLLAR__6790 ) == ( 8'd130 )  ;
assign n2936____DOLLAR__7286 =  ( n2812____DOLLAR__6790 ) == ( 8'd129 )  ;
assign n2937____DOLLAR__7290 =  ( n2812____DOLLAR__6790 ) == ( 8'd128 )  ;
assign n2938____DOLLAR__7294 =  ( n2812____DOLLAR__6790 ) == ( 8'd127 )  ;
assign n2939____DOLLAR__7298 =  ( n2812____DOLLAR__6790 ) == ( 8'd126 )  ;
assign n2940____DOLLAR__7302 =  ( n2812____DOLLAR__6790 ) == ( 8'd125 )  ;
assign n2941____DOLLAR__7306 =  ( n2812____DOLLAR__6790 ) == ( 8'd124 )  ;
assign n2942____DOLLAR__7310 =  ( n2812____DOLLAR__6790 ) == ( 8'd123 )  ;
assign n2943____DOLLAR__7314 =  ( n2812____DOLLAR__6790 ) == ( 8'd122 )  ;
assign n2944____DOLLAR__7318 =  ( n2812____DOLLAR__6790 ) == ( 8'd121 )  ;
assign n2945____DOLLAR__7322 =  ( n2812____DOLLAR__6790 ) == ( 8'd120 )  ;
assign n2946____DOLLAR__7326 =  ( n2812____DOLLAR__6790 ) == ( 8'd119 )  ;
assign n2947____DOLLAR__7330 =  ( n2812____DOLLAR__6790 ) == ( 8'd118 )  ;
assign n2948____DOLLAR__7334 =  ( n2812____DOLLAR__6790 ) == ( 8'd117 )  ;
assign n2949____DOLLAR__7338 =  ( n2812____DOLLAR__6790 ) == ( 8'd116 )  ;
assign n2950____DOLLAR__7342 =  ( n2812____DOLLAR__6790 ) == ( 8'd115 )  ;
assign n2951____DOLLAR__7346 =  ( n2812____DOLLAR__6790 ) == ( 8'd114 )  ;
assign n2952____DOLLAR__7350 =  ( n2812____DOLLAR__6790 ) == ( 8'd113 )  ;
assign n2953____DOLLAR__7354 =  ( n2812____DOLLAR__6790 ) == ( 8'd112 )  ;
assign n2954____DOLLAR__7358 =  ( n2812____DOLLAR__6790 ) == ( 8'd111 )  ;
assign n2955____DOLLAR__7362 =  ( n2812____DOLLAR__6790 ) == ( 8'd110 )  ;
assign n2956____DOLLAR__7366 =  ( n2812____DOLLAR__6790 ) == ( 8'd109 )  ;
assign n2957____DOLLAR__7370 =  ( n2812____DOLLAR__6790 ) == ( 8'd108 )  ;
assign n2958____DOLLAR__7374 =  ( n2812____DOLLAR__6790 ) == ( 8'd107 )  ;
assign n2959____DOLLAR__7378 =  ( n2812____DOLLAR__6790 ) == ( 8'd106 )  ;
assign n2960____DOLLAR__7382 =  ( n2812____DOLLAR__6790 ) == ( 8'd105 )  ;
assign n2961____DOLLAR__7386 =  ( n2812____DOLLAR__6790 ) == ( 8'd104 )  ;
assign n2962____DOLLAR__7390 =  ( n2812____DOLLAR__6790 ) == ( 8'd103 )  ;
assign n2963____DOLLAR__7394 =  ( n2812____DOLLAR__6790 ) == ( 8'd102 )  ;
assign n2964____DOLLAR__7398 =  ( n2812____DOLLAR__6790 ) == ( 8'd101 )  ;
assign n2965____DOLLAR__7402 =  ( n2812____DOLLAR__6790 ) == ( 8'd100 )  ;
assign n2966____DOLLAR__7406 =  ( n2812____DOLLAR__6790 ) == ( 8'd99 )  ;
assign n2967____DOLLAR__7410 =  ( n2812____DOLLAR__6790 ) == ( 8'd98 )  ;
assign n2968____DOLLAR__7414 =  ( n2812____DOLLAR__6790 ) == ( 8'd97 )  ;
assign n2969____DOLLAR__7418 =  ( n2812____DOLLAR__6790 ) == ( 8'd96 )  ;
assign n2970____DOLLAR__7422 =  ( n2812____DOLLAR__6790 ) == ( 8'd95 )  ;
assign n2971____DOLLAR__7426 =  ( n2812____DOLLAR__6790 ) == ( 8'd94 )  ;
assign n2972____DOLLAR__7430 =  ( n2812____DOLLAR__6790 ) == ( 8'd93 )  ;
assign n2973____DOLLAR__7434 =  ( n2812____DOLLAR__6790 ) == ( 8'd92 )  ;
assign n2974____DOLLAR__7438 =  ( n2812____DOLLAR__6790 ) == ( 8'd91 )  ;
assign n2975____DOLLAR__7442 =  ( n2812____DOLLAR__6790 ) == ( 8'd90 )  ;
assign n2976____DOLLAR__7446 =  ( n2812____DOLLAR__6790 ) == ( 8'd89 )  ;
assign n2977____DOLLAR__7450 =  ( n2812____DOLLAR__6790 ) == ( 8'd88 )  ;
assign n2978____DOLLAR__7454 =  ( n2812____DOLLAR__6790 ) == ( 8'd87 )  ;
assign n2979____DOLLAR__7458 =  ( n2812____DOLLAR__6790 ) == ( 8'd86 )  ;
assign n2980____DOLLAR__7462 =  ( n2812____DOLLAR__6790 ) == ( 8'd85 )  ;
assign n2981____DOLLAR__7466 =  ( n2812____DOLLAR__6790 ) == ( 8'd84 )  ;
assign n2982____DOLLAR__7470 =  ( n2812____DOLLAR__6790 ) == ( 8'd83 )  ;
assign n2983____DOLLAR__7474 =  ( n2812____DOLLAR__6790 ) == ( 8'd82 )  ;
assign n2984____DOLLAR__7478 =  ( n2812____DOLLAR__6790 ) == ( 8'd81 )  ;
assign n2985____DOLLAR__7482 =  ( n2812____DOLLAR__6790 ) == ( 8'd80 )  ;
assign n2986____DOLLAR__7486 =  ( n2812____DOLLAR__6790 ) == ( 8'd79 )  ;
assign n2987____DOLLAR__7490 =  ( n2812____DOLLAR__6790 ) == ( 8'd78 )  ;
assign n2988____DOLLAR__7494 =  ( n2812____DOLLAR__6790 ) == ( 8'd77 )  ;
assign n2989____DOLLAR__7498 =  ( n2812____DOLLAR__6790 ) == ( 8'd76 )  ;
assign n2990____DOLLAR__7502 =  ( n2812____DOLLAR__6790 ) == ( 8'd75 )  ;
assign n2991____DOLLAR__7506 =  ( n2812____DOLLAR__6790 ) == ( 8'd74 )  ;
assign n2992____DOLLAR__7510 =  ( n2812____DOLLAR__6790 ) == ( 8'd73 )  ;
assign n2993____DOLLAR__7514 =  ( n2812____DOLLAR__6790 ) == ( 8'd72 )  ;
assign n2994____DOLLAR__7518 =  ( n2812____DOLLAR__6790 ) == ( 8'd71 )  ;
assign n2995____DOLLAR__7522 =  ( n2812____DOLLAR__6790 ) == ( 8'd70 )  ;
assign n2996____DOLLAR__7526 =  ( n2812____DOLLAR__6790 ) == ( 8'd69 )  ;
assign n2997____DOLLAR__7530 =  ( n2812____DOLLAR__6790 ) == ( 8'd68 )  ;
assign n2998____DOLLAR__7534 =  ( n2812____DOLLAR__6790 ) == ( 8'd67 )  ;
assign n2999____DOLLAR__7538 =  ( n2812____DOLLAR__6790 ) == ( 8'd66 )  ;
assign n3000____DOLLAR__7542 =  ( n2812____DOLLAR__6790 ) == ( 8'd65 )  ;
assign n3001____DOLLAR__7546 =  ( n2812____DOLLAR__6790 ) == ( 8'd64 )  ;
assign n3002____DOLLAR__7550 =  ( n2812____DOLLAR__6790 ) == ( 8'd63 )  ;
assign n3003____DOLLAR__7554 =  ( n2812____DOLLAR__6790 ) == ( 8'd62 )  ;
assign n3004____DOLLAR__7558 =  ( n2812____DOLLAR__6790 ) == ( 8'd61 )  ;
assign n3005____DOLLAR__7562 =  ( n2812____DOLLAR__6790 ) == ( 8'd60 )  ;
assign n3006____DOLLAR__7566 =  ( n2812____DOLLAR__6790 ) == ( 8'd59 )  ;
assign n3007____DOLLAR__7570 =  ( n2812____DOLLAR__6790 ) == ( 8'd58 )  ;
assign n3008____DOLLAR__7574 =  ( n2812____DOLLAR__6790 ) == ( 8'd57 )  ;
assign n3009____DOLLAR__7578 =  ( n2812____DOLLAR__6790 ) == ( 8'd56 )  ;
assign n3010____DOLLAR__7582 =  ( n2812____DOLLAR__6790 ) == ( 8'd55 )  ;
assign n3011____DOLLAR__7586 =  ( n2812____DOLLAR__6790 ) == ( 8'd54 )  ;
assign n3012____DOLLAR__7590 =  ( n2812____DOLLAR__6790 ) == ( 8'd53 )  ;
assign n3013____DOLLAR__7594 =  ( n2812____DOLLAR__6790 ) == ( 8'd52 )  ;
assign n3014____DOLLAR__7598 =  ( n2812____DOLLAR__6790 ) == ( 8'd51 )  ;
assign n3015____DOLLAR__7602 =  ( n2812____DOLLAR__6790 ) == ( 8'd50 )  ;
assign n3016____DOLLAR__7606 =  ( n2812____DOLLAR__6790 ) == ( 8'd49 )  ;
assign n3017____DOLLAR__7610 =  ( n2812____DOLLAR__6790 ) == ( 8'd48 )  ;
assign n3018____DOLLAR__7614 =  ( n2812____DOLLAR__6790 ) == ( 8'd47 )  ;
assign n3019____DOLLAR__7618 =  ( n2812____DOLLAR__6790 ) == ( 8'd46 )  ;
assign n3020____DOLLAR__7622 =  ( n2812____DOLLAR__6790 ) == ( 8'd45 )  ;
assign n3021____DOLLAR__7626 =  ( n2812____DOLLAR__6790 ) == ( 8'd44 )  ;
assign n3022____DOLLAR__7630 =  ( n2812____DOLLAR__6790 ) == ( 8'd43 )  ;
assign n3023____DOLLAR__7634 =  ( n2812____DOLLAR__6790 ) == ( 8'd42 )  ;
assign n3024____DOLLAR__7638 =  ( n2812____DOLLAR__6790 ) == ( 8'd41 )  ;
assign n3025____DOLLAR__7642 =  ( n2812____DOLLAR__6790 ) == ( 8'd40 )  ;
assign n3026____DOLLAR__7646 =  ( n2812____DOLLAR__6790 ) == ( 8'd39 )  ;
assign n3027____DOLLAR__7650 =  ( n2812____DOLLAR__6790 ) == ( 8'd38 )  ;
assign n3028____DOLLAR__7654 =  ( n2812____DOLLAR__6790 ) == ( 8'd37 )  ;
assign n3029____DOLLAR__7658 =  ( n2812____DOLLAR__6790 ) == ( 8'd36 )  ;
assign n3030____DOLLAR__7662 =  ( n2812____DOLLAR__6790 ) == ( 8'd35 )  ;
assign n3031____DOLLAR__7666 =  ( n2812____DOLLAR__6790 ) == ( 8'd34 )  ;
assign n3032____DOLLAR__7670 =  ( n2812____DOLLAR__6790 ) == ( 8'd33 )  ;
assign n3033____DOLLAR__7674 =  ( n2812____DOLLAR__6790 ) == ( 8'd32 )  ;
assign n3034____DOLLAR__7678 =  ( n2812____DOLLAR__6790 ) == ( 8'd31 )  ;
assign n3035____DOLLAR__7682 =  ( n2812____DOLLAR__6790 ) == ( 8'd30 )  ;
assign n3036____DOLLAR__7686 =  ( n2812____DOLLAR__6790 ) == ( 8'd29 )  ;
assign n3037____DOLLAR__7690 =  ( n2812____DOLLAR__6790 ) == ( 8'd28 )  ;
assign n3038____DOLLAR__7694 =  ( n2812____DOLLAR__6790 ) == ( 8'd27 )  ;
assign n3039____DOLLAR__7698 =  ( n2812____DOLLAR__6790 ) == ( 8'd26 )  ;
assign n3040____DOLLAR__7702 =  ( n2812____DOLLAR__6790 ) == ( 8'd25 )  ;
assign n3041____DOLLAR__7706 =  ( n2812____DOLLAR__6790 ) == ( 8'd24 )  ;
assign n3042____DOLLAR__7710 =  ( n2812____DOLLAR__6790 ) == ( 8'd23 )  ;
assign n3043____DOLLAR__7714 =  ( n2812____DOLLAR__6790 ) == ( 8'd22 )  ;
assign n3044____DOLLAR__7718 =  ( n2812____DOLLAR__6790 ) == ( 8'd21 )  ;
assign n3045____DOLLAR__7722 =  ( n2812____DOLLAR__6790 ) == ( 8'd20 )  ;
assign n3046____DOLLAR__7726 =  ( n2812____DOLLAR__6790 ) == ( 8'd19 )  ;
assign n3047____DOLLAR__7730 =  ( n2812____DOLLAR__6790 ) == ( 8'd18 )  ;
assign n3048____DOLLAR__7734 =  ( n2812____DOLLAR__6790 ) == ( 8'd17 )  ;
assign n3049____DOLLAR__7738 =  ( n2812____DOLLAR__6790 ) == ( 8'd16 )  ;
assign n3050____DOLLAR__7742 =  ( n2812____DOLLAR__6790 ) == ( 8'd15 )  ;
assign n3051____DOLLAR__7746 =  ( n2812____DOLLAR__6790 ) == ( 8'd14 )  ;
assign n3052____DOLLAR__7750 =  ( n2812____DOLLAR__6790 ) == ( 8'd13 )  ;
assign n3053____DOLLAR__7754 =  ( n2812____DOLLAR__6790 ) == ( 8'd12 )  ;
assign n3054____DOLLAR__7758 =  ( n2812____DOLLAR__6790 ) == ( 8'd11 )  ;
assign n3055____DOLLAR__7762 =  ( n2812____DOLLAR__6790 ) == ( 8'd10 )  ;
assign n3056____DOLLAR__7766 =  ( n2812____DOLLAR__6790 ) == ( 8'd9 )  ;
assign n3057____DOLLAR__7770 =  ( n2812____DOLLAR__6790 ) == ( 8'd8 )  ;
assign n3058____DOLLAR__7774 =  ( n2812____DOLLAR__6790 ) == ( 8'd7 )  ;
assign n3059____DOLLAR__7778 =  ( n2812____DOLLAR__6790 ) == ( 8'd6 )  ;
assign n3060____DOLLAR__7782 =  ( n2812____DOLLAR__6790 ) == ( 8'd5 )  ;
assign n3061____DOLLAR__7786 =  ( n2812____DOLLAR__6790 ) == ( 8'd4 )  ;
assign n3062____DOLLAR__7790 =  ( n2812____DOLLAR__6790 ) == ( 8'd3 )  ;
assign n3063____DOLLAR__7794 =  ( n2812____DOLLAR__6790 ) == ( 8'd2 )  ;
assign n3064____DOLLAR__7798 =  ( n2812____DOLLAR__6790 ) == ( 8'd1 )  ;
assign n3065____DOLLAR__7800 =  ( n2812____DOLLAR__6790 ) == ( 8'd0 )  ;
assign n3066____DOLLAR__7802 =  ( n3064____DOLLAR__7798 ) | ( n3065____DOLLAR__7800 )  ;
assign n3067____DOLLAR__7803 =  ( n3063____DOLLAR__7794 ) | ( n3066____DOLLAR__7802 )  ;
assign n3068____DOLLAR__7804 =  ( n3062____DOLLAR__7790 ) | ( n3067____DOLLAR__7803 )  ;
assign n3069____DOLLAR__7805 =  ( n3061____DOLLAR__7786 ) | ( n3068____DOLLAR__7804 )  ;
assign n3070____DOLLAR__7806 =  ( n3060____DOLLAR__7782 ) | ( n3069____DOLLAR__7805 )  ;
assign n3071____DOLLAR__7807 =  ( n3059____DOLLAR__7778 ) | ( n3070____DOLLAR__7806 )  ;
assign n3072____DOLLAR__7808 =  ( n3058____DOLLAR__7774 ) | ( n3071____DOLLAR__7807 )  ;
assign n3073____DOLLAR__7809 =  ( n3057____DOLLAR__7770 ) | ( n3072____DOLLAR__7808 )  ;
assign n3074____DOLLAR__7810 =  ( n3056____DOLLAR__7766 ) | ( n3073____DOLLAR__7809 )  ;
assign n3075____DOLLAR__7811 =  ( n3055____DOLLAR__7762 ) | ( n3074____DOLLAR__7810 )  ;
assign n3076____DOLLAR__7812 =  ( n3054____DOLLAR__7758 ) | ( n3075____DOLLAR__7811 )  ;
assign n3077____DOLLAR__7813 =  ( n3053____DOLLAR__7754 ) | ( n3076____DOLLAR__7812 )  ;
assign n3078____DOLLAR__7814 =  ( n3052____DOLLAR__7750 ) | ( n3077____DOLLAR__7813 )  ;
assign n3079____DOLLAR__7815 =  ( n3051____DOLLAR__7746 ) | ( n3078____DOLLAR__7814 )  ;
assign n3080____DOLLAR__7816 =  ( n3050____DOLLAR__7742 ) | ( n3079____DOLLAR__7815 )  ;
assign n3081____DOLLAR__7817 =  ( n3049____DOLLAR__7738 ) | ( n3080____DOLLAR__7816 )  ;
assign n3082____DOLLAR__7818 =  ( n3048____DOLLAR__7734 ) | ( n3081____DOLLAR__7817 )  ;
assign n3083____DOLLAR__7819 =  ( n3047____DOLLAR__7730 ) | ( n3082____DOLLAR__7818 )  ;
assign n3084____DOLLAR__7820 =  ( n3046____DOLLAR__7726 ) | ( n3083____DOLLAR__7819 )  ;
assign n3085____DOLLAR__7821 =  ( n3045____DOLLAR__7722 ) | ( n3084____DOLLAR__7820 )  ;
assign n3086____DOLLAR__7822 =  ( n3044____DOLLAR__7718 ) | ( n3085____DOLLAR__7821 )  ;
assign n3087____DOLLAR__7823 =  ( n3043____DOLLAR__7714 ) | ( n3086____DOLLAR__7822 )  ;
assign n3088____DOLLAR__7824 =  ( n3042____DOLLAR__7710 ) | ( n3087____DOLLAR__7823 )  ;
assign n3089____DOLLAR__7825 =  ( n3041____DOLLAR__7706 ) | ( n3088____DOLLAR__7824 )  ;
assign n3090____DOLLAR__7826 =  ( n3040____DOLLAR__7702 ) | ( n3089____DOLLAR__7825 )  ;
assign n3091____DOLLAR__7827 =  ( n3039____DOLLAR__7698 ) | ( n3090____DOLLAR__7826 )  ;
assign n3092____DOLLAR__7828 =  ( n3038____DOLLAR__7694 ) | ( n3091____DOLLAR__7827 )  ;
assign n3093____DOLLAR__7829 =  ( n3037____DOLLAR__7690 ) | ( n3092____DOLLAR__7828 )  ;
assign n3094____DOLLAR__7830 =  ( n3036____DOLLAR__7686 ) | ( n3093____DOLLAR__7829 )  ;
assign n3095____DOLLAR__7831 =  ( n3035____DOLLAR__7682 ) | ( n3094____DOLLAR__7830 )  ;
assign n3096____DOLLAR__7832 =  ( n3034____DOLLAR__7678 ) | ( n3095____DOLLAR__7831 )  ;
assign n3097____DOLLAR__7833 =  ( n3033____DOLLAR__7674 ) | ( n3096____DOLLAR__7832 )  ;
assign n3098____DOLLAR__7834 =  ( n3032____DOLLAR__7670 ) | ( n3097____DOLLAR__7833 )  ;
assign n3099____DOLLAR__7835 =  ( n3031____DOLLAR__7666 ) | ( n3098____DOLLAR__7834 )  ;
assign n3100____DOLLAR__7836 =  ( n3030____DOLLAR__7662 ) | ( n3099____DOLLAR__7835 )  ;
assign n3101____DOLLAR__7837 =  ( n3029____DOLLAR__7658 ) | ( n3100____DOLLAR__7836 )  ;
assign n3102____DOLLAR__7838 =  ( n3028____DOLLAR__7654 ) | ( n3101____DOLLAR__7837 )  ;
assign n3103____DOLLAR__7839 =  ( n3027____DOLLAR__7650 ) | ( n3102____DOLLAR__7838 )  ;
assign n3104____DOLLAR__7840 =  ( n3026____DOLLAR__7646 ) | ( n3103____DOLLAR__7839 )  ;
assign n3105____DOLLAR__7841 =  ( n3025____DOLLAR__7642 ) | ( n3104____DOLLAR__7840 )  ;
assign n3106____DOLLAR__7842 =  ( n3024____DOLLAR__7638 ) | ( n3105____DOLLAR__7841 )  ;
assign n3107____DOLLAR__7843 =  ( n3023____DOLLAR__7634 ) | ( n3106____DOLLAR__7842 )  ;
assign n3108____DOLLAR__7844 =  ( n3022____DOLLAR__7630 ) | ( n3107____DOLLAR__7843 )  ;
assign n3109____DOLLAR__7845 =  ( n3021____DOLLAR__7626 ) | ( n3108____DOLLAR__7844 )  ;
assign n3110____DOLLAR__7846 =  ( n3020____DOLLAR__7622 ) | ( n3109____DOLLAR__7845 )  ;
assign n3111____DOLLAR__7847 =  ( n3019____DOLLAR__7618 ) | ( n3110____DOLLAR__7846 )  ;
assign n3112____DOLLAR__7848 =  ( n3018____DOLLAR__7614 ) | ( n3111____DOLLAR__7847 )  ;
assign n3113____DOLLAR__7849 =  ( n3017____DOLLAR__7610 ) | ( n3112____DOLLAR__7848 )  ;
assign n3114____DOLLAR__7850 =  ( n3016____DOLLAR__7606 ) | ( n3113____DOLLAR__7849 )  ;
assign n3115____DOLLAR__7851 =  ( n3015____DOLLAR__7602 ) | ( n3114____DOLLAR__7850 )  ;
assign n3116____DOLLAR__7852 =  ( n3014____DOLLAR__7598 ) | ( n3115____DOLLAR__7851 )  ;
assign n3117____DOLLAR__7853 =  ( n3013____DOLLAR__7594 ) | ( n3116____DOLLAR__7852 )  ;
assign n3118____DOLLAR__7854 =  ( n3012____DOLLAR__7590 ) | ( n3117____DOLLAR__7853 )  ;
assign n3119____DOLLAR__7855 =  ( n3011____DOLLAR__7586 ) | ( n3118____DOLLAR__7854 )  ;
assign n3120____DOLLAR__7856 =  ( n3010____DOLLAR__7582 ) | ( n3119____DOLLAR__7855 )  ;
assign n3121____DOLLAR__7857 =  ( n3009____DOLLAR__7578 ) | ( n3120____DOLLAR__7856 )  ;
assign n3122____DOLLAR__7858 =  ( n3008____DOLLAR__7574 ) | ( n3121____DOLLAR__7857 )  ;
assign n3123____DOLLAR__7859 =  ( n3007____DOLLAR__7570 ) | ( n3122____DOLLAR__7858 )  ;
assign n3124____DOLLAR__7860 =  ( n3006____DOLLAR__7566 ) | ( n3123____DOLLAR__7859 )  ;
assign n3125____DOLLAR__7861 =  ( n3005____DOLLAR__7562 ) | ( n3124____DOLLAR__7860 )  ;
assign n3126____DOLLAR__7862 =  ( n3004____DOLLAR__7558 ) | ( n3125____DOLLAR__7861 )  ;
assign n3127____DOLLAR__7863 =  ( n3003____DOLLAR__7554 ) | ( n3126____DOLLAR__7862 )  ;
assign n3128____DOLLAR__7864 =  ( n3002____DOLLAR__7550 ) | ( n3127____DOLLAR__7863 )  ;
assign n3129____DOLLAR__7865 =  ( n3001____DOLLAR__7546 ) | ( n3128____DOLLAR__7864 )  ;
assign n3130____DOLLAR__7866 =  ( n3000____DOLLAR__7542 ) | ( n3129____DOLLAR__7865 )  ;
assign n3131____DOLLAR__7867 =  ( n2999____DOLLAR__7538 ) | ( n3130____DOLLAR__7866 )  ;
assign n3132____DOLLAR__7868 =  ( n2998____DOLLAR__7534 ) | ( n3131____DOLLAR__7867 )  ;
assign n3133____DOLLAR__7869 =  ( n2997____DOLLAR__7530 ) | ( n3132____DOLLAR__7868 )  ;
assign n3134____DOLLAR__7870 =  ( n2996____DOLLAR__7526 ) | ( n3133____DOLLAR__7869 )  ;
assign n3135____DOLLAR__7871 =  ( n2995____DOLLAR__7522 ) | ( n3134____DOLLAR__7870 )  ;
assign n3136____DOLLAR__7872 =  ( n2994____DOLLAR__7518 ) | ( n3135____DOLLAR__7871 )  ;
assign n3137____DOLLAR__7873 =  ( n2993____DOLLAR__7514 ) | ( n3136____DOLLAR__7872 )  ;
assign n3138____DOLLAR__7874 =  ( n2992____DOLLAR__7510 ) | ( n3137____DOLLAR__7873 )  ;
assign n3139____DOLLAR__7875 =  ( n2991____DOLLAR__7506 ) | ( n3138____DOLLAR__7874 )  ;
assign n3140____DOLLAR__7876 =  ( n2990____DOLLAR__7502 ) | ( n3139____DOLLAR__7875 )  ;
assign n3141____DOLLAR__7877 =  ( n2989____DOLLAR__7498 ) | ( n3140____DOLLAR__7876 )  ;
assign n3142____DOLLAR__7878 =  ( n2988____DOLLAR__7494 ) | ( n3141____DOLLAR__7877 )  ;
assign n3143____DOLLAR__7879 =  ( n2987____DOLLAR__7490 ) | ( n3142____DOLLAR__7878 )  ;
assign n3144____DOLLAR__7880 =  ( n2986____DOLLAR__7486 ) | ( n3143____DOLLAR__7879 )  ;
assign n3145____DOLLAR__7881 =  ( n2985____DOLLAR__7482 ) | ( n3144____DOLLAR__7880 )  ;
assign n3146____DOLLAR__7882 =  ( n2984____DOLLAR__7478 ) | ( n3145____DOLLAR__7881 )  ;
assign n3147____DOLLAR__7883 =  ( n2983____DOLLAR__7474 ) | ( n3146____DOLLAR__7882 )  ;
assign n3148____DOLLAR__7884 =  ( n2982____DOLLAR__7470 ) | ( n3147____DOLLAR__7883 )  ;
assign n3149____DOLLAR__7885 =  ( n2981____DOLLAR__7466 ) | ( n3148____DOLLAR__7884 )  ;
assign n3150____DOLLAR__7886 =  ( n2980____DOLLAR__7462 ) | ( n3149____DOLLAR__7885 )  ;
assign n3151____DOLLAR__7887 =  ( n2979____DOLLAR__7458 ) | ( n3150____DOLLAR__7886 )  ;
assign n3152____DOLLAR__7888 =  ( n2978____DOLLAR__7454 ) | ( n3151____DOLLAR__7887 )  ;
assign n3153____DOLLAR__7889 =  ( n2977____DOLLAR__7450 ) | ( n3152____DOLLAR__7888 )  ;
assign n3154____DOLLAR__7890 =  ( n2976____DOLLAR__7446 ) | ( n3153____DOLLAR__7889 )  ;
assign n3155____DOLLAR__7891 =  ( n2975____DOLLAR__7442 ) | ( n3154____DOLLAR__7890 )  ;
assign n3156____DOLLAR__7892 =  ( n2974____DOLLAR__7438 ) | ( n3155____DOLLAR__7891 )  ;
assign n3157____DOLLAR__7893 =  ( n2973____DOLLAR__7434 ) | ( n3156____DOLLAR__7892 )  ;
assign n3158____DOLLAR__7894 =  ( n2972____DOLLAR__7430 ) | ( n3157____DOLLAR__7893 )  ;
assign n3159____DOLLAR__7895 =  ( n2971____DOLLAR__7426 ) | ( n3158____DOLLAR__7894 )  ;
assign n3160____DOLLAR__7896 =  ( n2970____DOLLAR__7422 ) | ( n3159____DOLLAR__7895 )  ;
assign n3161____DOLLAR__7897 =  ( n2969____DOLLAR__7418 ) | ( n3160____DOLLAR__7896 )  ;
assign n3162____DOLLAR__7898 =  ( n2968____DOLLAR__7414 ) | ( n3161____DOLLAR__7897 )  ;
assign n3163____DOLLAR__7899 =  ( n2967____DOLLAR__7410 ) | ( n3162____DOLLAR__7898 )  ;
assign n3164____DOLLAR__7900 =  ( n2966____DOLLAR__7406 ) | ( n3163____DOLLAR__7899 )  ;
assign n3165____DOLLAR__7901 =  ( n2965____DOLLAR__7402 ) | ( n3164____DOLLAR__7900 )  ;
assign n3166____DOLLAR__7902 =  ( n2964____DOLLAR__7398 ) | ( n3165____DOLLAR__7901 )  ;
assign n3167____DOLLAR__7903 =  ( n2963____DOLLAR__7394 ) | ( n3166____DOLLAR__7902 )  ;
assign n3168____DOLLAR__7904 =  ( n2962____DOLLAR__7390 ) | ( n3167____DOLLAR__7903 )  ;
assign n3169____DOLLAR__7905 =  ( n2961____DOLLAR__7386 ) | ( n3168____DOLLAR__7904 )  ;
assign n3170____DOLLAR__7906 =  ( n2960____DOLLAR__7382 ) | ( n3169____DOLLAR__7905 )  ;
assign n3171____DOLLAR__7907 =  ( n2959____DOLLAR__7378 ) | ( n3170____DOLLAR__7906 )  ;
assign n3172____DOLLAR__7908 =  ( n2958____DOLLAR__7374 ) | ( n3171____DOLLAR__7907 )  ;
assign n3173____DOLLAR__7909 =  ( n2957____DOLLAR__7370 ) | ( n3172____DOLLAR__7908 )  ;
assign n3174____DOLLAR__7910 =  ( n2956____DOLLAR__7366 ) | ( n3173____DOLLAR__7909 )  ;
assign n3175____DOLLAR__7911 =  ( n2955____DOLLAR__7362 ) | ( n3174____DOLLAR__7910 )  ;
assign n3176____DOLLAR__7912 =  ( n2954____DOLLAR__7358 ) | ( n3175____DOLLAR__7911 )  ;
assign n3177____DOLLAR__7913 =  ( n2953____DOLLAR__7354 ) | ( n3176____DOLLAR__7912 )  ;
assign n3178____DOLLAR__7914 =  ( n2952____DOLLAR__7350 ) | ( n3177____DOLLAR__7913 )  ;
assign n3179____DOLLAR__7915 =  ( n2951____DOLLAR__7346 ) | ( n3178____DOLLAR__7914 )  ;
assign n3180____DOLLAR__7916 =  ( n2950____DOLLAR__7342 ) | ( n3179____DOLLAR__7915 )  ;
assign n3181____DOLLAR__7917 =  ( n2949____DOLLAR__7338 ) | ( n3180____DOLLAR__7916 )  ;
assign n3182____DOLLAR__7918 =  ( n2948____DOLLAR__7334 ) | ( n3181____DOLLAR__7917 )  ;
assign n3183____DOLLAR__7919 =  ( n2947____DOLLAR__7330 ) | ( n3182____DOLLAR__7918 )  ;
assign n3184____DOLLAR__7920 =  ( n2946____DOLLAR__7326 ) | ( n3183____DOLLAR__7919 )  ;
assign n3185____DOLLAR__7921 =  ( n2945____DOLLAR__7322 ) | ( n3184____DOLLAR__7920 )  ;
assign n3186____DOLLAR__7922 =  ( n2944____DOLLAR__7318 ) | ( n3185____DOLLAR__7921 )  ;
assign n3187____DOLLAR__7923 =  ( n2943____DOLLAR__7314 ) | ( n3186____DOLLAR__7922 )  ;
assign n3188____DOLLAR__7924 =  ( n2942____DOLLAR__7310 ) | ( n3187____DOLLAR__7923 )  ;
assign n3189____DOLLAR__7925 =  ( n2941____DOLLAR__7306 ) | ( n3188____DOLLAR__7924 )  ;
assign n3190____DOLLAR__7926 =  ( n2940____DOLLAR__7302 ) | ( n3189____DOLLAR__7925 )  ;
assign n3191____DOLLAR__7927 =  ( n2939____DOLLAR__7298 ) | ( n3190____DOLLAR__7926 )  ;
assign n3192____DOLLAR__7928 =  ( n2938____DOLLAR__7294 ) | ( n3191____DOLLAR__7927 )  ;
assign n3193____DOLLAR__7929 =  ( n2937____DOLLAR__7290 ) | ( n3192____DOLLAR__7928 )  ;
assign n3194____DOLLAR__7930 =  ( n2936____DOLLAR__7286 ) | ( n3193____DOLLAR__7929 )  ;
assign n3195____DOLLAR__7931 =  ( n2935____DOLLAR__7282 ) | ( n3194____DOLLAR__7930 )  ;
assign n3196____DOLLAR__7932 =  ( n2934____DOLLAR__7278 ) | ( n3195____DOLLAR__7931 )  ;
assign n3197____DOLLAR__7933 =  ( n2933____DOLLAR__7274 ) | ( n3196____DOLLAR__7932 )  ;
assign n3198____DOLLAR__7934 =  ( n2932____DOLLAR__7270 ) | ( n3197____DOLLAR__7933 )  ;
assign n3199____DOLLAR__7935 =  ( n2931____DOLLAR__7266 ) | ( n3198____DOLLAR__7934 )  ;
assign n3200____DOLLAR__7936 =  ( n2930____DOLLAR__7262 ) | ( n3199____DOLLAR__7935 )  ;
assign n3201____DOLLAR__7937 =  ( n2929____DOLLAR__7258 ) | ( n3200____DOLLAR__7936 )  ;
assign n3202____DOLLAR__7938 =  ( n2928____DOLLAR__7254 ) | ( n3201____DOLLAR__7937 )  ;
assign n3203____DOLLAR__7939 =  ( n2927____DOLLAR__7250 ) | ( n3202____DOLLAR__7938 )  ;
assign n3204____DOLLAR__7940 =  ( n2926____DOLLAR__7246 ) | ( n3203____DOLLAR__7939 )  ;
assign n3205____DOLLAR__7941 =  ( n2925____DOLLAR__7242 ) | ( n3204____DOLLAR__7940 )  ;
assign n3206____DOLLAR__7942 =  ( n2924____DOLLAR__7238 ) | ( n3205____DOLLAR__7941 )  ;
assign n3207____DOLLAR__7943 =  ( n2923____DOLLAR__7234 ) | ( n3206____DOLLAR__7942 )  ;
assign n3208____DOLLAR__7944 =  ( n2922____DOLLAR__7230 ) | ( n3207____DOLLAR__7943 )  ;
assign n3209____DOLLAR__7945 =  ( n2921____DOLLAR__7226 ) | ( n3208____DOLLAR__7944 )  ;
assign n3210____DOLLAR__7946 =  ( n2920____DOLLAR__7222 ) | ( n3209____DOLLAR__7945 )  ;
assign n3211____DOLLAR__7947 =  ( n2919____DOLLAR__7218 ) | ( n3210____DOLLAR__7946 )  ;
assign n3212____DOLLAR__7948 =  ( n2918____DOLLAR__7214 ) | ( n3211____DOLLAR__7947 )  ;
assign n3213____DOLLAR__7949 =  ( n2917____DOLLAR__7210 ) | ( n3212____DOLLAR__7948 )  ;
assign n3214____DOLLAR__7950 =  ( n2916____DOLLAR__7206 ) | ( n3213____DOLLAR__7949 )  ;
assign n3215____DOLLAR__7951 =  ( n2915____DOLLAR__7202 ) | ( n3214____DOLLAR__7950 )  ;
assign n3216____DOLLAR__7952 =  ( n2914____DOLLAR__7198 ) | ( n3215____DOLLAR__7951 )  ;
assign n3217____DOLLAR__7953 =  ( n2913____DOLLAR__7194 ) | ( n3216____DOLLAR__7952 )  ;
assign n3218____DOLLAR__7954 =  ( n2912____DOLLAR__7190 ) | ( n3217____DOLLAR__7953 )  ;
assign n3219____DOLLAR__7955 =  ( n2911____DOLLAR__7186 ) | ( n3218____DOLLAR__7954 )  ;
assign n3220____DOLLAR__7956 =  ( n2910____DOLLAR__7182 ) | ( n3219____DOLLAR__7955 )  ;
assign n3221____DOLLAR__7957 =  ( n2909____DOLLAR__7178 ) | ( n3220____DOLLAR__7956 )  ;
assign n3222____DOLLAR__7958 =  ( n2908____DOLLAR__7174 ) | ( n3221____DOLLAR__7957 )  ;
assign n3223____DOLLAR__7959 =  ( n2907____DOLLAR__7170 ) | ( n3222____DOLLAR__7958 )  ;
assign n3224____DOLLAR__7960 =  ( n2906____DOLLAR__7166 ) | ( n3223____DOLLAR__7959 )  ;
assign n3225____DOLLAR__7961 =  ( n2905____DOLLAR__7162 ) | ( n3224____DOLLAR__7960 )  ;
assign n3226____DOLLAR__7962 =  ( n2904____DOLLAR__7158 ) | ( n3225____DOLLAR__7961 )  ;
assign n3227____DOLLAR__7963 =  ( n2903____DOLLAR__7154 ) | ( n3226____DOLLAR__7962 )  ;
assign n3228____DOLLAR__7964 =  ( n2902____DOLLAR__7150 ) | ( n3227____DOLLAR__7963 )  ;
assign n3229____DOLLAR__7965 =  ( n2901____DOLLAR__7146 ) | ( n3228____DOLLAR__7964 )  ;
assign n3230____DOLLAR__7966 =  ( n2900____DOLLAR__7142 ) | ( n3229____DOLLAR__7965 )  ;
assign n3231____DOLLAR__7967 =  ( n2899____DOLLAR__7138 ) | ( n3230____DOLLAR__7966 )  ;
assign n3232____DOLLAR__7968 =  ( n2898____DOLLAR__7134 ) | ( n3231____DOLLAR__7967 )  ;
assign n3233____DOLLAR__7969 =  ( n2897____DOLLAR__7130 ) | ( n3232____DOLLAR__7968 )  ;
assign n3234____DOLLAR__7970 =  ( n2896____DOLLAR__7126 ) | ( n3233____DOLLAR__7969 )  ;
assign n3235____DOLLAR__7971 =  ( n2895____DOLLAR__7122 ) | ( n3234____DOLLAR__7970 )  ;
assign n3236____DOLLAR__7972 =  ( n2894____DOLLAR__7118 ) | ( n3235____DOLLAR__7971 )  ;
assign n3237____DOLLAR__7973 =  ( n2893____DOLLAR__7114 ) | ( n3236____DOLLAR__7972 )  ;
assign n3238____DOLLAR__7974 =  ( n2892____DOLLAR__7110 ) | ( n3237____DOLLAR__7973 )  ;
assign n3239____DOLLAR__7975 =  ( n2891____DOLLAR__7106 ) | ( n3238____DOLLAR__7974 )  ;
assign n3240____DOLLAR__7976 =  ( n2890____DOLLAR__7102 ) | ( n3239____DOLLAR__7975 )  ;
assign n3241____DOLLAR__7977 =  ( n2889____DOLLAR__7098 ) | ( n3240____DOLLAR__7976 )  ;
assign n3242____DOLLAR__7978 =  ( n2888____DOLLAR__7094 ) | ( n3241____DOLLAR__7977 )  ;
assign n3243____DOLLAR__7979 =  ( n2887____DOLLAR__7090 ) | ( n3242____DOLLAR__7978 )  ;
assign n3244____DOLLAR__7980 =  ( n2886____DOLLAR__7086 ) | ( n3243____DOLLAR__7979 )  ;
assign n3245____DOLLAR__7981 =  ( n2885____DOLLAR__7082 ) | ( n3244____DOLLAR__7980 )  ;
assign n3246____DOLLAR__7982 =  ( n2884____DOLLAR__7078 ) | ( n3245____DOLLAR__7981 )  ;
assign n3247____DOLLAR__7983 =  ( n2883____DOLLAR__7074 ) | ( n3246____DOLLAR__7982 )  ;
assign n3248____DOLLAR__7984 =  ( n2882____DOLLAR__7070 ) | ( n3247____DOLLAR__7983 )  ;
assign n3249____DOLLAR__7985 =  ( n2881____DOLLAR__7066 ) | ( n3248____DOLLAR__7984 )  ;
assign n3250____DOLLAR__7986 =  ( n2880____DOLLAR__7062 ) | ( n3249____DOLLAR__7985 )  ;
assign n3251____DOLLAR__7987 =  ( n2879____DOLLAR__7058 ) | ( n3250____DOLLAR__7986 )  ;
assign n3252____DOLLAR__7988 =  ( n2878____DOLLAR__7054 ) | ( n3251____DOLLAR__7987 )  ;
assign n3253____DOLLAR__7989 =  ( n2877____DOLLAR__7050 ) | ( n3252____DOLLAR__7988 )  ;
assign n3254____DOLLAR__7990 =  ( n2876____DOLLAR__7046 ) | ( n3253____DOLLAR__7989 )  ;
assign n3255____DOLLAR__7991 =  ( n2875____DOLLAR__7042 ) | ( n3254____DOLLAR__7990 )  ;
assign n3256____DOLLAR__7992 =  ( n2874____DOLLAR__7038 ) | ( n3255____DOLLAR__7991 )  ;
assign n3257____DOLLAR__7993 =  ( n2873____DOLLAR__7034 ) | ( n3256____DOLLAR__7992 )  ;
assign n3258____DOLLAR__7994 =  ( n2872____DOLLAR__7030 ) | ( n3257____DOLLAR__7993 )  ;
assign n3259____DOLLAR__7995 =  ( n2871____DOLLAR__7026 ) | ( n3258____DOLLAR__7994 )  ;
assign n3260____DOLLAR__7996 =  ( n2870____DOLLAR__7022 ) | ( n3259____DOLLAR__7995 )  ;
assign n3261____DOLLAR__7997 =  ( n2869____DOLLAR__7018 ) | ( n3260____DOLLAR__7996 )  ;
assign n3262____DOLLAR__7998 =  ( n2868____DOLLAR__7014 ) | ( n3261____DOLLAR__7997 )  ;
assign n3263____DOLLAR__7999 =  ( n2867____DOLLAR__7010 ) | ( n3262____DOLLAR__7998 )  ;
assign n3264____DOLLAR__8000 =  ( n2866____DOLLAR__7006 ) | ( n3263____DOLLAR__7999 )  ;
assign n3265____DOLLAR__8001 =  ( n2865____DOLLAR__7002 ) | ( n3264____DOLLAR__8000 )  ;
assign n3266____DOLLAR__8002 =  ( n2864____DOLLAR__6998 ) | ( n3265____DOLLAR__8001 )  ;
assign n3267____DOLLAR__8003 =  ( n2863____DOLLAR__6994 ) | ( n3266____DOLLAR__8002 )  ;
assign n3268____DOLLAR__8004 =  ( n2862____DOLLAR__6990 ) | ( n3267____DOLLAR__8003 )  ;
assign n3269____DOLLAR__8005 =  ( n2861____DOLLAR__6986 ) | ( n3268____DOLLAR__8004 )  ;
assign n3270____DOLLAR__8006 =  ( n2860____DOLLAR__6982 ) | ( n3269____DOLLAR__8005 )  ;
assign n3271____DOLLAR__8007 =  ( n2859____DOLLAR__6978 ) | ( n3270____DOLLAR__8006 )  ;
assign n3272____DOLLAR__8008 =  ( n2858____DOLLAR__6974 ) | ( n3271____DOLLAR__8007 )  ;
assign n3273____DOLLAR__8009 =  ( n2857____DOLLAR__6970 ) | ( n3272____DOLLAR__8008 )  ;
assign n3274____DOLLAR__8010 =  ( n2856____DOLLAR__6966 ) | ( n3273____DOLLAR__8009 )  ;
assign n3275____DOLLAR__8011 =  ( n2855____DOLLAR__6962 ) | ( n3274____DOLLAR__8010 )  ;
assign n3276____DOLLAR__8012 =  ( n2854____DOLLAR__6958 ) | ( n3275____DOLLAR__8011 )  ;
assign n3277____DOLLAR__8013 =  ( n2853____DOLLAR__6954 ) | ( n3276____DOLLAR__8012 )  ;
assign n3278____DOLLAR__8014 =  ( n2852____DOLLAR__6950 ) | ( n3277____DOLLAR__8013 )  ;
assign n3279____DOLLAR__8015 =  ( n2851____DOLLAR__6946 ) | ( n3278____DOLLAR__8014 )  ;
assign n3280____DOLLAR__8016 =  ( n2850____DOLLAR__6942 ) | ( n3279____DOLLAR__8015 )  ;
assign n3281____DOLLAR__8017 =  ( n2849____DOLLAR__6938 ) | ( n3280____DOLLAR__8016 )  ;
assign n3282____DOLLAR__8018 =  ( n2848____DOLLAR__6934 ) | ( n3281____DOLLAR__8017 )  ;
assign n3283____DOLLAR__8019 =  ( n2847____DOLLAR__6930 ) | ( n3282____DOLLAR__8018 )  ;
assign n3284____DOLLAR__8020 =  ( n2846____DOLLAR__6926 ) | ( n3283____DOLLAR__8019 )  ;
assign n3285____DOLLAR__8021 =  ( n2845____DOLLAR__6922 ) | ( n3284____DOLLAR__8020 )  ;
assign n3286____DOLLAR__8022 =  ( n2844____DOLLAR__6918 ) | ( n3285____DOLLAR__8021 )  ;
assign n3287____DOLLAR__8023 =  ( n2843____DOLLAR__6914 ) | ( n3286____DOLLAR__8022 )  ;
assign n3288____DOLLAR__8024 =  ( n2842____DOLLAR__6910 ) | ( n3287____DOLLAR__8023 )  ;
assign n3289____DOLLAR__8025 =  ( n2841____DOLLAR__6906 ) | ( n3288____DOLLAR__8024 )  ;
assign n3290____DOLLAR__8026 =  ( n2840____DOLLAR__6902 ) | ( n3289____DOLLAR__8025 )  ;
assign n3291____DOLLAR__8027 =  ( n2839____DOLLAR__6898 ) | ( n3290____DOLLAR__8026 )  ;
assign n3292____DOLLAR__8028 =  ( n2838____DOLLAR__6894 ) | ( n3291____DOLLAR__8027 )  ;
assign n3293____DOLLAR__8029 =  ( n2837____DOLLAR__6890 ) | ( n3292____DOLLAR__8028 )  ;
assign n3294____DOLLAR__8030 =  ( n2836____DOLLAR__6886 ) | ( n3293____DOLLAR__8029 )  ;
assign n3295____DOLLAR__8031 =  ( n2835____DOLLAR__6882 ) | ( n3294____DOLLAR__8030 )  ;
assign n3296____DOLLAR__8032 =  ( n2834____DOLLAR__6878 ) | ( n3295____DOLLAR__8031 )  ;
assign n3297____DOLLAR__8033 =  ( n2833____DOLLAR__6874 ) | ( n3296____DOLLAR__8032 )  ;
assign n3298____DOLLAR__8034 =  ( n2832____DOLLAR__6870 ) | ( n3297____DOLLAR__8033 )  ;
assign n3299____DOLLAR__8035 =  ( n2831____DOLLAR__6866 ) | ( n3298____DOLLAR__8034 )  ;
assign n3300____DOLLAR__8036 =  ( n2830____DOLLAR__6862 ) | ( n3299____DOLLAR__8035 )  ;
assign n3301____DOLLAR__8037 =  ( n2829____DOLLAR__6858 ) | ( n3300____DOLLAR__8036 )  ;
assign n3302____DOLLAR__8038 =  ( n2828____DOLLAR__6854 ) | ( n3301____DOLLAR__8037 )  ;
assign n3303____DOLLAR__8039 =  ( n2827____DOLLAR__6850 ) | ( n3302____DOLLAR__8038 )  ;
assign n3304____DOLLAR__8040 =  ( n2826____DOLLAR__6846 ) | ( n3303____DOLLAR__8039 )  ;
assign n3305____DOLLAR__8041 =  ( n2825____DOLLAR__6842 ) | ( n3304____DOLLAR__8040 )  ;
assign n3306____DOLLAR__8042 =  ( n2824____DOLLAR__6838 ) | ( n3305____DOLLAR__8041 )  ;
assign n3307____DOLLAR__8043 =  ( n2823____DOLLAR__6834 ) | ( n3306____DOLLAR__8042 )  ;
assign n3308____DOLLAR__8044 =  ( n2822____DOLLAR__6830 ) | ( n3307____DOLLAR__8043 )  ;
assign n3309____DOLLAR__8045 =  ( n2821____DOLLAR__6826 ) | ( n3308____DOLLAR__8044 )  ;
assign n3310____DOLLAR__8046 =  ( n2820____DOLLAR__6822 ) | ( n3309____DOLLAR__8045 )  ;
assign n3311____DOLLAR__8047 =  ( n2819____DOLLAR__6818 ) | ( n3310____DOLLAR__8046 )  ;
assign n3312____DOLLAR__8048 =  ( n2818____DOLLAR__6814 ) | ( n3311____DOLLAR__8047 )  ;
assign n3313____DOLLAR__8049 =  ( n2817____DOLLAR__6810 ) | ( n3312____DOLLAR__8048 )  ;
assign n3314____DOLLAR__8050 =  ( n2816____DOLLAR__6806 ) | ( n3313____DOLLAR__8049 )  ;
assign n3315____DOLLAR__8051 =  ( n2815____DOLLAR__6802 ) | ( n3314____DOLLAR__8050 )  ;
assign n3316____DOLLAR__8052 =  ( n2814____DOLLAR__6798 ) | ( n3315____DOLLAR__8051 )  ;
assign n3317____DOLLAR__8053 =  ( n2813____DOLLAR__6794 ) | ( n3316____DOLLAR__8052 )  ;
assign n3318____DOLLAR__8056 =  ( n3317____DOLLAR__8053 ) ? ( 8'd0 ) : ( XRAM_DATA_OUT ) ;
assign n3319____DOLLAR__8057 =  ( n2809____DOLLAR__6789 ) ? ( ACC ) : ( n3318____DOLLAR__8056 ) ;
always @(posedge clk) begin
   if(rst) begin
       ACC <= ACC_randinit ;
       B <= B_randinit ;
       DPH <= DPH_randinit ;
       DPL <= DPL_randinit ;
       IE <= IE_randinit ;
       IP <= IP_randinit ;
       P0 <= P0_randinit ;
       P1 <= P1_randinit ;
       P2 <= P2_randinit ;
       P3 <= P3_randinit ;
       PC <= PC_randinit ;
       PCON <= PCON_randinit ;
       PSW <= PSW_randinit ;
       SBUF <= SBUF_randinit ;
       SCON <= SCON_randinit ;
       SP <= SP_randinit ;
       TCON <= TCON_randinit ;
       TH0 <= TH0_randinit ;
       TH1 <= TH1_randinit ;
       TL0 <= TL0_randinit ;
       TL1 <= TL1_randinit ;
       TMOD <= TMOD_randinit ;
       XRAM_ADDR <= XRAM_ADDR_randinit ;
       XRAM_DATA_IN <= XRAM_DATA_IN_randinit ;
       XRAM_DATA_OUT <= XRAM_DATA_OUT_randinit ;
       __COUNTER_start__n4 <= 0;
   end
   else if(__START__ && __ILA_oc8051_valid__) begin
       if ( __ILA_oc8051_decode_of_I__DOT__0__ ) begin 
           __COUNTER_start__n4 <= 1; end
       else if( (__COUNTER_start__n4 >= 1 ) && ( __COUNTER_start__n4 < 255 )) begin
           __COUNTER_start__n4 <= __COUNTER_start__n4 + 1; end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           ACC <= ACC ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           B <= B ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           DPH <= DPH ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           DPL <= n469____DOLLAR__1232 ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           IE <= IE ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           IP <= IP ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           P0 <= P0 ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           P1 <= P1 ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           P2 <= P2 ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           P3 <= n931____DOLLAR__2392 ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           PC <= n1477____DOLLAR__3701 ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           PCON <= PCON ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           PSW <= PSW ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           SBUF <= SBUF ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           SCON <= SCON ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           SP <= n2262____DOLLAR__5421 ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           TCON <= TCON ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           TH0 <= TH0 ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           TH1 <= TH1 ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           TL0 <= TL0 ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           TL1 <= TL1 ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           TMOD <= TMOD ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           XRAM_ADDR <= n2801____DOLLAR__6773 ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           XRAM_DATA_IN <= XRAM_DATA_IN ;
       end
       if (__ILA_oc8051_decode_of_I__DOT__0__) begin
           XRAM_DATA_OUT <= n3319____DOLLAR__8057 ;
       end
   end
end
endmodule

//////////////////////////////////////////////////////////////////////
//// 								  ////
//// alu for 8051 Core 						  ////
//// 								  ////
//// This file is part of the 8051 cores project 		  ////
//// http://www.opencores.org/cores/8051/ 			  ////
//// 								  ////
//// Description 						  ////
//// Implementation of aritmetic unit  according to 		  ////
//// 8051 IP core specification document. Uses divide.v and 	  ////
//// multiply.v							  ////
//// 								  ////
//// To Do: 							  ////
////  pc signed add                                               ////
//// 								  ////
//// Author(s): 						  ////
//// - Simon Teran, simont@opencores.org 			  ////
//// 								  ////
//////////////////////////////////////////////////////////////////////
//// 								  ////
//// Copyright (C) 2001 Authors and OPENCORES.ORG 		  ////
//// 								  ////
//// This source file may be used and distributed without 	  ////
//// restriction provided that this copyright statement is not 	  ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
//// 								  ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version. 						  ////
//// 								  ////
//// This source is distributed in the hope that it will be 	  ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR 	  ////
//// PURPOSE. See the GNU Lesser General Public License for more  ////
//// details. 							  ////
//// 								  ////
//// You should have received a copy of the GNU Lesser General 	  ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml 			  ////
//// 								  ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.18  2003/07/01 18:51:11  simont
// x replaced with 0.
//
// Revision 1.17  2003/06/09 16:51:16  simont
// fix bug in DA operation.
//
// Revision 1.16  2003/06/03 17:15:06  simont
// sub_result output added.
//
// Revision 1.15  2003/05/07 12:31:53  simont
// add wire sub_result, conect it to des_acc and des1.
//
// Revision 1.14  2003/05/05 15:46:36  simont
// add aditional alu destination to solve critical path.
//
// Revision 1.13  2003/04/29 08:35:12  simont
// fix bug in substraction.
//
// Revision 1.12  2003/04/25 17:15:51  simont
// change branch instruction execution (reduse needed clock periods).
//
// Revision 1.11  2003/04/14 14:29:42  simont
// fiz bug iv pcs operation.
//
// Revision 1.10  2003/01/13 14:14:40  simont
// replace some modules
//
// Revision 1.9  2002/09/30 17:33:59  simont
// prepared header
//
//

// synopsys translate_off
`include "oc8051_timescale.v"
// synopsys translate_on

`include "oc8051_defines.v"

`define OC8051_PORTS  //ports global enable
`define OC8051_PORT0
`define OC8051_PORT1
`define OC8051_PORT2
`define OC8051_PORT3

module oc8051_alu (clk, rst, op_code, src1, src2, src3, srcCy, srcAc, bit_in, 
                  des1, des2, des_acc, desCy, desAc, desOv, sub_result);
//
// op_code      (in)  operation code [oc8051_decoder.alu_op -r]
// src1         (in)  first operand [oc8051_alu_src1_sel.des]
// src2         (in)  second operand [oc8051_alu_src2_sel.des]
// src3         (in)  third operand [oc8051_alu_src3_sel.des]
// srcCy        (in)  carry input [oc8051_cy_select.data_out]
// srcAc        (in)  auxiliary carry input [oc8051_psw.data_out[6] ]
// bit_in       (in)  bit input, used for logic operatins on bits [oc8051_ram_sel.bit_out]
// des1         (out)
// des2         (out)
// desCy        (out) carry output [oc8051_ram_top.bit_data_in, oc8051_acc.bit_in, oc8051_b_register.bit_in, oc8051_psw.cy_in, oc8051_ports.bit_in]
// desAc        (out) auxiliary carry output [oc8051_psw.ac_in]
// desOv        (out) Overflow output [oc8051_psw.ov_in]
//

input        srcCy, srcAc, bit_in, clk, rst;
input  [3:0] op_code;
input  [7:0] src1, src2, src3;
output       desCy, desAc, desOv;
output [7:0] des1, des2, des_acc, sub_result;

reg desCy, desAc, desOv;
reg [7:0] des1, des2, des_acc;


//
//add
//
wire [4:0] add1, add2, add3, add4;
wire [3:0] add5, add6, add7, add8;
wire [1:0] add9, adda, addb, addc;

//
//sub
//
wire [4:0] sub1, sub2, sub3, sub4;
wire [3:0] sub5, sub6, sub7, sub8;
wire [1:0] sub9, suba, subb, subc;
wire [7:0] sub_result;

//
//mul
//
  wire [7:0] mulsrc1, mulsrc2;
  wire mulOv;
  reg enable_mul;

//
//div
//
wire [7:0] divsrc1,divsrc2;
wire divOv;
reg enable_div;

//
//da
//
reg da_tmp, da_tmp1;
//reg [8:0] da1;

//
// inc
//
wire [15:0] inc, dec;

oc8051_multiply oc8051_mul1(.clk(clk), .rst(rst), .enable(enable_mul), .src1(src1), .src2(src2), .des1(mulsrc1), .des2(mulsrc2), .desOv(mulOv));
oc8051_divide oc8051_div1(.clk(clk), .rst(rst), .enable(enable_div), .src1(src1), .src2(src2), .des1(divsrc1), .des2(divsrc2), .desOv(divOv));

/* Add */
assign add1 = {1'b0,src1[3:0]};
assign add2 = {1'b0,src2[3:0]};
assign add3 = {3'b000,srcCy};
assign add4 = add1+add2+add3;

assign add5 = {1'b0,src1[6:4]};
assign add6 = {1'b0,src2[6:4]};
assign add7 = {1'b0,1'b0,1'b0,add4[4]};
assign add8 = add5+add6+add7;

assign add9 = {1'b0,src1[7]};
assign adda = {1'b0,src2[7]};
assign addb = {1'b0,add8[3]};
assign addc = add9+adda+addb;

/* Sub */
assign sub1 = {1'b1,src1[3:0]};
assign sub2 = {1'b0,src2[3:0]};
assign sub3 = {1'b0,1'b0,1'b0,srcCy};
assign sub4 = sub1-sub2-sub3;

assign sub5 = {1'b1,src1[6:4]};
assign sub6 = {1'b0,src2[6:4]};
assign sub7 = {1'b0,1'b0,1'b0, !sub4[4]};
assign sub8 = sub5-sub6-sub7;

assign sub9 = {1'b1,src1[7]};
assign suba = {1'b0,src2[7]};
assign subb = {1'b0,!sub8[3]};
assign subc = sub9-suba-subb;

assign sub_result = {subc[0],sub8[2:0],sub4[3:0]};

/* inc */
assign inc = {src2, src1} + {15'h0, 1'b1};
assign dec = {src2, src1} - {15'h0, 1'b1};

always @(op_code or src1 or src2 or srcCy or srcAc or bit_in or src3 or mulsrc1
      or mulsrc2 or mulOv or divsrc1 or divsrc2 or divOv or addc or add8 or add4
      or sub4 or sub8 or subc or da_tmp or inc or dec or sub_result)
begin

  case (op_code) 
//operation add
    `OC8051_ALU_ADD: begin
      des_acc = {addc[0],add8[2:0],add4[3:0]};
      des1 = src1;
      des2 = src3+ {7'b0, addc[1]};
      desCy = addc[1];
      desAc = add4[4];
      desOv = addc[1] ^ add8[3];

      enable_mul = 1'b0;
      enable_div = 1'b0;
    end
//operation subtract
    `OC8051_ALU_SUB: begin
      des_acc = sub_result;
//      des1 = sub_result;
      des1 = 8'h00;
      des2 = 8'h00;
      desCy = !subc[1];
      desAc = !sub4[4];
      desOv = !subc[1] ^ !sub8[3];

      enable_mul = 1'b0;
      enable_div = 1'b0;
    end
//operation multiply
    `OC8051_ALU_MUL: begin
      des_acc = mulsrc1;
      des1 = src1;
      des2 = mulsrc2;
      desOv = mulOv;
      desCy = 1'b0;
      desAc = 1'b0;
      enable_mul = 1'b1;
      enable_div = 1'b0;
    end
//operation divide
    `OC8051_ALU_DIV: begin
      des_acc = divsrc1;
      des1 = src1;
      des2 = divsrc2;
      desOv = divOv;
      desAc = 1'b0;
      desCy = 1'b0;
      enable_mul = 1'b0;
      enable_div = 1'b1;
    end
//operation decimal adjustment
    `OC8051_ALU_DA: begin

      if (srcAc==1'b1 | src1[3:0]>4'b1001) {da_tmp, des_acc[3:0]} = {1'b0, src1[3:0]}+ 5'b00110;
      else {da_tmp, des_acc[3:0]} = {1'b0, src1[3:0]};

      if (srcCy | da_tmp | src1[7:4]>4'b1001)
        {da_tmp1, des_acc[7:4]} = {srcCy, src1[7:4]}+ 5'b00110 + {4'b0, da_tmp};
      else {da_tmp1, des_acc[7:4]} = {srcCy, src1[7:4]} + {4'b0, da_tmp};

      desCy = da_tmp | da_tmp1;
      des1 = src1;
      des2 = 8'h00;
      desAc = 1'b0;
      desOv = 1'b0;
      enable_mul = 1'b0;
      enable_div = 1'b0;
    end
//operation not
// bit operation not
    `OC8051_ALU_NOT: begin
      des_acc = ~src1;
      des1 = ~src1;
      des2 = 8'h00;
      desCy = !srcCy;
      desAc = 1'b0;
      desOv = 1'b0;
      enable_mul = 1'b0;
      enable_div = 1'b0;
    end
//operation and
//bit operation and
    `OC8051_ALU_AND: begin
      des_acc = src1 & src2;
      des1 = src1 & src2;
      des2 = 8'h00;
      desCy = srcCy & bit_in;
      desAc = 1'b0;
      desOv = 1'b0;
      enable_mul = 1'b0;
      enable_div = 1'b0;
    end
//operation xor
// bit operation xor
    `OC8051_ALU_XOR: begin
      des_acc = src1 ^ src2;
      des1 = src1 ^ src2;
      des2 = 8'h00;
      desCy = srcCy ^ bit_in;
      desAc = 1'b0;
      desOv = 1'b0;
      enable_mul = 1'b0;
      enable_div = 1'b0;
    end
//operation or
// bit operation or
    `OC8051_ALU_OR: begin
      des_acc = src1 | src2;
      des1 = src1 | src2;
      des2 = 8'h00;
      desCy = srcCy | bit_in;
      desAc = 1'b0;
      desOv = 1'b0;
      enable_mul = 1'b0;
      enable_div = 1'b0;
    end
//operation rotate left
// bit operation cy= cy or (not ram)
    `OC8051_ALU_RL: begin
      des_acc = {src1[6:0], src1[7]};
      des1 = src1 ;
      des2 = 8'h00;
      desCy = srcCy | !bit_in;
      desAc = 1'b0;
      desOv = 1'b0;
      enable_mul = 1'b0;
      enable_div = 1'b0;
    end
//operation rotate left with carry and swap nibbles
    `OC8051_ALU_RLC: begin
      des_acc = {src1[6:0], srcCy};
      des1 = src1 ;
      des2 = {src1[3:0], src1[7:4]};
      desCy = src1[7];
      desAc = 1'b0;
      desOv = 1'b0;
      enable_mul = 1'b0;
      enable_div = 1'b0;
    end
//operation rotate right
    `OC8051_ALU_RR: begin
      des_acc = {src1[0], src1[7:1]};
      des1 = src1 ;
      des2 = 8'h00;
      desCy = srcCy & !bit_in;
      desAc = 1'b0;
      desOv = 1'b0;
      enable_mul = 1'b0;
      enable_div = 1'b0;
    end
//operation rotate right with carry
    `OC8051_ALU_RRC: begin
      des_acc = {srcCy, src1[7:1]};
      des1 = src1 ;
      des2 = 8'h00;
      desCy = src1[0];
      desAc = 1'b0;
      desOv = 1'b0;
      enable_mul = 1'b0;
      enable_div = 1'b0;
    end
//operation pcs Add
    `OC8051_ALU_INC: begin
      if (srcCy) begin
        des_acc = dec[7:0];
	des1 = dec[7:0];
        des2 = dec[15:8];
      end else begin
        des_acc = inc[7:0];
	des1 = inc[7:0];
        des2 = inc[15:8];
      end
      desCy = 1'b0;
      desAc = 1'b0;
      desOv = 1'b0;
      enable_mul = 1'b0;
      enable_div = 1'b0;
    end
//operation exchange
//if carry = 0 exchange low order digit
    `OC8051_ALU_XCH: begin
      if (srcCy)
      begin
        des_acc = src2;
        des1 = src2;
        des2 = src1;
      end else begin
        des_acc = {src1[7:4],src2[3:0]};
        des1 = {src1[7:4],src2[3:0]};
        des2 = {src2[7:4],src1[3:0]};
      end
      desCy = 1'b0;
      desAc = 1'b0;
      desOv = 1'b0;
      enable_mul = 1'b0;
      enable_div = 1'b0;
    end
    `OC8051_ALU_NOP: begin
      des_acc = src1;
      des1 = src1;
      des2 = src2;
      desCy = srcCy;
      desAc = srcAc;
      desOv = 1'b0;
      enable_mul = 1'b0;
      enable_div = 1'b0;
    end
  endcase
end

endmodule
//////////////////////////////////////////////////////////////////////
////                                                              ////
////  8051 alu source select module                               ////
////                                                              ////
////  This file is part of the 8051 cores project                 ////
////  http://www.opencores.org/cores/8051/                        ////
////                                                              ////
////  Description                                                 ////
////   Multiplexer wiht whitch we select data on alu sources      ////
////                                                              ////
////  To Do:                                                      ////
////   nothing                                                    ////
////                                                              ////
////  Author(s):                                                  ////
////      - Simon Teran, simont@opencores.org                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.3  2003/06/03 17:13:57  simont
// remove pc_r register.
//
// Revision 1.2  2003/05/06 09:41:35  simont
// remove define OC8051_AS2_PCL, chane signal src_sel2 to 2 bit wide.
//
// Revision 1.1  2003/01/13 14:13:12  simont
// initial import
//
//
//

module oc8051_alu_src_sel (clk, rst, rd, sel1, sel2, sel3,
                     acc, ram, pc, dptr,

                     op1, op2, op3,

                     src1, src2, src3);


input clk, rst, rd, sel3;
input [1:0] sel2;
input [2:0] sel1;
input [7:0] acc, ram;
input [15:0] dptr;
input [15:0] pc;


input [7:0] op1, op2, op3;

output [7:0] src1, src2, src3;

reg [7:0] src1, src2, src3;

reg [7:0] op1_r, op2_r, op3_r;

///////
//
// src1
//
///////
always @(sel1 or op1_r or op2_r or op3_r or pc or acc or ram)
begin
  case (sel1) 
    `OC8051_AS1_RAM: src1 = ram;
    `OC8051_AS1_ACC: src1 = acc;
    `OC8051_AS1_OP1: src1 = op1_r;
    `OC8051_AS1_OP2: src1 = op2_r;
    `OC8051_AS1_OP3: src1 = op3_r;
    `OC8051_AS1_PCH: src1 = pc[15:8];
    `OC8051_AS1_PCL: src1 = pc[7:0];
    // spramod: changed this to make this a full case statement to avoid
    // inferring the latch.
    default: src1 = 8'h00;
  endcase
end

///////
//
// src2
//
///////
always @(sel2 or op2_r or acc or ram or op1_r)
begin
  case (sel2) 
    `OC8051_AS2_ACC: src2= acc;
    `OC8051_AS2_ZERO: src2= 8'h00;
    `OC8051_AS2_RAM: src2= ram;
    `OC8051_AS2_OP2: src2= op2_r;
//    default: src2= 8'h00;
  endcase
end

///////
//
// src3
//
///////

always @(sel3 or pc[15:8] or dptr[15:8] or op1_r)
begin
  case (sel3) 
    `OC8051_AS3_DP:   src3= dptr[15:8];
    `OC8051_AS3_PC:   src3= pc[15:8];
//    default: src3= 16'h0;
  endcase
end


always @(posedge clk)// or posedge rst)
  if (rst) begin
    op1_r <= #1 8'h00;
    op2_r <= #1 8'h00;
    op3_r <= #1 8'h00;
  end else begin
    op1_r <= #1 op1;
    op2_r <= #1 op2;
    op3_r <= #1 op3;
  end

endmodule
//////////////////////////////////////////////////////////////////////
////                                                              ////
////  8051 compare                                                ////
////                                                              ////
////  This file is part of the 8051 cores project                 ////
////  http://www.opencores.org/cores/8051/                        ////
////                                                              ////
////  Description                                                 ////
////   compares selected inputs and set eq to 1 if they are equal ////
////   Is used for conditional jumps.                             ////
////                                                              ////
////  To Do:                                                      ////
////   replace CSS_AZ with CSS_DES                                ////
////                                                              ////
////  Author(s):                                                  ////
////      - Simon Teran, simont@opencores.org                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.7  2003/04/25 17:15:51  simont
// change branch instruction execution (reduse needed clock periods).
//
// Revision 1.6  2003/04/02 11:26:21  simont
// updating...
//
// Revision 1.5  2002/09/30 17:33:59  simont
// prepared header
//
//


module oc8051_comp (sel, b_in, cy, acc, des, /*comp_wait, */eq);
//
// sel          (in)  select whithc sourses to compare (look defines.v) [oc8051_decoder.comp_sel]
// b_in         (in)  bit in - output from bit addressable memory space [oc8051_ram_sel.bit_out]
// cy           (in)  carry flag [oc8051_psw.data_out[7] ]
// acc          (in)  accumulator [oc8051_acc.data_out]
// ram          (in)  input from ram [oc8051_ram_sel.out_data]
// op2          (in)  immediate data [oc8051_op_select.op2_out -r]
// des          (in)  destination from alu [oc8051_alu.des1 -r]
// eq           (out) if (src1 == src2) eq = 1  [oc8051_decoder.eq]
//


input [1:0] sel;
input b_in, cy/*, comp_wait*/;
input [7:0] acc, des;

output eq;

reg eq_r;

assign eq = eq_r;// & comp_wait;


always @(sel or b_in or cy or acc or des)
begin
  case (sel) 
    `OC8051_CSS_AZ  : eq_r = (acc == 8'h00);
    `OC8051_CSS_DES : eq_r = (des == 8'h00);
    `OC8051_CSS_CY  : eq_r = cy;
    `OC8051_CSS_BIT : eq_r = b_in;
  endcase
end

endmodule
//////////////////////////////////////////////////////////////////////
////                                                              ////
////  8051 alu carry select module                                ////
////                                                              ////
////  This file is part of the 8051 cores project                 ////
////  http://www.opencores.org/cores/8051/                        ////
////                                                              ////
////  Description                                                 ////
////   Multiplexer wiht whitch we select carry in alu             ////
////                                                              ////
////  To Do:                                                      ////
////   nothing                                                    ////
////                                                              ////
////  Author(s):                                                  ////
////      - Simon Teran, simont@opencores.org                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.3  2003/04/02 11:26:21  simont
// updating...
//
// Revision 1.2  2002/09/30 17:33:59  simont
// prepared header


module oc8051_cy_select (cy_sel, cy_in, data_in, data_out);
//
// cy_sel       (in)  carry select, from decoder (see defines.v) [oc8051_decoder.cy_sel -r]
// cy_in        (in)  carry input [oc8051_psw.data_out[7] ]
// data_in      (in)  ram data input [oc8051_ram_sel.bit_out]
// data_out     (out) data output [oc8051_alu.srcCy]
//

input [1:0] cy_sel;
input cy_in, data_in;

output data_out;
reg data_out;

always @(cy_sel or cy_in or data_in)
begin
  case (cy_sel) 
    `OC8051_CY_0: data_out = 1'b0;
    `OC8051_CY_PSW: data_out = cy_in;
    `OC8051_CY_RAM: data_out = data_in;
    `OC8051_CY_1: data_out = 1'b1;
  endcase
end

endmodule
//////////////////////////////////////////////////////////////////////
////                                                              ////
////  8051 core decoder                                           ////
////                                                              ////
////  This file is part of the 8051 cores project                 ////
////  http://www.opencores.org/cores/8051/                        ////
////                                                              ////
////  Description                                                 ////
////   Main 8051 core module. decodes instruction and creates     ////
////   control sigals.                                            ////
////                                                              ////
////  To Do:                                                      ////
////   optimize state machine, especially IDS ASS and AS3         ////
////                                                              ////
////  Author(s):                                                  ////
////      - Simon Teran, simont@opencores.org                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.21  2003/06/03 17:09:57  simont
// pipelined acces to axternal instruction interface added.
//
// Revision 1.20  2003/05/06 11:10:38  simont
// optimize state machine.
//
// Revision 1.19  2003/05/06 09:41:35  simont
// remove define OC8051_AS2_PCL, chane signal src_sel2 to 2 bit wide.
//
// Revision 1.18  2003/05/05 15:46:36  simont
// add aditional alu destination to solve critical path.
//
// Revision 1.17  2003/04/25 17:15:51  simont
// change branch instruction execution (reduse needed clock periods).
//
// Revision 1.16  2003/04/09 16:24:03  simont
// change wr_sft to 2 bit wire.
//
// Revision 1.15  2003/04/09 15:49:42  simont
// Register oc8051_sfr dato output, add signal wait_data.
//
// Revision 1.14  2003/01/13 14:14:40  simont
// replace some modules
//
// Revision 1.13  2002/10/23 16:53:39  simont
// fix bugs in instruction interface
//
// Revision 1.12  2002/10/17 18:50:00  simont
// cahnge interface to instruction rom
//
// Revision 1.11  2002/09/30 17:33:59  simont
// prepared header
//
//


module oc8051_decoder (clk, rst, 
  irom_out_of_rst, new_valid_pc,
  op_cur,
  op_in, op1_c,
  ram_rd_sel_o, ram_wr_sel_o,
  bit_addr, wr_o, wr_sfr_o,
  src_sel1, src_sel2, src_sel3,
  alu_op_o, psw_set, eq, cy_sel, comp_sel,
  pc_wr, pc_sel, rd, rmw, istb, mem_act, mem_wait,
  wait_data, state);

//
// clk          (in)  clock
// rst          (in)  reset
// irom_out_of_rst 
//              (in) has the IROM started producing useful instructions? 
//                   this goes high some number of cycles after reset and stays high forever.
// op_in        (in)  operation code [oc8051_op_select.op1]
// eq           (in)  compare result [oc8051_comp.eq]
// ram_rd_sel   (out) select, whitch address will be send to ram for read [oc8051_ram_rd_sel.sel, oc8051_sp.ram_rd_sel]
// ram_wr_sel   (out) select, whitch address will be send to ram for write [oc8051_ram_wr_sel.sel -r, oc8051_sp.ram_wr_sel -r]
// wr           (out) write - if 1 then we will write to ram [oc8051_ram_top.wr -r, oc8051_acc.wr -r, oc8051_b_register.wr -r, oc8051_sp.wr-r, oc8051_dptr.wr -r, oc8051_psw.wr -r, oc8051_indi_addr.wr -r, oc8051_ports.wr -r]
// src_sel1     (out) select alu source 1 [oc8051_alu_src1_sel.sel -r]
// src_sel2     (out) select alu source 2 [oc8051_alu_src2_sel.sel -r]
// src_sel3     (out) select alu source 3 [oc8051_alu_src3_sel.sel -r]
// alu_op       (out) alu operation [oc8051_alu.op_code -r]
// psw_set      (out) will we remember cy, ac, ov from alu [oc8051_psw.set -r]
// cy_sel       (out) carry in alu select [oc8051_cy_select.cy_sel -r]
// comp_sel     (out) compare source select [oc8051_comp.sel]
// bit_addr     (out) if instruction is bit addresable [oc8051_ram_top.bit_addr -r, oc8051_acc.wr_bit -r, oc8051_b_register.wr_bit-r, oc8051_sp.wr_bit -r, oc8051_dptr.wr_bit -r, oc8051_psw.wr_bit -r, oc8051_indi_addr.wr_bit -r, oc8051_ports.wr_bit -r]
// pc_wr        (out) pc write [oc8051_pc.wr]
// pc_sel       (out) pc select [oc8051_pc.pc_wr_sel]
// rd           (out) read from rom [oc8051_pc.rd, oc8051_op_select.rd]
// reti         (out) return from interrupt [pin]
// rmw          (out) read modify write feature [oc8051_ports.rmw]
// pc_wait      (out)
//

input clk, rst, eq, mem_wait, wait_data;
input [7:0] op_in;

input irom_out_of_rst;
output new_valid_pc;
output [7:0] op_cur;
output [1:0] state;


output wr_o, bit_addr, pc_wr, rmw, istb, src_sel3;
output [1:0] psw_set, cy_sel, wr_sfr_o, src_sel2, comp_sel;
output [2:0] mem_act, src_sel1, ram_rd_sel_o, ram_wr_sel_o, pc_sel, op1_c;
output [3:0] alu_op_o;
output rd;

reg rmw;
reg src_sel3, wr,  bit_addr, pc_wr;
reg [3:0] alu_op;
reg [1:0] src_sel2, comp_sel, psw_set, cy_sel, wr_sfr;
reg [2:0] mem_act, src_sel1, ram_wr_sel, ram_rd_sel, pc_sel;

//
// state        if 2'b00 then normal execution, sle instructin that need more than one clock
// op           instruction buffer
reg  [1:0] state;
wire [1:0] state_dec;
reg  [7:0] op;
wire [7:0] op_cur;
reg  [2:0] ram_rd_sel_r;

reg stb_i;

assign rd = !state[0] && !state[1] && !wait_data;// && !stb_o;

assign istb = (!state[1]) && stb_i;

assign state_dec = wait_data ? 2'b00 : state;

assign op_cur = mem_wait ? 8'h00
                : (state[0] || state[1] || mem_wait || wait_data) ? op : op_in;
//assign op_cur = (state[0] || state[1] || mem_wait || wait_data) ? op : op_in;

wire new_valid_pc = (!mem_wait && !(state[0] || state[1] || mem_wait || wait_data)) && irom_out_of_rst;

assign op1_c = op_cur[2:0];

assign alu_op_o     = wait_data ? `OC8051_ALU_NOP : alu_op;
assign wr_sfr_o     = wait_data ? `OC8051_WRS_N   : wr_sfr;
assign ram_rd_sel_o = wait_data ? ram_rd_sel_r    : ram_rd_sel;
assign ram_wr_sel_o = wait_data ? `OC8051_RWS_DC  : ram_wr_sel;
assign wr_o         = wait_data ? 1'b0            : wr;

//
// main block
// unregisterd outputs
always @(op_cur or eq or state_dec or mem_wait)
begin
    case (state_dec) 
      2'b01: begin
        casex (op_cur) 
          `OC8051_DIV : begin
              ram_rd_sel = `OC8051_RRS_B;
            end
          `OC8051_MUL : begin
              ram_rd_sel = `OC8051_RRS_B;
            end
          default begin
              ram_rd_sel = `OC8051_RRS_DC;
          end
        endcase
        stb_i = 1'b1;
        bit_addr = 1'b0;
        pc_wr = `OC8051_PCW_N;
        pc_sel = `OC8051_PIS_DC;
        comp_sel =  `OC8051_CSS_DC;
        rmw = `OC8051_RMW_N;
      end
      2'b10: begin
        casex (op_cur) 
          `OC8051_SJMP : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_Y;
              pc_sel = `OC8051_PIS_SO1;
              comp_sel =  `OC8051_CSS_DC;
              bit_addr = 1'b0;
            end
          `OC8051_JC : begin
              ram_rd_sel = `OC8051_RRS_PSW;
              pc_wr = eq;
              pc_sel = `OC8051_PIS_SO1;
              comp_sel =  `OC8051_CSS_CY;
              bit_addr = 1'b0;
            end
          `OC8051_JNC : begin
              ram_rd_sel = `OC8051_RRS_PSW;
              pc_wr = !eq;
              pc_sel = `OC8051_PIS_SO1;
              comp_sel =  `OC8051_CSS_CY;
              bit_addr = 1'b0;
            end
          `OC8051_JNZ : begin
              ram_rd_sel = `OC8051_RRS_ACC;
              pc_wr = !eq;
              pc_sel = `OC8051_PIS_SO1;
              comp_sel =  `OC8051_CSS_AZ;
              bit_addr = 1'b0;
            end
          `OC8051_JZ : begin
              ram_rd_sel = `OC8051_RRS_ACC;
              pc_wr = eq;
              pc_sel = `OC8051_PIS_SO1;
              comp_sel =  `OC8051_CSS_AZ;
              bit_addr = 1'b0;
            end

          `OC8051_RET : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_Y;
              pc_sel = `OC8051_PIS_AL;
              comp_sel =  `OC8051_CSS_DC;
              bit_addr = 1'b0;
            end
          `OC8051_RETI : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_Y;
              pc_sel = `OC8051_PIS_AL;
              comp_sel =  `OC8051_CSS_DC;
              bit_addr = 1'b0;
            end
          `OC8051_CJNE_R : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = !eq;
              pc_sel = `OC8051_PIS_SO2;
              comp_sel =  `OC8051_CSS_DES;
              bit_addr = 1'b0;
            end
          `OC8051_CJNE_I : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = !eq;
              pc_sel = `OC8051_PIS_SO2;
              comp_sel =  `OC8051_CSS_DES;
              bit_addr = 1'b0;
            end
          `OC8051_CJNE_D : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = !eq;
              pc_sel = `OC8051_PIS_SO2;
              comp_sel =  `OC8051_CSS_DES;
              bit_addr = 1'b0;
            end
          `OC8051_CJNE_C : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = !eq;
              pc_sel = `OC8051_PIS_SO2;
              comp_sel =  `OC8051_CSS_DES;
              bit_addr = 1'b0;
            end
          `OC8051_DJNZ_R : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = !eq;
              pc_sel = `OC8051_PIS_SO1;
              comp_sel =  `OC8051_CSS_DES;
              bit_addr = 1'b0;
            end
          `OC8051_DJNZ_D : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = !eq;
              pc_sel = `OC8051_PIS_SO2;
              comp_sel =  `OC8051_CSS_DES;
              bit_addr = 1'b0;
            end
          `OC8051_JB : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = eq;
              pc_sel = `OC8051_PIS_SO2;
              comp_sel =  `OC8051_CSS_BIT;
              bit_addr = 1'b0;
            end
          `OC8051_JBC : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = eq;
              pc_sel = `OC8051_PIS_SO2;
              comp_sel =  `OC8051_CSS_BIT;
              bit_addr = 1'b1;
            end
          `OC8051_JMP_D : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_Y;
              pc_sel = `OC8051_PIS_ALU;
              comp_sel =  `OC8051_CSS_DC;
              bit_addr = 1'b0;
            end
          `OC8051_JNB : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = !eq;
              pc_sel = `OC8051_PIS_SO2;
              comp_sel =  `OC8051_CSS_BIT;
              bit_addr = 1'b1;
            end
          `OC8051_DIV : begin
              ram_rd_sel = `OC8051_RRS_B;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              bit_addr = 1'b0;
            end
          `OC8051_MUL : begin
              ram_rd_sel = `OC8051_RRS_B;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              bit_addr = 1'b0;
            end
          default begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              bit_addr = 1'b0;
          end
        endcase
        rmw = `OC8051_RMW_N;
        stb_i = 1'b1;
      end
      2'b11: begin
        casex (op_cur) 
          `OC8051_CJNE_R : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
            end
          `OC8051_CJNE_I : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
            end
          `OC8051_CJNE_D : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
            end
          `OC8051_CJNE_C : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
            end
          `OC8051_DJNZ_R : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
            end
          `OC8051_DJNZ_D : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
            end
          `OC8051_RET : begin
              ram_rd_sel = `OC8051_RRS_SP;
              pc_wr = `OC8051_PCW_Y;
              pc_sel = `OC8051_PIS_AH;
            end
          `OC8051_RETI : begin
              ram_rd_sel = `OC8051_RRS_SP;
              pc_wr = `OC8051_PCW_Y;
              pc_sel = `OC8051_PIS_AH;
            end
          `OC8051_DIV : begin
              ram_rd_sel = `OC8051_RRS_B;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
            end
          `OC8051_MUL : begin
              ram_rd_sel = `OC8051_RRS_B;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
            end
         default begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
          end
        endcase
        comp_sel =  `OC8051_CSS_DC;
        rmw = `OC8051_RMW_N;
        stb_i = 1'b1;
        bit_addr = 1'b0;
      end
      2'b00: begin
        casex (op_cur) 
          `OC8051_ACALL :begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_Y;
              pc_sel = `OC8051_PIS_I11;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end
          `OC8051_AJMP : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_Y;
              pc_sel = `OC8051_PIS_I11;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end
          `OC8051_ADD_R : begin
              ram_rd_sel = `OC8051_RRS_RN;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_ADDC_R : begin
             ram_rd_sel = `OC8051_RRS_RN;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_ANL_R : begin
              ram_rd_sel = `OC8051_RRS_RN;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_CJNE_R : begin
              ram_rd_sel = `OC8051_RRS_RN;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end
          `OC8051_DEC_R : begin
              ram_rd_sel = `OC8051_RRS_RN;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_DJNZ_R : begin
              ram_rd_sel = `OC8051_RRS_RN;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end
          `OC8051_INC_R : begin
              ram_rd_sel = `OC8051_RRS_RN;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_MOV_R : begin
              ram_rd_sel = `OC8051_RRS_RN;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_MOV_DR : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_MOV_RD : begin
              ram_rd_sel = `OC8051_RRS_RN;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_ORL_R : begin
              ram_rd_sel = `OC8051_RRS_RN;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_SUBB_R : begin
              ram_rd_sel = `OC8051_RRS_RN;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_XCH_R : begin
              ram_rd_sel = `OC8051_RRS_RN;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_XRL_R : begin
              ram_rd_sel = `OC8051_RRS_RN;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
    
    //op_code [7:1]
          `OC8051_ADD_I : begin
              ram_rd_sel = `OC8051_RRS_I;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_ADDC_I : begin
              ram_rd_sel = `OC8051_RRS_I;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_ANL_I : begin
              ram_rd_sel = `OC8051_RRS_I;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_CJNE_I : begin
              ram_rd_sel = `OC8051_RRS_I;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end
          `OC8051_DEC_I : begin
              ram_rd_sel = `OC8051_RRS_I;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_INC_I : begin
              ram_rd_sel = `OC8051_RRS_I;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_MOV_I : begin
              ram_rd_sel = `OC8051_RRS_I;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_MOV_ID : begin
              ram_rd_sel = `OC8051_RRS_I;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_MOV_DI : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_MOVX_IA : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end
          `OC8051_MOVX_AI :begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end
          `OC8051_ORL_I : begin
              ram_rd_sel = `OC8051_RRS_I;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_SUBB_I : begin
              ram_rd_sel = `OC8051_RRS_I;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_XCH_I : begin
              ram_rd_sel = `OC8051_RRS_I;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_XCHD :begin
              ram_rd_sel = `OC8051_RRS_I;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_XRL_I : begin
              ram_rd_sel = `OC8051_RRS_I;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
    
    //op_code [7:0]
          `OC8051_ADD_D : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_ADDC_D : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_ANL_D : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_ANL_C : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_ANL_DD : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_ANL_DC : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_ANL_B : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b1;
            end
          `OC8051_ANL_NB : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b1;
            end
          `OC8051_CJNE_D : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end
          `OC8051_CJNE_C : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end
          `OC8051_CLR_B : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b1;
            end
          `OC8051_CPL_B : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b1;
            end
          `OC8051_DEC_D : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_DIV : begin
              ram_rd_sel = `OC8051_RRS_B;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end
          `OC8051_DJNZ_D : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end
          `OC8051_INC_D : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_INC_DP : begin
              ram_rd_sel = `OC8051_RRS_DPTR;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_JB : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_SO2;
              comp_sel =  `OC8051_CSS_BIT;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b1;
            end
          `OC8051_JBC : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_BIT;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b1;
            end
/*          `OC8051_JC : begin
              ram_rd_sel = `OC8051_RRS_PSW;
              pc_wr = eq;
              pc_sel = `OC8051_PIS_SO1;
              comp_sel =  `OC8051_CSS_CY;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end*/
          `OC8051_JMP_D : begin
              ram_rd_sel = `OC8051_RRS_DPTR;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end
    
          `OC8051_JNB : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_SO2;
              comp_sel =  `OC8051_CSS_BIT;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b1;
            end
/*          `OC8051_JNC : begin
              ram_rd_sel = `OC8051_RRS_PSW;
              pc_wr = !eq;
              pc_sel = `OC8051_PIS_SO1;
              comp_sel =  `OC8051_CSS_CY;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end
          `OC8051_JNZ : begin
              ram_rd_sel = `OC8051_RRS_ACC;
              pc_wr = !eq;
              pc_sel = `OC8051_PIS_SO1;
              comp_sel =  `OC8051_CSS_AZ;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end
          `OC8051_JZ : begin
              ram_rd_sel = `OC8051_RRS_ACC;
              pc_wr = eq;
              pc_sel = `OC8051_PIS_SO1;
              comp_sel =  `OC8051_CSS_AZ;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end*/
          `OC8051_LCALL :begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_Y;
              pc_sel = `OC8051_PIS_I16;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end
          `OC8051_LJMP : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_Y;
              pc_sel = `OC8051_PIS_I16;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end
          `OC8051_MOV_D : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_MOV_DD : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_MOV_BC : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b1;
            end
          `OC8051_MOV_CB : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b1;
            end
          `OC8051_MOVC_DP :begin
              ram_rd_sel = `OC8051_RRS_DPTR;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end
          `OC8051_MOVC_PC : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end
          `OC8051_MOVX_PA : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end
          `OC8051_MOVX_AP : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end
          `OC8051_MUL : begin
              ram_rd_sel = `OC8051_RRS_B;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end
          `OC8051_ORL_D : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_ORL_AD : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_ORL_CD : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_ORL_B : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b1;
            end
          `OC8051_ORL_NB : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b1;
            end
          `OC8051_POP : begin
              ram_rd_sel = `OC8051_RRS_SP;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_PUSH : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_RET : begin
              ram_rd_sel = `OC8051_RRS_SP;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end
          `OC8051_RETI : begin
              ram_rd_sel = `OC8051_RRS_SP;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end
          `OC8051_SETB_B : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b1;
            end
/*          `OC8051_SJMP : begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_Y;
              pc_sel = `OC8051_PIS_SO1;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b0;
              bit_addr = 1'b0;
            end*/
          `OC8051_SUBB_D : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_XCH_D : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_XRL_D : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_XRL_AD : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          `OC8051_XRL_CD : begin
              ram_rd_sel = `OC8051_RRS_D;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_Y;
              stb_i = 1'b1;
              bit_addr = 1'b0;
            end
          default: begin
              ram_rd_sel = `OC8051_RRS_DC;
              pc_wr = `OC8051_PCW_N;
              pc_sel = `OC8051_PIS_DC;
              comp_sel =  `OC8051_CSS_DC;
              rmw = `OC8051_RMW_N;
              stb_i = 1'b1;
              bit_addr = 1'b0;
           end
        endcase
      end
    endcase
end










//
//
// registerd outputs

always @(posedge clk)// or posedge rst)
begin
  if (rst) begin
    ram_wr_sel <= #1 `OC8051_RWS_DC;
    src_sel1 <= #1 `OC8051_AS1_DC;
    src_sel2 <= #1 `OC8051_AS2_DC;
    alu_op <= #1 `OC8051_ALU_NOP;
    wr <= #1 1'b0;
    psw_set <= #1 `OC8051_PS_NOT;
    cy_sel <= #1 `OC8051_CY_0;
    src_sel3 <= #1 `OC8051_AS3_DC;
    wr_sfr <= #1 `OC8051_WRS_N;
  end else if (!wait_data) begin
    case (state_dec) 
      2'b01: begin
        casex (op_cur) 
          `OC8051_MOVC_DP :begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_OP1;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_MOVC_PC :begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_OP1;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_MOVX_PA : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_OP1;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_MOVX_IA : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_OP1;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
/*          `OC8051_ACALL :begin
              ram_wr_sel <= #1 `OC8051_RWS_SP;
              src_sel1 <= #1 `OC8051_AS1_PCH;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_AJMP : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_LCALL :begin
              ram_wr_sel <= #1 `OC8051_RWS_SP;
              src_sel1 <= #1 `OC8051_AS1_PCH;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              wr_sfr <= #1 `OC8051_WRS_N;
            end*/
          `OC8051_DIV : begin
              ram_wr_sel <= #1 `OC8051_RWS_B;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_DIV;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_OV;
              wr_sfr <= #1 `OC8051_WRS_ACC2;
            end
          `OC8051_MUL : begin
              ram_wr_sel <= #1 `OC8051_RWS_B;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_MUL;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_OV;
              wr_sfr <= #1 `OC8051_WRS_ACC2;
            end
          default begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              wr_sfr <= #1 `OC8051_WRS_N;
          end
        endcase
        cy_sel <= #1 `OC8051_CY_0;
        src_sel3 <= #1 `OC8051_AS3_DC;
      end
      2'b10: begin
        casex (op_cur) 
          `OC8051_ACALL :begin
              ram_wr_sel <= #1 `OC8051_RWS_SP;
              src_sel1 <= #1 `OC8051_AS1_PCH;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
            end
          `OC8051_LCALL :begin
              ram_wr_sel <= #1 `OC8051_RWS_SP;
              src_sel1 <= #1 `OC8051_AS1_PCH;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
            end
          `OC8051_JBC : begin
              ram_wr_sel <= #1 `OC8051_RWS_D;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
            end
          `OC8051_DIV : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_DIV;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_OV;
            end
          `OC8051_MUL : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_MUL;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_OV;
            end
          default begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
          end
        endcase
        cy_sel <= #1 `OC8051_CY_0;
        src_sel3 <= #1 `OC8051_AS3_DC;
        wr_sfr <= #1 `OC8051_WRS_N;
      end

      2'b11: begin
        casex (op_cur) 
          `OC8051_RET : begin
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              psw_set <= #1 `OC8051_PS_NOT;
            end
          `OC8051_RETI : begin
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              psw_set <= #1 `OC8051_PS_NOT;
            end
          `OC8051_DIV : begin
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_DIV;
              psw_set <= #1 `OC8051_PS_OV;
            end
          `OC8051_MUL : begin
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_MUL;
              psw_set <= #1 `OC8051_PS_OV;
            end
         default begin
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              psw_set <= #1 `OC8051_PS_NOT;
          end
        endcase
        ram_wr_sel <= #1 `OC8051_RWS_DC;
        wr <= #1 1'b0;
        cy_sel <= #1 `OC8051_CY_0;
        src_sel3 <= #1 `OC8051_AS3_DC;
        wr_sfr <= #1 `OC8051_WRS_N;
      end
      default: begin
        casex (op_cur) 
          `OC8051_ACALL :begin
              ram_wr_sel <= #1 `OC8051_RWS_SP;
              src_sel1 <= #1 `OC8051_AS1_PCL;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_AJMP : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_ADD_R : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_ADD;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_AC;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_ADDC_R : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_ADD;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_AC;
              cy_sel <= #1 `OC8051_CY_PSW;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_ANL_R : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_AND;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_CJNE_R : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_OP2;
              alu_op <= #1 `OC8051_ALU_SUB;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_CY;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_DEC_R : begin
              ram_wr_sel <= #1 `OC8051_RWS_RN;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_ZERO;
              alu_op <= #1 `OC8051_ALU_INC;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_1;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_DJNZ_R : begin
              ram_wr_sel <= #1 `OC8051_RWS_RN;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_ZERO;
              alu_op <= #1 `OC8051_ALU_INC;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_1;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_INC_R : begin
              ram_wr_sel <= #1 `OC8051_RWS_RN;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_ZERO;
              alu_op <= #1 `OC8051_ALU_INC;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_MOV_R : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_MOV_AR : begin
              ram_wr_sel <= #1 `OC8051_RWS_RN;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_MOV_DR : begin
              ram_wr_sel <= #1 `OC8051_RWS_RN;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_MOV_CR : begin
              ram_wr_sel <= #1 `OC8051_RWS_RN;
              src_sel1 <= #1 `OC8051_AS1_OP2;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_MOV_RD : begin
              ram_wr_sel <= #1 `OC8051_RWS_D;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_ORL_R : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_ACC;
              alu_op <= #1 `OC8051_ALU_OR;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_SUBB_R : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_SUB;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_AC;
              cy_sel <= #1 `OC8051_CY_PSW;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_XCH_R : begin
              ram_wr_sel <= #1 `OC8051_RWS_RN;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_ACC;
              alu_op <= #1 `OC8051_ALU_XCH;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_1;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC2;
            end
          `OC8051_XRL_R : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_ACC;
              alu_op <= #1 `OC8051_ALU_XOR;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
    
    //op_code [7:1]
          `OC8051_ADD_I : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_ADD;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_AC;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_ADDC_I : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_ADD;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_AC;
              cy_sel <= #1 `OC8051_CY_PSW;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_ANL_I : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_AND;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_CJNE_I : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_OP2;
              alu_op <= #1 `OC8051_ALU_SUB;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_CY;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_DEC_I : begin
              ram_wr_sel <= #1 `OC8051_RWS_I;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_ZERO;
              alu_op <= #1 `OC8051_ALU_INC;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_1;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_INC_I : begin
              ram_wr_sel <= #1 `OC8051_RWS_I;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_ZERO;
              alu_op <= #1 `OC8051_ALU_INC;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_MOV_I : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_MOV_ID : begin
              ram_wr_sel <= #1 `OC8051_RWS_D;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_MOV_AI : begin
              ram_wr_sel <= #1 `OC8051_RWS_I;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_MOV_DI : begin
              ram_wr_sel <= #1 `OC8051_RWS_I;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_MOV_CI : begin
              ram_wr_sel <= #1 `OC8051_RWS_I;
              src_sel1 <= #1 `OC8051_AS1_OP2;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_MOVX_IA : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_MOVX_AI :begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_ORL_I : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_ACC;
              alu_op <= #1 `OC8051_ALU_OR;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_SUBB_I : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_SUB;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_AC;
              cy_sel <= #1 `OC8051_CY_PSW;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_XCH_I : begin
              ram_wr_sel <= #1 `OC8051_RWS_I;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_ACC;
              alu_op <= #1 `OC8051_ALU_XCH;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_1;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC2;
            end
          `OC8051_XCHD :begin
              ram_wr_sel <= #1 `OC8051_RWS_I;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_ACC;
              alu_op <= #1 `OC8051_ALU_XCH;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC2;
            end
          `OC8051_XRL_I : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_ACC;
              alu_op <= #1 `OC8051_ALU_XOR;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
    
    //op_code [7:0]
          `OC8051_ADD_D : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_ADD;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_AC;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_ADD_C : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_OP2;
              src_sel2 <= #1 `OC8051_AS2_ACC;
              alu_op <= #1 `OC8051_ALU_ADD;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_AC;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_ADDC_D : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_ADD;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_AC;
              cy_sel <= #1 `OC8051_CY_PSW;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_ADDC_C : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_OP2;
              src_sel2 <= #1 `OC8051_AS2_ACC;
              alu_op <= #1 `OC8051_ALU_ADD;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_AC;
              cy_sel <= #1 `OC8051_CY_PSW;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_ANL_D : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_AND;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_ANL_C : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_OP2;
              src_sel2 <= #1 `OC8051_AS2_ACC;
              alu_op <= #1 `OC8051_ALU_AND;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_ANL_DD : begin
              ram_wr_sel <= #1 `OC8051_RWS_D;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_AND;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_ANL_DC : begin
              ram_wr_sel <= #1 `OC8051_RWS_D;
              src_sel1 <= #1 `OC8051_AS1_OP3;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_AND;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_ANL_B : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_AND;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_CY;
              cy_sel <= #1 `OC8051_CY_PSW;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_ANL_NB : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_RR;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_CY;
              cy_sel <= #1 `OC8051_CY_PSW;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_CJNE_D : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_SUB;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_CY;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_CJNE_C : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_OP2;
              alu_op <= #1 `OC8051_ALU_SUB;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_CY;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_CLR_A : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_ACC;
              alu_op <= #1 `OC8051_ALU_SUB;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_PC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_CLR_C : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_CY;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_PC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_CLR_B : begin
              ram_wr_sel <= #1 `OC8051_RWS_D;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_PC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_CPL_A : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOT;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_CPL_C : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOT;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_CY;
              cy_sel <= #1 `OC8051_CY_PSW;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_CPL_B : begin
              ram_wr_sel <= #1 `OC8051_RWS_D;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOT;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_RAM;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_DA : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_DA;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_CY;
              cy_sel <= #1 `OC8051_CY_PSW;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_DEC_A : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_ZERO;
              alu_op <= #1 `OC8051_ALU_INC;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_1;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_DEC_D : begin
              ram_wr_sel <= #1 `OC8051_RWS_D;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_ZERO;
              alu_op <= #1 `OC8051_ALU_INC;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_1;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_DIV : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_DIV;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_OV;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_DJNZ_D : begin
              ram_wr_sel <= #1 `OC8051_RWS_D;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_ZERO;
              alu_op <= #1 `OC8051_ALU_INC;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_1;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_INC_A : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_ZERO;
              alu_op <= #1 `OC8051_ALU_INC;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_INC_D : begin
              ram_wr_sel <= #1 `OC8051_RWS_D;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_ZERO;
              alu_op <= #1 `OC8051_ALU_INC;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_INC_DP : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_ZERO;
              alu_op <= #1 `OC8051_ALU_ADD;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_1;
              src_sel3 <= #1 `OC8051_AS3_DP;
              wr_sfr <= #1 `OC8051_WRS_DPTR;
            end
          `OC8051_JB : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_PC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_JBC :begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_PC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_JC : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_PC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_JMP_D : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_ADD;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DP;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_JNB : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_PC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_JNC : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_PC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_JNZ :begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_PC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_JZ : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_PC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_LCALL :begin
              ram_wr_sel <= #1 `OC8051_RWS_SP;
              src_sel1 <= #1 `OC8051_AS1_PCL;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_LJMP : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_MOV_D : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_MOV_C : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_OP2;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_MOV_DA : begin
              ram_wr_sel <= #1 `OC8051_RWS_D;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_MOV_DD : begin
              ram_wr_sel <= #1 `OC8051_RWS_D3;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_MOV_CD : begin
              ram_wr_sel <= #1 `OC8051_RWS_D;
              src_sel1 <= #1 `OC8051_AS1_OP3;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_MOV_BC : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_CY;
              cy_sel <= #1 `OC8051_CY_RAM;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_MOV_CB : begin
              ram_wr_sel <= #1 `OC8051_RWS_D;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_PSW;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_MOV_DP : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_OP3;
              src_sel2 <= #1 `OC8051_AS2_OP2;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_DPTR;
            end
          `OC8051_MOVC_DP :begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_ADD;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DP;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_MOVC_PC : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_PCL;
              src_sel2 <= #1 `OC8051_AS2_ACC;
              alu_op <= #1 `OC8051_ALU_ADD;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_PC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_MOVX_PA : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_MOVX_AP : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_MUL : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_MUL;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_OV;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_ORL_D : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_ACC;
              alu_op <= #1 `OC8051_ALU_OR;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_ORL_C : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_OP2;
              src_sel2 <= #1 `OC8051_AS2_ACC;
              alu_op <= #1 `OC8051_ALU_OR;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_ORL_AD : begin
              ram_wr_sel <= #1 `OC8051_RWS_D;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_ACC;
              alu_op <= #1 `OC8051_ALU_OR;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_ORL_CD : begin
              ram_wr_sel <= #1 `OC8051_RWS_D;
              src_sel1 <= #1 `OC8051_AS1_OP3;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_OR;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_ORL_B : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_OR;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_CY;
              cy_sel <= #1 `OC8051_CY_PSW;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_ORL_NB : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_RL;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_CY;
              cy_sel <= #1 `OC8051_CY_PSW;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_POP : begin
              ram_wr_sel <= #1 `OC8051_RWS_D;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_PUSH : begin
              ram_wr_sel <= #1 `OC8051_RWS_SP;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_RET : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_RETI : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_RL : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_RL;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_RLC : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_RLC;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_CY;
              cy_sel <= #1 `OC8051_CY_PSW;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_RR : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_RR;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_RRC : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_RRC;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_CY;
              cy_sel <= #1 `OC8051_CY_PSW;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_SETB_C : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_CY;
              cy_sel <= #1 `OC8051_CY_1;
              src_sel3 <= #1 `OC8051_AS3_PC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_SETB_B : begin
              ram_wr_sel <= #1 `OC8051_RWS_D;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_1;
              src_sel3 <= #1 `OC8051_AS3_PC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_SJMP : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_PC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_SUBB_D : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_SUB;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_AC;
              cy_sel <= #1 `OC8051_CY_PSW;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_SUBB_C : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_OP2;
              alu_op <= #1 `OC8051_ALU_SUB;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_AC;
              cy_sel <= #1 `OC8051_CY_PSW;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_SWAP : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_ACC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_RLC;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC2;
            end
          `OC8051_XCH_D : begin
              ram_wr_sel <= #1 `OC8051_RWS_D;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_ACC;
              alu_op <= #1 `OC8051_ALU_XCH;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_1;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC2;
            end
          `OC8051_XRL_D : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_ACC;
              alu_op <= #1 `OC8051_ALU_XOR;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_XRL_C : begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_OP2;
              src_sel2 <= #1 `OC8051_AS2_ACC;
              alu_op <= #1 `OC8051_ALU_XOR;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_ACC1;
            end
          `OC8051_XRL_AD : begin
              ram_wr_sel <= #1 `OC8051_RWS_D;
              src_sel1 <= #1 `OC8051_AS1_RAM;
              src_sel2 <= #1 `OC8051_AS2_ACC;
              alu_op <= #1 `OC8051_ALU_XOR;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          `OC8051_XRL_CD : begin
              ram_wr_sel <= #1 `OC8051_RWS_D;
              src_sel1 <= #1 `OC8051_AS1_OP3;
              src_sel2 <= #1 `OC8051_AS2_RAM;
              alu_op <= #1 `OC8051_ALU_XOR;
              wr <= #1 1'b1;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
            end
          default: begin
              ram_wr_sel <= #1 `OC8051_RWS_DC;
              src_sel1 <= #1 `OC8051_AS1_DC;
              src_sel2 <= #1 `OC8051_AS2_DC;
              alu_op <= #1 `OC8051_ALU_NOP;
              wr <= #1 1'b0;
              psw_set <= #1 `OC8051_PS_NOT;
              cy_sel <= #1 `OC8051_CY_0;
              src_sel3 <= #1 `OC8051_AS3_DC;
              wr_sfr <= #1 `OC8051_WRS_N;
           end
        endcase
      end
      endcase
  end
end


//
// remember current instruction
always @(posedge clk)// or posedge rst)
  if (rst) op <= #1 2'b00;
  else if (state==2'b00) op <= #1 op_in;

//
// in case of instructions that needs more than one clock set state
always @(posedge clk)// or posedge rst)
begin
  if (rst)
    state <= #1 2'b11;
  else if  (!mem_wait & !wait_data) begin
    case (state) 
      2'b10: state <= #1 2'b01;
      2'b11: state <= #1 2'b10;
      2'b00:
          casex (op_in) 
            `OC8051_ACALL   : state <= #1 2'b10;
            `OC8051_AJMP    : state <= #1 2'b10;
            `OC8051_CJNE_R  : state <= #1 2'b10;
            `OC8051_CJNE_I  : state <= #1 2'b10;
            `OC8051_CJNE_D  : state <= #1 2'b10;
            `OC8051_CJNE_C  : state <= #1 2'b10;
            `OC8051_LJMP    : state <= #1 2'b10;
            `OC8051_DJNZ_R  : state <= #1 2'b10;
            `OC8051_DJNZ_D  : state <= #1 2'b10;
            `OC8051_LCALL   : state <= #1 2'b10;
            `OC8051_MOVC_DP : state <= #1 2'b11;
            `OC8051_MOVC_PC : state <= #1 2'b11;
            `OC8051_MOVX_IA : state <= #1 2'b10;
            `OC8051_MOVX_AI : state <= #1 2'b10;
            `OC8051_MOVX_PA : state <= #1 2'b10;
            `OC8051_MOVX_AP : state <= #1 2'b10;
            `OC8051_RET     : state <= #1 2'b11;
            `OC8051_RETI    : state <= #1 2'b11;
            `OC8051_SJMP    : state <= #1 2'b10;
            `OC8051_JB      : state <= #1 2'b10;
            `OC8051_JBC     : state <= #1 2'b10;
            `OC8051_JC      : state <= #1 2'b10;
            `OC8051_JMP_D   : state <= #1 2'b10;
            `OC8051_JNC     : state <= #1 2'b10;
            `OC8051_JNB     : state <= #1 2'b10;
            `OC8051_JNZ     : state <= #1 2'b10;
            `OC8051_JZ      : state <= #1 2'b10;
            `OC8051_DIV     : state <= #1 2'b11;
            `OC8051_MUL     : state <= #1 2'b11;
//            default         : state <= #1 2'b00;
          endcase
      default: state <= #1 2'b00;
    endcase
  end
end


//
//in case of writing to external ram
always @(posedge clk)// or posedge rst)
begin
  if (rst) begin
    mem_act <= #1 `OC8051_MAS_NO;
  end else if (!rd) begin
    mem_act <= #1 `OC8051_MAS_NO;
  end else
    casex (op_cur) 
      `OC8051_MOVX_AI : mem_act <= #1 `OC8051_MAS_RI_W;
      `OC8051_MOVX_AP : mem_act <= #1 `OC8051_MAS_DPTR_W;
      `OC8051_MOVX_IA : mem_act <= #1 `OC8051_MAS_RI_R;
      `OC8051_MOVX_PA : mem_act <= #1 `OC8051_MAS_DPTR_R;
      `OC8051_MOVC_DP : mem_act <= #1 `OC8051_MAS_CODE;
      `OC8051_MOVC_PC : mem_act <= #1 `OC8051_MAS_CODE;
      default : mem_act <= #1 `OC8051_MAS_NO;
    endcase
end

always @(posedge clk)// or posedge rst)
begin
  if (rst) begin
    ram_rd_sel_r <= #1 3'h0;
  end else begin
    ram_rd_sel_r <= #1 ram_rd_sel;
  end
end



`ifdef OC8051_SIMULATION

always @(op_cur)
  if (op_cur===8'hxx) begin
    $display("time ",$time, "   failure: invalid instruction (oc8051_decoder)");
end


`endif




endmodule


module oc8051_gm_cxrom(
    clk,
    rst,
    word_in,

    // ports connected to the 8051 implementation.
    cxrom_addr,
    cxrom_data_out,

    // ports connected to golden model.
    rd_addr_0,
    rd_addr_1,
    rd_addr_2,

    rd_data_0,
    rd_data_1,
    rd_data_2
);
    input clk, rst;
    input [127:0] word_in;

    input [15:0] cxrom_addr;
    output [31:0] cxrom_data_out;

    input [15:0] rd_addr_0, rd_addr_1, rd_addr_2;
    output [7:0] rd_data_0, rd_data_1, rd_data_2;

    wire [7:0] data_out [15:0];
    symbolic_cxrom_cell cell0  (.clk(clk), .rst(rst), .word(word_in[7:0]),      .data_out(data_out[0]) );
    symbolic_cxrom_cell cell1  (.clk(clk), .rst(rst), .word(word_in[15:8]),     .data_out(data_out[1]) );
    symbolic_cxrom_cell cell2  (.clk(clk), .rst(rst), .word(word_in[23:16]),    .data_out(data_out[2]) );
    symbolic_cxrom_cell cell3  (.clk(clk), .rst(rst), .word(word_in[31:24]),    .data_out(data_out[3]) );
    symbolic_cxrom_cell cell4  (.clk(clk), .rst(rst), .word(word_in[39:32]),    .data_out(data_out[4]) );
    symbolic_cxrom_cell cell5  (.clk(clk), .rst(rst), .word(word_in[47:40]),    .data_out(data_out[5]) );
    symbolic_cxrom_cell cell6  (.clk(clk), .rst(rst), .word(word_in[55:48]),    .data_out(data_out[6]) );
    symbolic_cxrom_cell cell7  (.clk(clk), .rst(rst), .word(word_in[63:56]),    .data_out(data_out[7]) );
    symbolic_cxrom_cell cell8  (.clk(clk), .rst(rst), .word(word_in[71:64]),    .data_out(data_out[8]) );
    symbolic_cxrom_cell cell9  (.clk(clk), .rst(rst), .word(word_in[79:72]),    .data_out(data_out[9]) );
    symbolic_cxrom_cell cell10 (.clk(clk), .rst(rst), .word(word_in[87:80]),    .data_out(data_out[10]));
    symbolic_cxrom_cell cell11 (.clk(clk), .rst(rst), .word(word_in[95:88]),    .data_out(data_out[11]));
    symbolic_cxrom_cell cell12 (.clk(clk), .rst(rst), .word(word_in[103:96]),   .data_out(data_out[12]));
    symbolic_cxrom_cell cell13 (.clk(clk), .rst(rst), .word(word_in[111:104]),  .data_out(data_out[13]));
    symbolic_cxrom_cell cell14 (.clk(clk), .rst(rst), .word(word_in[119:112]),  .data_out(data_out[14]));
    symbolic_cxrom_cell cell15 (.clk(clk), .rst(rst), .word(word_in[127:120]),  .data_out(data_out[15]));

    wire [3:0] cxrom_addr0 = cxrom_addr[3:0];
    wire [3:0] cxrom_addr1 = cxrom_addr[3:0] + 1;
    wire [3:0] cxrom_addr2 = cxrom_addr[3:0] + 2;
    wire [3:0] cxrom_addr3 = cxrom_addr[3:0] + 3;

    assign cxrom_data_out[7:0]   = data_out[cxrom_addr0];
    assign cxrom_data_out[15:8]  = data_out[cxrom_addr1];
    assign cxrom_data_out[23:16] = data_out[cxrom_addr2];
    assign cxrom_data_out[31:24] = data_out[cxrom_addr3];

    assign rd_data_0 = data_out[rd_addr_0[3:0]];
    assign rd_data_1 = data_out[rd_addr_1[3:0]];
    assign rd_data_2 = data_out[rd_addr_2[3:0]];

endmodule

module symbolic_cxrom_cell(
    clk, rst,
    data_out,
    word
);
    input clk, rst;
    input [7:0] word;
    output [7:0] data_out;

    reg valid;
    reg [7:0] data;
    always @(posedge clk) begin
        if (rst) begin
            valid <= 0;
        end
        else begin
            if (!valid) begin
                data <= word;
                valid <= 1;
            end
        end
    end

    wire [7:0] data_out;
    assign data_out = valid ? data : word;
endmodule

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  8051 indirect address                                       ////
////                                                              ////
////  This file is part of the 8051 cores project                 ////
////  http://www.opencores.org/cores/8051/                        ////
////                                                              ////
////  Description                                                 ////
////   Contains ragister 0 and register 1. used for indirrect     ////
////   addressing.                                                ////
////                                                              ////
////  To Do:                                                      ////
////   nothing                                                    ////
////                                                              ////
////  Author(s):                                                  ////
////      - Simon Teran, simont@opencores.org                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.6  2003/05/05 15:46:37  simont
// add aditional alu destination to solve critical path.
//
// Revision 1.5  2003/01/13 14:14:41  simont
// replace some modules
//
// Revision 1.4  2002/09/30 17:33:59  simont
// prepared header
//
//

module oc8051_indi_addr (clk, rst, wr_addr, data_in, wr, wr_bit, ri_out, sel, bank, iram0, iram1, iram8, iram9);
//


input        clk,	// clock
             rst,	// reset
	     wr,	// write
             sel,	// select register
	     wr_bit;	// write bit addressable
input  [1:0] bank;	// select register bank
input  [7:0] data_in;	// data input
input  [7:0] wr_addr;	// write address
input  [7:0] iram0, iram1, iram8, iram9;

output [7:0] ri_out;

//reg [7:0] buff [31:0];
reg wr_bit_r;


reg [7:0] buff [0:7];

wire [7:0] buff0 = buff[0];
wire [7:0] buff1 = buff[1];
wire [7:0] buff2 = buff[2];
wire [7:0] buff3 = buff[3];
wire [7:0] buff4 = buff[4];
wire [7:0] buff5 = buff[5];
wire [7:0] buff6 = buff[6];
wire [7:0] buff7 = buff[7];

//
//write to buffer
always @(posedge clk)// or posedge rst)
begin
  if (rst) begin
    buff[3'b000] <= #1 8'h00;
    buff[3'b001] <= #1 8'h00;
    buff[3'b010] <= #1 8'h00;
    buff[3'b011] <= #1 8'h00;
    buff[3'b100] <= #1 8'h00;
    buff[3'b101] <= #1 8'h00;
    buff[3'b110] <= #1 8'h00;
    buff[3'b111] <= #1 8'h00;
  end else begin
    if ((wr) & !(wr_bit_r)) begin
      case (wr_addr) 
        8'h00: buff[3'b000] <= #1 data_in;
        8'h01: buff[3'b001] <= #1 data_in;
        8'h08: buff[3'b010] <= #1 data_in;
        8'h09: buff[3'b011] <= #1 data_in;
        8'h10: buff[3'b100] <= #1 data_in;
        8'h11: buff[3'b101] <= #1 data_in;
        8'h18: buff[3'b110] <= #1 data_in;
        8'h19: buff[3'b111] <= #1 data_in;
      endcase
    end
  end
end

//
//read from buffer

assign ri_out = (({3'b000, bank, 2'b00, sel}==wr_addr) & (wr) & !wr_bit_r) ?
                 data_in : buff[{bank, sel}];



always @(posedge clk)// or posedge rst)
  if (rst) begin
    wr_bit_r <= #1 1'b0;
  end else begin
    wr_bit_r <= #1 wr_bit;
  end

endmodule
//////////////////////////////////////////////////////////////////////
////                                                              ////
////  8051 memory interface                                       ////
////                                                              ////
////  This file is part of the 8051 cores project                 ////
////  http://www.opencores.org/cores/8051/                        ////
////                                                              ////
////  Description                                                 ////
////   comunication betwen cpu and memory                         ////
////                                                              ////
////  To Do:                                                      ////
////   nothing                                                    ////
////                                                              ////
////  Author(s):                                                  ////
////      - Simon Teran, simont@opencores.org                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.12  2003/07/01 20:47:39  simont
// add /* synopsys xx_case */ to case statments.
//
// Revision 1.11  2003/06/20 13:35:10  simont
// simualtion `ifdef added
//
// Revision 1.10  2003/06/05 11:15:02  simont
// fix bug.
//
// Revision 1.9  2003/06/03 17:09:57  simont
// pipelined acces to axternal instruction interface added.
//
// Revision 1.8  2003/05/12 16:27:40  simont
// fix bug in movc intruction.
//
// Revision 1.7  2003/05/06 09:39:34  simont
// cahnge assigment to pc_wait (remove istb_o)
//
// Revision 1.6  2003/05/05 15:46:37  simont
// add aditional alu destination to solve critical path.
//
// Revision 1.5  2003/04/25 17:15:51  simont
// change branch instruction execution (reduse needed clock periods).
//
// Revision 1.4  2003/04/16 10:04:09  simont
// chance idat_ir to 24 bit wide
//
// Revision 1.3  2003/04/11 10:05:08  simont
// Change pc add value from 23'h to 16'h
//
// Revision 1.2  2003/04/09 16:24:03  simont
// change wr_sft to 2 bit wire.
//
// Revision 1.1  2003/01/13 14:13:12  simont
// initial import
//
//



module oc8051_memory_interface (clk, rst,

//decoder
     wr_i,
     wr_bit_i,
     rd_sel,
     wr_sel,
     pc_wr_sel,
     pc_wr,
     pc,
     rd,
     mem_wait,
     mem_act,
     istb,

//internal ram
     wr_o, 
     wr_bit_o, 
     rd_addr, 
     wr_addr, 
     rd_ind, 
     wr_ind, 
     wr_dat,

     bit_in, 
     in_ram, 
     sfr, 
     sfr_bit, 
     bit_out, 
     iram_out,

//program rom
     iadr_o, 
     ea, 
     ea_int,
     op1_out,  op1,
     op2_out,  op2,
     op3_out,  op3,
     out_of_rst,
     decoder_new_valid_pc,
     pc_log,
     pc_log_prev,

//internal
     idat_onchip,

//external
     iack_i, 
     istb_o, 
     idat_i,

//external data ram
     dadr_o, 
     dwe_o, 
     dstb_o, 
     dack_i,
     ddat_i, 
     ddat_o,

//interrupt interface
     intr, 
     int_v, 
     int_ack,

//alu
     des_acc, 
     des1, 
     des2,

//sfr's
     dptr, 
     ri, 
     sp,  
     sp_w, 
     rn, 
     acc, 
     reti
   , m1__DOT__oc8051_memory_interface1__DOT__dadr_o, m1__DOT__oc8051_memory_interface1__DOT__ddat_o, m1__DOT__oc8051_memory_interface1__DOT__pc);
 output [15:0] m1__DOT__oc8051_memory_interface1__DOT__dadr_o;
 output [7:0] m1__DOT__oc8051_memory_interface1__DOT__ddat_o;
 output [15:0] m1__DOT__oc8051_memory_interface1__DOT__pc;


input         clk,
              rst,
              wr_i,
              wr_bit_i;

input         bit_in,
              sfr_bit,
              dack_i;
input [2:0]   mem_act;
input [7:0]   in_ram;
input [7:0]   sfr;
input [7:0]   acc;
input [7:0]   sp_w;
input [31:0]  idat_i;

output        bit_out,
              mem_wait,
              reti;
output [7:0]  iram_out,
              wr_dat;
output        out_of_rst;
input         decoder_new_valid_pc;
output [15:0] pc_log;
output [15:0] pc_log_prev;

reg           bit_out,
              reti;
reg [7:0]     iram_out,
              sp_r;
reg           rd_addr_r;
output        wr_o,
              wr_bit_o;

//????
reg           dack_ir;
reg [7:0]     ddat_ir;
reg [23:0]    idat_ir;

/////////////////////////////
//
//  rom_addr_sel
//
/////////////////////////////
input         iack_i;
input [7:0]   des_acc,
              des1,
              des2;
output [15:0] iadr_o;

wire          ea_rom_sel;

/////////////////////////////
//
// ext_addr_sel
//
/////////////////////////////
input [7:0]   ri,
              ddat_i;
input [15:0]  dptr;

output        dstb_o,
              dwe_o;
output [7:0]  ddat_o;
(* keep *)output [15:0] dadr_o;

/////////////////////////////
//
// ram_adr_sel
//
/////////////////////////////

input [2:0]   rd_sel,
              wr_sel;
input [4:0]   rn;
input [7:0]   sp;

output        rd_ind,
              wr_ind;
output [7:0]  wr_addr,
              rd_addr;
reg           rd_ind,
              wr_ind;
reg [7:0]     wr_addr,
              rd_addr;

reg [4:0]     rn_r;
reg [7:0]     ri_r,
              imm_r,
              imm2_r,
              op1_r;
wire [7:0]    imm,
              imm2;

/////////////////////////////
//
// op_select
//
/////////////////////////////

input         intr,
              rd,
              ea, 
              ea_int, 
              istb;

input  [7:0]  int_v;

input  [31:0] idat_onchip;

output        int_ack,
              istb_o;

output  [7:0] op1_out, op1,
              op3_out, op2,
              op2_out, op3;

reg           int_ack_t,
              int_ack,
              int_ack_buff;

reg [7:0]     int_vec_buff;
reg [7:0]     op1_out,
              op2_buff,
              op3_buff;
reg [7:0]     op1_o,
              op2_o,
              op3_o;

reg [7:0]     op1_xt, 
              op2_xt, 
              op3_xt;

reg [7:0]     op1,
              op2,
              op3;
wire [7:0]    op2_direct;

input [2:0]   pc_wr_sel;

input         pc_wr;
output [15:0] pc;

(* keep *) reg [15:0]    pc;

//
//pc            program counter register, save current value
reg [15:0]    pc_buf;
wire [15:0]   alu;


reg           int_buff,
              int_buff1; // interrupt buffer: used to prevent interrupting in the middle of executin instructions


//
//
////////////////////////////
reg           istb_t,
              imem_wait,
              dstb_o,
              dwe_o;

(* keep *) reg [7:0]     ddat_o;
reg [15:0]    iadr_t,
              dadr_ot;
reg           dmem_wait;
wire          pc_wait;
wire [1:0]    bank;
wire [7:0]    isr_call;

reg [1:0]     op_length;
reg [2:0]     op_pos;
wire          inc_pc;

reg           pc_wr_r;

wire [15:0]   pc_out;

reg [31:0]    idat_cur,
              idat_old;

reg           inc_pc_r,
              pc_wr_r2;

reg [7:0]     cdata;
reg           cdone;


assign bank       = rn[4:3];
assign imm        = op2_out;
assign imm2       = op3_out;
assign alu        = {des2, des_acc};
assign ea_rom_sel = ea && ea_int;
assign wr_o       = wr_i;
assign wr_bit_o   = wr_bit_i;

//assign mem_wait   = dmem_wait || imem_wait || pc_wr_r;
assign mem_wait   = dmem_wait || imem_wait || pc_wr_r2;
//assign mem_wait   = dmem_wait || imem_wait;
assign istb_o     = (istb || (istb_t & !iack_i)) && !dstb_o && !ea_rom_sel;

assign pc_wait    = rd && (ea_rom_sel || (!istb_t && iack_i));

assign wr_dat     = des1;


/////////////////////////////
//
//  ram_select
//
/////////////////////////////
always @(rd_addr_r or in_ram or sfr or bit_in or sfr_bit or rd_ind)
begin
  if (rd_addr_r && !rd_ind) begin
    iram_out = sfr;
    bit_out = sfr_bit;
  end else begin
    iram_out = in_ram;
    bit_out = bit_in;
  end
end

/////////////////////////////
//
// ram_adr_sel
//
/////////////////////////////

always @(rd_sel or sp or ri or rn or imm or dadr_o[15:0] or bank)
begin
  case (rd_sel) 
    `OC8051_RRS_RN   : rd_addr = {3'h0, rn};
    `OC8051_RRS_I    : rd_addr = ri;
    `OC8051_RRS_D    : rd_addr = imm;
    `OC8051_RRS_SP   : rd_addr = sp;

    `OC8051_RRS_B    : rd_addr = `OC8051_SFR_B;
    `OC8051_RRS_DPTR : rd_addr = `OC8051_SFR_DPTR_LO;
    `OC8051_RRS_PSW  : rd_addr = `OC8051_SFR_PSW;
    `OC8051_RRS_ACC  : rd_addr = `OC8051_SFR_ACC;
//    default          : rd_addr = 2'bxx;
  endcase

end


//
//
always @(wr_sel or sp_w or rn_r or imm_r or ri_r or imm2_r or op1_r or dadr_o[15:0])
begin
  case (wr_sel) 
    `OC8051_RWS_RN : wr_addr = {3'h0, rn_r};
    `OC8051_RWS_I  : wr_addr = ri_r;
    `OC8051_RWS_D  : wr_addr = imm_r;
    `OC8051_RWS_SP : wr_addr = sp_w;
    `OC8051_RWS_D3 : wr_addr = imm2_r;
    `OC8051_RWS_B  : wr_addr = `OC8051_SFR_B;
    // spramod: changed this to make it a full case.
    default        : wr_addr = 2'bxx;
  endcase
end

always @(posedge clk)// or posedge rst)
  if (rst)
    rd_ind <= #1 1'b0;
  else if ((rd_sel==`OC8051_RRS_I) || (rd_sel==`OC8051_RRS_SP))
    rd_ind <= #1 1'b1;
  else
    rd_ind <= #1 1'b0;

always @(wr_sel)
  if ((wr_sel==`OC8051_RWS_I) || (wr_sel==`OC8051_RWS_SP))
    wr_ind = 1'b1;
  else
    wr_ind = 1'b0;


/////////////////////////////
//
//  rom_addr_sel
//
/////////////////////////////
//
// output address is alu destination
// (instructions MOVC)

//assign iadr_o = (istb_t & !iack_i) ? iadr_t : pc_out;
assign iadr_o = (istb_t) ? iadr_t : pc_out;


always @(posedge clk)// or posedge rst)
begin
  if (rst) begin
    iadr_t <= #1 23'h0;
    istb_t <= #1 1'b0;
    imem_wait <= #1 1'b0;
    idat_ir <= #1 24'h0;
  end else if (mem_act==`OC8051_MAS_CODE) begin
    iadr_t <= #1 alu;
    istb_t <= #1 1'b1;
    imem_wait <= #1 1'b1;
  end else if (ea_rom_sel && imem_wait) begin
    imem_wait <= #1 1'b0;
  end else if (!imem_wait && istb_t) begin
    istb_t <= #1 1'b0;
  end else if (iack_i) begin
    imem_wait <= #1 1'b0;
    idat_ir <= #1 idat_i [23:0];
  end
end

/////////////////////////////
//
// ext_addr_sel
//
/////////////////////////////

assign dadr_o = dadr_ot;

always @(posedge clk)// or posedge rst)
begin
  if (rst) begin
    dwe_o <= #1 1'b0;
    dmem_wait <= #1 1'b0;
    dstb_o <= #1 1'b0;
    ddat_o <= #1 8'h00;
    dadr_ot <= #1 23'h0;
  end else if (dack_i) begin
    dwe_o <= #1 1'b0;
    dstb_o <= #1 1'b0;
    dmem_wait <= #1 1'b0;
  end else begin
    case (mem_act) 
      `OC8051_MAS_DPTR_R: begin  // read from external rom: acc=(dptr)
        dwe_o <= #1 1'b0;
        dstb_o <= #1 1'b1;
        ddat_o <= #1 8'h00;
        dadr_ot <= #1 {7'h0, dptr};
        dmem_wait <= #1 1'b1;
      end
      `OC8051_MAS_DPTR_W: begin  // write to external rom: (dptr)=acc
        dwe_o <= #1 1'b1;
        dstb_o <= #1 1'b1;
        ddat_o <= #1 acc;
        dadr_ot <= #1 {7'h0, dptr};
        dmem_wait <= #1 1'b1;
      end
      `OC8051_MAS_RI_R:   begin  // read from external rom: acc=(Ri)
        dwe_o <= #1 1'b0;
        dstb_o <= #1 1'b1;
        ddat_o <= #1 8'h00;
        dadr_ot <= #1 {15'h0, ri};
        dmem_wait <= #1 1'b1;
      end
      `OC8051_MAS_RI_W: begin    // write to external rom: (Ri)=acc
        dwe_o <= #1 1'b1;
        dstb_o <= #1 1'b1;
        ddat_o <= #1 acc;
        dadr_ot <= #1 {15'h0, ri};
        dmem_wait <= #1 1'b1;
      end
    endcase
  end
end

/////////////////////////////
//
// op_select
//
/////////////////////////////



always @(posedge clk)// or posedge rst)
begin
  if (rst) begin
    idat_cur            <= #1 32'h0;
    idat_old            <= #1 32'h0;
  end else if ((iack_i | ea_rom_sel) & (inc_pc | pc_wr_r2)) begin
    idat_cur            <= #1 ea_rom_sel ? idat_onchip : idat_i;
    idat_old            <= #1 idat_cur;
  end
end

reg [3:0] out_of_rst_cycles;
reg out_of_rst;

always @(posedge clk)// or posedge rst)
begin
  if (rst) begin
    out_of_rst         <= 0;
    out_of_rst_cycles   = 0;
  end
  else begin
    out_of_rst_cycles = out_of_rst_cycles < 4'd12 ? out_of_rst_cycles + 1 : out_of_rst_cycles;
    out_of_rst       <= out_of_rst_cycles == 4'd12;
  end 
end

always @(posedge clk)// or posedge rst)
begin
  if (rst) begin
    cdata <= #1 8'h00;
    cdone <= #1 1'b0;
  end else if (istb_t) begin
    cdata <= #1 ea_rom_sel ? idat_onchip[7:0] : idat_i[7:0];
    cdone <= #1 1'b1;
  end else begin
    cdone <= #1 1'b0;
  end
end

always @(op_pos or idat_cur or idat_old)
begin
  case (op_pos)  
    3'b000: begin
       op1 = idat_old[7:0]  ;
       op2 = idat_old[15:8] ;
       op3 = idat_old[23:16];
      end
    3'b001: begin
       op1 = idat_old[15:8] ;
       op2 = idat_old[23:16];
       op3 = idat_old[31:24];
      end
    3'b010: begin
       op1 = idat_old[23:16];
       op2 = idat_old[31:24];
       op3 = idat_cur[7:0]  ;
      end
    3'b011: begin
       op1 = idat_old[31:24];
       op2 = idat_cur[7:0]  ;
       op3 = idat_cur[15:8] ;
      end
    3'b100: begin
       op1 = idat_cur[7:0]  ;
       op2 = idat_cur[15:8] ;
       op3 = idat_cur[23:16];
      end
    default: begin
       op1 = idat_cur[15:8] ;
       op2 = idat_cur[23:16];
       op3 = idat_cur[31:24];
      end
  endcase
end

/*assign op1 = ea_rom_sel ? idat_onchip[7:0]   : op1_xt;
assign op2 = ea_rom_sel ? idat_onchip[15:8]  : op2_xt;
assign op3 = ea_rom_sel ? idat_onchip[23:16] : op3_xt;*/


always @(dack_ir or ddat_ir or op1_o or iram_out or cdone or cdata)
  if (dack_ir)
    op1_out = ddat_ir;
  else if (cdone)
    op1_out = cdata;
  else
    op1_out = op1_o;

assign op3_out = (rd) ? op3_o : op3_buff;
assign op2_out = (rd) ? op2_o : op2_buff;

always @(idat_i or iack_i or idat_ir or rd)
begin
  if (iack_i) begin
    op1_xt = idat_i[7:0];
    op2_xt = idat_i[15:8];
    op3_xt = idat_i[23:16];
  end else if (!rd) begin
    op1_xt = idat_ir[7:0];
    op2_xt = idat_ir[15:8];
    op3_xt = idat_ir[23:16];
  end else begin
    op1_xt = 8'h00;
    op2_xt = 8'h00;
    op3_xt = 8'h00;
  end
end


//
// in case of interrupts
always @(op1 or op2 or op3 or int_ack_t or int_vec_buff or iack_i or ea_rom_sel)
begin
  if (int_ack_t && (iack_i || ea_rom_sel)) begin
    op1_o = `OC8051_LCALL;
    op2_o = 8'h00;
    op3_o = int_vec_buff;
  end else begin
    op1_o = op1;
    op2_o = op2;
    op3_o = op3;
  end
end

//
//in case of reti
always @(posedge clk)// or posedge rst)
  if (rst) reti <= #1 1'b0;
  else if ((op1_o==`OC8051_RETI) & rd & !mem_wait) reti <= #1 1'b1;
  else reti <= #1 1'b0;

//
// remember inputs
always @(posedge clk)// or posedge rst)
begin
  if (rst) begin
    op2_buff <= #1 8'h0;
    op3_buff <= #1 8'h0;
  end else if (rd) begin
    op2_buff <= #1 op2_o;
    op3_buff <= #1 op3_o;
  end
end

/////////////////////////////
//
//  pc
//
/////////////////////////////

always @(op1_out)
begin
        casex (op1_out) 
          `OC8051_ACALL :  op_length = 2'h2;
          `OC8051_AJMP :   op_length = 2'h2;

        //op_code [7:3]
          `OC8051_CJNE_R : op_length = 2'h3;
          `OC8051_DJNZ_R : op_length = 2'h2;
          `OC8051_MOV_DR : op_length = 2'h2;
          `OC8051_MOV_CR : op_length = 2'h2;
          `OC8051_MOV_RD : op_length = 2'h2;

        //op_code [7:1]
          `OC8051_CJNE_I : op_length = 2'h3;
          `OC8051_MOV_ID : op_length = 2'h2;
          `OC8051_MOV_DI : op_length = 2'h2;
          `OC8051_MOV_CI : op_length = 2'h2;

        //op_code [7:0]
          `OC8051_ADD_D :  op_length = 2'h2;
          `OC8051_ADD_C :  op_length = 2'h2;
          `OC8051_ADDC_D : op_length = 2'h2;
          `OC8051_ADDC_C : op_length = 2'h2;
          `OC8051_ANL_D :  op_length = 2'h2;
          `OC8051_ANL_C :  op_length = 2'h2;
          `OC8051_ANL_DD : op_length = 2'h2;
          `OC8051_ANL_DC : op_length = 2'h3;
          `OC8051_ANL_B :  op_length = 2'h2;
          `OC8051_ANL_NB : op_length = 2'h2;
          `OC8051_CJNE_D : op_length = 2'h3;
          `OC8051_CJNE_C : op_length = 2'h3;
          `OC8051_CLR_B :  op_length = 2'h2;
          `OC8051_CPL_B :  op_length = 2'h2;
          `OC8051_DEC_D :  op_length = 2'h2;
          `OC8051_DJNZ_D : op_length = 2'h3;
          `OC8051_INC_D :  op_length = 2'h2;
          `OC8051_JB :     op_length = 2'h3;
          `OC8051_JBC :    op_length = 2'h3;
          `OC8051_JC :     op_length = 2'h2;
          `OC8051_JNB :    op_length = 2'h3;
          `OC8051_JNC :    op_length = 2'h2;
          `OC8051_JNZ :    op_length = 2'h2;
          `OC8051_JZ :     op_length = 2'h2;
          `OC8051_LCALL :  op_length = 2'h3;
          `OC8051_LJMP :   op_length = 2'h3;
          `OC8051_MOV_D :  op_length = 2'h2;
          `OC8051_MOV_C :  op_length = 2'h2;
          `OC8051_MOV_DA : op_length = 2'h2;
          `OC8051_MOV_DD : op_length = 2'h3;
          `OC8051_MOV_CD : op_length = 2'h3;
          `OC8051_MOV_BC : op_length = 2'h2;
          `OC8051_MOV_CB : op_length = 2'h2;
          `OC8051_MOV_DP : op_length = 2'h3;
          `OC8051_ORL_D :  op_length = 2'h2;
          `OC8051_ORL_C :  op_length = 2'h2;
          `OC8051_ORL_AD : op_length = 2'h2;
          `OC8051_ORL_CD : op_length = 2'h3;
          `OC8051_ORL_B :  op_length = 2'h2;
          `OC8051_ORL_NB : op_length = 2'h2;
          `OC8051_POP :    op_length = 2'h2;
          `OC8051_PUSH :   op_length = 2'h2;
          `OC8051_SETB_B : op_length = 2'h2;
          `OC8051_SJMP :   op_length = 2'h2;
          `OC8051_SUBB_D : op_length = 2'h2;
          `OC8051_SUBB_C : op_length = 2'h2;
          `OC8051_XCH_D :  op_length = 2'h2;
          `OC8051_XRL_D :  op_length = 2'h2;
          `OC8051_XRL_C :  op_length = 2'h2;
          `OC8051_XRL_AD : op_length = 2'h2;
          `OC8051_XRL_CD : op_length = 2'h3;
          default:         op_length = 2'h1;
        endcase
end

/*
always @(posedge clk or posedge rst)
begin
    if (rst) begin
      op_length = 2'h2;
//    end else if (pc_wait) begin
    end else begin
        casex (op1_out)
          `OC8051_ACALL :  op_length <= #1 2'h2;
          `OC8051_AJMP :   op_length <= #1 2'h2;

        //op_code [7:3]
          `OC8051_CJNE_R : op_length <= #1 2'h3;
          `OC8051_DJNZ_R : op_length <= #1 2'h2;
          `OC8051_MOV_DR : op_length <= #1 2'h2;
          `OC8051_MOV_CR : op_length <= #1 2'h2;
          `OC8051_MOV_RD : op_length <= #1 2'h2;

        //op_code [7:1]
          `OC8051_CJNE_I : op_length <= #1 2'h3;
          `OC8051_MOV_ID : op_length <= #1 2'h2;
          `OC8051_MOV_DI : op_length <= #1 2'h2;
          `OC8051_MOV_CI : op_length <= #1 2'h2;

        //op_code [7:0]
          `OC8051_ADD_D :  op_length <= #1 2'h2;
          `OC8051_ADD_C :  op_length <= #1 2'h2;
          `OC8051_ADDC_D : op_length <= #1 2'h2;
          `OC8051_ADDC_C : op_length <= #1 2'h2;
          `OC8051_ANL_D :  op_length <= #1 2'h2;
          `OC8051_ANL_C :  op_length <= #1 2'h2;
          `OC8051_ANL_DD : op_length <= #1 2'h2;
          `OC8051_ANL_DC : op_length <= #1 2'h3;
          `OC8051_ANL_B :  op_length <= #1 2'h2;
          `OC8051_ANL_NB : op_length <= #1 2'h2;
          `OC8051_CJNE_D : op_length <= #1 2'h3;
          `OC8051_CJNE_C : op_length <= #1 2'h3;
          `OC8051_CLR_B :  op_length <= #1 2'h2;
          `OC8051_CPL_B :  op_length <= #1 2'h2;
          `OC8051_DEC_D :  op_length <= #1 2'h2;
          `OC8051_DJNZ_D : op_length <= #1 2'h3;
          `OC8051_INC_D :  op_length <= #1 2'h2;
          `OC8051_JB :     op_length <= #1 2'h3;
          `OC8051_JBC :    op_length <= #1 2'h3;
          `OC8051_JC :     op_length <= #1 2'h2;
          `OC8051_JNB :    op_length <= #1 2'h3;
          `OC8051_JNC :    op_length <= #1 2'h2;
          `OC8051_JNZ :    op_length <= #1 2'h2;
          `OC8051_JZ :     op_length <= #1 2'h2;
          `OC8051_LCALL :  op_length <= #1 2'h3;
          `OC8051_LJMP :   op_length <= #1 2'h3;
          `OC8051_MOV_D :  op_length <= #1 2'h2;
          `OC8051_MOV_C :  op_length <= #1 2'h2;
          `OC8051_MOV_DA : op_length <= #1 2'h2;
          `OC8051_MOV_DD : op_length <= #1 2'h3;
          `OC8051_MOV_CD : op_length <= #1 2'h3;
          `OC8051_MOV_BC : op_length <= #1 2'h2;
          `OC8051_MOV_CB : op_length <= #1 2'h2;
          `OC8051_MOV_DP : op_length <= #1 2'h3;
          `OC8051_ORL_D :  op_length <= #1 2'h2;
          `OC8051_ORL_C :  op_length <= #1 2'h2;
          `OC8051_ORL_AD : op_length <= #1 2'h2;
          `OC8051_ORL_CD : op_length <= #1 2'h3;
          `OC8051_ORL_B :  op_length <= #1 2'h2;
          `OC8051_ORL_NB : op_length <= #1 2'h2;
          `OC8051_POP :    op_length <= #1 2'h2;
          `OC8051_PUSH :   op_length <= #1 2'h2;
          `OC8051_SETB_B : op_length <= #1 2'h2;
          `OC8051_SJMP :   op_length <= #1 2'h2;
          `OC8051_SUBB_D : op_length <= #1 2'h2;
          `OC8051_SUBB_C : op_length <= #1 2'h2;
          `OC8051_XCH_D :  op_length <= #1 2'h2;
          `OC8051_XRL_D :  op_length <= #1 2'h2;
          `OC8051_XRL_C :  op_length <= #1 2'h2;
          `OC8051_XRL_AD : op_length <= #1 2'h2;
          `OC8051_XRL_CD : op_length <= #1 2'h3;
          default:         op_length <= #1 2'h1;
        endcase
//
//in case of instructions that use more than one clock hold current pc
//    end else begin
//      pc= pc_buf;
   end
end
*/

assign inc_pc = ((op_pos[2] | (&op_pos[1:0])) & rd) | pc_wr_r2;

always @(posedge clk) // or posedge rst)
begin
  if (rst) begin
    op_pos <= #1 3'h0;
  end else if (pc_wr_r2) begin
    op_pos <= #1 3'h4;// - op_length;////****??????????
/*  end else if (inc_pc & rd) begin
    op_pos[2]   <= #1 op_pos[2] & !op_pos[1] & op_pos[0] & (&op_length);
    op_pos[1:0] <= #1 op_pos[1:0] + op_length;
//    op_pos   <= #1 {1'b0, op_pos[1:0]} + {1'b0, op_length};
  end else if (rd) begin
    op_pos <= #1 op_pos + {1'b0, op_length};
  end*/
  end else if (inc_pc & rd) begin
    op_pos[2]   <= #1 op_pos[2] & !op_pos[1] & op_pos[0] & (&op_length);
    op_pos[1:0] <= #1 op_pos[1:0] + op_length;
//    op_pos   <= #1 {1'b0, op_pos[1:0]} + {1'b0, op_length};
//  end else if (istb & rd) begin
  end else if (rd) begin
    op_pos <= #1 op_pos + {1'b0, op_length};
  end
end

//
// remember interrupt
// we don't want to interrupt instruction in the middle of execution
always @(posedge clk)// or posedge rst)
 if (rst) begin
   int_ack_t <= #1 1'b0;
   int_vec_buff <= #1 8'h00;
 end else if (intr) begin
   int_ack_t <= #1 1'b1;
   int_vec_buff <= #1 int_v;
 end else if (rd && (ea_rom_sel || iack_i) && !pc_wr_r2) int_ack_t <= #1 1'b0;

always @(posedge clk)// or posedge rst)
  if (rst) int_ack_buff <= #1 1'b0;
  else int_ack_buff <= #1 int_ack_t;

always @(posedge clk)// or posedge rst)
  if (rst) int_ack <= #1 1'b0;
  else begin
    if ((int_ack_buff) & !(int_ack_t))
      int_ack <= #1 1'b1;
    else int_ack <= #1 1'b0;
  end


//
//interrupt buffer
always @(posedge clk) // or posedge rst)
  if (rst) begin
    int_buff1 <= #1 1'b0;
  end else begin
    int_buff1 <= #1 int_buff;
  end

always @(posedge clk)// or posedge rst)
  if (rst) begin
    int_buff <= #1 1'b0;
  end else if (intr) begin
    int_buff <= #1 1'b1;
  end else if (pc_wait)
    int_buff <= #1 1'b0;

wire [7:0]  pcs_source;
reg  [15:0] pcs_result;
reg         pcs_cy;

assign pcs_source = pc_wr_sel[0] ? op3_out : op2_out;

always @(pcs_source or pc or pcs_cy)
begin
  if (pcs_source[7]) begin
    {pcs_cy, pcs_result[7:0]} = {1'b0, pc[7:0]} + {1'b0, pcs_source};
    pcs_result[15:8] = pc[15:8] - {7'h0, !pcs_cy};
  end else pcs_result = pc + {8'h00, pcs_source};
end

//assign pc = pc_buf - {13'h0, op_pos[2] | inc_pc_r, op_pos[1:0]}; ////******???
//assign pc = pc_buf - 16'h8 + {13'h0, op_pos}; ////******???
//assign pc = pc_buf - 16'h8 + {13'h0, op_pos} + {14'h0, op_length};

always @(posedge clk)// or posedge rst)
begin
  if (rst)
    pc <= #1 16'h0;
  else if (pc_wr_r2)
    pc <= #1 pc_buf;
  else if (rd & !int_ack_t)
    pc <= #1 pc_buf - 16'h8 + {13'h0, op_pos} + {14'h0, op_length};
end


// spramod added pc_for_ajmp
wire [15:0] pc_for_ajmp = pc + 2;
always @(posedge clk) //or posedge rst)
begin
  if (rst) begin
    pc_buf <= #1 `OC8051_RST_PC;
  end else if (pc_wr) begin
//
//case of writing new value to pc (jupms)
      case (pc_wr_sel) 
        `OC8051_PIS_ALU: pc_buf        <= #1 alu;
        `OC8051_PIS_AL:  pc_buf[7:0]   <= #1 alu[7:0];
        `OC8051_PIS_AH:  pc_buf[15:8]  <= #1 alu[7:0];
        // spramod changed this code to attempt to make AJMP work according to spec.
        `OC8051_PIS_I11: pc_buf        <= #1 {pc_for_ajmp[15:11], op1_out[7:5], op2_out};
        `OC8051_PIS_I16: pc_buf        <= #1 {op2_out, op3_out};
        `OC8051_PIS_SO1: pc_buf        <= #1 pcs_result;
        `OC8051_PIS_SO2: pc_buf        <= #1 pcs_result;
      endcase
//  end else if (inc_pc) begin
  end else begin
//
//or just remember current
      pc_buf <= #1 pc_out;
  end
end


assign pc_out = inc_pc ? pc_buf + 16'h4
                       : pc_buf ;





always @(posedge clk)// or posedge rst)
  if (rst)
    ddat_ir <= #1 8'h00;
  else if (dack_i)
    ddat_ir <= #1 ddat_i;

/*

always @(pc_buf or op1_out or pc_wait or int_buff or int_buff1 or ea_rom_sel or iack_i)
begin
    if (int_buff || int_buff1) begin
//
//in case of interrupt hold valut, to be written to stack
      pc= pc_buf;
//    end else if (pis_l) begin
//      pc = {pc_buf[22:8], alu[7:0]};
    end else if (pc_wait) begin
        casex (op1_out)
          `OC8051_ACALL :  pc= pc_buf + 16'h2;
          `OC8051_AJMP :   pc= pc_buf + 16'h2;

        //op_code [7:3]
          `OC8051_CJNE_R : pc= pc_buf + 16'h3;
          `OC8051_DJNZ_R : pc= pc_buf + 16'h2;
          `OC8051_MOV_DR : pc= pc_buf + 16'h2;
          `OC8051_MOV_CR : pc= pc_buf + 16'h2;
          `OC8051_MOV_RD : pc= pc_buf + 16'h2;

        //op_code [7:1]
          `OC8051_CJNE_I : pc= pc_buf + 16'h3;
          `OC8051_MOV_ID : pc= pc_buf + 16'h2;
          `OC8051_MOV_DI : pc= pc_buf + 16'h2;
          `OC8051_MOV_CI : pc= pc_buf + 16'h2;

        //op_code [7:0]
          `OC8051_ADD_D :  pc= pc_buf + 16'h2;
          `OC8051_ADD_C :  pc= pc_buf + 16'h2;
          `OC8051_ADDC_D : pc= pc_buf + 16'h2;
          `OC8051_ADDC_C : pc= pc_buf + 16'h2;
          `OC8051_ANL_D :  pc= pc_buf + 16'h2;
          `OC8051_ANL_C :  pc= pc_buf + 16'h2;
          `OC8051_ANL_DD : pc= pc_buf + 16'h2;
          `OC8051_ANL_DC : pc= pc_buf + 16'h3;
          `OC8051_ANL_B :  pc= pc_buf + 16'h2;
          `OC8051_ANL_NB : pc= pc_buf + 16'h2;
          `OC8051_CJNE_D : pc= pc_buf + 16'h3;
          `OC8051_CJNE_C : pc= pc_buf + 16'h3;
          `OC8051_CLR_B :  pc= pc_buf + 16'h2;
          `OC8051_CPL_B :  pc= pc_buf + 16'h2;
          `OC8051_DEC_D :  pc= pc_buf + 16'h2;
          `OC8051_DJNZ_D : pc= pc_buf + 16'h3;
          `OC8051_INC_D :  pc= pc_buf + 16'h2;
          `OC8051_JB :     pc= pc_buf + 16'h3;
          `OC8051_JBC :    pc= pc_buf + 16'h3;
          `OC8051_JC :     pc= pc_buf + 16'h2;
          `OC8051_JNB :    pc= pc_buf + 16'h3;
          `OC8051_JNC :    pc= pc_buf + 16'h2;
          `OC8051_JNZ :    pc= pc_buf + 16'h2;
          `OC8051_JZ :     pc= pc_buf + 16'h2;
          `OC8051_LCALL :  pc= pc_buf + 16'h3;
          `OC8051_LJMP :   pc= pc_buf + 16'h3;
          `OC8051_MOV_D :  pc= pc_buf + 16'h2;
          `OC8051_MOV_C :  pc= pc_buf + 16'h2;
          `OC8051_MOV_DA : pc= pc_buf + 16'h2;
          `OC8051_MOV_DD : pc= pc_buf + 16'h3;
          `OC8051_MOV_CD : pc= pc_buf + 16'h3;
          `OC8051_MOV_BC : pc= pc_buf + 16'h2;
          `OC8051_MOV_CB : pc= pc_buf + 16'h2;
          `OC8051_MOV_DP : pc= pc_buf + 16'h3;
          `OC8051_ORL_D :  pc= pc_buf + 16'h2;
          `OC8051_ORL_C :  pc= pc_buf + 16'h2;
          `OC8051_ORL_AD : pc= pc_buf + 16'h2;
          `OC8051_ORL_CD : pc= pc_buf + 16'h3;
          `OC8051_ORL_B :  pc= pc_buf + 16'h2;
          `OC8051_ORL_NB : pc= pc_buf + 16'h2;
          `OC8051_POP :    pc= pc_buf + 16'h2;
          `OC8051_PUSH :   pc= pc_buf + 16'h2;
          `OC8051_SETB_B : pc= pc_buf + 16'h2;
          `OC8051_SJMP :   pc= pc_buf + 16'h2;
          `OC8051_SUBB_D : pc= pc_buf + 16'h2;
          `OC8051_SUBB_C : pc= pc_buf + 16'h2;
          `OC8051_XCH_D :  pc= pc_buf + 16'h2;
          `OC8051_XRL_D :  pc= pc_buf + 16'h2;
          `OC8051_XRL_C :  pc= pc_buf + 16'h2;
          `OC8051_XRL_AD : pc= pc_buf + 16'h2;
          `OC8051_XRL_CD : pc= pc_buf + 16'h3;
          default:         pc= pc_buf + 16'h1;
        endcase
//
//in case of instructions that use more than one clock hold current pc
    end else begin
      pc= pc_buf;
   end
end


//
//interrupt buffer
always @(posedge clk) // or posedge rst)
  if (rst) begin
    int_buff1 <= #1 1'b0;
  end else begin
    int_buff1 <= #1 int_buff;
  end

always @(posedge clk) // or posedge rst)
  if (rst) begin
    int_buff <= #1 1'b0;
  end else if (intr) begin
    int_buff <= #1 1'b1;
  end else if (pc_wait)
    int_buff <= #1 1'b0;

wire [7:0]  pcs_source;
reg  [15:0] pcs_result;
reg         pcs_cy;

assign pcs_source = pc_wr_sel[0] ? op3_out : op2_out;

always @(pcs_source or pc or pcs_cy)
begin
  if (pcs_source[7]) begin
    {pcs_cy, pcs_result[7:0]} = {1'b0, pc[7:0]} + {1'b0, pcs_source};
    pcs_result[15:8] = pc[15:8] - {7'h0, !pcs_cy};
  end else pcs_result = pc + {8'h00, pcs_source};
end


always @(posedge clk) // or posedge rst)
begin
  if (rst) begin
    pc_buf <= #1 `OC8051_RST_PC;
  end else begin
    if (pc_wr) begin
//
//case of writing new value to pc (jupms)
      case (pc_wr_sel)
        `OC8051_PIS_ALU: pc_buf        <= #1 alu;
        `OC8051_PIS_AL:  pc_buf[7:0]   <= #1 alu[7:0];
        `OC8051_PIS_AH:  pc_buf[15:8]  <= #1 alu[7:0];
        `OC8051_PIS_I11: pc_buf[10:0]  <= #1 {op1_out[7:5], op2_out};
        `OC8051_PIS_I16: pc_buf        <= #1 {op2_out, op3_out};
        `OC8051_PIS_SO1: pc_buf        <= #1 pcs_result;
        `OC8051_PIS_SO2: pc_buf        <= #1 pcs_result;
      endcase
    end else
//
//or just remember current
      pc_buf <= #1 pc;
  end
end


always @(posedge clk) // or posedge rst)
  if (rst)
    ddat_ir <= #1 8'h00;
  else if (dack_i)
    ddat_ir <= #1 ddat_i;
*/

////////////////////////
always @(posedge clk) // or posedge rst)
  if (rst) begin
    rn_r      <= #1 5'd0;
    ri_r      <= #1 8'h00;
    imm_r     <= #1 8'h00;
    imm2_r    <= #1 8'h00;
    rd_addr_r <= #1 1'b0;
    op1_r     <= #1 8'h0;
    dack_ir   <= #1 1'b0;
    sp_r      <= #1 1'b0;
    pc_wr_r   <= #1 1'b0;
    pc_wr_r2  <= #1 1'b0;
  end else begin
    rn_r      <= #1 rn;
    ri_r      <= #1 ri;
    imm_r     <= #1 imm;
    imm2_r    <= #1 imm2;
    rd_addr_r <= #1 rd_addr[7];
    op1_r     <= #1 op1_out;
    dack_ir   <= #1 dack_i;
    sp_r      <= #1 sp;
    pc_wr_r   <= #1 pc_wr && (pc_wr_sel != `OC8051_PIS_AH);
    pc_wr_r2  <= #1 pc_wr_r;
  end

always @(posedge clk) // or posedge rst)
  if (rst) begin
    inc_pc_r  <= #1 1'b1;
  end else if (istb) begin
    inc_pc_r  <= #1 inc_pc;
  end

reg [15:0] pc_log;
reg [15:0] pc_log_prev;
always @(posedge clk)
begin
    if (rst) begin
        pc_log      <= 0;
        pc_log_prev <= 0;
    end
    else begin
        if (decoder_new_valid_pc) begin
            pc_log  <= pc;
            pc_log_prev <= pc_log;
        end
    end
end

 assign m1__DOT__oc8051_memory_interface1__DOT__pc = pc;
 assign m1__DOT__oc8051_memory_interface1__DOT__ddat_o = ddat_o;
 assign m1__DOT__oc8051_memory_interface1__DOT__dadr_o = dadr_o;
endmodule
//////////////////////////////////////////////////////////////////////
////                                                              ////
////  8051 data ram                                               ////
////                                                              ////
////  This file is part of the 8051 cores project                 ////
////  http://www.opencores.org/cores/8051/                        ////
////                                                              ////
////  Description                                                 ////
////   data ram                                                   ////
////                                                              ////
////  To Do:                                                      ////
////   nothing                                                    ////
////                                                              ////
////  Author(s):                                                  ////
////      - Simon Teran, simont@opencores.org                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.10  2003/06/20 13:36:37  simont
// ram modules added.
//
// Revision 1.9  2003/06/17 14:17:22  simont
// BIST signals added.
//
// Revision 1.8  2003/04/02 16:12:04  simont
// generic_dpram used
//
// Revision 1.7  2003/04/02 11:26:21  simont
// updating...
//
// Revision 1.6  2003/01/26 14:19:22  rherveille
// Replaced oc8051_ram by generic_dpram.
//
// Revision 1.5  2003/01/13 14:14:41  simont
// replace some modules
//
// Revision 1.4  2002/09/30 17:33:59  simont
// prepared header
//
//


module oc8051_ram_top (clk, 
                       rst, 
		       rd_addr, 
		       rd_data, 
		       wr_addr, 
		       bit_addr, 
		       wr_data, 
		       wr, 
		       bit_data_in, 
		       bit_data_out,
                       iram
`ifdef OC8051_BIST
         ,
         scanb_rst,
         scanb_clk,
         scanb_si,
         scanb_so,
         scanb_en
`endif
		       );

// on-chip ram-size (2**ram_aw bytes)
parameter ram_aw = 8; // default 256 bytes


//
// clk          (in)  clock
// rd_addr      (in)  read addres [oc8051_ram_rd_sel.out]
// rd_data      (out) read data [oc8051_ram_sel.in_ram]
// wr_addr      (in)  write addres [oc8051_ram_wr_sel.out]
// bit_addr     (in)  bit addresable instruction [oc8051_decoder.bit_addr -r]
// wr_data      (in)  write data [oc8051_alu.des1]
// wr           (in)  write [oc8051_decoder.wr -r]
// bit_data_in  (in)  bit data input [oc8051_alu.desCy]
// bit_data_out (out)  bit data output [oc8051_ram_sel.bit_in]
//

input clk, wr, bit_addr, bit_data_in, rst;
input [7:0] wr_data;
input [7:0] rd_addr, wr_addr;
output bit_data_out;
output [7:0] rd_data;

output [2047:0] iram;

`ifdef OC8051_BIST
input   scanb_rst;
input   scanb_clk;
input   scanb_si;
output  scanb_so;
input   scanb_en;
`endif

// rd_addr_m    read address modified
// wr_addr_m    write address modified
// wr_data_m    write data modified
reg [7:0] wr_data_m;
reg [7:0] rd_addr_m, wr_addr_m;


wire       rd_en;
reg        bit_addr_r,
           rd_en_r;
reg  [7:0] wr_data_r;
wire [7:0] rd_data_m;
reg  [2:0] bit_select;

assign bit_data_out = rd_data[bit_select];


assign rd_data = rd_en_r ? wr_data_r: rd_data_m;
assign rd_en   = (rd_addr_m == wr_addr_m) & wr;

oc8051_ram_256x8_two_bist oc8051_idata(
                           .clk     ( clk        ),
                           .rst     ( rst        ),
			   .rd_addr ( rd_addr_m  ),
			   .rd_data ( rd_data_m  ),
			   .rd_en   ( !rd_en     ),
			   .wr_addr ( wr_addr_m  ),
			   .wr_data ( wr_data_m  ),
			   .wr_en   ( 1'b1       ),
			   .wr      ( wr         ),
                           .iram    ( iram       )
`ifdef OC8051_BIST
         ,
         .scanb_rst(scanb_rst),
         .scanb_clk(scanb_clk),
         .scanb_si(scanb_si),
         .scanb_so(scanb_so),
         .scanb_en(scanb_en)
`endif
			   );

always @(posedge clk)// or posedge rst)
  if (rst) begin
    bit_addr_r <= #1 1'b0;
    bit_select <= #1 3'b0;
  end else begin
    bit_addr_r <= #1 bit_addr;
    bit_select <= #1 rd_addr[2:0];
  end


always @(posedge clk)// or posedge rst)
  if (rst) begin
    rd_en_r    <= #1 1'b0;
    wr_data_r  <= #1 8'h0;
  end else begin
    rd_en_r    <= #1 rd_en;
    wr_data_r  <= #1 wr_data_m;
  end


always @(rd_addr or bit_addr)
  casex ( {bit_addr, rd_addr[7]} ) 
      2'b0?: rd_addr_m = rd_addr;
      2'b10: rd_addr_m = {4'b0010, rd_addr[6:3]};
      2'b11: rd_addr_m = {1'b1, rd_addr[6:3], 3'b000};
  endcase


always @(wr_addr or bit_addr_r)
  casex ( {bit_addr_r, wr_addr[7]} ) 
      2'b0?: wr_addr_m = wr_addr;
      2'b10: wr_addr_m = {8'h00, 4'b0010, wr_addr[6:3]};
      2'b11: wr_addr_m = {8'h00, 1'b1, wr_addr[6:3], 3'b000};
  endcase


always @(rd_data or bit_select or bit_data_in or wr_data or bit_addr_r)
  casex ( {bit_addr_r, bit_select} ) 
      4'b0_???: wr_data_m = wr_data;
      4'b1_000: wr_data_m = {rd_data[7:1], bit_data_in};
      4'b1_001: wr_data_m = {rd_data[7:2], bit_data_in, rd_data[0]};
      4'b1_010: wr_data_m = {rd_data[7:3], bit_data_in, rd_data[1:0]};
      4'b1_011: wr_data_m = {rd_data[7:4], bit_data_in, rd_data[2:0]};
      4'b1_100: wr_data_m = {rd_data[7:5], bit_data_in, rd_data[3:0]};
      4'b1_101: wr_data_m = {rd_data[7:6], bit_data_in, rd_data[4:0]};
      4'b1_110: wr_data_m = {rd_data[7], bit_data_in, rd_data[5:0]};
      4'b1_111: wr_data_m = {bit_data_in, rd_data[6:0]};
  endcase


endmodule
//////////////////////////////////////////////////////////////////////
////                                                              ////
////  8051 internal program rom                                   ////
////                                                              ////
////  This file is part of the 8051 cores project                 ////
////  http://www.opencores.org/cores/8051/                        ////
////                                                              ////
////  Description                                                 ////
////   internal program rom for 8051 core                         ////
////                                                              ////
////  To Do:                                                      ////
////   Nothing                                                    ////
////                                                              ////
////  Author(s):                                                  ////
////      - Simon Teran, simont@opencores.org                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.3  2003/06/03 17:09:57  simont
// pipelined acces to axternal instruction interface added.
//
// Revision 1.2  2003/04/03 19:17:19  simont
// add `include "oc8051_defines.v"
//
// Revision 1.1  2003/04/02 11:16:22  simont
// initial inport
//
// Revision 1.4  2002/10/23 17:00:18  simont
// signal es_int=1'b0
//
// Revision 1.3  2002/09/30 17:34:01  simont
// prepared header
//
//

module oc8051_rom (rst, clk, ea_int, data_o, cxrom_data_out);

    input rst, clk;
    input [31:0] cxrom_data_out;
    output ea_int;
    output [31:0] data_o;
    

    reg [31:0] data_o;
    wire ea;

    reg ea_int;


    assign ea = 1'b0;

    always @(posedge clk)// or posedge rst)
      if (rst) ea_int <= #1 1'b1;
      else ea_int <= #1 !ea;

    always @(posedge clk)
    begin
      data_o <= #1 cxrom_data_out;
    end

endmodule


//////////////////////////////////////////////////////////////////////
////                                                              ////
////  8051 cores sfr top level module                             ////
////                                                              ////
////  This file is part of the 8051 cores project                 ////
////  http://www.opencores.org/cores/8051/                        ////
////                                                              ////
////  Description                                                 ////
////   special function registers for oc8051                      ////
////                                                              ////
////  To Do:                                                      ////
////    nothing                                                   ////
////                                                              ////
////  Author(s):                                                  ////
////      - Simon Teran, simont@opencores.org                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.14  2003/05/07 12:39:20  simont
// fix bug in case of sequence of inc dptr instrucitons.
//
// Revision 1.13  2003/05/05 15:46:37  simont
// add aditional alu destination to solve critical path.
//
// Revision 1.12  2003/04/29 11:24:31  simont
// fix bug in case execution of two data dependent instructions.
//
// Revision 1.11  2003/04/25 17:15:51  simont
// change branch instruction execution (reduse needed clock periods).
//
// Revision 1.10  2003/04/10 12:43:19  simont
// defines for pherypherals added
//
// Revision 1.9  2003/04/09 16:24:03  simont
// change wr_sft to 2 bit wire.
//
// Revision 1.8  2003/04/09 15:49:42  simont
// Register oc8051_sfr dato output, add signal wait_data.
//
// Revision 1.7  2003/04/07 14:58:02  simont
// change sfr's interface.
//
// Revision 1.6  2003/04/07 13:29:16  simont
// change uart to meet timing.
//
// Revision 1.5  2003/04/04 10:35:07  simont
// signal prsc_ow added.
//
// Revision 1.4  2003/03/28 17:45:57  simont
// change module name.
//
// Revision 1.3  2003/01/21 13:51:30  simont
// add include oc8051_defines.v
//
// Revision 1.2  2003/01/13 14:14:41  simont
// replace some modules
//
// Revision 1.1  2002/11/05 17:22:27  simont
// initial import
//
//
module oc8051_sfr (rst, clk,
       adr0, adr1, dat0, 
       dat1, dat2, bit_in,
       des_acc,
       we, wr_bit,
       bit_out,
       wr_sfr, acc, b_reg,
       ram_wr_sel, ram_rd_sel, 
       sp, sp_w, 
       bank_sel, 
       desAc, desOv,
       srcAc, cy,
       psw_set, rmw,
       comp_sel,
       comp_wait,
       psw,
       p,

//`ifdef OC8051_PORTS

//  `ifdef OC8051_PORT0
       p0_out,
       p0_in,
//  `endif

//  `ifdef OC8051_PORT1
       p1_out,
       p1_in,
//  `endif

//  `ifdef OC8051_PORT2
       p2_out,
       p2_in,
//  `endif

//  `ifdef OC8051_PORT3
       p3_out,
       p3_in,
//  `endif

//`endif


  `ifdef OC8051_UART
       rxd, txd,
  `endif

       int_ack, intr,
       int0, int1,
       int_src,
       reti,

  `ifdef OC8051_TC01
       t0, t1,
  `endif

  `ifdef OC8051_TC2
       t2, t2ex,
  `endif
        ie,

       dptr_hi, dptr_lo,
       wait_data, m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p3_out, m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__tcon, m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ip, m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p0_out, m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ie, m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p1_out, m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_lo, m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p2_out, m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_hi, m1__DOT__oc8051_sfr1__DOT__oc8051_b_register__DOT__data_out, m1__DOT__oc8051_sfr1__DOT__oc8051_psw1__DOT__data, m1__DOT__oc8051_sfr1__DOT__oc8051_acc1__DOT__data_out, m1__DOT__oc8051_sfr1__DOT__oc8051_sp1__DOT__sp_out);
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p3_out;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__tcon;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ip;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p0_out;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ie;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p1_out;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_lo;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p2_out;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_hi;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_b_register__DOT__data_out;
 output [6:0] m1__DOT__oc8051_sfr1__DOT__oc8051_psw1__DOT__data;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_acc1__DOT__data_out;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_sp1__DOT__sp_out;


input       rst,	// reset - pin
	    clk,	// clock - pin
            we,		// write enable
	    bit_in,
	    desAc,
	    desOv,
	    rmw;
input       int_ack,
            int0,
	    int1,
            reti,
	    wr_bit;
input [1:0] psw_set,
            wr_sfr,
	    comp_sel;
input [2:0] ram_rd_sel,
            ram_wr_sel;
input [7:0] adr0, 	//address 0 input
            adr1, 	//address 1 input
	    des_acc,
	    dat1,	//data 1 input (des1)
            dat2;	//data 2 input (des2)

output       bit_out,
             intr,
             srcAc,
	     cy,
	     wait_data,
	     comp_wait;
output [1:0] bank_sel;
output [7:0] dat0,	//data output
	     int_src,
	     dptr_hi,
	     dptr_lo,
	     acc,
             b_reg,
             psw; 
output       p;
output [7:0] sp;
output [7:0] sp_w;

// ports
//`ifdef OC8051_PORTS

//`ifdef OC8051_PORT0
input  [7:0] p0_in;
output [7:0] p0_out;
wire   [7:0] p0_data;
//`endif

//`ifdef OC8051_PORT1
input  [7:0] p1_in;
output [7:0] p1_out;
wire   [7:0] p1_data;
//`endif

//`ifdef OC8051_PORT2
input  [7:0] p2_in;
output [7:0] p2_out;
wire   [7:0] p2_data;
//`endif

//`ifdef OC8051_PORT3
input  [7:0] p3_in;
output [7:0] p3_out;
wire   [7:0] p3_data;
//`endif

//`endif

output [7:0] ie;

// serial interface
`ifdef OC8051_UART
input        rxd;
output       txd;
`endif

// timer/counter 0,1
`ifdef OC8051_TC01
input	     t0, t1;
`endif

// timer/counter 2
`ifdef OC8051_TC2
input	     t2, t2ex;
`endif

reg        bit_out, 
           wait_data;
reg [7:0]  dat0,
           adr0_r;

reg        wr_bit_r;
reg [2:0]  ram_wr_sel_r;


wire       p,
           uart_int,
	   tf0,
	   tf1,
	   tr0,
	   tr1,
           rclk,
           tclk,
	   brate2,
	   tc2_int;


wire [7:0] b_reg, 
           psw,

`ifdef OC8051_TC2
  // t/c 2
	   t2con, 
	   tl2, 
	   th2, 
	   rcap2l, 
	   rcap2h,
`endif

`ifdef OC8051_TC01
  // t/c 0,1
	   tmod, 
	   tl0, 
	   th0, 
	   tl1,
	   th1,
`endif

  // serial interface
`ifdef OC8051_UART
           scon, 
	   pcon, 
	   sbuf,
`endif

  //interrupt control
	   ie, 
	   tcon, 
	   ip;


reg        pres_ow;
reg [3:0]  prescaler;


assign cy = psw[7];
assign srcAc = psw [6];

wire [7:0] acc_cur, psw_next;

//
// accumulator
// ACC
oc8051_acc oc8051_acc1(.clk(clk), 
                       .rst(rst), 
		       .bit_in(bit_in), 
		       .data_in(des_acc),
		       .data2_in(dat2),
		       .wr(we),
		       .wr_bit(wr_bit_r),
		       .wr_sfr(wr_sfr),
		       .wr_addr(adr1),
		       .data_out(acc),
               .data_out_cur(acc_cur),
		       .p(p) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_acc1__DOT__data_out(m1__DOT__oc8051_sfr1__DOT__oc8051_acc1__DOT__data_out));


//
// b register
// B
oc8051_b_register oc8051_b_register (.clk(clk),
                                     .rst(rst),
				     .bit_in(bit_in),
				     .data_in(des_acc),
				     .wr(we), 
				     .wr_bit(wr_bit_r), 
				     .wr_addr(adr1),
				     .data_out(b_reg) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_b_register__DOT__data_out(m1__DOT__oc8051_sfr1__DOT__oc8051_b_register__DOT__data_out));

//
//stack pointer
// SP
oc8051_sp oc8051_sp1(.clk(clk), 
                     .rst(rst), 
		     .ram_rd_sel(ram_rd_sel), 
		     .ram_wr_sel(ram_wr_sel), 
		     .wr_addr(adr1), 
		     .wr(we), 
		     .wr_bit(wr_bit_r), 
		     .data_in(dat1), 
		     .sp_out(sp), 
		     .sp_w(sp_w) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_sp1__DOT__sp_out(m1__DOT__oc8051_sfr1__DOT__oc8051_sp1__DOT__sp_out));

//
//data pointer
// DPTR, DPH, DPL
oc8051_dptr oc8051_dptr1(.clk(clk), 
                         .rst(rst), 
			 .addr(adr1), 
			 .data_in(des_acc),
			 .data2_in(dat2), 
			 .wr(we), 
			 .wr_bit(wr_bit_r),
			 .data_hi(dptr_hi),
			 .data_lo(dptr_lo), 
			 .wr_sfr(wr_sfr) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_hi(m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_hi) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_lo(m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_lo));


//
//program status word
// PSW
oc8051_psw oc8051_psw1 (.clk(clk), 
                        .rst(rst), 
			.wr_addr(adr1), 
			.data_in(dat1),
			.wr(we), 
			.wr_bit(wr_bit_r), 
			.data_out(psw), 
			.p(p), 
			.cy_in(bit_in),
			.ac_in(desAc), 
			.ov_in(desOv), 
			.set(psw_set), 
                        .psw_next(psw_next),
			.bank_sel(bank_sel) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_psw1__DOT__data(m1__DOT__oc8051_sfr1__DOT__oc8051_psw1__DOT__data));

//
// ports
// P0, P1, P2, P3
//`ifdef OC8051_PORTS
  oc8051_ports oc8051_ports1(.clk(clk),
                           .rst(rst),
			   .bit_in(bit_in),
			   .data_in(dat1),
			   .wr(we),
			   .wr_bit(wr_bit_r),
			   .wr_addr(adr1),
		//`ifdef OC8051_PORT0
			   .p0_out(p0_out),
			   .p0_in(p0_in),
			   .p0_data(p0_data),
		//`endif

	//	`ifdef OC8051_PORT1
			   .p1_out(p1_out),
			   .p1_in(p1_in),
			   .p1_data(p1_data),
	//	`endif

	//	`ifdef OC8051_PORT2
			   .p2_out(p2_out),
			   .p2_in(p2_in),
			   .p2_data(p2_data),
	//	`endif

	//	`ifdef OC8051_PORT3
			   .p3_out(p3_out),
			   .p3_in(p3_in),
			   .p3_data(p3_data),
	//	`endif

			   .rmw(rmw) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p3_out(m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p3_out) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p2_out(m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p2_out) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p1_out(m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p1_out) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p0_out(m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p0_out));
//`endif

//
// serial interface
// SCON, SBUF
`ifdef OC8051_UART
  oc8051_uart oc8051_uatr1 (.clk(clk), 
                            .rst(rst), 
			    .bit_in(bit_in),
			    .data_in(dat1), 
			    .wr(we), 
			    .wr_bit(wr_bit_r), 
			    .wr_addr(adr1),
			    .rxd(rxd), 
			    .txd(txd), 
		// interrupt
			    .intr(uart_int),
		// baud rate sources
			    .brate2(brate2),
			    .t1_ow(tf1),
			    .pres_ow(pres_ow),
			    .rclk(rclk),
			    .tclk(tclk),
		//registers
			    .scon(scon),
			    .pcon(pcon),
			    .sbuf(sbuf));
`else
  assign uart_int = 1'b0;
`endif

//
// interrupt control
// IP, IE, TCON
oc8051_int oc8051_int1 (.clk(clk), 
                        .rst(rst), 
			.wr_addr(adr1), 
			.bit_in(bit_in),
			.ack(int_ack), 
			.data_in(dat1),
			.wr(we), 
			.wr_bit(wr_bit_r),
			.tf0(tf0), 
			.tf1(tf1), 
			.t2_int(tc2_int), 
			.tr0(tr0), 
			.tr1(tr1),
			.ie0(int0), 
			.ie1(int1),
			.uart_int(uart_int),
			.reti(reti),
			.intr(intr),
			.int_vec(int_src),
			.ie(ie),
			.tcon(tcon), 
			.ip(ip) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ip(m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ip) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__tcon(m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__tcon) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ie(m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ie));


//
// timer/counter control
// TH0, TH1, TL0, TH1, TMOD
`ifdef OC8051_TC01
  oc8051_tc oc8051_tc1(.clk(clk), 
                       .rst(rst), 
		       .wr_addr(adr1),
		       .data_in(dat1), 
		       .wr(we), 
		       .wr_bit(wr_bit_r), 
		       .ie0(int0), 
		       .ie1(int1), 
		       .tr0(tr0),
		       .tr1(tr1), 
		       .t0(t0), 
		       .t1(t1), 
		       .tf0(tf0), 
		       .tf1(tf1), 
		       .pres_ow(pres_ow),
		       .tmod(tmod), 
		       .tl0(tl0), 
		       .th0(th0), 
		       .tl1(tl1), 
		       .th1(th1));
`else
  assign tf0 = 1'b0;
  assign tf1 = 1'b0;
`endif

//
// timer/counter 2
// TH2, TL2, RCAPL2L, RCAPL2H, T2CON
`ifdef OC8051_TC2
  oc8051_tc2 oc8051_tc21(.clk(clk), 
                         .rst(rst), 
			 .wr_addr(adr1),
			 .data_in(dat1), 
			 .wr(we),
			 .wr_bit(wr_bit_r), 
			 .bit_in(bit_in), 
			 .t2(t2), 
			 .t2ex(t2ex),
			 .rclk(rclk), 
			 .tclk(tclk), 
			 .brate2(brate2), 
			 .tc2_int(tc2_int), 
			 .pres_ow(pres_ow),
			 .t2con(t2con), 
			 .tl2(tl2), 
			 .th2(th2), 
			 .rcap2l(rcap2l), 
			 .rcap2h(rcap2h));
`else
  assign tc2_int = 1'b0;
  assign rclk    = 1'b0;
  assign tclk    = 1'b0;
  assign brate2  = 1'b0;
`endif



always @(posedge clk)// or posedge rst)
  if (rst) begin
    adr0_r <= #1 8'h00;
    ram_wr_sel_r <= #1 3'b000;
    wr_bit_r <= #1 1'b0;
//    wait_data <= #1 1'b0;
  end else begin
    adr0_r <= #1 adr0;
    ram_wr_sel_r <= #1 ram_wr_sel;
    wr_bit_r <= #1 wr_bit;
  end

assign comp_wait = !(
                    ((comp_sel==`OC8051_CSS_AZ) &
		       ((wr_sfr==`OC8051_WRS_ACC1) |
		        (wr_sfr==`OC8051_WRS_ACC2) |
			((adr1==`OC8051_SFR_ACC) & we & !wr_bit_r) |
			((adr1[7:3]==`OC8051_SFR_B_ACC) & we & wr_bit_r))) |
		    ((comp_sel==`OC8051_CSS_CY) &
		       ((|psw_set) |
			((adr1==`OC8051_SFR_PSW) & we & !wr_bit_r) |
			((adr1[7:3]==`OC8051_SFR_B_PSW) & we & wr_bit_r))) |
		    ((comp_sel==`OC8051_CSS_BIT) &
		       ((adr1[7:3]==adr0[7:3]) & (~&adr1[2:0]) &  we & !wr_bit_r) |
		       ((adr1==adr0) & adr1[7] & we & !wr_bit_r)));



//
//set output in case of address (byte)
always @(posedge clk)// or posedge rst)
begin
  if (rst) begin
    dat0 <= #1 8'h00;
    wait_data <= #1 1'b0;
  end else if ((wr_sfr==`OC8051_WRS_DPTR) & (adr0==`OC8051_SFR_DPTR_LO)) begin				//write and read same address
    dat0 <= #1 des_acc;
    wait_data <= #1 1'b0;
  end else if (
      (
        ((wr_sfr==`OC8051_WRS_ACC1) & (adr0==`OC8051_SFR_ACC)) | 	//write to acc
//        ((wr_sfr==`OC8051_WRS_DPTR) & (adr0==`OC8051_SFR_DPTR_LO)) |	//write to dpl
        (adr1[7] & (adr1==adr0) & we & !wr_bit_r) |			//write and read same address
        (adr1[7] & (adr1[7:3]==adr0[7:3]) & (~&adr0[2:0]) &  we & wr_bit_r) //write bit addressable to read address
      ) & !wait_data) begin
    wait_data <= #1 1'b1;

  end else if ((
      ((|psw_set) & (adr0==`OC8051_SFR_PSW)) |
      ((wr_sfr==`OC8051_WRS_ACC2) & (adr0==`OC8051_SFR_ACC)) | 	//write to acc
      ((wr_sfr==`OC8051_WRS_DPTR) & (adr0==`OC8051_SFR_DPTR_HI))	//write to dph
      ) & !wait_data) begin
    wait_data <= #1 1'b1;

  end else begin
    case (adr0) 
      `OC8051_SFR_ACC: 		dat0 <= #1 acc;
      `OC8051_SFR_PSW: 		dat0 <= #1 psw;

//`ifdef OC8051_PORTS
//  `ifdef OC8051_PORT0
      `OC8051_SFR_P0: 		dat0 <= #1 p0_data;
//  `endif

//  `ifdef OC8051_PORT1
      `OC8051_SFR_P1: 		dat0 <= #1 p1_data;
//  `endif

//  `ifdef OC8051_PORT2
      `OC8051_SFR_P2: 		dat0 <= #1 p2_data;
//  `endif

//  `ifdef OC8051_PORT3
      `OC8051_SFR_P3: 		dat0 <= #1 p3_data;
//  `endif
//`endif

      `OC8051_SFR_SP: 		dat0 <= #1 sp;
      `OC8051_SFR_B: 		dat0 <= #1 b_reg;
      `OC8051_SFR_DPTR_HI: 	dat0 <= #1 dptr_hi;
      `OC8051_SFR_DPTR_LO: 	dat0 <= #1 dptr_lo;

`ifdef OC8051_UART
      `OC8051_SFR_SCON: 	dat0 <= #1 scon;
      `OC8051_SFR_SBUF: 	dat0 <= #1 sbuf;
      `OC8051_SFR_PCON: 	dat0 <= #1 pcon;
`endif

`ifdef OC8051_TC01
      `OC8051_SFR_TH0: 		dat0 <= #1 th0;
      `OC8051_SFR_TH1: 		dat0 <= #1 th1;
      `OC8051_SFR_TL0: 		dat0 <= #1 tl0;
      `OC8051_SFR_TL1: 		dat0 <= #1 tl1;
      `OC8051_SFR_TMOD: 	dat0 <= #1 tmod;
`endif

      `OC8051_SFR_IP: 		dat0 <= #1 ip;
      `OC8051_SFR_IE: 		dat0 <= #1 ie;
      `OC8051_SFR_TCON: 	dat0 <= #1 tcon;

`ifdef OC8051_TC2
      `OC8051_SFR_RCAP2H: 	dat0 <= #1 rcap2h;
      `OC8051_SFR_RCAP2L: 	dat0 <= #1 rcap2l;
      `OC8051_SFR_TH2:    	dat0 <= #1 th2;
      `OC8051_SFR_TL2:    	dat0 <= #1 tl2;
      `OC8051_SFR_T2CON:  	dat0 <= #1 t2con;
`endif

      default: 			dat0 <= #1 8'h00;
    endcase
    wait_data <= #1 1'b0;
  end
end


//
//set output in case of address (bit)

wire port_rd = ( adr0[7:3] == `OC8051_SFR_B_P0 ||
                 adr0[7:3] == `OC8051_SFR_B_P1 ||
                 adr0[7:3] == `OC8051_SFR_B_P2 ||
                 adr0[7:3] == `OC8051_SFR_B_P3 );

wire valid_sfr = ( adr0[7:3] == `OC8051_SFR_B_ACC   ||
                   adr0[7:3] == `OC8051_SFR_B_PSW   ||
                   adr0[7:3] == `OC8051_SFR_B_B     ||
`ifdef OC8051_ENABLE_INT
                   adr0[7:3] == `OC8051_SFR_B_IP    ||
                   adr0[7:3] == `OC8051_SFR_B_IE    ||
                   adr0[7:3] == `OC8051_SFR_B_TCON  ||
`endif
`ifdef OC8051_UART
                   adr0[7:3] == `OC8051_SFR_B_SCON  ||
`endif
                   port_rd );

always @(posedge clk)// or posedge rst)
begin
  if (rst)
    bit_out <= #1 1'h0;
  else if ((adr1[7:3]==adr0[7:3]) & (~|adr1[2:0]) &  we & !wr_bit_r & (!port_rd | rmw) & valid_sfr)
    bit_out <= #1 dat1[adr0[2:0]];
  else if ((wr_sfr==`OC8051_WRS_ACC1) & (adr0[7:3]==`OC8051_SFR_B_ACC)) 	//write to acc
    bit_out <= #1 acc_cur[adr0[2:0]];
  else if ((adr1==adr0) & we & wr_bit_r & valid_sfr)
    bit_out <= #1 bit_in;
  else
    case (adr0[7:3]) 
      `OC8051_SFR_B_ACC:   bit_out <= #1 acc[adr0[2:0]];
      `OC8051_SFR_B_PSW:   bit_out <= #1 psw_next[adr0[2:0]];

//`ifdef OC8051_PORTS
//  `ifdef OC8051_PORT0
      `OC8051_SFR_B_P0:    bit_out <= #1 p0_data[adr0[2:0]];
//  `endif

//  `ifdef OC8051_PORT1
      `OC8051_SFR_B_P1:    bit_out <= #1 p1_data[adr0[2:0]];
//  `endif

//  `ifdef OC8051_PORT2
      `OC8051_SFR_B_P2:    bit_out <= #1 p2_data[adr0[2:0]];
//  `endif

//  `ifdef OC8051_PORT3
      `OC8051_SFR_B_P3:    bit_out <= #1 p3_data[adr0[2:0]];
//  `endif
//`endif

      `OC8051_SFR_B_B:     bit_out <= #1 b_reg[adr0[2:0]];
      `OC8051_SFR_B_IP:    bit_out <= #1 ip[adr0[2:0]];
      `OC8051_SFR_B_IE:    bit_out <= #1 ie[adr0[2:0]];
      `OC8051_SFR_B_TCON:  bit_out <= #1 tcon[adr0[2:0]];

`ifdef OC8051_UART
      `OC8051_SFR_B_SCON:  bit_out <= #1 scon[adr0[2:0]];
`endif

`ifdef OC8051_TC2
      `OC8051_SFR_B_T2CON: bit_out <= #1 t2con[adr0[2:0]];
`endif

      default:             bit_out <= #1 1'b0;
    endcase
end

always @(posedge clk)// or posedge rst)
begin
  if (rst) begin
    prescaler <= #1 4'h0;
    pres_ow <= #1 1'b0;
  end else if (prescaler==4'b1011) begin
    prescaler <= #1 4'h0;
    pres_ow <= #1 1'b1;
  end else begin
    prescaler <= #1 prescaler + 4'h1;
    pres_ow <= #1 1'b0;
  end
end

endmodule


//////////////////////////////////////////////////////////////////////
////                                                              ////
////  8051 cores top level module                                 ////
////                                                              ////
////  This file is part of the 8051 cores project                 ////
////  http://www.opencores.org/cores/8051/                        ////
////                                                              ////
////  Description                                                 ////
////  8051 definitions.                                           ////
////                                                              ////
////  To Do:                                                      ////
////    nothing                                                   ////
////                                                              ////
////  Author(s):                                                  ////
////      - Simon Teran, simont@opencores.org                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.32  2003/06/20 13:36:37  simont
// ram modules added.
//
// Revision 1.31  2003/06/17 14:17:22  simont
// BIST signals added.
//
// Revision 1.30  2003/06/03 16:51:24  simont
// include "8051_defines" added.
//
// Revision 1.29  2003/05/07 12:36:03  simont
// chsnge comp.des to des1
//
// Revision 1.28  2003/05/06 09:41:35  simont
// remove define OC8051_AS2_PCL, chane signal src_sel2 to 2 bit wide.
//
// Revision 1.27  2003/05/05 15:46:37  simont
// add aditional alu destination to solve critical path.
//
// Revision 1.26  2003/04/29 11:24:31  simont
// fix bug in case execution of two data dependent instructions.
//
// Revision 1.25  2003/04/25 17:15:51  simont
// change branch instruction execution (reduse needed clock periods).
//
// Revision 1.24  2003/04/11 10:05:59  simont
// deifne OC8051_ROM added
//
// Revision 1.23  2003/04/10 12:43:19  simont
// defines for pherypherals added
//
// Revision 1.22  2003/04/09 16:24:04  simont
// change wr_sft to 2 bit wire.
//
// Revision 1.21  2003/04/09 15:49:42  simont
// Register oc8051_sfr dato output, add signal wait_data.
//
// Revision 1.20  2003/04/03 19:13:28  simont
// Include instruction cache.
//
// Revision 1.19  2003/04/02 15:08:30  simont
// raname signals.
//
// Revision 1.18  2003/01/13 14:14:41  simont
// replace some modules
//
// Revision 1.17  2002/11/05 17:23:54  simont
// add module oc8051_sfr, 256 bytes internal ram
//
// Revision 1.16  2002/10/28 14:55:00  simont
// fix bug in interface to external data ram
//
// Revision 1.15  2002/10/23 16:53:39  simont
// fix bugs in instruction interface
//
// Revision 1.14  2002/10/17 18:50:00  simont
// cahnge interface to instruction rom
//
// Revision 1.13  2002/09/30 17:33:59  simont
// prepared header
//
//


module oc8051_top (wb_rst_i, wb_clk_i,
//interface to instruction rom
                wbi_adr_o, 
                wbi_dat_i, 
                wbi_stb_o, 
                wbi_ack_i, 
                wbi_cyc_o, 
                wbi_err_i,

//interface to data ram
                wbd_dat_i, 
                wbd_dat_o,
                wbd_adr_o, 
                wbd_we_o, 
                wbd_ack_i,
                wbd_stb_o, 
                wbd_cyc_o, 
                wbd_err_i,

// cxrom interface
                cxrom_addr,
                cxrom_data_out,

// interrupt interface
                int0_i, 
                int1_i,


// port interface
//  `ifdef OC8051_PORTS
//        `ifdef OC8051_PORT0
                p0_i,
                p0_o,
//        `endif

//        `ifdef OC8051_PORT1
                p1_i,
                p1_o,
//        `endif

//        `ifdef OC8051_PORT2
                p2_i,
                p2_o,
//        `endif

//        `ifdef OC8051_PORT3
                p3_i,
                p3_o,
//        `endif
//  `endif

// serial interface
        `ifdef OC8051_UART
                rxd_i, txd_o,
        `endif

// counter interface
        `ifdef OC8051_TC01
                t0_i, t1_i,
        `endif

        `ifdef OC8051_TC2
                t2_i, t2ex_i,
        `endif

// BIST
`ifdef OC8051_BIST
         scanb_rst,
         scanb_clk,
         scanb_si,
         scanb_so,
         scanb_en,
`endif
// external access (active low)
                ea_in,
                pc_change,
                pc,
                pc_log,
                pc_log_prev,
                acc,
                b_reg,
                dptr,
                ie,
                iram,
                psw, p,
                sp,
                op1, op2, op3,
                op1_d,
                decoder_state
                , m1__DOT__iram, m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p3_out, m1__DOT__oc8051_sfr1__DOT__oc8051_psw1__DOT__data, m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p2_out, m1__DOT__oc8051_sfr1__DOT__oc8051_sp1__DOT__sp_out, m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p1_out, m1__DOT__op1, m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p0_out, m1__DOT__op2, m1__DOT__op3, m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_hi, m1__DOT__ea_in, m1__DOT__oc8051_memory_interface1__DOT__dadr_o, m1__DOT__oc8051_memory_interface1__DOT__ddat_o, m1__DOT__oc8051_memory_interface1__DOT__pc, m1__DOT__oc8051_sfr1__DOT__oc8051_acc1__DOT__data_out, m1__DOT__oc8051_sfr1__DOT__oc8051_b_register__DOT__data_out, m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__tcon, m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_lo, m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ie, m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ip);
 output [2047:0] m1__DOT__iram;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p3_out;
 output [6:0] m1__DOT__oc8051_sfr1__DOT__oc8051_psw1__DOT__data;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p2_out;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_sp1__DOT__sp_out;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p1_out;
 output [7:0] m1__DOT__op1;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p0_out;
 output [7:0] m1__DOT__op2;
 output [7:0] m1__DOT__op3;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_hi;
 output  m1__DOT__ea_in;
 output [15:0] m1__DOT__oc8051_memory_interface1__DOT__dadr_o;
 output [7:0] m1__DOT__oc8051_memory_interface1__DOT__ddat_o;
 output [15:0] m1__DOT__oc8051_memory_interface1__DOT__pc;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_acc1__DOT__data_out;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_b_register__DOT__data_out;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__tcon;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_lo;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ie;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ip;



input         wb_rst_i;         // reset input
input 	      wb_clk_i;         // clock input
input         int0_i;         // interrupt 0
input         int1_i;           // interrupt 1
(* keep *)input         ea_in;           // external access;
input         wbd_ack_i;        // data acknowalge
input         wbi_ack_i;        // instruction acknowlage
input         wbd_err_i;        // data error
input         wbi_err_i;        // instruction error

output        pc_change;
output [15:0] pc;
output [15:0] pc_log;
output [15:0] pc_log_prev;
output [7:0]  psw;
output p;
output [7:0]  sp;
output [7:0]  acc;
output [7:0]  b_reg;
output [15:0] dptr;
(* keep *)output [2047:0] iram;
output [7:0] op1, op1_d, op2, op3;
output [7:0]  ie;

input [7:0]   wbd_dat_i;        // ram data input
input [31:0]  wbi_dat_i;        // rom data input

output        wbd_we_o,         // data write enable
              wbd_stb_o,        // data strobe
              wbd_cyc_o,        // data cycle
              wbi_stb_o,        // instruction strobe
              wbi_cyc_o;        // instruction cycle

output [7:0]  wbd_dat_o;        // data output

output [15:0] wbd_adr_o,        // data address
              wbi_adr_o;        // instruction address

output [15:0] cxrom_addr;       // code xrom.
input  [31:0] cxrom_data_out;   // data and addr.
output [1:0] decoder_state;

//`ifdef OC8051_PORTS

//`ifdef OC8051_PORT0
input  [7:0]  p0_i;             // port 0 input
output [7:0]  p0_o;             // port 0 output
//`endif

//`ifdef OC8051_PORT1
input  [7:0]  p1_i;             // port 1 input
output [7:0]  p1_o;             // port 1 output
//`endif

//`ifdef OC8051_PORT2
input  [7:0]  p2_i;             // port 2 input
output [7:0]  p2_o;             // port 2 output
//`endif

//`ifdef OC8051_PORT3
input  [7:0]  p3_i;             // port 3 input
output [7:0]  p3_o;             // port 3 output
//`endif

//`endif






`ifdef OC8051_UART
input         rxd_i;            // receive
output        txd_o;            // transnmit
`endif

`ifdef OC8051_TC01
input         t0_i,             // counter 0 input
              t1_i;             // counter 1 input
`endif

`ifdef OC8051_TC2
input         t2_i,             // counter 2 input
              t2ex_i;           //
`endif

`ifdef OC8051_BIST
input   scanb_rst;
input   scanb_clk;
input   scanb_si;
output  scanb_so;
input   scanb_en;
wire    scanb_soi;
`endif


wire [15:0] dptr;
wire [7:0]  dptr_hi;
wire [7:0]  dptr_lo; 
wire [7:0]  ri;
wire [7:0]  data_out;
(* keep *) wire [7:0]  op1;
wire [7:0]  op1_d;
(* keep *) wire [7:0]  op2;
(* keep *) wire [7:0]  op3;
wire [7:0]  acc;
wire [7:0]  b_reg;
wire [7:0]  p0_out;
wire [7:0]  p1_out;
wire [7:0]  p2_out;
wire [7:0]  p3_out;
wire [7:0] sp;
wire [7:0] sp_w;

wire [31:0] idat_onchip;

wire [15:0] pc;

assign wbd_cyc_o = wbd_stb_o;

wire        src_sel3;
wire [1:0]  wr_sfr,
            src_sel2;
wire [2:0]  ram_rd_sel, // ram read
            ram_wr_sel, // ram write
            src_sel1;

wire [7:0]  ram_data,
            ram_out,    //data from ram
            sfr_out,
            wr_dat,
            wr_addr,    //ram write addres
            rd_addr;    //data ram read addres
wire        sfr_bit;

wire [1:0]  cy_sel,     //carry select; from decoder to cy_selct1
            bank_sel;
wire        rom_addr_sel,       //rom addres select; alu or pc
            rmw,
            ea_int;

wire        reti,
            intr,
            int_ack,
            istb;
wire [7:0]  int_src;

wire        mem_wait;
wire [2:0]  mem_act;
wire [3:0]  alu_op;     //alu operation (from decoder)
wire [1:0]  psw_set;    //write to psw or not; from decoder to psw (through register)

wire [7:0]  src1,       //alu sources 1
            src2,       //alu sources 2
            src3,       //alu sources 3
            des_acc,
            des1,       //alu destination 1
            des2;       //alu destinations 2
wire        desCy,      //carry out
            desAc,
            desOv,      //overflow
            alu_cy,
            wr,         //write to data ram
            wr_o;

wire        rd,         //read program rom
            pc_wr;
wire [2:0]  pc_wr_sel;  //program counter write select (from decoder to pc)

wire [7:0]  op1_n, //from memory_interface to decoder
            op2_n,
            op3_n;
wire        irom_out_of_rst;
wire        new_pc_log;
wire        pc_change;
wire        decoder_new_valid_pc;
wire [15:0] pc_log;
wire [15:0] pc_log_prev;

wire [1:0]  comp_sel;   //select source1 and source2 to compare
wire        eq,         //result (from comp1 to decoder)
            srcAc,
            cy,
            rd_ind,
            wr_ind,
            comp_wait;
wire [2:0]  op1_cur;

wire        bit_addr,   //bit addresable instruction
            bit_data,   //bit data from ram to ram_select
            bit_out,    //bit data from ram_select to alu and cy_select
            bit_addr_o,
            wait_data;

//
// cpu to cache/wb_interface
wire        iack_i,
            istb_o,
            icyc_o;
wire [31:0] idat_i;
wire [15:0] iadr_o;

wire [1:0] decoder_state;

assign pc_change = decoder_new_valid_pc;

//
// decoder
oc8051_decoder oc8051_decoder1(.clk(wb_clk_i), 
                               .rst(wb_rst_i), 
                               .irom_out_of_rst(irom_out_of_rst),
                               .new_valid_pc(decoder_new_valid_pc),
                               .op_in(op1_n), 
                               .op1_c(op1_cur),
                               .op_cur(op1_d),
                               .ram_rd_sel_o(ram_rd_sel), 
                               .ram_wr_sel_o(ram_wr_sel), 
                               .bit_addr(bit_addr),

                               .src_sel1(src_sel1),
                               .src_sel2(src_sel2),
                               .src_sel3(src_sel3),

                               .alu_op_o(alu_op),
                               .psw_set(psw_set),
                               .cy_sel(cy_sel),
                               .wr_o(wr),
                               .pc_wr(pc_wr),
                               .pc_sel(pc_wr_sel),
                               .comp_sel(comp_sel),
                               .eq(eq),
                               .wr_sfr_o(wr_sfr),
                               .rd(rd),
                               .rmw(rmw),
                               .istb(istb),
                               .mem_act(mem_act),
                               .mem_wait(mem_wait),
                               .wait_data(wait_data));


wire [7:0] sub_result;
//
//alu
oc8051_alu oc8051_alu1(.rst(wb_rst_i),
                       .clk(wb_clk_i),
                       .op_code(alu_op),
                       .src1(src1),
                       .src2(src2),
                       .src3(src3),
                       .srcCy(alu_cy),
                       .srcAc(srcAc),
                       .des_acc(des_acc),
                       .sub_result(sub_result),
                       .des1(des1),
                       .des2(des2),
                       .desCy(desCy),
                       .desAc(desAc),
                       .desOv(desOv),
                       .bit_in(bit_out));

//
//data ram
wire [7:0] iram0 = iram[7:0];
wire [7:0] iram1 = iram[15:8];
wire [7:0] iram8 = iram[71:64];
wire [7:0] iram9 = iram[79:72];
// wire [7:0] wr_addr_m, wr_data_m;

oc8051_ram_top oc8051_ram_top1(.clk(wb_clk_i),
                               .rst(wb_rst_i),
                               .rd_addr(rd_addr),
                               .rd_data(ram_data),
                               .wr_addr(wr_addr),
                               .bit_addr(bit_addr_o),
                               .wr_data(wr_dat),
                               .wr(wr_o && (!wr_addr[7] || wr_ind)),
                               //.wr_data_m(wr_data_m),
                               //.wr_addr_m(wr_addr_m),
                               .iram(iram),
                               .bit_data_in(desCy),
                               .bit_data_out(bit_data)
`ifdef OC8051_BIST
         ,
         .scanb_rst(scanb_rst),
         .scanb_clk(scanb_clk),
         .scanb_si(scanb_soi),
         .scanb_so(scanb_so),
         .scanb_en(scanb_en)
`endif
                               );

//

oc8051_alu_src_sel oc8051_alu_src_sel1(.clk(wb_clk_i),
                                       .rst(wb_rst_i),
                                       .rd(rd),

                                       .sel1(src_sel1),
                                       .sel2(src_sel2),
                                       .sel3(src_sel3),

                                       .acc(acc),
                                       .ram(ram_out),
                                       .pc(pc),
                                       .dptr({dptr_hi, dptr_lo}),
                                       .op1(op1_n),
                                       .op2(op2_n),
                                       .op3(op3_n),

                                       .src1(src1),
                                       .src2(src2),
                                       .src3(src3));


//
//
oc8051_comp oc8051_comp1(.sel(comp_sel),
                         .eq(eq),
                         .b_in(bit_out),
                         .cy(cy),
                         .acc(acc),
                         .des(sub_result)
                         );


//
//program rom
wire [15:0] cxrom_addr = iadr_o;
`ifdef OC8051_ROM
  oc8051_rom oc8051_rom1(.rst(wb_rst_i),
                       .clk(wb_clk_i),
                       .ea_int(ea_int),
                       .cxrom_data_out(cxrom_data_out),
                       .data_o(idat_onchip)
                       );
`else
  assign ea_int = 1'b0;
  assign idat_onchip = 32'h0;
  
  `ifdef OC8051_SIMULATION

    initial
    begin
      $display("\t * ");
      $display("\t * Internal rom disabled!!!");
      $display("\t * ");
    end

  `endif

`endif

//
//
oc8051_cy_select oc8051_cy_select1(.cy_sel(cy_sel), 
                                   .cy_in(cy), 
                                   .data_in(bit_out),
                                   .data_out(alu_cy));
//
//
oc8051_indi_addr oc8051_indi_addr1 (.clk(wb_clk_i), 
                                    .rst(wb_rst_i), 
                                    .wr_addr(wr_addr),
                                    .data_in(wr_dat),
                                    .wr(wr_o && (!wr_addr[7] || wr_ind)),
                                    .wr_bit(bit_addr_o), 
                                    .ri_out(ri),
                                    .sel(op1_cur[0]),
                                    .bank(bank_sel),
                                    //.wr_addr_m(wr_addr_m),
                                    //.wr_data_m(wr_data_m),
                                    .iram0(iram0),
                                    .iram1(iram1),
                                    .iram8(iram8),
                                    .iram9(iram9));



assign icyc_o = istb_o;
//
//
oc8051_memory_interface oc8051_memory_interface1(.clk(wb_clk_i), 
                       .rst(wb_rst_i),
// internal ram
                       .wr_i(wr), 
                       .wr_o(wr_o), 
                       .wr_bit_i(bit_addr), 
                       .wr_bit_o(bit_addr_o), 
                       .wr_dat(wr_dat),
                       .des_acc(des_acc),
                       .des1(des1),
                       .des2(des2),
                       .rd_addr(rd_addr),
                       .wr_addr(wr_addr),
                       .wr_ind(wr_ind),
                       .bit_in(bit_data),
                       .in_ram(ram_data),
                       .sfr(sfr_out),
                       .sfr_bit(sfr_bit),
                       .bit_out(bit_out),
                       .iram_out(ram_out),

// external instrauction rom
                       .iack_i(iack_i),
                       .iadr_o(iadr_o),
                       .idat_i(idat_i),
                       .istb_o(istb_o),
                       .out_of_rst(irom_out_of_rst),
                       .decoder_new_valid_pc(decoder_new_valid_pc),
                       .pc_log(pc_log),
                       .pc_log_prev(pc_log_prev),

// internal instruction rom
                       .idat_onchip(idat_onchip),

// data memory
                       .dadr_o(wbd_adr_o),
                       .ddat_o(wbd_dat_o),
                       .dwe_o(wbd_we_o),
                       .dstb_o(wbd_stb_o),
                       .ddat_i(wbd_dat_i),
                       .dack_i(wbd_ack_i),

// from decoder
                       .rd_sel(ram_rd_sel),
                       .wr_sel(ram_wr_sel),
                       .rn({bank_sel, op1_cur}),
                       .rd_ind(rd_ind),
                       .rd(rd),
                       .mem_act(mem_act),
                       .mem_wait(mem_wait),

// external access
                       .ea(ea_in),
                       .ea_int(ea_int),

// instructions outputs to cpu
                       .op1_out(op1_n),
                       .op2_out(op2_n),
                       .op3_out(op3_n),
                       .op1(op1),
                       .op2(op2),
                       .op3(op3),

// interrupt interface
                       .intr(intr), 
                       .int_v(int_src), 
                       .int_ack(int_ack), 
                       .istb(istb),
                       .reti(reti),

//pc
                       .pc_wr_sel(pc_wr_sel), 
                       .pc_wr(pc_wr & comp_wait),
                       .pc(pc),

// sfr's
                       .sp_w(sp_w), 
                       .dptr({dptr_hi, dptr_lo}),
                       .ri(ri), 
                       .acc(acc),
                       .sp(sp)
                        ,.m1__DOT__oc8051_memory_interface1__DOT__ddat_o(m1__DOT__oc8051_memory_interface1__DOT__ddat_o) ,.m1__DOT__oc8051_memory_interface1__DOT__dadr_o(m1__DOT__oc8051_memory_interface1__DOT__dadr_o) ,.m1__DOT__oc8051_memory_interface1__DOT__pc(m1__DOT__oc8051_memory_interface1__DOT__pc));


//
//

oc8051_sfr oc8051_sfr1(.rst(wb_rst_i), 
                       .clk(wb_clk_i), 
                       .adr0(rd_addr[7:0]), 
                       .adr1(wr_addr[7:0]),
                       .dat0(sfr_out),
                       .dat1(wr_dat),
                       .dat2(des2),
                       .des_acc(des_acc),
                       .we(wr_o && !wr_ind),
                       .bit_in(desCy),
                       .bit_out(sfr_bit), 
                       .wr_bit(bit_addr_o),
                       .ram_rd_sel(ram_rd_sel),
                       .ram_wr_sel(ram_wr_sel),
                       .wr_sfr(wr_sfr),
                       .comp_sel(comp_sel),
                       .comp_wait(comp_wait),
                       .ie(ie),
// acc
                       .acc(acc),
                       .b_reg(b_reg),
// sp
                       .sp(sp), 
                       .sp_w(sp_w),
// psw
                       .bank_sel(bank_sel), 
                       .desAc(desAc), 
                       .desOv(desOv), 
                       .psw_set(psw_set),
                       .srcAc(srcAc), 
                       .cy(cy),
                       .psw(psw),
                       .p(p),
// ports
                       .rmw(rmw),

  //`ifdef OC8051_PORTS
  //      `ifdef OC8051_PORT0
                       .p0_out(p0_o),
                       .p0_in(p0_i),
  //      `endif

  //      `ifdef OC8051_PORT1
                       .p1_out(p1_o),
                       .p1_in(p1_i),
  //      `endif

  //      `ifdef OC8051_PORT2
                       .p2_out(p2_o),
                       .p2_in(p2_i),
  //      `endif

  //      `ifdef OC8051_PORT3
                       .p3_out(p3_o),
                       .p3_in(p3_i),
  //      `endif
  //`endif

// uart
        `ifdef OC8051_UART
                       .rxd(rxd_i), .txd(txd_o),
        `endif

// int
                       .int_ack(int_ack),
                       .intr(intr),
                       .int0(int0_i),
                       .int1(int1_i),
                       .reti(reti),
                       .int_src(int_src),

// t/c 0,1
        `ifdef OC8051_TC01
                       .t0(t0_i),
                       .t1(t1_i),
        `endif

// t/c 2
        `ifdef OC8051_TC2
                       .t2(t2_i),
                       .t2ex(t2ex_i),
        `endif

// dptr
                       .dptr_hi(dptr_hi),
                       .dptr_lo(dptr_lo),
                       .wait_data(wait_data)
                        ,.m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_hi(m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_hi) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_sp1__DOT__sp_out(m1__DOT__oc8051_sfr1__DOT__oc8051_sp1__DOT__sp_out) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_psw1__DOT__data(m1__DOT__oc8051_sfr1__DOT__oc8051_psw1__DOT__data) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_acc1__DOT__data_out(m1__DOT__oc8051_sfr1__DOT__oc8051_acc1__DOT__data_out) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p3_out(m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p3_out) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_b_register__DOT__data_out(m1__DOT__oc8051_sfr1__DOT__oc8051_b_register__DOT__data_out) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p2_out(m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p2_out) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p1_out(m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p1_out) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_lo(m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_lo) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p0_out(m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p0_out) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ie(m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ie) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__tcon(m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__tcon) ,.m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ip(m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ip));


assign dptr = {dptr_hi, dptr_lo};

 assign m1__DOT__ea_in = ea_in;
 assign m1__DOT__op1 = op1;
 assign m1__DOT__op2 = op2;
 assign m1__DOT__op3 = op3;
 assign m1__DOT__iram = iram;
endmodule
//////////////////////////////////////////////////////////////////////
//// 								  ////
//// multiply for 8051 Core 				  	  ////
//// 								  ////
//// This file is part of the 8051 cores project 		  ////
//// http://www.opencores.org/cores/8051/ 			  ////
//// 								  ////
//// Description 						  ////
//// Implementation of multipication used in alu.v 		  ////
//// 								  ////
//// To Do: 							  ////
////  Nothing							  ////
//// 								  ////
//// Author(s): 						  ////
//// - Simon Teran, simont@opencores.org 			  ////
//// - Marko Mlinar, markom@opencores.org 			  ////
//// 								  ////
//////////////////////////////////////////////////////////////////////
//// 								  ////
//// Copyright (C) 2001 Authors and OPENCORES.ORG 		  ////
//// 								  ////
//// This source file may be used and distributed without 	  ////
//// restriction provided that this copyright statement is not 	  ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
//// 								  ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version. 						  ////
//// 								  ////
//// This source is distributed in the hope that it will be 	  ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR 	  ////
//// PURPOSE. See the GNU Lesser General Public License for more  ////
//// details. 							  ////
//// 								  ////
//// You should have received a copy of the GNU Lesser General 	  ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml 			  ////
//// 								  ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.8  2002/09/30 17:33:59  simont
// prepared header
//
//
// ver: 2 markom
// changed to two cycle multiplication, to save resources and
// increase speed
//
// ver: 3 markom
// changed to four cycle multiplication, to save resources and
// increase speed



module oc8051_multiply (clk, rst, enable, src1, src2, des1, des2, desOv);
//
// this module is part of alu
// clk          (in)
// rst          (in)
// enable       (in)
// src1         (in)  first operand
// src2         (in)  second operand
// des1         (out) first result
// des2         (out) second result
// desOv        (out) Overflow output
//

input clk, rst, enable;
input [7:0] src1, src2;
output desOv;
output [7:0] des1, des2;

// wires
wire [15:0] mul_result1, mul_result, shifted;

// real registers
reg [1:0] cycle;
reg [15:0] tmp_mul;

assign mul_result1 = src1 * (cycle == 2'h0 ? src2[7:6] 
                           : cycle == 2'h1 ? src2[5:4]
                           : cycle == 2'h2 ? src2[3:2]
                           : src2[1:0]);

assign shifted = (cycle == 2'h0 ? 16'h0 : {tmp_mul[13:0], 2'b00});
assign mul_result = mul_result1 + shifted;
assign des1 = mul_result[15:8];
assign des2 = mul_result[7:0];
assign desOv = | des1;

always @(posedge clk) //or posedge rst)
begin
  if (rst) begin
    cycle <= #1 2'b0;
    tmp_mul <= #1 16'b0;
  end else begin
    if (enable) cycle <= #1 cycle + 2'b1;
    tmp_mul <= #1 mul_result;
  end
end

endmodule
//////////////////////////////////////////////////////////////////////
//// 								  ////
//// divide for 8051 Core 				  	  ////
//// 								  ////
//// This file is part of the 8051 cores project 		  ////
//// http://www.opencores.org/cores/8051/ 			  ////
//// 								  ////
//// Description 						  ////
//// Four cycle implementation of division used in alu.v	  ////
//// 								  ////
//// To Do: 							  ////
////  check if compiler does proper optimizations of the code     ////
//// 								  ////
//// Author(s): 						  ////
//// - Simon Teran, simont@opencores.org 			  ////
//// - Marko Mlinar, markom@opencores.org 			  ////
//// 								  ////
//////////////////////////////////////////////////////////////////////
//// 								  ////
//// Copyright (C) 2001 Authors and OPENCORES.ORG 		  ////
//// 								  ////
//// This source file may be used and distributed without 	  ////
//// restriction provided that this copyright statement is not 	  ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
//// 								  ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version. 						  ////
//// 								  ////
//// This source is distributed in the hope that it will be 	  ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR 	  ////
//// PURPOSE. See the GNU Lesser General Public License for more  ////
//// details. 							  ////
//// 								  ////
//// You should have received a copy of the GNU Lesser General 	  ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml 			  ////
//// 								  ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.8  2002/09/30 17:15:31  simont
// prepared header
//
//


module oc8051_divide (clk, rst, enable, src1, src2, des1, des2, desOv);
//
// this module is part of alu
// clk          (in)
// rst          (in)
// enable       (in)  starts divison
// src1         (in)  first operand
// src2         (in)  second operand
// des1         (out) first result
// des2         (out) second result
// desOv        (out) Overflow output
//

input clk, rst, enable;
input [7:0] src1, src2;
output desOv;
output [7:0] des1, des2;

// wires
wire desOv;
wire div0, div1;
wire [7:0] rem0, rem1, rem2;
wire [8:0] sub0, sub1;
wire [15:0] cmp0, cmp1;
wire [7:0] div_out, rem_out;

// real registers
reg [1:0] cycle;
reg [5:0] tmp_div;
reg [7:0] tmp_rem;

// The main logic
assign cmp1 = src2 << ({2'h3 - cycle, 1'b0} + 3'h1);
assign cmp0 = src2 << ({2'h3 - cycle, 1'b0} + 3'h0);

assign rem2 = cycle != 0 ? tmp_rem : src1;

assign sub1 = {1'b0, rem2} - {1'b0, cmp1[7:0]};
assign div1 = |cmp1[15:8] ? 1'b0 : !sub1[8];
assign rem1 = div1 ? sub1[7:0] : rem2[7:0];

assign sub0 = {1'b0, rem1} - {1'b0, cmp0[7:0]};
assign div0 = |cmp0[15:8] ? 1'b0 : !sub0[8];
assign rem0 = div0 ? sub0[7:0] : rem1[7:0];

//
// in clock cycle 0 we first calculate two MSB bits, ...
// till finally in clock cycle 3 we calculate two LSB bits
assign div_out = {tmp_div, div1, div0};
assign rem_out = rem0;
assign desOv = src2 == 8'h0;

//
// divider works in four clock cycles -- 0, 1, 2 and 3
always @(posedge clk) // or posedge rst)
begin
  if (rst) begin
    cycle <= #1 2'b0;
    tmp_div <= #1 6'h0;
    tmp_rem <= #1 8'h0;
  end else begin
    if (enable) cycle <= #1 cycle + 2'b1;
    tmp_div <= #1 div_out[5:0];
    tmp_rem <= #1 rem_out;
  end
end

//
// assign outputs
assign des1 = rem_out;
assign des2 = div_out;

endmodule
//////////////////////////////////////////////////////////////////////
////                                                              ////
////  8051 internal ram                                           ////
////                                                              ////
////  This file is part of the 8051 cores project                 ////
////  http://www.opencores.org/cores/8051/                        ////
////                                                              ////
////  Description                                                 ////
////   256 bytes two port ram                                     ////
////                                                              ////
////  To Do:                                                      ////
////   nothing                                                    ////
////                                                              ////
////  Author(s):                                                  ////
////      - Simon Teran, simont@opencores.org                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
//
//


//
// two port ram
//
module oc8051_ram_256x8_two_bist (
                     clk,
                     rst,
		     rd_addr,
		     rd_data,
		     rd_en,
		     wr_addr,
		     wr_data,
		     wr_en,
		     wr,
                     iram
`ifdef OC8051_BIST
	 ,
         scanb_rst,
         scanb_clk,
         scanb_si,
         scanb_so,
         scanb_en
`endif
		     );


input         clk, 
              wr, 
	      rst,
	      rd_en,
	      wr_en;
input  [7:0]  wr_data;
input  [7:0]  rd_addr,
              wr_addr;
output [7:0]  rd_data;
output [2047:0] iram;

`ifdef OC8051_BIST
input   scanb_rst;
input   scanb_clk;
input   scanb_si;
output  scanb_so;
input   scanb_en;
`endif


`ifdef OC8051_RAM_XILINX
  xilinx_ram_dp xilinx_ram(
  	// read port
  	.CLKA(clk),
  	.RSTA(rst),
  	.ENA(rd_en),
  	.ADDRA(rd_addr),
  	.DIA(8'h00),
  	.WEA(1'b0),
  	.DOA(rd_data),
  
  	// write port
  	.CLKB(clk),
  	.RSTB(rst),
  	.ENB(wr_en),
  	.ADDRB(wr_addr),
  	.DIB(wr_data),
  	.WEB(wr),
  	.DOB()
  );
  
  defparam
  	xilinx_ram.dwidth = 8,
  	xilinx_ram.awidth = 8;

`else

  `ifdef OC8051_RAM_VIRTUALSILICON

  `else

    `ifdef OC8051_RAM_GENERIC
    
      generic_dpram #(8, 8) oc8051_ram1(
      	.rclk  ( clk            ),
      	.rrst  ( rst            ),
      	.rce   ( rd_en          ),
      	.oe    ( 1'b1           ),
      	.raddr ( rd_addr        ),
      	.do    ( rd_data        ),
      
      	.wclk  ( clk            ),
      	.wrst  ( rst            ),
      	.wce   ( wr_en          ),
      	.we    ( wr             ),
      	.waddr ( wr_addr        ),
      	.di    ( wr_data        )
      );
    
    `else

      reg    [7:0]  rd_data;
      //
      // buffer
      reg    [7:0]  buff [0:256];
      
      
      //
      // writing to ram
      integer i;
      always @(posedge clk)
      begin
       if (wr)
          buff[wr_addr] <= #1 wr_data;
      end
      
      wire [2047:0] iram;
      genvar j;
      generate for (j=0; j < 256; j = j+1) begin:iramout
        assign iram[j*8+7 : j*8] = buff[j];
      end endgenerate
      //
      // reading from ram
      always @(posedge clk) // or posedge rst)
      begin
        if (rst) begin
          rd_data <= #1 8'h0;
`ifdef OC8051_SIMULATION
          for(i=0;i < 256;i=i+1) begin
              buff[i] = 0;
          end
`endif
        end
        else if ((wr_addr==rd_addr) & wr & rd_en)
          rd_data <= #1 wr_data;
        else if (rd_en)
          rd_data <= #1 buff[rd_addr];
      end
    `endif  //OC8051_RAM_GENERIC
  `endif    //OC8051_RAM_VIRTUALSILICON  
`endif      //OC8051_RAM_XILINX

wire [7:0] buf40 = buff[8'h40];
wire [7:0] buf00 = buff[8'h00];
wire [7:0] buf01 = buff[8'h01];

endmodule
//////////////////////////////////////////////////////////////////////
////                                                              ////
////  8051 cores interrupt control module                         ////
////                                                              ////
////  This file is part of the 8051 cores project                 ////
////  http://www.opencores.org/cores/8051/                        ////
////                                                              ////
////  Description                                                 ////
////   contains sfr's: tcon, ip, ie;                              ////
////   interrupt handling                                         ////
////                                                              ////
////  To Do:                                                      ////
////   Nothing                                                    ////
////                                                              ////
////  Author(s):                                                  ////
////      - Simon Teran, simont@opencores.org                     ////
////      - Jaka Simsic, jakas@opencores.org                      ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.9  2003/06/03 17:12:05  simont
// fix some bugs.
//
// Revision 1.8  2003/04/07 14:58:02  simont
// change sfr's interface.
//
// Revision 1.7  2003/03/28 17:45:57  simont
// change module name.
//
// Revision 1.6  2003/01/13 14:14:41  simont
// replace some modules
//
// Revision 1.5  2002/09/30 17:33:59  simont
// prepared header
//
//



module oc8051_int (clk, rst, 
        wr_addr,  
	data_in, bit_in, 
	wr, wr_bit,
//timer interrupts
        tf0, tf1, t2_int,
	tr0, tr1,
//external interrupts
        ie0, ie1,
//uart interrupts
        uart_int,
//to cpu
        intr, reti, int_vec, ack,
//registers
	ie, tcon, ip, m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ie, m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__tcon, m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ip);
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ie;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__tcon;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ip;

input [7:0] wr_addr, data_in;
input wr, tf0, tf1, t2_int, ie0, ie1, clk, rst, reti, wr_bit, bit_in, ack, uart_int;

output tr0, tr1, intr;
(* keep *)output [7:0] int_vec,ie,tcon,ip;


`ifdef OC8051_ENABLE_INT

reg [7:0] ip, ie, int_vec;
reg [3:0] tcon_s;
reg tcon_tf1, tcon_tf0, tcon_ie1, tcon_ie0;

//
// isrc		processing interrupt sources
// int_dept
wire [2:0] isrc_cur;
reg [2:0] isrc [1:0];
reg [1:0] int_dept;
wire [1:0] int_dept_1;
reg int_proc;
reg [1:0] int_lev [1:0];
wire cur_lev;

assign isrc_cur = int_proc ? isrc[int_dept_1] : 2'h0;
assign int_dept_1 = int_dept - 2'b01;
assign cur_lev = int_lev[int_dept_1];

//
// contains witch level of interrupts is running
//reg [1:0] int_levl, int_levl_w;

//
// int_ln	waiting interrupts on level n
// ip_ln	interrupts on level n
// int_src	interrupt sources
wire [5:0] int_l0, int_l1;
wire [5:0] ip_l0, ip_l1;
wire [5:0] int_src;
wire il0, il1;


reg tf0_buff, tf1_buff, ie0_buff, ie1_buff;

//
//interrupt priority
assign ip_l0 = ~ip[5:0];
assign ip_l1 = ip[5:0];

assign int_src = {t2_int, uart_int, tcon_tf1, tcon_ie1, tcon_tf0, tcon_ie0};

//
// waiting interrupts
assign int_l0 = ip_l0 & {ie[5:0]} & int_src;
assign int_l1 = ip_l1 & {ie[5:0]} & int_src;
assign il0 = |int_l0;
assign il1 = |int_l1;

//
// TCON
assign tcon = {tcon_tf1, tcon_s[3], tcon_tf0, tcon_s[2], tcon_ie1, tcon_s[1], tcon_ie0, tcon_s[0]};
assign tr0 = tcon_s[2];
assign tr1 = tcon_s[3];
assign intr = |int_vec;


//
// IP
always @(posedge clk)// or posedge rst)
begin
 if (rst) begin
   ip <=#1 `OC8051_RST_IP;
 end else if ((wr) & !(wr_bit) & (wr_addr==`OC8051_SFR_IP)) begin
   ip <= #1 data_in;
 end else if ((wr) & (wr_bit) & (wr_addr[7:3]==`OC8051_SFR_B_IP))
   ip[wr_addr[2:0]] <= #1 bit_in;
end

//
// IE
always @(posedge clk)// or posedge rst)
begin
 if (rst) begin
   ie <=#1 `OC8051_RST_IE;
 end else if ((wr) & !(wr_bit) & (wr_addr==`OC8051_SFR_IE)) begin
   ie <= #1 data_in;
 end else if ((wr) & (wr_bit) & (wr_addr[7:3]==`OC8051_SFR_B_IE))
   ie[wr_addr[2:0]] <= #1 bit_in;
end

//
// tcon_s
//
always @(posedge clk)// or posedge rst)
begin
 if (rst) begin
   tcon_s <=#1 4'b0000;
 end else if ((wr) & !(wr_bit) & (wr_addr==`OC8051_SFR_TCON)) begin
   tcon_s <= #1 {data_in[6], data_in[4], data_in[2], data_in[0]};
 end else if ((wr) & (wr_bit) & (wr_addr[7:3]==`OC8051_SFR_B_TCON)) begin
   case (wr_addr[2:0]) 
     3'b000: tcon_s[0] <= #1 bit_in;
     3'b010: tcon_s[1] <= #1 bit_in;
     3'b100: tcon_s[2] <= #1 bit_in;
     3'b110: tcon_s[3] <= #1 bit_in;
   endcase
 end
end

//
// tf1 (tmod.7)
//
always @(posedge clk)// or posedge rst)
begin
 if (rst) begin
   tcon_tf1 <=#1 1'b0;
 end else if ((wr) & !(wr_bit) & (wr_addr==`OC8051_SFR_TCON)) begin
   tcon_tf1 <= #1 data_in[7];
 end else if ((wr) & (wr_bit) & (wr_addr=={`OC8051_SFR_B_TCON, 3'b111})) begin
   tcon_tf1 <= #1 bit_in;
 end else if (!(tf1_buff) & (tf1)) begin
   tcon_tf1 <= #1 1'b1;
 end else if (ack & (isrc_cur==`OC8051_ISRC_TF1)) begin
   tcon_tf1 <= #1 1'b0;
 end
end

//
// tf0 (tmod.5)
//
always @(posedge clk) // or posedge rst)
begin
 if (rst) begin
   tcon_tf0 <=#1 1'b0;
 end else if ((wr) & !(wr_bit) & (wr_addr==`OC8051_SFR_TCON)) begin
   tcon_tf0 <= #1 data_in[5];
 end else if ((wr) & (wr_bit) & (wr_addr=={`OC8051_SFR_B_TCON, 3'b101})) begin
   tcon_tf0 <= #1 bit_in;
 end else if (!(tf0_buff) & (tf0)) begin
   tcon_tf0 <= #1 1'b1;
 end else if (ack & (isrc_cur==`OC8051_ISRC_TF0)) begin
   tcon_tf0 <= #1 1'b0;
 end
end


//
// ie0 (tmod.1)
//
always @(posedge clk)// or posedge rst)
begin
 if (rst) begin
   tcon_ie0 <=#1 1'b0;
 end else if ((wr) & !(wr_bit) & (wr_addr==`OC8051_SFR_TCON)) begin
   tcon_ie0 <= #1 data_in[1];
 end else if ((wr) & (wr_bit) & (wr_addr=={`OC8051_SFR_B_TCON, 3'b001})) begin
   tcon_ie0 <= #1 bit_in;
 end else if (((tcon_s[0]) & (ie0_buff) & !(ie0)) | (!(tcon_s[0]) & !(ie0))) begin
   tcon_ie0 <= #1 1'b1;
 end else if (ack & (isrc_cur==`OC8051_ISRC_IE0) & (tcon_s[0])) begin
   tcon_ie0 <= #1 1'b0;
 end else if (!(tcon_s[0]) & (ie0)) begin
   tcon_ie0 <= #1 1'b0;
 end
end


//
// ie1 (tmod.3)
//
always @(posedge clk)// or posedge rst)
begin
 if (rst) begin
   tcon_ie1 <=#1 1'b0;
 end else if ((wr) & !(wr_bit) & (wr_addr==`OC8051_SFR_TCON)) begin
   tcon_ie1 <= #1 data_in[3];
 end else if ((wr) & (wr_bit) & (wr_addr=={`OC8051_SFR_B_TCON, 3'b011})) begin
   tcon_ie1 <= #1 bit_in;
 end else if (((tcon_s[1]) & (ie1_buff) & !(ie1)) | (!(tcon_s[1]) & !(ie1))) begin
   tcon_ie1 <= #1 1'b1;
 end else if (ack & (isrc_cur==`OC8051_ISRC_IE1) & (tcon_s[1])) begin
   tcon_ie1 <= #1 1'b0;
 end else if (!(tcon_s[1]) & (ie1)) begin
   tcon_ie1 <= #1 1'b0;
 end
end

//
// interrupt processing
always @(posedge clk)// or posedge rst)
begin
  if (rst) begin
    int_vec <= #1 8'h00;
    int_dept <= #1 2'b0;
    isrc[0] <= #1 3'h0;
    isrc[1] <= #1 3'h0;
    int_proc <= #1 1'b0;
    int_lev[0] <= #1 1'b0;
    int_lev[1] <= #1 1'b0;
  end else if (reti & int_proc) begin  // return from interrupt
   if (int_dept==2'b01)
     int_proc <= #1 1'b0;
   int_dept <= #1 int_dept - 2'b01;
  end else if (((ie[7]) & (!cur_lev) || !int_proc) & il1) begin  // interrupt on level 1
   int_proc <= #1 1'b1;
   int_lev[int_dept] <= #1 `OC8051_ILEV_L1;
   int_dept <= #1 int_dept + 2'b01;
   if (int_l1[0]) begin
     int_vec <= #1 `OC8051_INT_X0;
     isrc[int_dept] <= #1 `OC8051_ISRC_IE0;
   end else if (int_l1[1]) begin
     int_vec <= #1 `OC8051_INT_T0;
     isrc[int_dept] <= #1 `OC8051_ISRC_TF0;
   end else if (int_l1[2]) begin
     int_vec <= #1 `OC8051_INT_X1;
     isrc[int_dept] <= #1 `OC8051_ISRC_IE1;
   end else if (int_l1[3]) begin
     int_vec <= #1 `OC8051_INT_T1;
     isrc[int_dept] <= #1 `OC8051_ISRC_TF1;
   end else if (int_l1[4]) begin
     int_vec <= #1 `OC8051_INT_UART;
     isrc[int_dept] <= #1 `OC8051_ISRC_UART;
   end else if (int_l1[5]) begin
     int_vec <= #1 `OC8051_INT_T2;
     isrc[int_dept] <= #1 `OC8051_ISRC_T2;
   end

 end else if ((ie[7]) & !int_proc & il0) begin  // interrupt on level 0
   int_proc <= #1 1'b1;
   int_lev[int_dept] <= #1 `OC8051_ILEV_L0;
   int_dept <= #1 2'b01;
   if (int_l0[0]) begin
     int_vec <= #1 `OC8051_INT_X0;
     isrc[int_dept] <= #1 `OC8051_ISRC_IE0;
   end else if (int_l0[1]) begin
     int_vec <= #1 `OC8051_INT_T0;
     isrc[int_dept] <= #1 `OC8051_ISRC_TF0;
   end else if (int_l0[2]) begin
     int_vec <= #1 `OC8051_INT_X1;
     isrc[int_dept] <= #1 `OC8051_ISRC_IE1;
   end else if (int_l0[3]) begin
     int_vec <= #1 `OC8051_INT_T1;
     isrc[int_dept] <= #1 `OC8051_ISRC_TF1;
   end else if (int_l0[4]) begin
     int_vec <= #1 `OC8051_INT_UART;
     isrc[int_dept] <= #1 `OC8051_ISRC_UART;
   end else if (int_l0[5]) begin
     int_vec <= #1 `OC8051_INT_T2;
     isrc[int_dept] <= #1 `OC8051_ISRC_T2;
   end
 end else begin
   int_vec <= #1 8'h00;
 end
end


always @(posedge clk)// or posedge rst)
  if (rst) begin
    tf0_buff <= #1 1'b0;
    tf1_buff <= #1 1'b0;
    ie0_buff <= #1 1'b0;
    ie1_buff <= #1 1'b0;
  end else begin
    tf0_buff <= #1 tf0;
    tf1_buff <= #1 tf1;
    ie0_buff <= #1 ie0;
    ie1_buff <= #1 ie1;
  end
`else
    wire tr0  = 1'b0;
    wire tr1  = 1'b0;
    wire intr = 1'b0;
    reg [7:0] int_vec = 8'b0;
    wire [7:0] ie = 8'b0;
    wire [7:0] ip = 8'b0;
    wire [7:0] tcon = 8'b0;
`endif
 assign m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__tcon = tcon;
 assign m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ip = ip;
 assign m1__DOT__oc8051_sfr1__DOT__oc8051_int1__DOT__ie = ie;
endmodule
//////////////////////////////////////////////////////////////////////
////                                                              ////
////  8051 port output                                            ////
////                                                              ////
////  This file is part of the 8051 cores project                 ////
////  http://www.opencores.org/cores/8051/                        ////
////                                                              ////
////  Description                                                 ////
////   8051 special function registers: port 0:3 - output         ////
////                                                              ////
////  To Do:                                                      ////
////   nothing                                                    ////
////                                                              ////
////  Author(s):                                                  ////
////      - Simon Teran, simont@opencores.org                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.9  2003/04/10 12:43:19  simont
// defines for pherypherals added
//
// Revision 1.8  2003/04/07 14:58:02  simont
// change sfr's interface.
//
// Revision 1.7  2003/01/13 14:14:41  simont
// replace some modules
//
// Revision 1.6  2002/09/30 17:33:59  simont
// prepared header
//
//




module oc8051_ports (clk, 
                    rst,
                    bit_in, 
		    data_in,
		    wr, 
		    wr_bit,
		    wr_addr, 

//	`ifdef OC8051_PORT0
		    p0_out,
                    p0_in,
		    p0_data,
//	`endif

//	`ifdef OC8051_PORT1
		    p1_out,
		    p1_in,
		    p1_data,

//	`endif

//	`ifdef OC8051_PORT2
		    p2_out,
		    p2_in,
		    p2_data,
//	`endif

//	`ifdef OC8051_PORT3
		    p3_out,
		    p3_in,
		    p3_data,
//	`endif

		    rmw, m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p1_out, m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p2_out, m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p3_out, m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p0_out);
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p1_out;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p2_out;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p3_out;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p0_out;

input        clk,	//clock
             rst,	//reset
	     wr,	//write [oc8051_decoder.wr -r]
	     wr_bit,	//write bit addresable [oc8051_decoder.bit_addr -r]
	     bit_in,	//bit input [oc8051_alu.desCy]
	     rmw;	//read modify write feature [oc8051_decoder.rmw]
input [7:0]  wr_addr,	//write address [oc8051_ram_wr_sel.out]
             data_in; 	//data input (from alu destiantion 1) [oc8051_alu.des1]

//`ifdef OC8051_PORT0
  input  [7:0] p0_in;
  output [7:0] p0_out,
               p0_data;
(* keep *)   reg    [7:0] p0_out;

  assign p0_data = rmw ? p0_out : p0_in;
//`endif


//`ifdef OC8051_PORT1
  input  [7:0] p1_in;
  output [7:0] p1_out,
               p1_data;
(* keep *)   reg    [7:0] p1_out;

  assign p1_data = rmw ? p1_out : p1_in;
//`endif


//`ifdef OC8051_PORT2
  input  [7:0] p2_in;
  output [7:0] p2_out,
	       p2_data;
(* keep *)   reg    [7:0] p2_out;

  assign p2_data = rmw ? p2_out : p2_in;
//`endif


//`ifdef OC8051_PORT3
  input  [7:0] p3_in;
  output [7:0] p3_out,
	       p3_data;
(* keep *)   reg    [7:0] p3_out;

  assign p3_data = rmw ? p3_out : p3_in;
//`endif

//
// case of writing to port
always @(posedge clk)// or posedge rst)
begin
  if (rst) begin
//`ifdef OC8051_PORT0
    p0_out <= #1 `OC8051_RST_P0;
//`endif

//`ifdef OC8051_PORT1
    p1_out <= #1 `OC8051_RST_P1;
//`endif

//`ifdef OC8051_PORT2
    p2_out <= #1 `OC8051_RST_P2;
//`endif

//`ifdef OC8051_PORT3
    p3_out <= #1 `OC8051_RST_P3;
//`endif
  end else if (wr) begin
    if (!wr_bit) begin
      case (wr_addr) 
//
// bytaddresable
// `ifdef OC8051_PORT0
        `OC8051_SFR_P0: p0_out <= #1 data_in;
// `endif

//`ifdef OC8051_PORT1
        `OC8051_SFR_P1: p1_out <= #1 data_in;
//`endif

//`ifdef OC8051_PORT2
        `OC8051_SFR_P2: p2_out <= #1 data_in;
//`endif

//`ifdef OC8051_PORT3
        `OC8051_SFR_P3: p3_out <= #1 data_in;
//`endif
      endcase
    end else begin
      case (wr_addr[7:3]) 

//
// bit addressable
//`ifdef OC8051_PORT0
        `OC8051_SFR_B_P0: p0_out[wr_addr[2:0]] <= #1 bit_in;
//`endif

//`ifdef OC8051_PORT1
        `OC8051_SFR_B_P1: p1_out[wr_addr[2:0]] <= #1 bit_in;
//`endif

//`ifdef OC8051_PORT2
        `OC8051_SFR_B_P2: p2_out[wr_addr[2:0]] <= #1 bit_in;
//`endif

//`ifdef OC8051_PORT3
        `OC8051_SFR_B_P3: p3_out[wr_addr[2:0]] <= #1 bit_in;
//`endif
      endcase
    end
  end
end


 assign m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p3_out = p3_out;
 assign m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p2_out = p2_out;
 assign m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p1_out = p1_out;
 assign m1__DOT__oc8051_sfr1__DOT__oc8051_ports1__DOT__p0_out = p0_out;
endmodule

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  8051 program status word                                    ////
////                                                              ////
////  This file is part of the 8051 cores project                 ////
////  http://www.opencores.org/cores/8051/                        ////
////                                                              ////
////  Description                                                 ////
////   program status word                                        ////
////                                                              ////
////  To Do:                                                      ////
////   nothing                                                    ////
////                                                              ////
////  Author(s):                                                  ////
////      - Simon Teran, simont@opencores.org                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.11  2003/04/09 15:49:42  simont
// Register oc8051_sfr dato output, add signal wait_data.
//
// Revision 1.10  2003/04/07 14:58:02  simont
// change sfr's interface.
//
// Revision 1.9  2003/01/13 14:14:41  simont
// replace some modules
//
// Revision 1.8  2002/11/05 17:23:54  simont
// add module oc8051_sfr, 256 bytes internal ram
//
// Revision 1.7  2002/09/30 17:33:59  simont
// prepared header
//
//



module oc8051_psw (clk, rst, wr_addr, data_in, wr, wr_bit, data_out, p,
                cy_in, ac_in, ov_in, set, bank_sel, psw_next, m1__DOT__oc8051_sfr1__DOT__oc8051_psw1__DOT__data);
 output [6:0] m1__DOT__oc8051_sfr1__DOT__oc8051_psw1__DOT__data;
//
// clk          (in)  clock
// rst          (in)  reset
// addr         (in)  write address [oc8051_ram_wr_sel.out]
// data_in      (in)  data input [oc8051_alu.des1]
// wr           (in)  write [oc8051_decoder.wr -r]
// wr_bit       (in)  write bit addresable [oc8051_decoder.bit_addr -r]
// p            (in)  parity [oc8051_acc.p]
// cy_in        (in)  input bit data [oc8051_alu.desCy]
// ac_in        (in)  auxiliary carry input [oc8051_alu.desAc]
// ov_in        (in)  overflov input [oc8051_alu.desOv]
// set          (in)  set psw (write to caryy, carry and overflov or carry, owerflov and ac) [oc8051_decoder.psw_set -r]
//


input clk, rst, wr, p, cy_in, ac_in, ov_in, wr_bit;
input [1:0] set;
input [7:0] wr_addr, data_in;

output [1:0] bank_sel;
output [7:0] data_out;
output [7:0] psw_next;

(* keep *) reg [7:1] data;
wire wr_psw;

assign wr_psw = (wr & (wr_addr==`OC8051_SFR_PSW) && !wr_bit);

assign bank_sel = wr_psw ? data_in[4:3]:data[4:3];
assign data_out = {data[7:1], p};

reg [7:1] psw_next_i;
wire [7:0] psw_next = {psw_next_i, p};

// spramod added this always block to resolve forwarding issues in the PSW.
always @(data or wr or wr_bit or wr_addr or cy_in or data_in or set or ov_in or ac_in)
begin
    psw_next_i = data;

    if (wr & (wr_bit==1'b0) & (wr_addr==`OC8051_SFR_PSW))
      psw_next_i[7:1] = data_in[7:1];
//
// write to psw (bit addressable)
    else if (wr & wr_bit & (wr_addr[7:3]==`OC8051_SFR_B_PSW))
      psw_next_i[wr_addr[2:0]] = cy_in;
    else begin
      case (set) 
        `OC8051_PS_CY: begin
//
//write carry
          psw_next_i[7] = cy_in;
        end
        `OC8051_PS_OV: begin
//
//write carry and overflov
          psw_next_i[7] = cy_in;
          psw_next_i[2] = ov_in;
        end
        `OC8051_PS_AC:begin
//
//write carry, overflov and ac
          psw_next_i[7] = cy_in;
          psw_next_i[6] = ac_in;
          psw_next_i[2] = ov_in;
        end
      endcase
    end
end

//
//case writing to psw
always @(posedge clk)// or posedge rst)
begin
  if (rst)
    data <= #1 `OC8051_RST_PSW;

//
// write to psw (byte addressable)
  else begin
    if (wr & (wr_bit==1'b0) & (wr_addr==`OC8051_SFR_PSW))
      data[7:1] <= #1 data_in[7:1];
//
// write to psw (bit addressable)
    else if (wr & wr_bit & (wr_addr[7:3]==`OC8051_SFR_B_PSW))
      data[wr_addr[2:0]] <= #1 cy_in;
    else begin
      case (set) 
        `OC8051_PS_CY: begin
//
//write carry
          data[7] <= #1 cy_in;
        end
        `OC8051_PS_OV: begin
//
//write carry and overflov
          data[7] <= #1 cy_in;
          data[2] <= #1 ov_in;
        end
        `OC8051_PS_AC:begin
//
//write carry, overflov and ac
          data[7] <= #1 cy_in;
          data[6] <= #1 ac_in;
          data[2] <= #1 ov_in;

        end
      endcase
    end
  end
end

 assign m1__DOT__oc8051_sfr1__DOT__oc8051_psw1__DOT__data = data;
endmodule
//////////////////////////////////////////////////////////////////////
////                                                              ////
////  8051 data pointer                                           ////
////                                                              ////
////  This file is part of the 8051 cores project                 ////
////  http://www.opencores.org/cores/8051/                        ////
////                                                              ////
////  Description                                                 ////
////   8051 special function register: data pointer               ////
////                                                              ////
////  To Do:                                                      ////
////   nothing                                                    ////
////                                                              ////
////  Author(s):                                                  ////
////      - Simon Teran, simont@opencores.org                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.3  2003/01/13 14:14:40  simont
// replace some modules
//
// Revision 1.2  2002/09/30 17:33:59  simont
// prepared header
//
//



module oc8051_dptr(clk, rst, addr, data_in, data2_in, wr, wr_sfr, wr_bit, data_hi, data_lo, m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_hi, m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_lo);
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_hi;
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_lo;
//
// clk          (in)  clock
// rst          (in)  reset
// addr         (in)  write address input [oc8051_ram_wr_sel.out]
// data_in      (in)  destination 1 from alu [oc8051_alu.des1]
// data2_in     (in)  destination 2 from alu [oc8051_alu.des2]
// wr           (in)  write to ram [oc8051_decoder.wr -r]
// wd2          (in)  write from destination 2 [oc8051_decoder.ram_wr_sel -r]
// wr_bit       (in)  write bit addresable [oc8051_decoder.bit_addr -r]
// data_hi      (out) output (high bits) [oc8051_alu_src3_sel.dptr, oc8051_ext_addr_sel.dptr_hi, oc8051_ram_sel.dptr_hi]
// data_lo      (out) output (low bits) [oc8051_ext_addr_sel.dptr_lo]
//


input clk, rst, wr, wr_bit;
input [1:0] wr_sfr;
input [7:0] addr, data_in, data2_in;

output [7:0] data_hi, data_lo;

(* keep *) reg [7:0] data_hi, data_lo;

always @(posedge clk)// or posedge rst)
begin
  if (rst) begin
    data_hi <= #1 `OC8051_RST_DPH;
    data_lo <= #1 `OC8051_RST_DPL;
  end else if (wr_sfr==`OC8051_WRS_DPTR) begin
//
//write from destination 2 and 1
    data_hi <= #1 data2_in;
    data_lo <= #1 data_in;
  end else if ((addr==`OC8051_SFR_DPTR_HI) & (wr) & !(wr_bit))
//
//case of writing to dptr
    data_hi <= #1 data_in;
  else if ((addr==`OC8051_SFR_DPTR_LO) & (wr) & !(wr_bit))
    data_lo <= #1 data_in;
end

 assign m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_lo = data_lo;
 assign m1__DOT__oc8051_sfr1__DOT__oc8051_dptr1__DOT__data_hi = data_hi;
endmodule

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  8051 stack pointer                                          ////
////                                                              ////
////  This file is part of the 8051 cores project                 ////
////  http://www.opencores.org/cores/8051/                        ////
////                                                              ////
////  Description                                                 ////
////   8051 special function register: stack pointer.             ////
////                                                              ////
////  To Do:                                                      ////
////   nothing                                                    ////
////                                                              ////
////  Author(s):                                                  ////
////      - Simon Teran, simont@opencores.org                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.5  2003/01/13 14:14:41  simont
// replace some modules
//
// Revision 1.4  2002/11/05 17:23:54  simont
// add module oc8051_sfr, 256 bytes internal ram
//
// Revision 1.3  2002/09/30 17:33:59  simont
// prepared header
//
//




module oc8051_sp (clk, rst, ram_rd_sel, ram_wr_sel, wr_addr, wr, wr_bit, data_in, sp_out, sp_w, m1__DOT__oc8051_sfr1__DOT__oc8051_sp1__DOT__sp_out);
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_sp1__DOT__sp_out;


input clk, rst, wr, wr_bit;
input [2:0] ram_rd_sel, ram_wr_sel;
input [7:0] data_in, wr_addr;
output [7:0] sp_out; 
output [7:0] sp_w;

(* keep *) reg [7:0] sp_out;
reg [7:0] sp_w;
reg pop;
wire write;
wire [7:0] sp_t;

reg [7:0] sp;


assign write = ((wr_addr==`OC8051_SFR_SP) & (wr) & !(wr_bit));

assign sp_t= write ? data_in : sp;


always @(posedge clk)// or posedge rst)
begin
  if (rst)
    sp <= #1 `OC8051_RST_SP;
  else if (write)
    sp <= #1 data_in;
  else
    sp <= #1 sp_out;
end


always @(sp or ram_wr_sel)
begin
//
// push
  if (ram_wr_sel==`OC8051_RWS_SP) sp_w = sp + 8'h01;
  else sp_w = sp;

end


always @(sp_t or ram_wr_sel or pop or write)
begin
//
// push
  if (write) sp_out = sp_t;
  else if (ram_wr_sel==`OC8051_RWS_SP) sp_out = sp_t + 8'h01;
  else sp_out = sp_t - {7'b0, pop};

end


always @(posedge clk)// or posedge rst)
begin
  if (rst)
    pop <= #1 1'b0;
  else if (ram_rd_sel==`OC8051_RRS_SP) pop <= #1 1'b1;
  else pop <= #1 1'b0;
end

 assign m1__DOT__oc8051_sfr1__DOT__oc8051_sp1__DOT__sp_out = sp_out;
endmodule
//////////////////////////////////////////////////////////////////////
////                                                              ////
////  8051 cores b register                                       ////
////                                                              ////
////  This file is part of the 8051 cores project                 ////
////  http://www.opencores.org/cores/8051/                        ////
////                                                              ////
////  Description                                                 ////
////   b register for 8051 core                                   ////
////                                                              ////
////  To Do:                                                      ////
////   Nothing                                                    ////
////                                                              ////
////  Author(s):                                                  ////
////      - Simon Teran, simont@opencores.org                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.8  2003/04/07 14:58:02  simont
// change sfr's interface.
//
// Revision 1.7  2003/01/13 14:14:40  simont
// replace some modules
//
// Revision 1.6  2002/09/30 17:33:59  simont
// prepared header
//
//



module oc8051_b_register (clk, rst, bit_in, data_in, wr, wr_bit,
              wr_addr, data_out, m1__DOT__oc8051_sfr1__DOT__oc8051_b_register__DOT__data_out);
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_b_register__DOT__data_out;


input clk, rst, wr, wr_bit, bit_in;
input [7:0] wr_addr, data_in;

output [7:0] data_out;

(* keep *) reg [7:0] data_out;

//
//writing to b
//must check if write high and correct address
always @(posedge clk)// or posedge rst)
begin
  if (rst)
    data_out <= #1 `OC8051_RST_B;
  else if (wr) begin
    if (!wr_bit) begin
      if (wr_addr==`OC8051_SFR_B)
        data_out <= #1 data_in;
    end else begin
      if (wr_addr[7:3]==`OC8051_SFR_B_B)
        data_out[wr_addr[2:0]] <= #1 bit_in;
    end
  end
end

 assign m1__DOT__oc8051_sfr1__DOT__oc8051_b_register__DOT__data_out = data_out;
endmodule
//////////////////////////////////////////////////////////////////////
////                                                              ////
////  8051 cores acccumulator                                     ////
////                                                              ////
////  This file is part of the 8051 cores project                 ////
////  http://www.opencores.org/cores/8051/                        ////
////                                                              ////
////  Description                                                 ////
////   accumulaor register for 8051 core                          ////
////                                                              ////
////  To Do:                                                      ////
////   Nothing                                                    ////
////                                                              ////
////  Author(s):                                                  ////
////      - Simon Teran, simont@opencores.org                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.13  2003/06/03 17:16:16  simont
// `ifdef added.
//
// Revision 1.12  2003/04/09 16:24:03  simont
// change wr_sft to 2 bit wire.
//
// Revision 1.11  2003/04/09 15:49:42  simont
// Register oc8051_sfr dato output, add signal wait_data.
//
// Revision 1.10  2003/04/07 14:58:02  simont
// change sfr's interface.
//
// Revision 1.9  2003/01/13 14:14:40  simont
// replace some modules
//
// Revision 1.8  2002/11/05 17:23:54  simont
// add module oc8051_sfr, 256 bytes internal ram
//
// Revision 1.7  2002/09/30 17:33:59  simont
// prepared header
//
//


module oc8051_acc (clk, rst, 
                 bit_in, data_in, data2_in, 
		 data_out, data_out_cur,
		 wr, wr_bit, wr_addr,
		 p, wr_sfr, m1__DOT__oc8051_sfr1__DOT__oc8051_acc1__DOT__data_out);
 output [7:0] m1__DOT__oc8051_sfr1__DOT__oc8051_acc1__DOT__data_out;


input clk, rst, wr, wr_bit, bit_in;
input [1:0] wr_sfr;
input [7:0] wr_addr, data_in, data2_in;

output p;
output [7:0] data_out;
output [7:0] data_out_cur;

(* keep *) reg [7:0] data_out;
reg [7:0] acc;

wire wr_acc, wr2_acc, wr_bit_acc;
//
//calculates parity
assign p = ^acc;
assign data_out_cur = acc;

assign wr_acc     = (wr_sfr==`OC8051_WRS_ACC1) | (wr & !wr_bit & (wr_addr==`OC8051_SFR_ACC));
assign wr2_acc    = (wr_sfr==`OC8051_WRS_ACC2);
assign wr_bit_acc = (wr & wr_bit & (wr_addr[7:3]==`OC8051_SFR_B_ACC));
//
//writing to acc
always @(wr_sfr or data2_in or wr2_acc or wr_acc or wr_bit_acc or wr_addr[2:0] or data_in or bit_in or data_out)
begin
  if (wr2_acc)
    acc = data2_in;
  else if (wr_acc)
    acc = data_in;
  else if (wr_bit_acc)
    case (wr_addr[2:0]) 
      3'b000: acc = {data_out[7:1], bit_in};
      3'b001: acc = {data_out[7:2], bit_in, data_out[0]};
      3'b010: acc = {data_out[7:3], bit_in, data_out[1:0]};
      3'b011: acc = {data_out[7:4], bit_in, data_out[2:0]};
      3'b100: acc = {data_out[7:5], bit_in, data_out[3:0]};
      3'b101: acc = {data_out[7:6], bit_in, data_out[4:0]};
      3'b110: acc = {data_out[7],   bit_in, data_out[5:0]};
      3'b111: acc = {bit_in, data_out[6:0]};
    endcase
  else
    acc = data_out;
end

always @(posedge clk)// or posedge rst)
begin
  if (rst)
    data_out <= #1 `OC8051_RST_ACC;
  else
    data_out <= #1 acc;
end


`ifdef OC8051_SIMULATION

always @(data_out)
  if (data_out===8'hxx) begin
    $display("time ",$time, "   failure: invalid write to ACC (oc8051_acc)");
    #22 $finish;

end


`endif


 assign m1__DOT__oc8051_sfr1__DOT__oc8051_acc1__DOT__data_out = data_out;
endmodule

