.rdata
glabel D_80144B40
    .asciz "this->zbuf_save"
    .balign 4

glabel D_80144B50
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144B60
    .asciz "this->zbuf"
    .balign 4

glabel D_80144B6C
    .asciz "../PreRender.c"
    .balign 4

.text
glabel func_800C1E9C
/* B3903C 800C1E9C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B39040 800C1EA0 AFB00018 */  sw    $s0, 0x18($sp)
/* B39044 800C1EA4 00808025 */  move  $s0, $a0
/* B39048 800C1EA8 AFBF001C */  sw    $ra, 0x1c($sp)
/* B3904C 800C1EAC AFA50024 */  sw    $a1, 0x24($sp)
/* B39050 800C1EB0 3C048014 */  lui   $a0, %hi(D_80144B40) # $a0, 0x8014
/* B39054 800C1EB4 3C068014 */  lui   $a2, %hi(D_80144B50) # $a2, 0x8014
/* B39058 800C1EB8 24C64B50 */  addiu $a2, %lo(D_80144B50) # addiu $a2, $a2, 0x4b50
/* B3905C 800C1EBC 24844B40 */  addiu $a0, %lo(D_80144B40) # addiu $a0, $a0, 0x4b40
/* B39060 800C1EC0 8E050020 */  lw    $a1, 0x20($s0)
/* B39064 800C1EC4 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B39068 800C1EC8 240701E1 */   li    $a3, 481
/* B3906C 800C1ECC 3C048014 */  lui   $a0, %hi(D_80144B60) # $a0, 0x8014
/* B39070 800C1ED0 3C068014 */  lui   $a2, %hi(D_80144B6C) # $a2, 0x8014
/* B39074 800C1ED4 24C64B6C */  addiu $a2, %lo(D_80144B6C) # addiu $a2, $a2, 0x4b6c
/* B39078 800C1ED8 24844B60 */  addiu $a0, %lo(D_80144B60) # addiu $a0, $a0, 0x4b60
/* B3907C 800C1EDC 8E05001C */  lw    $a1, 0x1c($s0)
/* B39080 800C1EE0 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B39084 800C1EE4 240701E2 */   li    $a3, 482
/* B39088 800C1EE8 8E070020 */  lw    $a3, 0x20($s0)
/* B3908C 800C1EEC 50E00008 */  beql  $a3, $zero, .L800C1F10
/* B39090 800C1EF0 8FBF001C */   lw    $ra, 0x1c($sp)
/* B39094 800C1EF4 8E06001C */  lw    $a2, 0x1c($s0)
/* B39098 800C1EF8 02002025 */  move  $a0, $s0
/* B3909C 800C1EFC 50C00004 */  beql  $a2, $zero, .L800C1F10
/* B390A0 800C1F00 8FBF001C */   lw    $ra, 0x1c($sp)
/* B390A4 800C1F04 0C0303CA */  jal   func_800C0F28
/* B390A8 800C1F08 8FA50024 */   lw    $a1, 0x24($sp)
/* B390AC 800C1F0C 8FBF001C */  lw    $ra, 0x1c($sp)
.L800C1F10:
/* B390B0 800C1F10 8FB00018 */  lw    $s0, 0x18($sp)
/* B390B4 800C1F14 27BD0020 */  addiu $sp, $sp, 0x20
/* B390B8 800C1F18 03E00008 */  jr    $ra
/* B390BC 800C1F1C 00000000 */   nop   

