analyze -sva \
  oc8051_gm_top.v \
  ila.v \
  wrapper.v \

elaborate -top wrapper
clock clk
reset rst -formal -bound 3

set CUR [pwd]
include $CUR/init.tcl
include $CUR/exec_ila.tcl
include $CUR/exec_impl_a.tcl
include $CUR/exec_impl_b.tcl
include $CUR/assumption.tcl
include $CUR/property.tcl
