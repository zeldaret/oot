.late_rodata
glabel D_8013E934
    .float 0.1

.text
glabel func_80090A28
/* B07BC8 80090A28 3C078012 */  lui   $a3, %hi(D_80126080) # $a3, 0x8012
/* B07BCC 80090A2C 24E76080 */  addiu $a3, %lo(D_80126080) # addiu $a3, $a3, 0x6080
/* B07BD0 80090A30 C4E40000 */  lwc1  $f4, ($a3)
/* B07BD4 80090A34 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B07BD8 80090A38 3C068012 */  lui   $a2, %hi(D_8012608C) # $a2, 0x8012
/* B07BDC 80090A3C 24C6608C */  addiu $a2, %lo(D_8012608C) # addiu $a2, $a2, 0x608c
/* B07BE0 80090A40 AFBF0014 */  sw    $ra, 0x14($sp)
/* B07BE4 80090A44 AFA5001C */  sw    $a1, 0x1c($sp)
/* B07BE8 80090A48 E4C40000 */  swc1  $f4, ($a2)
/* B07BEC 80090A4C 90820845 */  lbu   $v0, 0x845($a0)
/* B07BF0 80090A50 24180009 */  li    $t8, 9
/* B07BF4 80090A54 28410003 */  slti  $at, $v0, 3
/* B07BF8 80090A58 1420000F */  bnez  $at, .L80090A98
/* B07BFC 80090A5C 244E0001 */   addiu $t6, $v0, 1
/* B07C00 80090A60 31CF00FF */  andi  $t7, $t6, 0xff
/* B07C04 80090A64 030FC823 */  subu  $t9, $t8, $t7
/* B07C08 80090A68 44993000 */  mtc1  $t9, $f6
/* B07C0C 80090A6C A08E0845 */  sb    $t6, 0x845($a0)
/* B07C10 80090A70 3C018014 */  lui   $at, %hi(D_8013E934)
/* B07C14 80090A74 46803220 */  cvt.s.w $f8, $f6
/* B07C18 80090A78 C42AE934 */  lwc1  $f10, %lo(D_8013E934)($at)
/* B07C1C 80090A7C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B07C20 80090A80 44819000 */  mtc1  $at, $f18
/* B07C24 80090A84 C4C60000 */  lwc1  $f6, ($a2)
/* B07C28 80090A88 460A4402 */  mul.s $f16, $f8, $f10
/* B07C2C 80090A8C 46109100 */  add.s $f4, $f18, $f16
/* B07C30 80090A90 46043202 */  mul.s $f8, $f6, $f4
/* B07C34 80090A94 E4C80000 */  swc1  $f8, ($a2)
.L80090A98:
/* B07C38 80090A98 3C014496 */  li    $at, 0x44960000 # 0.000000
/* B07C3C 80090A9C 44819000 */  mtc1  $at, $f18
/* B07C40 80090AA0 C4CA0000 */  lwc1  $f10, ($a2)
/* B07C44 80090AA4 3C018012 */  lui   $at, %hi(D_80126098)
/* B07C48 80090AA8 00E02025 */  move  $a0, $a3
/* B07C4C 80090AAC 46125400 */  add.s $f16, $f10, $f18
/* B07C50 80090AB0 8FA5001C */  lw    $a1, 0x1c($sp)
/* B07C54 80090AB4 E4D00000 */  swc1  $f16, ($a2)
/* B07C58 80090AB8 C4C60000 */  lwc1  $f6, ($a2)
/* B07C5C 80090ABC 0C0346BD */  jal   Matrix_MultVec3f
/* B07C60 80090AC0 E4266098 */   swc1  $f6, %lo(D_80126098)($at)
/* B07C64 80090AC4 8FA5001C */  lw    $a1, 0x1c($sp)
/* B07C68 80090AC8 3C068012 */  lui   $a2, %hi(D_8012608C)
/* B07C6C 80090ACC 24C4608C */  addiu $a0, $a2, %lo(D_8012608C)
/* B07C70 80090AD0 0C0346BD */  jal   Matrix_MultVec3f
/* B07C74 80090AD4 24A5000C */   addiu $a1, $a1, 0xc
/* B07C78 80090AD8 8FA5001C */  lw    $a1, 0x1c($sp)
/* B07C7C 80090ADC 3C048012 */  lui   $a0, %hi(D_80126098) # $a0, 0x8012
/* B07C80 80090AE0 24846098 */  addiu $a0, %lo(D_80126098) # addiu $a0, $a0, 0x6098
/* B07C84 80090AE4 0C0346BD */  jal   Matrix_MultVec3f
/* B07C88 80090AE8 24A50018 */   addiu $a1, $a1, 0x18
/* B07C8C 80090AEC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B07C90 80090AF0 27BD0018 */  addiu $sp, $sp, 0x18
/* B07C94 80090AF4 03E00008 */  jr    $ra
/* B07C98 80090AF8 00000000 */   nop   

