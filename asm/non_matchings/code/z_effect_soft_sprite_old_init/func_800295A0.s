glabel func_800295A0
/* AA0740 800295A0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AA0744 800295A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0748 800295A8 AFA40038 */  sw    $a0, 0x38($sp)
/* AA074C 800295AC AFA60040 */  sw    $a2, 0x40($sp)
/* AA0750 800295B0 AFA70044 */  sw    $a3, 0x44($sp)
/* AA0754 800295B4 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0758 800295B8 27A4001C */   addiu $a0, $sp, 0x1c
/* AA075C 800295BC 27A40028 */  addiu $a0, $sp, 0x28
/* AA0760 800295C0 0C01E218 */  jal   Color_RGBA8_Copy
/* AA0764 800295C4 8FA50040 */   lw    $a1, 0x40($sp)
/* AA0768 800295C8 27A4002C */  addiu $a0, $sp, 0x2c
/* AA076C 800295CC 0C01E218 */  jal   Color_RGBA8_Copy
/* AA0770 800295D0 8FA50044 */   lw    $a1, 0x44($sp)
/* AA0774 800295D4 87AE004A */  lh    $t6, 0x4a($sp)
/* AA0778 800295D8 87AF004E */  lh    $t7, 0x4e($sp)
/* AA077C 800295DC 87B80052 */  lh    $t8, 0x52($sp)
/* AA0780 800295E0 87B90056 */  lh    $t9, 0x56($sp)
/* AA0784 800295E4 8FA40038 */  lw    $a0, 0x38($sp)
/* AA0788 800295E8 2405000D */  li    $a1, 13
/* AA078C 800295EC 24060080 */  li    $a2, 128
/* AA0790 800295F0 27A7001C */  addiu $a3, $sp, 0x1c
/* AA0794 800295F4 A7AE0030 */  sh    $t6, 0x30($sp)
/* AA0798 800295F8 A7AF0032 */  sh    $t7, 0x32($sp)
/* AA079C 800295FC A7B80034 */  sh    $t8, 0x34($sp)
/* AA07A0 80029600 0C009DE6 */  jal   EffectSs_Spawn
/* AA07A4 80029604 A7B90036 */   sh    $t9, 0x36($sp)
/* AA07A8 80029608 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA07AC 8002960C 27BD0038 */  addiu $sp, $sp, 0x38
/* AA07B0 80029610 03E00008 */  jr    $ra
/* AA07B4 80029614 00000000 */   nop   

