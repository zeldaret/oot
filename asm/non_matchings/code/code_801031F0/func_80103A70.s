glabel func_80103A70
/* B7AC10 80103A70 27BDFF68 */  addiu $sp, $sp, -0x98
/* B7AC14 80103A74 C7A400A8 */  lwc1  $f4, 0xa8($sp)
/* B7AC18 80103A78 C7A600AC */  lwc1  $f6, 0xac($sp)
/* B7AC1C 80103A7C C7A800B0 */  lwc1  $f8, 0xb0($sp)
/* B7AC20 80103A80 E7A40010 */  swc1  $f4, 0x10($sp)
/* B7AC24 80103A84 E7A60014 */  swc1  $f6, 0x14($sp)
/* B7AC28 80103A88 C7A600C4 */  lwc1  $f6, 0xc4($sp)
/* B7AC2C 80103A8C C7A400C0 */  lwc1  $f4, 0xc0($sp)
/* B7AC30 80103A90 C7AA00B4 */  lwc1  $f10, 0xb4($sp)
/* B7AC34 80103A94 C7B000B8 */  lwc1  $f16, 0xb8($sp)
/* B7AC38 80103A98 C7B200BC */  lwc1  $f18, 0xbc($sp)
/* B7AC3C 80103A9C 44876000 */  mtc1  $a3, $f12
/* B7AC40 80103AA0 E7A80018 */  swc1  $f8, 0x18($sp)
/* B7AC44 80103AA4 E7A6002C */  swc1  $f6, 0x2c($sp)
/* B7AC48 80103AA8 E7A40028 */  swc1  $f4, 0x28($sp)
/* B7AC4C 80103AAC E7AA001C */  swc1  $f10, 0x1c($sp)
/* B7AC50 80103AB0 E7B00020 */  swc1  $f16, 0x20($sp)
/* B7AC54 80103AB4 E7B20024 */  swc1  $f18, 0x24($sp)
/* B7AC58 80103AB8 C7B200D4 */  lwc1  $f18, 0xd4($sp)
/* B7AC5C 80103ABC C7B000D0 */  lwc1  $f16, 0xd0($sp)
/* B7AC60 80103AC0 C7AA00CC */  lwc1  $f10, 0xcc($sp)
/* B7AC64 80103AC4 C7A400D8 */  lwc1  $f4, 0xd8($sp)
/* B7AC68 80103AC8 C7A600DC */  lwc1  $f6, 0xdc($sp)
/* B7AC6C 80103ACC C7A800C8 */  lwc1  $f8, 0xc8($sp)
/* B7AC70 80103AD0 8FAE00E0 */  lw    $t6, 0xe0($sp)
/* B7AC74 80103AD4 8FAF00E4 */  lw    $t7, 0xe4($sp)
/* B7AC78 80103AD8 AFBF0054 */  sw    $ra, 0x54($sp)
/* B7AC7C 80103ADC AFA40098 */  sw    $a0, 0x98($sp)
/* B7AC80 80103AE0 44076000 */  mfc1  $a3, $f12
/* B7AC84 80103AE4 27A40058 */  addiu $a0, $sp, 0x58
/* B7AC88 80103AE8 E7B2003C */  swc1  $f18, 0x3c($sp)
/* B7AC8C 80103AEC E7B00038 */  swc1  $f16, 0x38($sp)
/* B7AC90 80103AF0 E7AA0034 */  swc1  $f10, 0x34($sp)
/* B7AC94 80103AF4 E7A40040 */  swc1  $f4, 0x40($sp)
/* B7AC98 80103AF8 E7A60044 */  swc1  $f6, 0x44($sp)
/* B7AC9C 80103AFC E7A80030 */  swc1  $f8, 0x30($sp)
/* B7ACA0 80103B00 AFAE0048 */  sw    $t6, 0x48($sp)
/* B7ACA4 80103B04 0C040CAC */  jal   func_801032B0
/* B7ACA8 80103B08 AFAF004C */   sw    $t7, 0x4c($sp)
/* B7ACAC 80103B0C 27A40058 */  addiu $a0, $sp, 0x58
/* B7ACB0 80103B10 0C041938 */  jal   func_801064E0
/* B7ACB4 80103B14 8FA50098 */   lw    $a1, 0x98($sp)
/* B7ACB8 80103B18 8FBF0054 */  lw    $ra, 0x54($sp)
/* B7ACBC 80103B1C 27BD0098 */  addiu $sp, $sp, 0x98
/* B7ACC0 80103B20 03E00008 */  jr    $ra
/* B7ACC4 80103B24 00000000 */   nop   
