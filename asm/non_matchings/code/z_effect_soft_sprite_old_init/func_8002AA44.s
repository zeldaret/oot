glabel func_8002AA44
/* AA1BE4 8002AA44 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AA1BE8 8002AA48 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA1BEC 8002AA4C AFA40040 */  sw    $a0, 0x40($sp)
/* AA1BF0 8002AA50 AFA60048 */  sw    $a2, 0x48($sp)
/* AA1BF4 8002AA54 AFA7004C */  sw    $a3, 0x4c($sp)
/* AA1BF8 8002AA58 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1BFC 8002AA5C 27A40018 */   addiu $a0, $sp, 0x18
/* AA1C00 8002AA60 27A40024 */  addiu $a0, $sp, 0x24
/* AA1C04 8002AA64 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1C08 8002AA68 8FA50048 */   lw    $a1, 0x48($sp)
/* AA1C0C 8002AA6C 27A40030 */  addiu $a0, $sp, 0x30
/* AA1C10 8002AA70 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1C14 8002AA74 8FA5004C */   lw    $a1, 0x4c($sp)
/* AA1C18 8002AA78 87AE0052 */  lh    $t6, 0x52($sp)
/* AA1C1C 8002AA7C 8FA40040 */  lw    $a0, 0x40($sp)
/* AA1C20 8002AA80 24050024 */  li    $a1, 36
/* AA1C24 8002AA84 24060080 */  li    $a2, 128
/* AA1C28 8002AA88 27A70018 */  addiu $a3, $sp, 0x18
/* AA1C2C 8002AA8C 0C009DE6 */  jal   func_80027798
/* AA1C30 8002AA90 A7AE003C */   sh    $t6, 0x3c($sp)
/* AA1C34 8002AA94 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA1C38 8002AA98 27BD0040 */  addiu $sp, $sp, 0x40
/* AA1C3C 8002AA9C 03E00008 */  jr    $ra
/* AA1C40 8002AAA0 00000000 */   nop   
