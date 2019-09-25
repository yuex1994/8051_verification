analyze -sva  \
  oc8051_gm_top.v \
  ila.v \
  wrapper.v

elaborate -top wrapper
clock clk
reset rst
assume -name noreset0 { (~__RESETED__) || (dummy_reset == 0) }
assume -name variable_map_assume_1 {(~ __START__ )|| (__m0__)}
assume -name variable_map_assume_2 {(~ __START__ )|| (__m1__)}
assume -name variable_map_assume_3 {(~ __START__ )|| (__m2__)}
assume -name variable_map_assume_4 {(~ __START__ )|| (__m3__)}
assume -name variable_map_assume_5 {(~ __START__ )|| (__m4__)}
assume -name variable_map_assume_6 {(~ __START__ )|| (__m5__)}
assume -name variable_map_assume_7 {(~ __START__ )|| (__m6__)}
assume -name variable_map_assume_8 {(~ __START__ )|| (__m7__)}
assume -name variable_map_assume_9 {(~ __START__ )|| (__m8__)}
assume -name variable_map_assume_10 {(~ __START__ )|| (__m9__)}
assume -name variable_map_assume_11 {(~ __START__ )|| (__m10__)}
assume -name variable_map_assume_12 {(~ __START__ )|| (__m11__)}
assume -name variable_map_assume_13 {(~ __START__ )|| (__m12__)}
assume -name variable_map_assume_14 {(~ __START__ )|| (__m13__)}
assume -name variable_map_assume_15 {(~ __START__ )|| (__m14__)}
assume -name variable_map_assume_16 {(~ __START__ )|| (__m15__)}
assume -name variable_map_assume_17 {(~ __START__ )|| (__m16__)}
assume -name variable_map_assume_18 {(~ __START__ )|| (__m17__)}
assume -name variable_map_assume_19 {(~ __START__ )|| (__m18__)}
assume -name variable_map_assume_20 {(~ __START__ )|| (__m19__)}
assume -name variable_map_assume_21 {(~ __START__ )|| (__m20__)}
assume -name variable_map_assume_22 {(~ __START__ )|| (__m21__)}
assume -name variable_map_assume_23 {(~ __START__ )|| (__m22__)}
assume -name variable_map_assume_24 {(~ __START__ )|| (__m23__)}
assume -name variable_map_assume_25 {(~ __START__ )|| (__m24__)}
assume -name variable_map_assume_26 {(~ __START__ )|| (__m25__)}
assume -name variable_map_assume_27 {(~ __START__ )|| (__m26__)}
assume -name variable_map_assume_28 {(~ __START__ )|| (__m27__)}
assume -name variable_map_assume_29 {(~ __START__ )|| (__m28__)}
assume -name variable_map_assume_30 {(~ __START__ )|| (__m29__)}
assume -name variable_map_assume_31 {(~ __START__ )|| (__m30__)}
assume -name additional_mapping_control_assume32 {m1.ea_in == 1}
assume -name additional_mapping_control_assume33 {m1.wbd_ack_i == m1.wbd_stb_o}
assume -name additional_mapping_control_assume34 {m1.cxrom_data_out[7:0] == __ILA_I_oc8051_ROM_rdata_0}
assume -name additional_mapping_control_assume35 {m1.op1 == __ILA_I_oc8051_ROM_rdata_0}
assume -name additional_mapping_control_assume36 {__ILA_SO_PSW[6:0] == m1.oc8051_sfr1.oc8051_psw1.data}
assume -name issue_decode37 {(~ __START__) || (__ILA_oc8051_decode_of_I__DOT__40__)}
assume -name issue_valid38 {(~ __START__) || (__ILA_oc8051_valid__)}
assert -name variable_map_assert_0 {(~ __IEND__) || (__m31__)}
assert -name variable_map_assert_1 {(~ __IEND__) || (__m32__)}
assert -name variable_map_assert_2 {(~ __IEND__) || (__m33__)}
assert -name variable_map_assert_3 {(~ __IEND__) || (__m34__)}
assert -name variable_map_assert_4 {(~ __IEND__) || (__m35__)}
assert -name variable_map_assert_5 {(~ __IEND__) || (__m36__)}
assert -name variable_map_assert_6 {(~ __IEND__) || (__m37__)}
assert -name variable_map_assert_7 {(~ __IEND__) || (__m38__)}
assert -name variable_map_assert_8 {(~ __IEND__) || (__m39__)}
assert -name variable_map_assert_9 {(~ __IEND__) || (__m40__)}
assert -name variable_map_assert_10 {(~ __IEND__) || (__m41__)}
assert -name variable_map_assert_11 {(~ __IEND__) || (__m42__)}
assert -name variable_map_assert_12 {(~ __IEND__) || (__m43__)}
assert -name variable_map_assert_13 {(~ __IEND__) || (__m44__)}
assert -name variable_map_assert_14 {(~ __IEND__) || (__m45__)}
