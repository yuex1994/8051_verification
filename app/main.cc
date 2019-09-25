// main.cc
// Synopsis: Entry point for the executable

#include <ilang/ilang++.h>
#include <ilang/target-json/interface.h>
#include <iostream>
#include "z3++.h"
#include <simple/lib.h>
#include <ilang/vtarget-out/vtarget_gen.h>

using namespace ilang;
using std::cout;
using std::endl;

int main() {
  SetUnsignedComparison(true);
  auto model_file = "./oc8051.json";
  auto model_ila = IlaSerDesMngr::DesFromFile(model_file);
  // cout << "input_num: " << model_ila->input_num() << endl;
  cout << "state_num: " << model_ila->state_num() << endl;
  cout << "child_num: " << model_ila->child_num() << endl;
  cout << "instr_num: " << model_ila->instr_num() << endl;

  int state_bit = 0;
  for (int i = 0; i < model_ila->state_num(); i++) {
    cout << "state_" << i << model_ila->state(i) << endl;
    auto state_sort = model_ila->state(i)->sort();
    if (state_sort->is_bv()) {
      state_bit += state_sort->bit_width();
    } else if (state_sort->is_bool()) {
      state_bit += 1;
    } else {
      std::cout << "mem " << " addr " << state_sort->addr_width() << " data " << state_sort->data_width() << std::endl; 
    }
  }
  std::cout << "state_bit" << state_bit << std::endl;

  std::vector<ExprPtr> tmp_iram_elements;
  ModifyIramInterface(model_ila, tmp_iram_elements);
  
  AddIromInputState(model_ila);
  Model8051RemapMemInterface(model_ila, tmp_iram_elements, 0);
  Model8051RemapMemInterface(model_ila, tmp_iram_elements, 40);
  auto instr_0 = model_ila->instr(0);
  auto instr_40 = model_ila->instr(40);
  cout << "decode 0: " << instr_0->decode() << endl;
  cout << "name 0: " << instr_0->name() << endl;
  cout << "decoder 40: " << instr_40->decode() << endl;
  cout << "name 40: " << instr_40->name() << endl;
  z3::context ctx;
  z3::solver sol(ctx);
  Z3ExprAdapter z3_adapter(ctx);
  auto z3_decode = z3_adapter.GetExpr(instr_40->decode());
  cout << z3_decode << endl;
  auto state_set = instr_40->updated_states();
  for (auto state : state_set) {
    auto z3_update = z3_adapter.GetExpr(instr_40->update(state));
    cout << "update state: " << state << endl;
    cout << "update function: " << z3_update << endl;
  }


  VerilogGeneratorBase::VlgGenConfig vlg_cfg;
  VerilogVerificationTargetGenerator::vtg_config_t vtg_cfg;
  vtg_cfg.ForceInstCheckReset = true;
  vlg_cfg.pass_node_name = true;
  std::string RootPath = "..";
  std::string VerilogPath = RootPath + "/verilog/";
  std::string RefPath = RootPath + "/refinement/";
  std::string OutputPath = RootPath + "/verification/";

  VerilogVerificationTargetGenerator vg({}, {VerilogPath + "oc8051_gm_top.v"}, "oc8051_top",
  RefPath + "ref-rel-var-map.json", RefPath + "ref-rel-inst-cond.json",
  OutputPath,
  model_ila,
  VerilogVerificationTargetGenerator::backend_selector::JASPERGOLD,
  vtg_cfg,
  vlg_cfg);
  vg.GenerateTargets(); 

  return 0;
}
