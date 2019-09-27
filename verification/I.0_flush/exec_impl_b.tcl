assume -name {exec - impl_b stall wait ila_a flushing} -env \
{ ((__START__ == 1) | (__STARTED__ == 1)) & \
  ~((__ILA_START__ == 1) | (__ILA_STARTED__ == 1)) |-> \
    (impl_b_stall == 1) \
} -type {temporary} -update_db;

assume -name {exec - impl_b executes when ila_a flushed} -env \
{ (__ILA_START__ == 1) | (__ILA_STARTED__ == 1) |-> (impl_b_stall == 0) \
} -type {temporary} -update_db;

assume -name {exec - impl_b executes before START} -env \
{ (__START__ == 0) && (__STARTED__ == 0) |-> (impl_b_stall == 0) \
} -type {temporary} -update_db;

assume -name {exec - impl_b executes nop instruction when ILA_STRATED is 1} -env \
{
  (__ILA_STARTED__ == 1) |-> (__VLG_I_verif_nop_enable_b == 1)
} -type {temporary} -update_db;

assume -name {exec - impl_b executes before flushed} -env { \
  (impl_b_flush_counter < 4) |-> (impl_b_finish == 0) \
} -type {temporary} -update_db;

assume -name {exec - impl_b stalls after flushed} -env { \
  (impl_b_flush_counter == 4) |-> (impl_b_finish == 1) \
} -type {temporary} -update_db;
