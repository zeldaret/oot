glabel func_800290F0
/* AA0290 800290F0 27BDFFB0 */  addiu $sp, $sp, -0x50
/* AA0294 800290F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0298 800290F8 AFA40050 */  sw    $a0, 0x50($sp)
/* AA029C 800290FC AFA50054 */  sw    $a1, 0x54($sp)
/* AA02A0 80029100 AFA7005C */  sw    $a3, 0x5c($sp)
/* AA02A4 80029104 00C02825 */  move  $a1, $a2
/* AA02A8 80029108 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA02AC 8002910C 27A4001C */   addiu $a0, $sp, 0x1c
/* AA02B0 80029110 27A40028 */  addiu $a0, $sp, 0x28
/* AA02B4 80029114 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA02B8 80029118 8FA5005C */   lw    $a1, 0x5c($sp)
/* AA02BC 8002911C 27A40034 */  addiu $a0, $sp, 0x34
/* AA02C0 80029120 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA02C4 80029124 8FA50060 */   lw    $a1, 0x60($sp)
/* AA02C8 80029128 27A40040 */  addiu $a0, $sp, 0x40
/* AA02CC 8002912C 0C01E218 */  jal   Color_RGBA8_Copy
/* AA02D0 80029130 8FA50064 */   lw    $a1, 0x64($sp)
/* AA02D4 80029134 27A40044 */  addiu $a0, $sp, 0x44
/* AA02D8 80029138 0C01E218 */  jal   Color_RGBA8_Copy
/* AA02DC 8002913C 8FA50068 */   lw    $a1, 0x68($sp)
/* AA02E0 80029140 8FAE0054 */  lw    $t6, 0x54($sp)
/* AA02E4 80029144 87AF006E */  lh    $t7, 0x6e($sp)
/* AA02E8 80029148 87B80072 */  lh    $t8, 0x72($sp)
/* AA02EC 8002914C 24190001 */  li    $t9, 1
/* AA02F0 80029150 A3B9004C */  sb    $t9, 0x4c($sp)
/* AA02F4 80029154 8FA40050 */  lw    $a0, 0x50($sp)
/* AA02F8 80029158 24050005 */  li    $a1, 5
/* AA02FC 8002915C 24060080 */  li    $a2, 128
/* AA0300 80029160 27A70018 */  addiu $a3, $sp, 0x18
/* AA0304 80029164 AFAE0018 */  sw    $t6, 0x18($sp)
/* AA0308 80029168 A7AF0048 */  sh    $t7, 0x48($sp)
/* AA030C 8002916C 0C009DE6 */  jal   func_80027798
/* AA0310 80029170 A7B8004A */   sh    $t8, 0x4a($sp)
/* AA0314 80029174 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0318 80029178 27BD0050 */  addiu $sp, $sp, 0x50
/* AA031C 8002917C 03E00008 */  jr    $ra
/* AA0320 80029180 00000000 */   nop   

