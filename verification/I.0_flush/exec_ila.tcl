assume -name {exec - spec pc eq impl_b when ILA_START} -env { \
    (__ILA_START__ == 1) |-> 
      (spec.PC == impl_b.oc8051_memory_interface1.pc) && \
      (spec.oc8051_ROM_addr_0 == impl_b.oc8051_memory_interface1.pc) && \
      (spec.oc8051_ROM_addr_1 == impl_b.oc8051_memory_interface1.pc + 1) && \
      (spec.oc8051_ROM_addr_2 == impl_b.oc8051_memory_interface1.pc + 2)
} -type {temporary} -update_db;

assume -name {exec - spec state eq impl_a when ILA_START} -env { \
  (__ILA_START__ == 1) |-> ( \
    (spec.ACC == impl_a.oc8051_sfr1.oc8051_acc1.data_out) && \
    (spec.B == impl_a.oc8051_sfr1.oc8051_b_register.data_out) && \
    (spec.DPH == impl_a.oc8051_sfr1.oc8051_dptr1.data_hi) && \
    (spec.DPL == impl_a.oc8051_sfr1.oc8051_dptr1.data_lo) && \
    (spec.IE == impl_a.oc8051_sfr1.oc8051_int1.ie) && \
    (spec.IP == impl_a.oc8051_sfr1.oc8051_int1.ip) && \
    (spec.P0 == impl_a.oc8051_sfr1.oc8051_ports1.p0_out) && \
    (spec.P1 == impl_a.oc8051_sfr1.oc8051_ports1.p1_out) && \
    (spec.P2 == impl_a.oc8051_sfr1.oc8051_ports1.p2_out) && \
    (spec.P3 == impl_a.oc8051_sfr1.oc8051_ports1.p3_out) && \
    (spec.SP == impl_a.oc8051_sfr1.oc8051_sp1.sp_out) && \
    (spec.PSW[6:0] == impl_a.oc8051_sfr1.oc8051_psw1.data) && \
    (spec.TCON == impl_a.oc8051_sfr1.oc8051_int1.tcon) && \
    (spec.XRAM_ADDR == impl_a.oc8051_memory_interface1.dadr_o) && \
    (spec.XRAM_DATA_OUT == impl_a.oc8051_memory_interface1.ddat_o) && \
    (spec.oc8051_IRAM_data_0 == impl_a.iram_0) && \
    (spec.oc8051_IRAM_data_1 == impl_a.iram_1) && \
    (spec.oc8051_IRAM_data_2 == impl_a.iram_2) && \
    (spec.oc8051_IRAM_data_3 == impl_a.iram_3) && \
    (spec.oc8051_IRAM_data_4 == impl_a.iram_4) && \
    (spec.oc8051_IRAM_data_5 == impl_a.iram_5) && \
    (spec.oc8051_IRAM_data_6 == impl_a.iram_6) && \
    (spec.oc8051_IRAM_data_7 == impl_a.iram_7) && \
    (spec.oc8051_IRAM_data_8 == impl_a.iram_8) && \
    (spec.oc8051_IRAM_data_9 == impl_a.iram_9) && \
    (spec.oc8051_IRAM_data_10 == impl_a.iram_10) && \
    (spec.oc8051_IRAM_data_11 == impl_a.iram_11) && \
    (spec.oc8051_IRAM_data_12 == impl_a.iram_12) && \
    (spec.oc8051_IRAM_data_13 == impl_a.iram_13) && \
    (spec.oc8051_IRAM_data_14 == impl_a.iram_14) && \
    (spec.oc8051_IRAM_data_15 == impl_a.iram_15) \
  ) \
} -type {temporary} -update_db;

assume -name {exec - spec decode true when ILA_START} -env { \
  (__ILA_START__ == 1) |-> (__ILA_I_oc8051_ROM_rdata_0 == 0) \
} -type {temporary} -update_db;

