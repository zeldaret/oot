glabel func_80028EF4
/* AA0094 80028EF4 27BDFFB0 */  addiu $sp, $sp, -0x50
/* AA0098 80028EF8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA009C 80028EFC AFA40050 */  sw    $a0, 0x50($sp)
/* AA00A0 80028F00 AFA60058 */  sw    $a2, 0x58($sp)
/* AA00A4 80028F04 AFA7005C */  sw    $a3, 0x5c($sp)
/* AA00A8 80028F08 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA00AC 80028F0C 27A4001C */   addiu $a0, $sp, 0x1c
/* AA00B0 80028F10 27A40028 */  addiu $a0, $sp, 0x28
/* AA00B4 80028F14 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA00B8 80028F18 8FA50058 */   lw    $a1, 0x58($sp)
/* AA00BC 80028F1C 27A40034 */  addiu $a0, $sp, 0x34
/* AA00C0 80028F20 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA00C4 80028F24 8FA5005C */   lw    $a1, 0x5c($sp)
/* AA00C8 80028F28 27A40040 */  addiu $a0, $sp, 0x40
/* AA00CC 80028F2C 0C01E218 */  jal   Color_RGBA8_Copy
/* AA00D0 80028F30 8FA50060 */   lw    $a1, 0x60($sp)
/* AA00D4 80028F34 27A40044 */  addiu $a0, $sp, 0x44
/* AA00D8 80028F38 0C01E218 */  jal   Color_RGBA8_Copy
/* AA00DC 80028F3C 8FA50064 */   lw    $a1, 0x64($sp)
/* AA00E0 80028F40 87AE006A */  lh    $t6, 0x6a($sp)
/* AA00E4 80028F44 87AF006E */  lh    $t7, 0x6e($sp)
/* AA00E8 80028F48 87B80072 */  lh    $t8, 0x72($sp)
/* AA00EC 80028F4C 87B90076 */  lh    $t9, 0x76($sp)
/* AA00F0 80028F50 8FA40050 */  lw    $a0, 0x50($sp)
/* AA00F4 80028F54 24050004 */  li    $a1, 4
/* AA00F8 80028F58 24060080 */  li    $a2, 128
/* AA00FC 80028F5C 27A7001C */  addiu $a3, $sp, 0x1c
/* AA0100 80028F60 A7AE0048 */  sh    $t6, 0x48($sp)
/* AA0104 80028F64 A7AF004A */  sh    $t7, 0x4a($sp)
/* AA0108 80028F68 A7B8004C */  sh    $t8, 0x4c($sp)
/* AA010C 80028F6C 0C009DE6 */  jal   EffectSs_Spawn
/* AA0110 80028F70 A7B9004E */   sh    $t9, 0x4e($sp)
/* AA0114 80028F74 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0118 80028F78 27BD0050 */  addiu $sp, $sp, 0x50
/* AA011C 80028F7C 03E00008 */  jr    $ra
/* AA0120 80028F80 00000000 */   nop   

