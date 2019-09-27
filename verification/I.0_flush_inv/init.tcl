# Assumptions to let 2 verilog run till verification starts.
# Pre flush: impl_a
# Post flush: impl_b

# TODO(yuex): Explain __ILA_START__, __START__, impl_a_flush_counter
# time     0 .......... START --------STARTED---------- ----ILA_START---- ----ILA_STARTED----
# spec     ************   *       ****************          s2+decode            s3
# impl_a   ----s1-----   nop  ----------nop------------     s2       		****
# impl_b   ----s1-----  stall ---------stall-----------     s1+decdoe          s3+nop

# In verilog code, guarantee
# 1. START one cycle, after that STATTED == 1 forever.
# 2. Forever ILA_STARTED == 1 one cycle after ILA_START == 1. 


assume -name {init - impl_a impl_b before START} -env \
{
  ~((__START__ == 1) | (__STARTED__ == 1)) |-> ( \
    (__VLG_I_cxrom_data_out_a == __VLG_I_cxrom_data_out_b) && \
    (__VLG_I_ea_in_a ==  __VLG_I_ea_in_b) && \
    (__VLG_I_int0_i_a ==__VLG_I_int0_i_b) && \
    (__VLG_I_int1_i_a == __VLG_I_int1_i_b) && \
    (__VLG_I_p0_i_a == __VLG_I_p0_i_b) && \
    (__VLG_I_p1_i_a == __VLG_I_p1_i_b) && \
    (__VLG_I_p2_i_a == __VLG_I_p2_i_b) && \
    (__VLG_I_p3_i_a == __VLG_I_p3_i_b) && \
    (__VLG_I_wbd_ack_i_a == __VLG_I_wbd_ack_i_b) && \
    (__VLG_I_wbd_dat_i_a == __VLG_I_wbd_dat_i_b) && \
    (__VLG_I_wbd_err_i_a == __VLG_I_wbd_err_i_b) && \
    (__VLG_I_wbi_ack_i_a == __VLG_I_wbi_ack_i_b) && \
    (__VLG_I_wbi_dat_i_a == __VLG_I_wbi_dat_i_b) && \
    (__VLG_I_wbi_err_i_a == __VLG_I_wbi_err_i_b) \
  ) \
} -type {temporary} -update_db;

assume -name {init - impl_a no nop} -env { \
  ~((__START__ == 1) | (__STARTED__ == 1)) |-> \
    (__VLG_I_verif_nop_enable_a == 0) \
} -type {temporary} -update_db;

assume -name {init - impl_b no nop} -env \
{\
  (__ILA_STARTED__ == 0) |-> (__VLG_I_verif_nop_enable_b == 0) \
} -type {temporary} -update_db;

assume -name {init - instruction finish condition} -env \
{\
  (__START__ == 1) |-> ((impl_a.pc_change == 1) && (impl_b.pc_change == 1)) \
} -type {temporary} -update_db;

