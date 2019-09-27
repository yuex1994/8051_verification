/* PREHEADER */

`define true  1'b1

`define false 1'b0

/* END OF PREHEADER */
module wrapper(
__ILA_I_oc8051_ROM_rdata_0,
__ILA_I_oc8051_ROM_rdata_1,
__ILA_I_oc8051_ROM_rdata_2,
__ISSUE__,
__VLG_I_cxrom_data_out_a,
__VLG_I_ea_in_a,
__VLG_I_int0_i_a,
__VLG_I_int1_i_a,
__VLG_I_p0_i_a,
__VLG_I_p1_i_a,
__VLG_I_p2_i_a,
__VLG_I_p3_i_a,
__VLG_I_wbd_ack_i_a,
__VLG_I_wbd_dat_i_a,
__VLG_I_wbd_err_i_a,
__VLG_I_wbi_ack_i_a,
__VLG_I_wbi_dat_i_a,
__VLG_I_wbi_err_i_a,
__VLG_I_cxrom_data_out_b,
__VLG_I_ea_in_b,
__VLG_I_int0_i_b,
__VLG_I_int1_i_b,
__VLG_I_p0_i_b,
__VLG_I_p1_i_b,
__VLG_I_p2_i_b,
__VLG_I_p3_i_b,
__VLG_I_wbd_ack_i_b,
__VLG_I_wbd_dat_i_b,
__VLG_I_wbd_err_i_b,
__VLG_I_wbi_ack_i_b,
__VLG_I_wbi_dat_i_b,
__VLG_I_wbi_err_i_b,
clk,
rst,
__VLG_O_cxrom_addr_a,
__VLG_O_iram_a,
__VLG_O_iram_short_a,
__VLG_O_op1_a,
__VLG_O_op1_d_a,
__VLG_O_op2_a,
__VLG_O_op3_a,
__VLG_O_p0_o_a,
__VLG_O_p1_o_a,
__VLG_O_p2_o_a,
__VLG_O_p3_o_a,
__VLG_O_pc_change_a,
__VLG_O_wbd_adr_o_a,
__VLG_O_wbd_cyc_o_a,
__VLG_O_wbd_dat_o_a,
__VLG_O_wbd_stb_o_a,
__VLG_O_wbd_we_o_a,
__VLG_O_wbi_adr_o_a,
__VLG_O_wbi_cyc_o_a,
__VLG_O_wbi_stb_o_a,

__VLG_O_cxrom_addr_b,
__VLG_O_iram_b,
__VLG_O_iram_short_b,
__VLG_O_op1_b,
__VLG_O_op1_d_b,
__VLG_O_op2_b,
__VLG_O_op3_b,
__VLG_O_p0_o_b,
__VLG_O_p1_o_b,
__VLG_O_p2_o_b,
__VLG_O_p3_o_b,
__VLG_O_pc_change_b,
__VLG_O_wbd_adr_o_b,
__VLG_O_wbd_cyc_o_b,
__VLG_O_wbd_dat_o_b,
__VLG_O_wbd_stb_o_b,
__VLG_O_wbd_we_o_b,
__VLG_O_wbi_adr_o_b,
__VLG_O_wbi_cyc_o_b,
__VLG_O_wbi_stb_o_b,
__m0__,
__m10__,
__m11__,
__m12__,
__m13__,
__m14__,
__m15__,
__m16__,
__m17__,
__m18__,
__m19__,
__m1__,
__m20__,
__m21__,
__m22__,
__m23__,
__m24__,
__m25__,
__m26__,
__m27__,
__m28__,
__m29__,
__m2__,
__m30__,
__m31__,
__m32__,
__m33__,
__m34__,
__m35__,
__m36__,
__m37__,
__m38__,
__m39__,
__m3__,
__m40__,
__m41__,
__m42__,
__m43__,
__m44__,
__m45__,
__m4__,
__m5__,
__m6__,
__m7__,
__m8__,
__m9__,
acc,
b_reg,
decoder_state,
dptr,
ie,
iram_0,
iram_1,
iram_10,
iram_11,
iram_12,
iram_13,
iram_14,
iram_15,
iram_2,
iram_3,
iram_4,
iram_5,
iram_6,
iram_7,
iram_8,
iram_9,
p,
pc,
pc_log,
pc_log_prev,
psw,
sp,
__CYCLE_CNT__,
__START__,
__STARTED__,
__ENDED__,
__RESETED__,
impl_a_finish,
impl_b_stall,
impl_b_finish,
__VLG_I_verif_nop_enable_a, 
__VLG_I_verif_nop_enable_b,
__ILA_START__
);
input      [7:0] __ILA_I_oc8051_ROM_rdata_0;
input      [7:0] __ILA_I_oc8051_ROM_rdata_1;
input      [7:0] __ILA_I_oc8051_ROM_rdata_2;
input            __ISSUE__;
input     [31:0] __VLG_I_cxrom_data_out_a;
input            __VLG_I_ea_in_a;
input            __VLG_I_int0_i_a;
input            __VLG_I_int1_i_a;
input      [7:0] __VLG_I_p0_i_a;
input      [7:0] __VLG_I_p1_i_a;
input      [7:0] __VLG_I_p2_i_a;
input      [7:0] __VLG_I_p3_i_a;
input            __VLG_I_wbd_ack_i_a;
input      [7:0] __VLG_I_wbd_dat_i_a;
input            __VLG_I_wbd_err_i_a;
input            __VLG_I_wbi_ack_i_a;
input     [31:0] __VLG_I_wbi_dat_i_a;
input            __VLG_I_wbi_err_i_a;
input     [31:0] __VLG_I_cxrom_data_out_b;
input            __VLG_I_ea_in_b;
input            __VLG_I_int0_i_b;
input            __VLG_I_int1_i_b;
input      [7:0] __VLG_I_p0_i_b;
input      [7:0] __VLG_I_p1_i_b;
input      [7:0] __VLG_I_p2_i_b;
input      [7:0] __VLG_I_p3_i_b;
input            __VLG_I_wbd_ack_i_b;
input      [7:0] __VLG_I_wbd_dat_i_b;
input            __VLG_I_wbd_err_i_b;
input            __VLG_I_wbi_ack_i_b;
input     [31:0] __VLG_I_wbi_dat_i_b;
input            __VLG_I_wbi_err_i_b;
input            clk;
input            rst;
output     [15:0] __VLG_O_cxrom_addr_a;
output   [2047:0] __VLG_O_iram_a;
output    [127:0] __VLG_O_iram_short_a;
output      [7:0] __VLG_O_op1_a;
output      [7:0] __VLG_O_op1_d_a;
output      [7:0] __VLG_O_op2_a;
output      [7:0] __VLG_O_op3_a;
output      [7:0] __VLG_O_p0_o_a;
output      [7:0] __VLG_O_p1_o_a;
output      [7:0] __VLG_O_p2_o_a;
output      [7:0] __VLG_O_p3_o_a;
output            __VLG_O_pc_change_a;
output     [15:0] __VLG_O_wbd_adr_o_a;
output            __VLG_O_wbd_cyc_o_a;
output      [7:0] __VLG_O_wbd_dat_o_a;
output            __VLG_O_wbd_stb_o_a;
output            __VLG_O_wbd_we_o_a;
output     [15:0] __VLG_O_wbi_adr_o_a;
output            __VLG_O_wbi_cyc_o_a;
output            __VLG_O_wbi_stb_o_a;
output     [15:0] __VLG_O_cxrom_addr_b;
output   [2047:0] __VLG_O_iram_b;
output    [127:0] __VLG_O_iram_short_b;
output      [7:0] __VLG_O_op1_b;
output      [7:0] __VLG_O_op1_d_b;
output      [7:0] __VLG_O_op2_b;
output      [7:0] __VLG_O_op3_b;
output      [7:0] __VLG_O_p0_o_b;
output      [7:0] __VLG_O_p1_o_b;
output      [7:0] __VLG_O_p2_o_b;
output      [7:0] __VLG_O_p3_o_b;
output            __VLG_O_pc_change_b;
output     [15:0] __VLG_O_wbd_adr_o_b;
output            __VLG_O_wbd_cyc_o_b;
output      [7:0] __VLG_O_wbd_dat_o_b;
output            __VLG_O_wbd_stb_o_b;
output            __VLG_O_wbd_we_o_b;
output     [15:0] __VLG_O_wbi_adr_o_b;
output            __VLG_O_wbi_cyc_o_b;
output            __VLG_O_wbi_stb_o_b;

output            __m0__;
output            __m10__;
output            __m11__;
output            __m12__;
output            __m13__;
output            __m14__;
output            __m15__;
output            __m16__;
output            __m17__;
output            __m18__;
output            __m19__;
output            __m1__;
output            __m20__;
output            __m21__;
output            __m22__;
output            __m23__;
output            __m24__;
output            __m25__;
output            __m26__;
output            __m27__;
output            __m28__;
output            __m29__;
output            __m2__;
output            __m30__;
output            __m31__;
output            __m32__;
output            __m33__;
output            __m34__;
output            __m35__;
output            __m36__;
output            __m37__;
output            __m38__;
output            __m39__;
output            __m3__;
output            __m40__;
output            __m41__;
output            __m42__;
output            __m43__;
output            __m44__;
output            __m45__;
output            __m4__;
output            __m5__;
output            __m6__;
output            __m7__;
output            __m8__;
output            __m9__;
output      [7:0] acc;
output      [7:0] b_reg;
output      [1:0] decoder_state;
output     [15:0] dptr;
output      [7:0] ie;
output      [7:0] iram_0;
output      [7:0] iram_1;
output      [7:0] iram_10;
output      [7:0] iram_11;
output      [7:0] iram_12;
output      [7:0] iram_13;
output      [7:0] iram_14;
output      [7:0] iram_15;
output      [7:0] iram_2;
output      [7:0] iram_3;
output      [7:0] iram_4;
output      [7:0] iram_5;
output      [7:0] iram_6;
output      [7:0] iram_7;
output      [7:0] iram_8;
output      [7:0] iram_9;
output            p;
output     [15:0] pc;
output     [15:0] pc_log;
output     [15:0] pc_log_prev;
output      [7:0] psw;
output      [7:0] sp;
output reg      [7:0] __CYCLE_CNT__;
output reg            __START__;
output reg            __STARTED__;
output reg            __ENDED__;
output reg            __RESETED__;
// Extra I/O reg for verification.
input 		      __VLG_I_verif_nop_enable_a, __VLG_I_verif_nop_enable_b;
input		      impl_a_finish;
input		      impl_b_finish;
input		      impl_b_stall;
input 		      __ILA_START__;
reg		      __ILA_STARTED__;
wire [7:0]	      __VLG_I_verif_nop_value_a = 0;
wire [7:0]	      __VLG_I_verif_nop_value_b = 0;
wire [15:0]           cxrom_addr_b;
wire [15:0]           cxrom_addr_a;
wire [31:0]           cxrom_data_out_a;
wire [31:0]           cxrom_data_out_b;
(* keep *) wire            __IEND__;
(* keep *) wire      [7:0] __ILA_I_oc8051_ROM_rdata_0;
(* keep *) wire      [7:0] __ILA_I_oc8051_ROM_rdata_1;
(* keep *) wire      [7:0] __ILA_I_oc8051_ROM_rdata_2;
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
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_0;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_1;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_10;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_11;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_12;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_13;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_14;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_15;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_2;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_3;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_4;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_5;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_6;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_7;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_8;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_9;
(* keep *) wire     [15:0] __ILA_SO_oc8051_ROM_addr_0;
(* keep *) wire     [15:0] __ILA_SO_oc8051_ROM_addr_1;
(* keep *) wire     [15:0] __ILA_SO_oc8051_ROM_addr_2;
(* keep *) wire            __ILA_oc8051_decode_of_I__DOT__0__;
(* keep *) wire            __ILA_oc8051_valid__;
(* keep *) wire            __ISSUE__;
/*
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
(* keep *) wire    [127:0] __VLG_O_iram_short;
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
*/
(* keep *) wire            __m0__;
(* keep *) wire            __m10__;
(* keep *) wire            __m11__;
(* keep *) wire            __m12__;
(* keep *) wire            __m13__;
(* keep *) wire            __m14__;
(* keep *) wire            __m15__;
(* keep *) wire            __m16__;
(* keep *) wire            __m17__;
(* keep *) wire            __m18__;
(* keep *) wire            __m19__;
(* keep *) wire            __m1__;
(* keep *) wire            __m20__;
(* keep *) wire            __m21__;
(* keep *) wire            __m22__;
(* keep *) wire            __m23__;
(* keep *) wire            __m24__;
(* keep *) wire            __m25__;
(* keep *) wire            __m26__;
(* keep *) wire            __m27__;
(* keep *) wire            __m28__;
(* keep *) wire            __m29__;
(* keep *) wire            __m2__;
(* keep *) wire            __m30__;
(* keep *) wire            __m31__;
(* keep *) wire            __m32__;
(* keep *) wire            __m33__;
(* keep *) wire            __m34__;
(* keep *) wire            __m35__;
(* keep *) wire            __m36__;
(* keep *) wire            __m37__;
(* keep *) wire            __m38__;
(* keep *) wire            __m39__;
(* keep *) wire            __m3__;
(* keep *) wire            __m40__;
(* keep *) wire            __m41__;
(* keep *) wire            __m42__;
(* keep *) wire            __m43__;
(* keep *) wire            __m44__;
(* keep *) wire            __m45__;
(* keep *) wire            __m4__;
(* keep *) wire            __m5__;
(* keep *) wire            __m6__;
(* keep *) wire            __m7__;
(* keep *) wire            __m8__;
(* keep *) wire            __m9__;
(* keep *) wire      [7:0] acc;
(* keep *) wire      [7:0] b_reg;
wire            clk;
(* keep *) wire      [1:0] decoder_state;
(* keep *) wire     [15:0] dptr;
(* keep *) wire      [7:0] ie;
(* keep *) wire      [7:0] iram_0;
(* keep *) wire      [7:0] iram_1;
(* keep *) wire      [7:0] iram_10;
(* keep *) wire      [7:0] iram_11;
(* keep *) wire      [7:0] iram_12;
(* keep *) wire      [7:0] iram_13;
(* keep *) wire      [7:0] iram_14;
(* keep *) wire      [7:0] iram_15;
(* keep *) wire      [7:0] iram_2;
(* keep *) wire      [7:0] iram_3;
(* keep *) wire      [7:0] iram_4;
(* keep *) wire      [7:0] iram_5;
(* keep *) wire      [7:0] iram_6;
(* keep *) wire      [7:0] iram_7;
(* keep *) wire      [7:0] iram_8;
(* keep *) wire      [7:0] iram_9;
(* keep *) wire            p;
(* keep *) wire     [15:0] pc;
(* keep *) wire     [15:0] pc_log;
(* keep *) wire     [15:0] pc_log_prev;
(* keep *) wire      [7:0] psw;
wire            rst;
(* keep *) wire      [7:0] sp;
always @(posedge clk) begin
if (rst) __CYCLE_CNT__ <= 0;
else if ( ( __START__ || __STARTED__ ) &&  __CYCLE_CNT__ < 132) __CYCLE_CNT__ <= __CYCLE_CNT__ + 1;
end

always @(posedge clk) begin
if (rst) __ILA_STARTED__ <= 0;
else if (__ILA_START__) __ILA_STARTED__ <= 1;
else __ILA_STARTED__ <= __ILA_STARTED__;
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

// TODO(yuex): move these properties into tcl.:w
assign __m0__ = m1.oc8051_sfr1.oc8051_acc1.data_out == __ILA_SO_ACC ;
assign __m1__ = m1.oc8051_sfr1.oc8051_b_register.data_out == __ILA_SO_B ;
assign __m2__ = m1.oc8051_sfr1.oc8051_dptr1.data_hi == __ILA_SO_DPH ;
assign __m3__ = m1.oc8051_sfr1.oc8051_dptr1.data_lo == __ILA_SO_DPL ;
assign __m4__ = m1.oc8051_sfr1.oc8051_int1.ie == __ILA_SO_IE ;
assign __m5__ = m1.oc8051_sfr1.oc8051_int1.ip == __ILA_SO_IP ;
assign __m6__ = m1.oc8051_sfr1.oc8051_ports1.p0_out == __ILA_SO_P0 ;
assign __m7__ = m1.oc8051_sfr1.oc8051_ports1.p1_out == __ILA_SO_P1 ;
assign __m8__ = m1.oc8051_sfr1.oc8051_ports1.p2_out == __ILA_SO_P2 ;
assign __m9__ = m1.oc8051_sfr1.oc8051_ports1.p3_out == __ILA_SO_P3 ;
assign __m10__ = m1.oc8051_memory_interface1.pc == __ILA_SO_PC ;
assign __m11__ = m1.oc8051_sfr1.oc8051_sp1.sp_out == __ILA_SO_SP ;
assign __m12__ = m1.oc8051_sfr1.oc8051_int1.tcon == __ILA_SO_TCON ;
assign __m13__ = m1.oc8051_memory_interface1.dadr_o == __ILA_SO_XRAM_ADDR ;
assign __m14__ = m1.oc8051_memory_interface1.ddat_o == __ILA_SO_XRAM_DATA_OUT ;
assign __m15__ = m1.iram_0 == __ILA_SO_oc8051_IRAM_data_0 ;
assign __m16__ = m1.iram_1 == __ILA_SO_oc8051_IRAM_data_1 ;
assign __m17__ = m1.iram_10 == __ILA_SO_oc8051_IRAM_data_10 ;
assign __m18__ = m1.iram_11 == __ILA_SO_oc8051_IRAM_data_11 ;
assign __m19__ = m1.iram_12 == __ILA_SO_oc8051_IRAM_data_12 ;
assign __m20__ = m1.iram_13 == __ILA_SO_oc8051_IRAM_data_13 ;
assign __m21__ = m1.iram_14 == __ILA_SO_oc8051_IRAM_data_14 ;
assign __m22__ = m1.iram_15 == __ILA_SO_oc8051_IRAM_data_15 ;
assign __m23__ = m1.iram_2 == __ILA_SO_oc8051_IRAM_data_2 ;
assign __m24__ = m1.iram_3 == __ILA_SO_oc8051_IRAM_data_3 ;
assign __m25__ = m1.iram_4 == __ILA_SO_oc8051_IRAM_data_4 ;
assign __m26__ = m1.iram_5 == __ILA_SO_oc8051_IRAM_data_5 ;
assign __m27__ = m1.iram_6 == __ILA_SO_oc8051_IRAM_data_6 ;
assign __m28__ = m1.iram_7 == __ILA_SO_oc8051_IRAM_data_7 ;
assign __m29__ = m1.iram_8 == __ILA_SO_oc8051_IRAM_data_8 ;
assign __m30__ = m1.iram_9 == __ILA_SO_oc8051_IRAM_data_9 ;
assign __m31__ = m1.oc8051_sfr1.oc8051_acc1.data_out == __ILA_SO_ACC ;
assign __m32__ = m1.oc8051_sfr1.oc8051_b_register.data_out == __ILA_SO_B ;
assign __m33__ = m1.oc8051_sfr1.oc8051_dptr1.data_hi == __ILA_SO_DPH ;
assign __m34__ = m1.oc8051_sfr1.oc8051_dptr1.data_lo == __ILA_SO_DPL ;
assign __m35__ = m1.oc8051_sfr1.oc8051_int1.ie == __ILA_SO_IE ;
assign __m36__ = m1.oc8051_sfr1.oc8051_int1.ip == __ILA_SO_IP ;
assign __m37__ = m1.oc8051_sfr1.oc8051_ports1.p0_out == __ILA_SO_P0 ;
assign __m38__ = m1.oc8051_sfr1.oc8051_ports1.p1_out == __ILA_SO_P1 ;
assign __m39__ = m1.oc8051_sfr1.oc8051_ports1.p2_out == __ILA_SO_P2 ;
assign __m40__ = m1.oc8051_sfr1.oc8051_ports1.p3_out == __ILA_SO_P3 ;
assign __m41__ = m1.oc8051_memory_interface1.pc == __ILA_SO_PC ;
assign __m42__ = m1.oc8051_sfr1.oc8051_sp1.sp_out == __ILA_SO_SP ;
assign __m43__ = m1.oc8051_sfr1.oc8051_int1.tcon == __ILA_SO_TCON ;
assign __m44__ = m1.oc8051_memory_interface1.dadr_o == __ILA_SO_XRAM_ADDR ;
assign __m45__ = m1.oc8051_memory_interface1.ddat_o == __ILA_SO_XRAM_DATA_OUT ;
assign __IEND__ = (`false|| (m1.pc_change == 1)) && __STARTED__ && (~ __ENDED__) ;

oc8051__DOT__I__DOT__0 spec (
   .__START__(__ILA_START__),
   .clk(clk),
   .oc8051_ROM_rdata_0(__ILA_I_oc8051_ROM_rdata_0),
   .oc8051_ROM_rdata_1(__ILA_I_oc8051_ROM_rdata_1),
   .oc8051_ROM_rdata_2(__ILA_I_oc8051_ROM_rdata_2),
   .rst(rst),
   .__ILA_oc8051_decode_of_I__DOT__0__(__ILA_oc8051_decode_of_I__DOT__0__),
   .__ILA_oc8051_valid__(__ILA_oc8051_valid__),
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
   .oc8051_IRAM_data_0(__ILA_SO_oc8051_IRAM_data_0),
   .oc8051_IRAM_data_1(__ILA_SO_oc8051_IRAM_data_1),
   .oc8051_IRAM_data_2(__ILA_SO_oc8051_IRAM_data_2),
   .oc8051_IRAM_data_3(__ILA_SO_oc8051_IRAM_data_3),
   .oc8051_IRAM_data_4(__ILA_SO_oc8051_IRAM_data_4),
   .oc8051_IRAM_data_5(__ILA_SO_oc8051_IRAM_data_5),
   .oc8051_IRAM_data_6(__ILA_SO_oc8051_IRAM_data_6),
   .oc8051_IRAM_data_7(__ILA_SO_oc8051_IRAM_data_7),
   .oc8051_IRAM_data_8(__ILA_SO_oc8051_IRAM_data_8),
   .oc8051_IRAM_data_9(__ILA_SO_oc8051_IRAM_data_9),
   .oc8051_IRAM_data_10(__ILA_SO_oc8051_IRAM_data_10),
   .oc8051_IRAM_data_11(__ILA_SO_oc8051_IRAM_data_11),
   .oc8051_IRAM_data_12(__ILA_SO_oc8051_IRAM_data_12),
   .oc8051_IRAM_data_13(__ILA_SO_oc8051_IRAM_data_13),
   .oc8051_IRAM_data_14(__ILA_SO_oc8051_IRAM_data_14),
   .oc8051_IRAM_data_15(__ILA_SO_oc8051_IRAM_data_15),
   .oc8051_ROM_addr_0(__ILA_SO_oc8051_ROM_addr_0),
   .oc8051_ROM_addr_1(__ILA_SO_oc8051_ROM_addr_1),
   .oc8051_ROM_addr_2(__ILA_SO_oc8051_ROM_addr_2),
   .__COUNTER_start__n1()
);

wire clk_a = clk & (!impl_a_finish);
wire clk_b = clk & (!impl_b_stall) & (!impl_b_finish);

reg [2:0] impl_a_flush_counter;
always @(posedge clk) begin
  if (rst) begin
    impl_a_flush_counter <= 0;
  end
  else if (__STARTED__ & __VLG_O_pc_change_a & (!impl_a_finish)) begin
    impl_a_flush_counter <= impl_a_flush_counter + 1;
  end
  else begin
    impl_a_flush_counter <= impl_a_flush_counter;
  end
end

reg [2:0] impl_b_flush_counter;
always @(posedge clk) begin
  if (rst) begin
    impl_b_flush_counter <= 0;
  end
  else if (__ILA_STARTED__ & __VLG_O_pc_change_b & (!impl_b_finish)) begin
    impl_b_flush_counter <= impl_b_flush_counter + 1;
  end
  else begin
    impl_b_flush_counter <= impl_b_flush_counter;
  end
end

reg [2:0] impl_b_pc_change_counter;
always @(posedge clk) begin
  if (rst) begin
    impl_b_pc_change_counter <= 0;
  end
  else if ((__ILA_STARTED__ | __ILA_START__) & __VLG_O_pc_change_b & (!impl_b_finish)) begin
    impl_b_pc_change_counter <= impl_b_pc_change_counter + 1;
  end
  else begin
    impl_b_pc_change_counter <= impl_b_pc_change_counter;
  end
end

oc8051_top impl_a(
    .acc(acc_a),
    .b_reg(b_reg_a),
    .cxrom_addr(cxrom_addr_a),
    .cxrom_data_out(cxrom_data_out_a),
    .decoder_state(decoder_state_a),
    .dptr(dptr_a),
    .ea_in(__VLG_I_ea_in_a),
    .ie(ie_a),
    .int0_i(__VLG_I_int0_i_a),
    .int1_i(__VLG_I_int1_i_a),
    .iram(__VLG_O_iram_a),
    .iram_0(iram_0_a),
    .iram_1(iram_1_a),
    .iram_10(iram_10_a),
    .iram_11(iram_11_a),
    .iram_12(iram_12_a),
    .iram_13(iram_13_a),
    .iram_14(iram_14_a),
    .iram_15(iram_15_a),
    .iram_2(iram_2_a),
    .iram_3(iram_3_a),
    .iram_4(iram_4_a),
    .iram_5(iram_5_a),
    .iram_6(iram_6_a),
    .iram_7(iram_7_a),
    .iram_8(iram_8_a),
    .iram_9(iram_9_a),
    .iram_short(__VLG_O_iram_short_a),
    .op1(__VLG_O_op1_a),
    .op1_d(__VLG_O_op1_d_a),
    .op2(__VLG_O_op2_a),
    .op3(__VLG_O_op3_a),
    .p(p_a),
    .p0_i(__VLG_I_p0_i_a),
    .p0_o(__VLG_O_p0_o_a),
    .p1_i(__VLG_I_p1_i_a),
    .p1_o(__VLG_O_p1_o_a),
    .p2_i(__VLG_I_p2_i_a),
    .p2_o(__VLG_O_p2_o_a),
    .p3_i(__VLG_I_p3_i_a),
    .p3_o(__VLG_O_p3_o_a),
    .pc(pc_a),
    .pc_change(__VLG_O_pc_change_a),
    .pc_log(pc_log_a),
    .pc_log_prev(pc_log_prev_a),
    .psw(psw_a),
    .sp(sp_a),
    .wb_clk_i(clk_a),
    .wb_rst_i(rst),
    .wbd_ack_i(__VLG_I_wbd_ack_i_a),
    .wbd_adr_o(__VLG_O_wbd_adr_o_a),
    .wbd_cyc_o(__VLG_O_wbd_cyc_o_a),
    .wbd_dat_i(__VLG_I_wbd_dat_i_a),
    .wbd_dat_o(__VLG_O_wbd_dat_o_a),
    .wbd_err_i(__VLG_I_wbd_err_i_a),
    .wbd_stb_o(__VLG_O_wbd_stb_o_a),
    .wbd_we_o(__VLG_O_wbd_we_o_a),
    .wbi_ack_i(__VLG_I_wbi_ack_i_a),
    .wbi_adr_o(__VLG_O_wbi_adr_o_a),
    .wbi_cyc_o(__VLG_O_wbi_cyc_o_a),
    .wbi_dat_i(__VLG_I_wbi_dat_i_a),
    .wbi_err_i(__VLG_I_wbi_err_i_a),
    .wbi_stb_o(__VLG_O_wbi_stb_o_a),
    .verif_nop_enable (__VLG_I_verif_nop_enable_a),
    .verif_nop_value (__VLG_I_verif_nop_value_a)
);



oc8051_top impl_b(
    .acc(acc_b),
    .b_reg(b_reg_b),
    .cxrom_addr(cxrom_addr_b),
    .cxrom_data_out(cxrom_data_out_b),
    .decoder_state(decoder_state_b),
    .dptr(dptr_b),
    .ea_in(__VLG_I_ea_in_b),
    .ie(ie_b),
    .int0_i(__VLG_I_int0_i_b),
    .int1_i(__VLG_I_int1_i_b),
    .iram(__VLG_O_iram_b),
    .iram_0(iram_0_b),
    .iram_1(iram_1_b),
    .iram_10(iram_10_b),
    .iram_11(iram_11_b),
    .iram_12(iram_12_b),
    .iram_13(iram_13_b),
    .iram_14(iram_14_b),
    .iram_15(iram_15_b),
    .iram_2(iram_2_b),
    .iram_3(iram_3_b),
    .iram_4(iram_4_b),
    .iram_5(iram_5_b),
    .iram_6(iram_6_b),
    .iram_7(iram_7_b),
    .iram_8(iram_8_b),
    .iram_9(iram_9_b),
    .iram_short(__VLG_O_iram_short_b),
    .op1(__VLG_O_op1_b),
    .op1_d(__VLG_O_op1_d_b),
    .op2(__VLG_O_op2_b),
    .op3(__VLG_O_op3_b),
    .p(p_b),
    .p0_i(__VLG_I_p0_i_b),
    .p0_o(__VLG_O_p0_o_b),
    .p1_i(__VLG_I_p1_i_b),
    .p1_o(__VLG_O_p1_o_b),
    .p2_i(__VLG_I_p2_i_b),
    .p2_o(__VLG_O_p2_o_b),
    .p3_i(__VLG_I_p3_i_b),
    .p3_o(__VLG_O_p3_o_b),
    .pc(pc_b),
    .pc_change(__VLG_O_pc_change_b),
    .pc_log(pc_log_b),
    .pc_log_prev(pc_log_prev_b),
    .psw(psw_b),
    .sp(sp_b),
    .wb_clk_i(clk_b),
    .wb_rst_i(rst),
    .wbd_ack_i(__VLG_I_wbd_ack_i_b),
    .wbd_adr_o(__VLG_O_wbd_adr_o_b),
    .wbd_cyc_o(__VLG_O_wbd_cyc_o_b),
    .wbd_dat_i(__VLG_I_wbd_dat_i_b),
    .wbd_dat_o(__VLG_O_wbd_dat_o_b),
    .wbd_err_i(__VLG_I_wbd_err_i_b),
    .wbd_stb_o(__VLG_O_wbd_stb_o_b),
    .wbd_we_o(__VLG_O_wbd_we_o_b),
    .wbi_ack_i(__VLG_I_wbi_ack_i_b),
    .wbi_adr_o(__VLG_O_wbi_adr_o_b),
    .wbi_cyc_o(__VLG_O_wbi_cyc_o_b),
    .wbi_dat_i(__VLG_I_wbi_dat_i_b),
    .wbi_err_i(__VLG_I_wbi_err_i_b),
    .wbi_stb_o(__VLG_O_wbi_stb_o_b),
    .verif_nop_enable (__VLG_I_verif_nop_enable_b),
    .verif_nop_value (__VLG_I_verif_nop_value_b)
);

oc8051_gm_cxrom oc8051_gm_cxrom_1(
    .clk            (clk),
    .rst            (rst),
    .word_in        (word_in),
    .cxrom_addr_a   (cxrom_addr_a),
    .cxrom_data_out_a (cxrom_data_out_a),
    .cxrom_addr_b   (cxrom_addr_b),
    .cxrom_data_out_b (cxrom_data_out_b),
    .rd_addr_0      (__ILA_SO_oc8051_ROM_addr_0),
    .rd_addr_1      (__ILA_SO_oc8051_ROM_addr_1),
    .rd_addr_2      (__ILA_SO_oc8051_ROM_addr_2),
    .rd_data_0      (__ILA_I_oc8051_ROM_rdata_0),
    .rd_data_1      (__ILA_I_oc8051_ROM_rdata_1),
    .rd_data_2      (__ILA_I_oc8051_ROM_rdata_2)
);
endmodule

module oc8051_gm_cxrom(
    clk,
    rst,
    word_in,

    // ports connected to the 8051 implementation.
    cxrom_addr_a,
    cxrom_data_out_a,

    // ports connected to the 8051 implementation.
    cxrom_addr_b,
    cxrom_data_out_b,

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

    input [15:0] cxrom_addr_a;
    output [31:0] cxrom_data_out_a;

    input [15:0] cxrom_addr_b;
    output [31:0] cxrom_data_out_b;

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

    wire [3:0] cxrom_addr0_a = cxrom_addr_a[3:0];
    wire [3:0] cxrom_addr1_a = cxrom_addr_a[3:0] + 1;
    wire [3:0] cxrom_addr2_a = cxrom_addr_a[3:0] + 2;
    wire [3:0] cxrom_addr3_a = cxrom_addr_a[3:0] + 3;

    wire [3:0] cxrom_addr0_b = cxrom_addr_b[3:0];
    wire [3:0] cxrom_addr1_b = cxrom_addr_b[3:0] + 1;
    wire [3:0] cxrom_addr2_b = cxrom_addr_b[3:0] + 2;
    wire [3:0] cxrom_addr3_b = cxrom_addr_b[3:0] + 3;

    assign cxrom_data_out_a[7:0]   = data_out[cxrom_addr0_a];
    assign cxrom_data_out_a[15:8]  = data_out[cxrom_addr1_a];
    assign cxrom_data_out_a[23:16] = data_out[cxrom_addr2_a];
    assign cxrom_data_out_a[31:24] = data_out[cxrom_addr3_a];

    assign cxrom_data_out_b[7:0]   = data_out[cxrom_addr0_b];
    assign cxrom_data_out_b[15:8]  = data_out[cxrom_addr1_b];
    assign cxrom_data_out_b[23:16] = data_out[cxrom_addr2_b];
    assign cxrom_data_out_b[31:24] = data_out[cxrom_addr3_b];

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

