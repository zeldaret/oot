.rdata
glabel D_80144B7C
    .asciz "this->fbuf_save"
    .balign 4

glabel D_80144B8C
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144B9C
    .asciz "this->fbuf"
    .balign 4

glabel D_80144BA8
    .asciz "../PreRender.c"
    .balign 4

.text
glabel func_800C1F20
/* B390C0 800C1F20 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B390C4 800C1F24 AFB00018 */  sw    $s0, 0x18($sp)
/* B390C8 800C1F28 00808025 */  move  $s0, $a0
/* B390CC 800C1F2C AFBF001C */  sw    $ra, 0x1c($sp)
/* B390D0 800C1F30 AFA50024 */  sw    $a1, 0x24($sp)
/* B390D4 800C1F34 3C048014 */  lui   $a0, %hi(D_80144B7C) # $a0, 0x8014
/* B390D8 800C1F38 3C068014 */  lui   $a2, %hi(D_80144B8C) # $a2, 0x8014
/* B390DC 800C1F3C 24C64B8C */  addiu $a2, %lo(D_80144B8C) # addiu $a2, $a2, 0x4b8c
/* B390E0 800C1F40 24844B7C */  addiu $a0, %lo(D_80144B7C) # addiu $a0, $a0, 0x4b7c
/* B390E4 800C1F44 8E050014 */  lw    $a1, 0x14($s0)
/* B390E8 800C1F48 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B390EC 800C1F4C 240701EF */   li    $a3, 495
/* B390F0 800C1F50 3C048014 */  lui   $a0, %hi(D_80144B9C) # $a0, 0x8014
/* B390F4 800C1F54 3C068014 */  lui   $a2, %hi(D_80144BA8) # $a2, 0x8014
/* B390F8 800C1F58 24C64BA8 */  addiu $a2, %lo(D_80144BA8) # addiu $a2, $a2, 0x4ba8
/* B390FC 800C1F5C 24844B9C */  addiu $a0, %lo(D_80144B9C) # addiu $a0, $a0, 0x4b9c
/* B39100 800C1F60 8E050010 */  lw    $a1, 0x10($s0)
/* B39104 800C1F64 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B39108 800C1F68 240701F0 */   li    $a3, 496
/* B3910C 800C1F6C 8E070014 */  lw    $a3, 0x14($s0)
/* B39110 800C1F70 50E00008 */  beql  $a3, $zero, .L800C1F94
/* B39114 800C1F74 8FBF001C */   lw    $ra, 0x1c($sp)
/* B39118 800C1F78 8E060010 */  lw    $a2, 0x10($s0)
/* B3911C 800C1F7C 02002025 */  move  $a0, $s0
/* B39120 800C1F80 50C00004 */  beql  $a2, $zero, .L800C1F94
/* B39124 800C1F84 8FBF001C */   lw    $ra, 0x1c($sp)
/* B39128 800C1F88 0C0306BA */  jal   func_800C1AE8
/* B3912C 800C1F8C 8FA50024 */   lw    $a1, 0x24($sp)
/* B39130 800C1F90 8FBF001C */  lw    $ra, 0x1c($sp)
.L800C1F94:
/* B39134 800C1F94 8FB00018 */  lw    $s0, 0x18($sp)
/* B39138 800C1F98 27BD0020 */  addiu $sp, $sp, 0x20
/* B3913C 800C1F9C 03E00008 */  jr    $ra
/* B39140 800C1FA0 00000000 */   nop   

