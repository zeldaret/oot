glabel func_800CED50
/* B45EF0 800CED50 848E0006 */  lh    $t6, 6($a0)
/* B45EF4 800CED54 848F000A */  lh    $t7, 0xa($a0)
/* B45EF8 800CED58 C4A80000 */  lwc1  $f8, ($a1)
/* B45EFC 800CED5C 448E2000 */  mtc1  $t6, $f4
/* B45F00 800CED60 448F5000 */  mtc1  $t7, $f10
/* B45F04 800CED64 84820000 */  lh    $v0, ($a0)
/* B45F08 800CED68 468021A0 */  cvt.s.w $f6, $f4
/* B45F0C 800CED6C 84980008 */  lh    $t8, 8($a0)
/* B45F10 800CED70 84990004 */  lh    $t9, 4($a0)
/* B45F14 800CED74 00420019 */  multu $v0, $v0
/* B45F18 800CED78 44982000 */  mtc1  $t8, $f4
/* B45F1C 800CED7C 46805420 */  cvt.s.w $f16, $f10
/* B45F20 800CED80 C4B20008 */  lwc1  $f18, 8($a1)
/* B45F24 800CED84 84880002 */  lh    $t0, 2($a0)
/* B45F28 800CED88 00001025 */  move  $v0, $zero
/* B45F2C 800CED8C 46083001 */  sub.s $f0, $f6, $f8
/* B45F30 800CED90 44994000 */  mtc1  $t9, $f8
/* B45F34 800CED94 468021A0 */  cvt.s.w $f6, $f4
/* B45F38 800CED98 46000102 */  mul.s $f4, $f0, $f0
/* B45F3C 800CED9C 00004812 */  mflo  $t1
/* B45F40 800CEDA0 46128081 */  sub.s $f2, $f16, $f18
/* B45F44 800CEDA4 44888000 */  mtc1  $t0, $f16
/* B45F48 800CEDA8 468042A0 */  cvt.s.w $f10, $f8
/* B45F4C 800CEDAC 46021202 */  mul.s $f8, $f2, $f2
/* B45F50 800CEDB0 460A3300 */  add.s $f12, $f6, $f10
/* B45F54 800CEDB4 44895000 */  mtc1  $t1, $f10
/* B45F58 800CEDB8 468084A0 */  cvt.s.w $f18, $f16
/* B45F5C 800CEDBC 46805420 */  cvt.s.w $f16, $f10
/* B45F60 800CEDC0 46082180 */  add.s $f6, $f4, $f8
/* B45F64 800CEDC4 460C9380 */  add.s $f14, $f18, $f12
/* B45F68 800CEDC8 4610303C */  c.lt.s $f6, $f16
/* B45F6C 800CEDCC 00000000 */  nop   
/* B45F70 800CEDD0 4500000C */  bc1f  .L800CEE04
/* B45F74 800CEDD4 00000000 */   nop   
/* B45F78 800CEDD8 C4A00004 */  lwc1  $f0, 4($a1)
/* B45F7C 800CEDDC 4600603C */  c.lt.s $f12, $f0
/* B45F80 800CEDE0 00000000 */  nop   
/* B45F84 800CEDE4 45000007 */  bc1f  .L800CEE04
/* B45F88 800CEDE8 00000000 */   nop   
/* B45F8C 800CEDEC 460E003C */  c.lt.s $f0, $f14
/* B45F90 800CEDF0 00000000 */  nop   
/* B45F94 800CEDF4 45000003 */  bc1f  .L800CEE04
/* B45F98 800CEDF8 00000000 */   nop   
/* B45F9C 800CEDFC 03E00008 */  jr    $ra
/* B45FA0 800CEE00 24020001 */   li    $v0, 1

.L800CEE04:
/* B45FA4 800CEE04 03E00008 */  jr    $ra
/* B45FA8 800CEE08 00000000 */   nop   

