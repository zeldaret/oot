#ifndef REGDEF_H
#define REGDEF_H

#ifdef __GNUC__
#define _MIPS_SIM_ABI32 _ABIO32
#define _MIPS_SIM_NABI32 _ABIN32
#define _MIPS_SIM_ABI64 _ABI64
#endif

#if (_MIPS_SIM == _MIPS_SIM_ABI32)
#define zero    $0
#define AT      $at
#define v0      $2
#define v1      $3
#define a0      $4
#define a1      $5
#define a2      $6
#define a3      $7
#define t0      $8
#define t1      $9
#define t2      $10
#define t3      $11
#define t4      $12
#define ta0     $12
#define t5      $13
#define ta1     $13
#define t6      $14
#define ta2     $14
#define t7      $15
#define ta3     $15
#define s0      $16
#define s1      $17
#define s2      $18
#define s3      $19
#define s4      $20
#define s5      $21
#define s6      $22
#define s7      $23
#define t8      $24
#define t9      $25
#define jp      $25
#define k0      $26
#define k1      $27
#define gp      $28
#define sp      $29
#define fp      $30
#define s8      $30
#define ra      $31
#endif

#if (_MIPS_SIM == _MIPS_SIM_ABI64)
#define zero    $0
#define AT      $at
#define v0      $2
#define v1      $3
#define a0      $4
#define a1      $5
#define a2      $6
#define a3      $7
#define a4      $8
#define ta0     $8
#define a5      $9
#define ta1     $9
#define a6      $10
#define ta2     $10
#define a7      $11
#define ta3     $11
#define t0      $12
#define t1      $13
#define t2      $14
#define t3      $15
#define s0      $16
#define s1      $17
#define s2      $18
#define s3      $19
#define s4      $20
#define s5      $21
#define s6      $22
#define s7      $23
#define t8      $24
#define t9      $25
#define jp      $25
#define k0      $26
#define k1      $27
#define gp      $28
#define sp      $29
#define fp      $30
#define s8      $30
#define ra      $31
#endif

#if (_MIPS_SIM == _MIPS_SIM_ABI32)
#define fv0     $f0
#define fv0f    $f1
#define fv1     $f2
#define fv1f    $f3
#define fa0     $f12
#define fa0f    $f13
#define fa1     $f14
#define fa1f    $f15
#define ft0     $f4
#define ft0f    $f5
#define ft1     $f6
#define ft1f    $f7
#define ft2     $f8
#define ft2f    $f9
#define ft3     $f10
#define ft3f    $f11
#define ft4     $f16
#define ft4f    $f17
#define ft5     $f18
#define ft5f    $f19
#define fs0     $f20
#define fs0f    $f21
#define fs1     $f22
#define fs1f    $f23
#define fs2     $f24
#define fs2f    $f25
#define fs3     $f26
#define fs3f    $f27
#define fs4     $f28
#define fs4f    $f29
#define fs5     $f30
#define fs5f    $f31
#endif

#if (_MIPS_SIM == _MIPS_SIM_ABI64)
#define fv0     $f0
#define fv1     $f2
#define fa0     $f12
#define fa1     $f13
#define fa2     $f14
#define fa3     $f15
#define fa4     $f16
#define fa5     $f17
#define fa6     $f18
#define fa7     $f19
#define ft0     $f4
#define ft1     $f5
#define ft2     $f6
#define ft3     $f7
#define ft4     $f8
#define ft5     $f9
#define ft6     $f10
#define ft7     $f11
#define ft8     $f20
#define ft9     $f21
#define ft10    $f22
#define ft11    $f23
#define ft12    $f1
#define ft13    $f3
#define fs0     $f24
#define fs1     $f25
#define fs2     $f26
#define fs3     $f27
#define fs4     $f28
#define fs5     $f29
#define fs6     $f30
#define fs7     $f31
#endif

#define fcr31   $31

#endif
