glabel func_800AA0F0
/* B21290 800AA0F0 3C0F8016 */  lui   $t7, %hi(gPadMgr+0x460) # $t7, 0x8016
/* B21294 800AA0F4 8DEF6D20 */  lw    $t7, %lo(gPadMgr+0x460)($t7)
/* B21298 800AA0F8 3C0E800B */  lui   $t6, %hi(func_800A9F30) # $t6, 0x800b
/* B2129C 800AA0FC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B212A0 800AA100 25CE9F30 */  addiu $t6, %lo(func_800A9F30) # addiu $t6, $t6, -0x60d0
/* B212A4 800AA104 15CF0009 */  bne   $t6, $t7, .L800AA12C
/* B212A8 800AA108 AFBF0014 */   sw    $ra, 0x14($sp)
/* B212AC 800AA10C 3C188016 */  lui   $t8, %hi(gPadMgr+0x464) # $t8, 0x8016
/* B212B0 800AA110 8F186D24 */  lw    $t8, %lo(gPadMgr+0x464)($t8)
/* B212B4 800AA114 3C018016 */  lui   $at, %hi(gPadMgr+0x460) # $at, 0x8016
/* B212B8 800AA118 17000004 */  bnez  $t8, .L800AA12C
/* B212BC 800AA11C 00000000 */   nop   
/* B212C0 800AA120 AC206D20 */  sw    $zero, %lo(gPadMgr+0x460)($at)
/* B212C4 800AA124 3C018016 */  lui   $at, %hi(gPadMgr+0x464) # $at, 0x8016
/* B212C8 800AA128 AC206D24 */  sw    $zero, %lo(gPadMgr+0x464)($at)
.L800AA12C:
/* B212CC 800AA12C 3C048016 */  lui   $a0, %hi(D_80160FD0) # $a0, 0x8016
/* B212D0 800AA130 0C034C5E */  jal   func_800D3178
/* B212D4 800AA134 24840FD0 */   addiu $a0, %lo(D_80160FD0) # addiu $a0, $a0, 0xfd0
/* B212D8 800AA138 8FBF0014 */  lw    $ra, 0x14($sp)
/* B212DC 800AA13C 27BD0018 */  addiu $sp, $sp, 0x18
/* B212E0 800AA140 03E00008 */  jr    $ra
/* B212E4 800AA144 00000000 */   nop   