.rdata
glabel D_8013571C
    .asciz "エフェクト総て解放\n"
    # EUC-JP: エフェクト総て解 | Release all effects
    .balign 4

glabel D_80135730
    .asciz "エフェクト総て解放 終了\n"
    # EUC-JP: エフェクト総て解放 終了 | Release all effects?
    .balign 4

.text
glabel func_800271A8
/* A9E348 800271A8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* A9E34C 800271AC AFA40028 */  sw    $a0, 0x28($sp)
/* A9E350 800271B0 AFBF0024 */  sw    $ra, 0x24($sp)
/* A9E354 800271B4 3C048013 */  lui   $a0, %hi(D_8013571C) # $a0, 0x8013
/* A9E358 800271B8 AFB30020 */  sw    $s3, 0x20($sp)
/* A9E35C 800271BC AFB2001C */  sw    $s2, 0x1c($sp)
/* A9E360 800271C0 AFB10018 */  sw    $s1, 0x18($sp)
/* A9E364 800271C4 AFB00014 */  sw    $s0, 0x14($sp)
/* A9E368 800271C8 0C00084C */  jal   osSyncPrintf
/* A9E36C 800271CC 2484571C */   addiu $a0, %lo(D_8013571C) # addiu $a0, $a0, 0x571c
/* A9E370 800271D0 3C118015 */  lui   $s1, %hi(D_80157DA0) # $s1, 0x8015
/* A9E374 800271D4 3C108015 */  lui   $s0, %hi(D_80157DA8) # $s0, 0x8015
/* A9E378 800271D8 3C138016 */  lui   $s3, %hi(D_80158C00) # $s3, 0x8016
/* A9E37C 800271DC 3C128011 */  lui   $s2, %hi(D_80115860) # $s2, 0x8011
/* A9E380 800271E0 26525860 */  addiu $s2, %lo(D_80115860) # addiu $s2, $s2, 0x5860
/* A9E384 800271E4 26738C00 */  addiu $s3, %lo(D_80158C00) # addiu $s3, $s3, -0x7400
/* A9E388 800271E8 26107DA8 */  addiu $s0, %lo(D_80157DA8) # addiu $s0, $s0, 0x7da8
/* A9E38C 800271EC 26317DA0 */  addiu $s1, %lo(D_80157DA0) # addiu $s1, $s1, 0x7da0
.L800271F0:
/* A9E390 800271F0 8E590008 */  lw    $t9, 8($s2)
/* A9E394 800271F4 A2200004 */  sb    $zero, 4($s1)
/* A9E398 800271F8 02002025 */  move  $a0, $s0
/* A9E39C 800271FC 0320F809 */  jalr  $t9
/* A9E3A0 80027200 00000000 */  nop   
/* A9E3A4 80027204 261004C8 */  addiu $s0, $s0, 0x4c8
/* A9E3A8 80027208 0213082B */  sltu  $at, $s0, $s3
/* A9E3AC 8002720C 1420FFF8 */  bnez  $at, .L800271F0
/* A9E3B0 80027210 263104C8 */   addiu $s1, $s1, 0x4c8
/* A9E3B4 80027214 3C118015 */  lui   $s1, %hi(D_80157DA0) # $s1, 0x8015
/* A9E3B8 80027218 3C108016 */  lui   $s0, %hi(D_80158C00) # $s0, 0x8016
/* A9E3BC 8002721C 3C138016 */  lui   $s3, %hi(D_8015B630) # $s3, 0x8016
/* A9E3C0 80027220 2673B630 */  addiu $s3, %lo(D_8015B630) # addiu $s3, $s3, -0x49d0
/* A9E3C4 80027224 26108C00 */  addiu $s0, %lo(D_80158C00) # addiu $s0, $s0, -0x7400
/* A9E3C8 80027228 26317DA0 */  addiu $s1, %lo(D_80157DA0) # addiu $s1, $s1, 0x7da0
.L8002722C:
/* A9E3CC 8002722C 8E59001C */  lw    $t9, 0x1c($s2)
/* A9E3D0 80027230 A2200E5C */  sb    $zero, 0xe5c($s1)
/* A9E3D4 80027234 02002025 */  move  $a0, $s0
/* A9E3D8 80027238 0320F809 */  jalr  $t9
/* A9E3DC 8002723C 00000000 */  nop   
/* A9E3E0 80027240 261001B0 */  addiu $s0, $s0, 0x1b0
/* A9E3E4 80027244 0213082B */  sltu  $at, $s0, $s3
/* A9E3E8 80027248 1420FFF8 */  bnez  $at, .L8002722C
/* A9E3EC 8002724C 263101B0 */   addiu $s1, $s1, 0x1b0
/* A9E3F0 80027250 3C118015 */  lui   $s1, %hi(D_80157DA0) # $s1, 0x8015
/* A9E3F4 80027254 3C108016 */  lui   $s0, %hi(D_8015B630) # $s0, 0x8016
/* A9E3F8 80027258 3C138016 */  lui   $s3, %hi(D_8015BB94) # $s3, 0x8016
/* A9E3FC 8002725C 2673BB94 */  addiu $s3, %lo(D_8015BB94) # addiu $s3, $s3, -0x446c
/* A9E400 80027260 2610B630 */  addiu $s0, %lo(D_8015B630) # addiu $s0, $s0, -0x49d0
/* A9E404 80027264 26317DA0 */  addiu $s1, %lo(D_80157DA0) # addiu $s1, $s1, 0x7da0
.L80027268:
/* A9E408 80027268 8E590044 */  lw    $t9, 0x44($s2)
/* A9E40C 8002726C A220388C */  sb    $zero, 0x388c($s1)
/* A9E410 80027270 02002025 */  move  $a0, $s0
/* A9E414 80027274 0320F809 */  jalr  $t9
/* A9E418 80027278 00000000 */  nop   
/* A9E41C 8002727C 261001CC */  addiu $s0, $s0, 0x1cc
/* A9E420 80027280 1613FFF9 */  bne   $s0, $s3, .L80027268
/* A9E424 80027284 263101CC */   addiu $s1, $s1, 0x1cc
/* A9E428 80027288 3C048013 */  lui   $a0, %hi(D_80135730) # $a0, 0x8013
/* A9E42C 8002728C 0C00084C */  jal   osSyncPrintf
/* A9E430 80027290 24845730 */   addiu $a0, %lo(D_80135730) # addiu $a0, $a0, 0x5730
/* A9E434 80027294 8FBF0024 */  lw    $ra, 0x24($sp)
/* A9E438 80027298 8FB00014 */  lw    $s0, 0x14($sp)
/* A9E43C 8002729C 8FB10018 */  lw    $s1, 0x18($sp)
/* A9E440 800272A0 8FB2001C */  lw    $s2, 0x1c($sp)
/* A9E444 800272A4 8FB30020 */  lw    $s3, 0x20($sp)
/* A9E448 800272A8 03E00008 */  jr    $ra
/* A9E44C 800272AC 27BD0028 */   addiu $sp, $sp, 0x28

