assert -name {eq - PC} \
{ \
  ((__ILA_START__ || __ILA_STARTED__) && (impl_b_pc_change_counter == 1)) |-> \
  (spec.PC == impl_b.oc8051_memory_interface1.pc) \
} -update_db;

assert -name {eq - ACC} \
{ \
  (impl_b_finish == 1) |-> (spec.ACC == impl_b.oc8051_sfr1.oc8051_acc1.data_out) \
} -update_db;

assert -name {eq - B} \
{ \
  (impl_b_finish == 1) |-> (spec.B == impl_b.oc8051_sfr1.oc8051_b_register.data_out) \
} -update_db;

assert -name {eq - DPH} \
{ \
  (impl_b_finish == 1) |-> (spec.DPH == impl_b.oc8051_sfr1.oc8051_dptr1.data_hi) \
} -update_db;

assert -name {eq - DPL} \
{ \
  (impl_b_finish == 1) |-> (spec.DPL == impl_b.oc8051_sfr1.oc8051_dptr1.data_lo) \
} -update_db;

assert -name {eq - IE} \
{ \
  (impl_b_finish == 1) |-> (spec.IE == impl_b.oc8051_sfr1.oc8051_int1.ie) \
} -update_db;

assert -name {eq - IP} \
{ \
  (impl_b_finish == 1) |-> (spec.IP == impl_b.oc8051_sfr1.oc8051_int1.ip) \
} -update_db;

assert -name {eq - P0} \
{ \
  (impl_b_finish == 1) |-> (spec.P0 == impl_b.oc8051_sfr1.oc8051_ports1.p0_out) \
} -update_db;

assert -name {eq - P1} \
{ \
  (impl_b_finish == 1) |-> (spec.P1 == impl_b.oc8051_sfr1.oc8051_ports1.p1_out) \
} -update_db;

assert -name {eq - P2} \
{ \
  (impl_b_finish == 1) |-> (spec.P2 == impl_b.oc8051_sfr1.oc8051_ports1.p2_out) \
} -update_db;

assert -name {eq - P3} \
{ \
  ((~rst) && (impl_b_finish == 1)) |-> (spec.P3 == impl_b.oc8051_sfr1.oc8051_ports1.p3_out) \
} -update_db;

assert -name {eq - SP} \
{ \
  (impl_b_finish == 1) |-> (spec.SP == impl_b.oc8051_sfr1.oc8051_sp1.sp_out) \
} -update_db;

assert -name {eq - PSW} \
{ \
  (impl_b_finish == 1) |-> (spec.PSW[6:0] == impl_b.oc8051_sfr1.oc8051_psw1.data) \
} -update_db;


assert -name {eq - TCON} \
{ \
  (impl_b_finish == 1) |-> (spec.TCON == impl_b.oc8051_sfr1.oc8051_int1.tcon) \
} -update_db;

assert -name {eq - XRAM_ADDR} \
{ \
  (impl_b_finish == 1) |-> (spec.XRAM_ADDR == impl_b.oc8051_memory_interface1.dadr_o) \
} -update_db;

assert -name {eq - XRAM_DATA_OUT} \
{ \
  (impl_b_finish == 1) |-> (spec.XRAM_DATA_OUT == impl_b.oc8051_memory_interface1.ddat_o) \
} -update_db;

assert -name {eq - IRAM_data_0} \
{ \
  (impl_b_finish == 1) |-> (spec.oc8051_IRAM_data_0 == impl_b.iram_0) \
} -update_db;

assert -name {eq - IRAM_data_1} \
{ \
  (impl_b_finish == 1) |-> (spec.oc8051_IRAM_data_1 == impl_b.iram_1) \
} -update_db;

assert -name {eq - IRAM_data_2} \
{ \
  (impl_b_finish == 1) |-> (spec.oc8051_IRAM_data_2 == impl_b.iram_2) \
} -update_db;

assert -name {eq - IRAM_data_3} \
{ \
  (impl_b_finish == 1) |-> (spec.oc8051_IRAM_data_3 == impl_b.iram_3) \
} -update_db;

assert -name {eq - IRAM_data_4} \
{ \
  (impl_b_finish == 1) |-> (spec.oc8051_IRAM_data_4 == impl_b.iram_4) \
} -update_db;

assert -name {eq - IRAM_data_5} \
{ \
  (impl_b_finish == 1) |-> (spec.oc8051_IRAM_data_5 == impl_b.iram_5) \
} -update_db;

assert -name {eq - IRAM_data_6} \
{ \
  (impl_b_finish == 1) |-> (spec.oc8051_IRAM_data_6 == impl_b.iram_6) \
} -update_db;

assert -name {eq - IRAM_data_7} \
{ \
  (impl_b_finish == 1) |-> (spec.oc8051_IRAM_data_7 == impl_b.iram_7) \
} -update_db;

assert -name {eq - IRAM_data_8} \
{ \
  (impl_b_finish == 1) |-> (spec.oc8051_IRAM_data_8 == impl_b.iram_8) \
} -update_db;

assert -name {eq - IRAM_data_9} \
{ \
  (impl_b_finish == 1) |-> (spec.oc8051_IRAM_data_9 == impl_b.iram_9) \
} -update_db;

assert -name {eq - IRAM_data_10} \
{ \
  (impl_b_finish == 1) |-> (spec.oc8051_IRAM_data_10 == impl_b.iram_10) \
} -update_db;

assert -name {eq - IRAM_data_11} \
{ \
  (impl_b_finish == 1) |-> (spec.oc8051_IRAM_data_11 == impl_b.iram_11) \
} -update_db;

assert -name {eq - IRAM_data_12} \
{ \
  (impl_b_finish == 1) |-> (spec.oc8051_IRAM_data_12 == impl_b.iram_12) \
} -update_db;

assert -name {eq - IRAM_data_13} \
{ \
  (impl_b_finish == 1) |-> (spec.oc8051_IRAM_data_13 == impl_b.iram_13) \
} -update_db;

assert -name {eq - IRAM_data_14} \
{ \
  (impl_b_finish == 1) |-> (spec.oc8051_IRAM_data_14 == impl_b.iram_14) \
} -update_db;

assert -name {eq - IRAM_data_15} \
{ \
  (impl_b_finish == 1) |-> (spec.oc8051_IRAM_data_15 == impl_b.iram_15) \
} -update_db;

