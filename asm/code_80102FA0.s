.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80102FA0
/* B7A140 80102FA0 3C013780 */  li    $at, 0x37800000 # 0.000000
/* B7A144 80102FA4 44810000 */  mtc1  $at, $f0
/* B7A148 80102FA8 3C19FFFF */  li    $t9, 0xFFFF0000 # 0.000000
/* B7A14C 80102FAC 24B80020 */  addiu $t8, $a1, 0x20
.L80102FB0:
/* B7A150 80102FB0 8CA80000 */  lw    $t0, ($a1)
/* B7A154 80102FB4 8CA90020 */  lw    $t1, 0x20($a1)
/* B7A158 80102FB8 24A50004 */  addiu $a1, $a1, 4
/* B7A15C 80102FBC 01195024 */  and   $t2, $t0, $t9
/* B7A160 80102FC0 00095C02 */  srl   $t3, $t1, 0x10
/* B7A164 80102FC4 014B6025 */  or    $t4, $t2, $t3
/* B7A168 80102FC8 448C2000 */  mtc1  $t4, $f4
/* B7A16C 80102FCC 00086C00 */  sll   $t5, $t0, 0x10
/* B7A170 80102FD0 312EFFFF */  andi  $t6, $t1, 0xffff
/* B7A174 80102FD4 01AE7825 */  or    $t7, $t5, $t6
/* B7A178 80102FD8 468021A0 */  cvt.s.w $f6, $f4
/* B7A17C 80102FDC 448F5000 */  mtc1  $t7, $f10
/* B7A180 80102FE0 24840008 */  addiu $a0, $a0, 8
/* B7A184 80102FE4 46805420 */  cvt.s.w $f16, $f10
/* B7A188 80102FE8 46003202 */  mul.s $f8, $f6, $f0
/* B7A18C 80102FEC 00000000 */  nop   
/* B7A190 80102FF0 46008482 */  mul.s $f18, $f16, $f0
/* B7A194 80102FF4 E488FFF8 */  swc1  $f8, -8($a0)
/* B7A198 80102FF8 14B8FFED */  bne   $a1, $t8, .L80102FB0
/* B7A19C 80102FFC E492FFFC */   swc1  $f18, -4($a0)
/* B7A1A0 80103000 03E00008 */  jr    $ra
/* B7A1A4 80103004 00000000 */   nop   
