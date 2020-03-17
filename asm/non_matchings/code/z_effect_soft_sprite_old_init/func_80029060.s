glabel func_80029060
/* AA0200 80029060 27BDFFB0 */  addiu $sp, $sp, -0x50
/* AA0204 80029064 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0208 80029068 AFA40050 */  sw    $a0, 0x50($sp)
/* AA020C 8002906C AFA50054 */  sw    $a1, 0x54($sp)
/* AA0210 80029070 AFA7005C */  sw    $a3, 0x5c($sp)
/* AA0214 80029074 00C02825 */  move  $a1, $a2
/* AA0218 80029078 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA021C 8002907C 27A4001C */   addiu $a0, $sp, 0x1c
/* AA0220 80029080 27A40028 */  addiu $a0, $sp, 0x28
/* AA0224 80029084 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0228 80029088 8FA5005C */   lw    $a1, 0x5c($sp)
/* AA022C 8002908C 27A40034 */  addiu $a0, $sp, 0x34
/* AA0230 80029090 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0234 80029094 8FA50060 */   lw    $a1, 0x60($sp)
/* AA0238 80029098 27A40040 */  addiu $a0, $sp, 0x40
/* AA023C 8002909C 0C01E218 */  jal   Color_RGBA8_Copy
/* AA0240 800290A0 8FA50064 */   lw    $a1, 0x64($sp)
/* AA0244 800290A4 27A40044 */  addiu $a0, $sp, 0x44
/* AA0248 800290A8 0C01E218 */  jal   Color_RGBA8_Copy
/* AA024C 800290AC 8FA50068 */   lw    $a1, 0x68($sp)
/* AA0250 800290B0 8FAE0054 */  lw    $t6, 0x54($sp)
/* AA0254 800290B4 87AF006E */  lh    $t7, 0x6e($sp)
/* AA0258 800290B8 87B80072 */  lh    $t8, 0x72($sp)
/* AA025C 800290BC A3A0004C */  sb    $zero, 0x4c($sp)
/* AA0260 800290C0 8FA40050 */  lw    $a0, 0x50($sp)
/* AA0264 800290C4 24050005 */  li    $a1, 5
/* AA0268 800290C8 24060080 */  li    $a2, 128
/* AA026C 800290CC 27A70018 */  addiu $a3, $sp, 0x18
/* AA0270 800290D0 AFAE0018 */  sw    $t6, 0x18($sp)
/* AA0274 800290D4 A7AF0048 */  sh    $t7, 0x48($sp)
/* AA0278 800290D8 0C009DE6 */  jal   func_80027798
/* AA027C 800290DC A7B8004A */   sh    $t8, 0x4a($sp)
/* AA0280 800290E0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0284 800290E4 27BD0050 */  addiu $sp, $sp, 0x50
/* AA0288 800290E8 03E00008 */  jr    $ra
/* AA028C 800290EC 00000000 */   nop   

