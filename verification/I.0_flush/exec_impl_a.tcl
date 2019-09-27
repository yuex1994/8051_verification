# Assumptions control post_flush verilog to execute the instruction.

# TODO(yuex) change this by constraining cxrom
assume -name {exec - start pre flush verilog} -env { \
  ((__START__ == 1) | (__STARTED__ == 1)) |-> \
    (__VLG_I_verif_nop_enable_a == 1) \
} -type {temporary} -update_db;

#    (impl_a.oc8051_memory_interface1.op1_out == 0) && \
    (impl_a.oc8051_memory_interface1.op2_out == 0) && \
    (impl_a.oc8051_memory_interface1.op3_out == 0) && \
    (impl_a.oc8051_memory_interface1.op1 == 0) && \
    (impl_a.oc8051_memory_interface1.op2 == 0) && \
    (impl_a.oc8051_memory_interface1.op3 == 0) && \
} -type {temporary} -update_db;

assume -name {exec - impl_a executes before ILA_START} -env { \
  (impl_a_flush_counter < 4) |-> (impl_a_finish == 0) \
} -type {temporary} -update_db;

assume -name {exec - impl_a invokes ILA_START -- true} -env { \
  ((impl_a_finish == 1) && (~__ILA_STARTED__)) |-> (__ILA_START__ == 1) \
} -type {temporary} -update_db;

assume -name {exec - impl_a invokes ILA_START -- false} -env { \
  ((impl_a_finish == 0) || (__ILA_STARTED__)) |-> (__ILA_START__ == 0) \
} -type {temporary} -update_db;

assume -name {exec - impl_a stalls when&after ILA_START} -env { \
  (impl_a_flush_counter == 4) |-> (impl_a_finish == 1) \
} -type {temporary} -update_db;

