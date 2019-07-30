#include "decoder.h"


DECODER::DECODER() : model("DECODER") {
  auto eq = model.NewBoolInput("eq");
  auto mem_wait = model.NewBoolInput("mem_wait");
  auto wait_data = model.NewBoolInput("wait_data");
  auto op_in = model.NewBvInput("op_in", 8);
  auto irom_out_of_rst = model.NewBoolInput("irom_out_of_rst");

  auto ram_wr_sel = model.NewBvState("ram_wr_sel", 3);
  auto src_sel1 = model.NewBvState("src_sel1", 3);
  auto src_sel2 = model.NewBvState("src_sel2", 2);
  auto alu_op = model.NewBvState("alu_op", 4);
  auto wr = model.NewBvState("wr", 1);
  auto psw_set = model.NewBvState("psw_set", 2);
  auto cy_sel = model.NewBvState("cy_sel", 2);
  auto src_sel3 = model.NewBvState("src_sel3", 1);
  auto wr_sfr = model.NewBvState("wr_sfr", 2); 
  auto state = model.NewBvState("state", 2);
  auto op = model.NewBvState("op", 8);

  auto bv_const_11_2 = BvConst(0b11, 2);
  auto bv_const_10_2 = BvConst(0b10, 2);
  auto bv_const_01_2 = BvConst(0b01, 2);
  auto bv_const_00_2 = BvConst(0b00, 2);

  auto state_3 = bv_const_11_2;
  auto state_2 = bv_const_10_2;
  auto state_1 = bv_const_01_2;
  auto state_0 = bv_const_00_2;

  auto op_div = BvConst(0b10000100, 8);
  auto rws_dc = BvConst(0b000, 3);
  auto rws_b = BvConst(0b111, 3);
  auto ps_not = bv_const_00_2; 
  auto ps_cy = bv_const_01_2;
  auto ps_ov = bv_const_10_2;
  auto ps_ac = bv_const_11_2;
  
  auto cy_0 = bv_const_00_2;
  auto cy_psw = bv_const_01_2;
  auto cy_ram = bv_const_10_2;
  auto cy_1 = bv_const_11_2;
  auto cy_dc = bv_const_00_2;
  auto as3_dc = BvConst(0, 1); 
  auto as3_pc = BvConst(1, 1);
  auto as3_dp = BvConst(0, 1);

  auto as2_dc = BvConst(0b00, 2);
  auto as2_op2 = BvConst(0b11, 2);
  auto as2_zero = BvConst(0b10, 2);
  auto as2_acc = BvConst(0b01, 2);
  auto as2_ram = BvConst(0b00, 2);

  auto as1_op1 = BvConst(0b111, 3);
  auto as1_op2 = BvConst(0b001, 3);
  auto as1_op3 = BvConst(0b010, 3);
  auto as1_acc = BvConst(0b011, 3);
  auto as1_pch = BvConst(0b100, 3);
  auto as1_pcl = BvConst(0b101, 3);
  auto as1_dc = BvConst(0b000, 3);
  auto as1_ram = BvConst(0b000, 3);

  auto wrs_n = BvConst(0b00, 2);
  auto wrs_acc1 = BvConst(0b01, 2);
  auto wrs_acc2 = BvConst(0b10, 2);
  auto wrs_dptr = BvConst(0b11, 2);

  auto wr_1 = BvConst(1, 1);
  auto wr_0 = BvConst(0, 1);

  auto alu_nop = BvConst(0b0000, 4);
  auto alu_add = BvConst(0b0001, 4);
  auto alu_sub = BvConst(0b0010, 4);
  auto alu_mul = BvConst(0b0011, 4);
  auto alu_div = BvConst(0b0100, 4);

  {
    auto instr = model.NewInstr("DIV");
    instr.SetDecode((op_in == op_div) & (state == state_0));
    instr.SetUpdate(state, state_3); 
    instr.SetUpdate(op, op_in);
    instr.SetUpdate(ram_wr_sel, rws_dc);
    instr.SetUpdate(src_sel1, as1_acc);
    instr.SetUpdate(src_sel2, as2_ram);
    instr.SetUpdate(alu_op,BvConst(0b0100, 4));
    instr.SetUpdate(wr, wr_0);
    instr.SetUpdate(psw_set, ps_ov);
    instr.SetUpdate(cy_sel, cy_0);
    instr.SetUpdate(src_sel3, as3_dc);
    instr.SetUpdate(wr_sfr, wrs_n);
    
    auto child = model.NewChild("uDIV"); 
    {
      auto u_instr = child.NewInstr("state3_2");
      u_instr.SetDecode((state == state_3) & (op == op_div));
      u_instr.SetUpdate(state, Ite((!mem_wait) & (!wait_data), state_3, state_2));
      u_instr.SetUpdate(src_sel1, Ite(wait_data, src_sel1, as1_acc)); 
      u_instr.SetUpdate(src_sel2, Ite(wait_data, src_sel2, as2_ram));
      u_instr.SetUpdate(alu_op, Ite(wait_data, alu_op, alu_div));
      u_instr.SetUpdate(psw_set, Ite(wait_data, psw_set, ps_ov)); 
      u_instr.SetUpdate(ram_wr_sel, Ite(wait_data, ram_wr_sel, rws_dc));
      u_instr.SetUpdate(wr, Ite(wait_data, wr, wr_0));
      u_instr.SetUpdate(cy_sel, Ite(wait_data, cy_sel, cy_0));
      u_instr.SetUpdate(src_sel3, Ite(wait_data, src_sel3, as3_dc));
      u_instr.SetUpdate(wr_sfr, Ite(wait_data, wr_sfr, wrs_n));
    }

    {
      auto u_instr = child.NewInstr("state2_1");
      u_instr.SetDecode((state == state_2) & (op == op_div));
      u_instr.SetUpdate(state, Ite((!mem_wait) & (!wait_data), state_2, state_1));
      u_instr.SetUpdate(ram_wr_sel, Ite(wait_data, ram_wr_sel, rws_dc));
      u_instr.SetUpdate(src_sel1, Ite(wait_data, src_sel1, as1_acc));
      u_instr.SetUpdate(src_sel2, Ite(wait_data, src_sel2, as2_ram));
      u_instr.SetUpdate(alu_op, Ite(wait_data, alu_op, alu_div));
      u_instr.SetUpdate(wr, Ite(wait_data, wr, wr_0));
      u_instr.SetUpdate(psw_set, Ite(wait_data, psw_set, ps_ov));
      u_instr.SetUpdate(cy_sel, Ite(wait_data, cy_sel, cy_0));
      u_instr.SetUpdate(src_sel3, Ite(wait_data, src_sel3, as3_dc));
      u_instr.SetUpdate(wr_sfr, Ite(wait_data, wr_sfr, wrs_n));
    }

    {
      auto u_instr = child.NewInstr("state1_0");
      u_instr.SetDecode((state == state_1) & (op == op_div));
      u_instr.SetUpdate(state, Ite((!mem_wait) & (!wait_data), state_1, state_0));
      u_instr.SetUpdate(ram_wr_sel, Ite(wait_data, ram_wr_sel, rws_b));
      u_instr.SetUpdate(src_sel1, Ite(wait_data, src_sel1, as1_acc));
      u_instr.SetUpdate(src_sel2, Ite(wait_data, src_sel2, as2_ram));
      u_instr.SetUpdate(alu_op, Ite(wait_data, alu_op, alu_div));
      u_instr.SetUpdate(wr, Ite(wait_data, wr, wr_1));
      u_instr.SetUpdate(psw_set, Ite(wait_data, psw_set, ps_ov));
      u_instr.SetUpdate(wr_sfr, Ite(wait_data, wr_sfr, wrs_acc2)); 
      u_instr.SetUpdate(cy_sel, Ite(wait_data, cy_sel, cy_0));
      u_instr.SetUpdate(src_sel3, Ite(wait_data, src_sel3, as3_dc)); 
    }
    instr.SetProgram(child);
  }
  
}
