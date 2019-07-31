// lib.h
// Synopsis: the header of the simple library

#ifndef SIMPLE_LIB_H__
#define SIMPLE_LIB_H__
#include <ilang/ila/instr_lvl_abs.h>
#include <ilang/ila/expr_fuse.h>
#include <ilang/ila/ast_fuse.h>
using namespace ilang;

void Model8051RemapMemInterface(const InstrLvlAbsPtr& model_ptr);
void DfsFromRomToPort(const ExprPtr& expr, const InstrLvlAbsPtr& model_ptr);

#endif // SIMPLE_LIB_H__

