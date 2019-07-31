// lib.cc
// Synopsis: implementation of the library

#include <ilang/ilang++.h>
#include <iostream>
#include <simple/lib.h>
#include <ilang/util/log.h>

void Model8051RemapMemInterface(const InstrLvlAbsPtr& model_ptr) {
  auto data_0 = model_ptr->NewBvInput("oc8051_ROM_rdata_0", 8);
  auto data_1 = model_ptr->NewBvInput("oc8051_ROM_rdata_1", 8);
  auto data_2 = model_ptr->NewBvInput("oc8051_ROM_rdata_2", 8);
  auto addr_0 = model_ptr->NewBvState("oc8051_ROM_addr_0", 16);
  auto addr_1 = model_ptr->NewBvState("oc8051_ROM_addr_1", 16);
  auto addr_2 = model_ptr->NewBvState("oc8051_ROM_addr_2", 16);
  //model_ptr->AddInput(data_0);
 // model_ptr->AddInput(data_1);
  //model_ptr->AddInput(data_2);
  //auto addr_0 = model_ptr->state(addr_0);
  //auto addr_1 = model_ptr->state(addr_1);
  //auto addr_2 = model_ptr->state(addr_2);
  auto pc_state = model_ptr->state("PC");
  auto instr_0 = model_ptr->instr(0);
  if (pc_state)
    std::cout << "not null" << std::endl;
  else
    std::cout << "pc NULL" << std::endl;
  auto DfsModifyRom = [&model_ptr](const ExprPtr& e) {DfsFromRomToPort(e, model_ptr);};
  for (auto updated_state_name : instr_0->updated_states()) {
    auto updated_expr = instr_0->update(updated_state_name);
    updated_expr->DepthFirstVisit(DfsModifyRom);
  }
  instr_0->decode()->DepthFirstVisit(DfsModifyRom);
  instr_0->set_update(addr_0, pc_state);
  instr_0->set_update(addr_1, ExprFuse::Add(pc_state, 1));
  instr_0->set_update(addr_2, ExprFuse::Add(pc_state, 2));

  return;
}

void DfsFromRomToPort(const ExprPtr& expr, const InstrLvlAbsPtr& model_ptr) {
  auto pc_state = model_ptr->state("PC");
  auto rom_state = model_ptr->state("ROM");
  if (expr->is_op()) {
    for (int i = 0; i < expr->arg_num(); i++) {
      auto arg_expr = expr->arg(i);
      if (arg_expr->is_op()) {
        auto op_uid = GetUidExprOp(arg_expr);
        if (op_uid == AST_UID_EXPR_OP::LOAD) {
	  auto arg_arg_0 = arg_expr->arg(0);
	  if (arg_arg_0 == rom_state) {
	    auto arg_arg_1 = arg_expr->arg(1);
	    if (arg_arg_1->is_var()) {
	      ILA_ASSERT(arg_arg_1 == pc_state);
	      expr->replace_arg(i, model_ptr->input("oc8051_ROM_rdata_0"));
	    } else {
	      ILA_ASSERT(arg_arg_1->is_op());
	      ILA_ASSERT(GetUidExprOp(arg_arg_1) == AST_UID_EXPR_OP::ADD);
	      auto arg_arg_pc = arg_arg_1->arg(0);
	      auto arg_arg_const = arg_arg_1->arg(1);
	      ILA_ASSERT(arg_arg_pc == pc_state);
	      ILA_ASSERT(arg_arg_const->is_const());
	      auto const_val = std::dynamic_pointer_cast<ExprConst>(arg_arg_const)->val_bv()->val();
	      ILA_ASSERT((const_val == 1) || (const_val == 2));
	      if (const_val == 1)
	        expr->replace_arg(i, model_ptr->input("oc8051_ROM_rdata_1"));
	      else 
	        expr->replace_arg(i, model_ptr->input("oc8051_ROM_rdata_2"));
	    }
	  }
        }
      } 
    } 
  } 
  return ;
}

