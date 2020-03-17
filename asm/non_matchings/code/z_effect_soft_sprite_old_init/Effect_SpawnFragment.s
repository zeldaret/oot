glabel Effect_SpawnFragment
/* AA102C 80029E8C 27BDFFA8 */  addiu $sp, $sp, -0x58
/* AA1030 80029E90 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA1034 80029E94 AFA40058 */  sw    $a0, 0x58($sp)
/* AA1038 80029E98 AFA60060 */  sw    $a2, 0x60($sp)
/* AA103C 80029E9C AFA70064 */  sw    $a3, 0x64($sp)
/* AA1040 80029EA0 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1044 80029EA4 27A40018 */   addiu $a0, $sp, 0x18
/* AA1048 80029EA8 27A40024 */  addiu $a0, $sp, 0x24
/* AA104C 80029EAC 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1050 80029EB0 8FA50060 */   lw    $a1, 0x60($sp)
/* AA1054 80029EB4 27A40030 */  addiu $a0, $sp, 0x30
/* AA1058 80029EB8 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA105C 80029EBC 8FA50064 */   lw    $a1, 0x64($sp)
/* AA1060 80029EC0 87AE006A */  lh    $t6, 0x6a($sp)
/* AA1064 80029EC4 87AF006E */  lh    $t7, 0x6e($sp)
/* AA1068 80029EC8 87B80072 */  lh    $t8, 0x72($sp)
/* AA106C 80029ECC A7AE003C */  sh    $t6, 0x3c($sp)
/* AA1070 80029ED0 A7AF003E */  sh    $t7, 0x3e($sp)
/* AA1074 80029ED4 87B90076 */  lh    $t9, 0x76($sp)
/* AA1078 80029ED8 87A8007A */  lh    $t0, 0x7a($sp)
/* AA107C 80029EDC 87A9007E */  lh    $t1, 0x7e($sp)
/* AA1080 80029EE0 87AA0082 */  lh    $t2, 0x82($sp)
/* AA1084 80029EE4 87AB0086 */  lh    $t3, 0x86($sp)
/* AA1088 80029EE8 8FAC0088 */  lw    $t4, 0x88($sp)
/* AA108C 80029EEC 87AD008E */  lh    $t5, 0x8e($sp)
/* AA1090 80029EF0 87AE0092 */  lh    $t6, 0x92($sp)
/* AA1094 80029EF4 8FAF0094 */  lw    $t7, 0x94($sp)
/* AA1098 80029EF8 8FA40058 */  lw    $a0, 0x58($sp)
/* AA109C 80029EFC 24050019 */  li    $a1, 25
/* AA10A0 80029F00 24060065 */  li    $a2, 101
/* AA10A4 80029F04 27A70018 */  addiu $a3, $sp, 0x18
/* AA10A8 80029F08 A7B80040 */  sh    $t8, 0x40($sp)
/* AA10AC 80029F0C A7B90042 */  sh    $t9, 0x42($sp)
/* AA10B0 80029F10 A7A80044 */  sh    $t0, 0x44($sp)
/* AA10B4 80029F14 A7A90046 */  sh    $t1, 0x46($sp)
/* AA10B8 80029F18 A7AA0048 */  sh    $t2, 0x48($sp)
/* AA10BC 80029F1C A7AB004A */  sh    $t3, 0x4a($sp)
/* AA10C0 80029F20 AFAC004C */  sw    $t4, 0x4c($sp)
/* AA10C4 80029F24 A7AD0050 */  sh    $t5, 0x50($sp)
/* AA10C8 80029F28 A7AE0052 */  sh    $t6, 0x52($sp)
/* AA10CC 80029F2C 0C009DE6 */  jal   func_80027798
/* AA10D0 80029F30 AFAF0054 */   sw    $t7, 0x54($sp)
/* AA10D4 80029F34 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA10D8 80029F38 27BD0058 */  addiu $sp, $sp, 0x58
/* AA10DC 80029F3C 03E00008 */  jr    $ra
/* AA10E0 80029F40 00000000 */   nop   

