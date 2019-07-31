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
assume -name additional_mapping_control_assume16 {m1.ea_in == 1}
assume -name additional_mapping_control_assume17 {m1.iram[127:0] == __ILA_SO_IRAM}
assume -name additional_mapping_control_assume18 {m1.op1 == m0.ROM_data_0}
assume -name additional_mapping_control_assume19 {m1.op2 == m0.ROM_data_1}
assume -name additional_mapping_control_assume20 {m1.op3 == m0.ROM_data_2}
assume -name additional_mapping_control_assume21 {__ILA_SO_PSW[6:0] == m1.oc8051_sfr1.oc8051_psw1.data}
assume -name issue_decode22 {(~ __START__) || (__ILA_oc8051_decode_of_I__DOT__0__)}
assume -name issue_valid23 {(~ __START__) || (__ILA_oc8051_valid__)}
assert -name variable_map_assert_0 {(~ __IEND__) || (__m15__)}
assert -name variable_map_assert_1 {(~ __IEND__) || (__m16__)}
assert -name variable_map_assert_2 {(~ __IEND__) || (__m17__)}
assert -name variable_map_assert_3 {(~ __IEND__) || (__m18__)}
assert -name variable_map_assert_4 {(~ __IEND__) || (__m19__)}
assert -name variable_map_assert_5 {(~ __IEND__) || (__m20__)}
assert -name variable_map_assert_6 {(~ __IEND__) || (__m21__)}
assert -name variable_map_assert_7 {(~ __IEND__) || (__m22__)}
assert -name variable_map_assert_8 {(~ __IEND__) || (__m23__)}
assert -name variable_map_assert_9 {(~ __IEND__) || (__m24__)}
assert -name variable_map_assert_10 {(~ __IEND__) || (__m25__)}
assert -name variable_map_assert_11 {(~ __IEND__) || (__m26__)}
assert -name variable_map_assert_12 {(~ __IEND__) || (__m27__)}
assert -name variable_map_assert_13 {(~ __IEND__) || (__m28__)}
assert -name variable_map_assert_14 {(~ __IEND__) || (__m29__)}
