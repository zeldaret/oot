glabel func_80029320
/* AA04C0 80029320 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AA04C4 80029324 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA04C8 80029328 AFA40048 */  sw    $a0, 0x48($sp)
/* AA04CC 8002932C AFA60050 */  sw    $a2, 0x50($sp)
/* AA04D0 80029330 AFA70054 */  sw    $a3, 0x54($sp)
/* AA04D4 80029334 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA04D8 80029338 27A40018 */   addiu $a0, $sp, 0x18
/* AA04DC 8002933C 27A40024 */  addiu $a0, $sp, 0x24
/* AA04E0 80029340 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA04E4 80029344 8FA50050 */   lw    $a1, 0x50($sp)
/* AA04E8 80029348 27A40030 */  addiu $a0, $sp, 0x30
/* AA04EC 8002934C 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA04F0 80029350 8FA50054 */   lw    $a1, 0x54($sp)
/* AA04F4 80029354 87AE005A */  lh    $t6, 0x5a($sp)
/* AA04F8 80029358 87AF005E */  lh    $t7, 0x5e($sp)
/* AA04FC 8002935C 87B80062 */  lh    $t8, 0x62($sp)
/* AA0500 80029360 87B90066 */  lh    $t9, 0x66($sp)
/* AA0504 80029364 8FA80068 */  lw    $t0, 0x68($sp)
/* AA0508 80029368 8FA40048 */  lw    $a0, 0x48($sp)
/* AA050C 8002936C 24050006 */  li    $a1, 6
/* AA0510 80029370 24060080 */  li    $a2, 128
/* AA0514 80029374 27A70018 */  addiu $a3, $sp, 0x18
/* AA0518 80029378 A7AE003C */  sh    $t6, 0x3c($sp)
/* AA051C 8002937C A7AF003E */  sh    $t7, 0x3e($sp)
/* AA0520 80029380 A7B80040 */  sh    $t8, 0x40($sp)
/* AA0524 80029384 A7B90042 */  sh    $t9, 0x42($sp)
/* AA0528 80029388 0C009DE6 */  jal   func_80027798
/* AA052C 8002938C AFA80044 */   sw    $t0, 0x44($sp)
/* AA0530 80029390 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0534 80029394 27BD0048 */  addiu $sp, $sp, 0x48
/* AA0538 80029398 03E00008 */  jr    $ra
/* AA053C 8002939C 00000000 */   nop   

