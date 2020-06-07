glabel func_8002993C
/* AA0ADC 8002993C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AA0AE0 80029940 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0AE4 80029944 AFA40048 */  sw    $a0, 0x48($sp)
/* AA0AE8 80029948 AFA60050 */  sw    $a2, 0x50($sp)
/* AA0AEC 8002994C AFA70054 */  sw    $a3, 0x54($sp)
/* AA0AF0 80029950 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0AF4 80029954 27A4001C */   addiu $a0, $sp, 0x1c
/* AA0AF8 80029958 27A40028 */  addiu $a0, $sp, 0x28
/* AA0AFC 8002995C 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0B00 80029960 8FA50050 */   lw    $a1, 0x50($sp)
/* AA0B04 80029964 27A40034 */  addiu $a0, $sp, 0x34
/* AA0B08 80029968 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0B0C 8002996C 8FA50054 */   lw    $a1, 0x54($sp)
/* AA0B10 80029970 87AE005A */  lh    $t6, 0x5a($sp)
/* AA0B14 80029974 87AF005E */  lh    $t7, 0x5e($sp)
/* AA0B18 80029978 87B80062 */  lh    $t8, 0x62($sp)
/* AA0B1C 8002997C 8FA40048 */  lw    $a0, 0x48($sp)
/* AA0B20 80029980 24050011 */  li    $a1, 17
/* AA0B24 80029984 24060080 */  li    $a2, 128
/* AA0B28 80029988 27A7001C */  addiu $a3, $sp, 0x1c
/* AA0B2C 8002998C A7AE0040 */  sh    $t6, 0x40($sp)
/* AA0B30 80029990 A7AF0042 */  sh    $t7, 0x42($sp)
/* AA0B34 80029994 0C009DE6 */  jal   EffectSs_Spawn
/* AA0B38 80029998 A7B80044 */   sh    $t8, 0x44($sp)
/* AA0B3C 8002999C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0B40 800299A0 27BD0048 */  addiu $sp, $sp, 0x48
/* AA0B44 800299A4 03E00008 */  jr    $ra
/* AA0B48 800299A8 00000000 */   nop   

