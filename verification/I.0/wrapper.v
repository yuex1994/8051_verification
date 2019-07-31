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
__m3__,
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
output            __m3__;
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
output            p;
output     [15:0] pc;
output     [15:0] pc_log;
output     [15:0] pc_log_prev;
output      [7:0] psw;
output      [7:0] sp;
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
(* keep *) wire            __m3__;
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
(* keep *) wire            dummy_reset;
(* keep *) wire      [7:0] ie;
(* keep *) wire            p;
(* keep *) wire     [15:0] pc;
(* keep *) wire     [15:0] pc_log;
(* keep *) wire     [15:0] pc_log_prev;
(* keep *) wire      [7:0] psw;
wire            rst;
(* keep *) wire      [7:0] sp;
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
assign __m15__ = m1.oc8051_sfr1.oc8051_acc1.data_out == __ILA_SO_ACC ;
assign __m16__ = m1.oc8051_sfr1.oc8051_b_register.data_out == __ILA_SO_B ;
assign __m17__ = m1.oc8051_sfr1.oc8051_dptr1.data_hi == __ILA_SO_DPH ;
assign __m18__ = m1.oc8051_sfr1.oc8051_dptr1.data_lo == __ILA_SO_DPL ;
assign __m19__ = m1.oc8051_sfr1.oc8051_int1.ie == __ILA_SO_IE ;
assign __m20__ = m1.oc8051_sfr1.oc8051_int1.ip == __ILA_SO_IP ;
assign __m21__ = m1.oc8051_sfr1.oc8051_ports1.p0_out == __ILA_SO_P0 ;
assign __m22__ = m1.oc8051_sfr1.oc8051_ports1.p1_out == __ILA_SO_P1 ;
assign __m23__ = m1.oc8051_sfr1.oc8051_ports1.p2_out == __ILA_SO_P2 ;
assign __m24__ = m1.oc8051_sfr1.oc8051_ports1.p3_out == __ILA_SO_P3 ;
assign __m25__ = m1.oc8051_memory_interface1.pc == __ILA_SO_PC ;
assign __m26__ = m1.oc8051_sfr1.oc8051_sp1.sp_out == __ILA_SO_SP ;
assign __m27__ = m1.oc8051_sfr1.oc8051_int1.tcon == __ILA_SO_TCON ;
assign __m28__ = m1.oc8051_memory_interface1.dadr_o == __ILA_SO_XRAM_ADDR ;
assign __m29__ = m1.oc8051_memory_interface1.ddat_o == __ILA_SO_XRAM_DATA_OUT ;
assign __IEND__ = (`false|| ( __CYCLE_CNT__ == 5'd10)) && __STARTED__ && (~ __ENDED__) ;
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
