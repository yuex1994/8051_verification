assume -name {always - no ea_in} -env { \
  (__VLG_I_ea_in_a == 1) && (__VLG_I_ea_in_b == 1)
}

assume -name {always - immediate wbd transaction} -env { \
  (__VLG_O_wbd_stb_o_a == __VLG_O_wbd_stb_o_b) && \
  (__VLG_I_wbd_ack_i_a == __VLG_I_wbd_ack_i_b) && \
  (__VLG_I_wbd_ack_i_a == __VLG_O_wbd_stb_o_a) \
}

