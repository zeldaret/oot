.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_801067F0
/* B7D990 801067F0 27BDFFF8 */  addiu $sp, $sp, -8
/* B7D994 801067F4 44802000 */  mtc1  $zero, $f4
/* B7D998 801067F8 00000000 */  nop   
/* B7D99C 801067FC 46047032 */  c.eq.s $f14, $f4
/* B7D9A0 80106800 00000000 */  nop   
/* B7D9A4 80106804 45000004 */  bc1f  .L80106818
/* B7D9A8 80106808 00000000 */   nop   
/* B7D9AC 8010680C 44800000 */  mtc1  $zero, $f0
/* B7D9B0 80106810 1000000F */  b     .L80106850
/* B7D9B4 80106814 00000000 */   nop   
.L80106818:
/* B7D9B8 80106818 460E6183 */  div.s $f6, $f12, $f14
/* B7D9BC 8010681C 4600320D */  trunc.w.s $f8, $f6
/* B7D9C0 80106820 440F4000 */  mfc1  $t7, $f8
/* B7D9C4 80106824 00000000 */  nop   
/* B7D9C8 80106828 AFAF0004 */  sw    $t7, 4($sp)
/* B7D9CC 8010682C 8FB80004 */  lw    $t8, 4($sp)
/* B7D9D0 80106830 44985000 */  mtc1  $t8, $f10
/* B7D9D4 80106834 00000000 */  nop   
/* B7D9D8 80106838 46805420 */  cvt.s.w $f16, $f10
/* B7D9DC 8010683C 460E8482 */  mul.s $f18, $f16, $f14
/* B7D9E0 80106840 10000003 */  b     .L80106850
/* B7D9E4 80106844 46126001 */   sub.s $f0, $f12, $f18
/* B7D9E8 80106848 10000001 */  b     .L80106850
/* B7D9EC 8010684C 00000000 */   nop   
.L80106850:
/* B7D9F0 80106850 03E00008 */  jr    $ra
/* B7D9F4 80106854 27BD0008 */   addiu $sp, $sp, 8
