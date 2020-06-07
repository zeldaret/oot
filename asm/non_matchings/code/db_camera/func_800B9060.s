glabel func_800B9060
/* B30200 800B9060 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B30204 800B9064 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B30208 800B9068 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B3020C 800B906C 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B30210 800B9070 AFBF0044 */  sw    $ra, 0x44($sp)
/* B30214 800B9074 AFA40048 */  sw    $a0, 0x48($sp)
/* B30218 800B9078 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B3021C 800B907C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B30220 800B9080 AFBE0040 */  sw    $fp, 0x40($sp)
/* B30224 800B9084 AFB7003C */  sw    $s7, 0x3c($sp)
/* B30228 800B9088 AFB60038 */  sw    $s6, 0x38($sp)
/* B3022C 800B908C AFB50034 */  sw    $s5, 0x34($sp)
/* B30230 800B9090 AFB40030 */  sw    $s4, 0x30($sp)
/* B30234 800B9094 AFB3002C */  sw    $s3, 0x2c($sp)
/* B30238 800B9098 AFB20028 */  sw    $s2, 0x28($sp)
/* B3023C 800B909C AFB10024 */  sw    $s1, 0x24($sp)
/* B30240 800B90A0 AFB00020 */  sw    $s0, 0x20($sp)
/* B30244 800B90A4 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B30248 800B90A8 AFAE0014 */  sw    $t6, 0x14($sp)
/* B3024C 800B90AC 24044803 */  li    $a0, 18435
/* B30250 800B90B0 AFA70010 */  sw    $a3, 0x10($sp)
/* B30254 800B90B4 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B30258 800B90B8 24060004 */   li    $a2, 4
/* B3025C 800B90BC 3C048014 */  lui   $a0, %hi(D_80143AC8) # $a0, 0x8014
/* B30260 800B90C0 0C00084C */  jal   osSyncPrintf
/* B30264 800B90C4 24843AC8 */   addiu $a0, %lo(D_80143AC8) # addiu $a0, $a0, 0x3ac8
/* B30268 800B90C8 3C108016 */  lui   $s0, %hi(D_80161150) # $s0, 0x8016
/* B3026C 800B90CC 3C178014 */  lui   $s7, %hi(D_80143B84) # $s7, 0x8014
/* B30270 800B90D0 3C168014 */  lui   $s6, %hi(D_80143B60) # $s6, 0x8014
/* B30274 800B90D4 3C158014 */  lui   $s5, %hi(D_80143B3C) # $s5, 0x8014
/* B30278 800B90D8 3C148014 */  lui   $s4, %hi(D_80143B30) # $s4, 0x8014
/* B3027C 800B90DC 3C138014 */  lui   $s3, %hi(D_80143B28) # $s3, 0x8014
/* B30280 800B90E0 3C128014 */  lui   $s2, %hi(D_80143B0C) # $s2, 0x8014
/* B30284 800B90E4 26523B0C */  addiu $s2, %lo(D_80143B0C) # addiu $s2, $s2, 0x3b0c
/* B30288 800B90E8 26733B28 */  addiu $s3, %lo(D_80143B28) # addiu $s3, $s3, 0x3b28
/* B3028C 800B90EC 26943B30 */  addiu $s4, %lo(D_80143B30) # addiu $s4, $s4, 0x3b30
/* B30290 800B90F0 26B53B3C */  addiu $s5, %lo(D_80143B3C) # addiu $s5, $s5, 0x3b3c
/* B30294 800B90F4 26D63B60 */  addiu $s6, %lo(D_80143B60) # addiu $s6, $s6, 0x3b60
/* B30298 800B90F8 26F73B84 */  addiu $s7, %lo(D_80143B84) # addiu $s7, $s7, 0x3b84
/* B3029C 800B90FC 26101150 */  addiu $s0, %lo(D_80161150) # addiu $s0, $s0, 0x1150
/* B302A0 800B9100 00008825 */  move  $s1, $zero
/* B302A4 800B9104 241E000F */  li    $fp, 15
.L800B9108:
/* B302A8 800B9108 8605000E */  lh    $a1, 0xe($s0)
/* B302AC 800B910C 50A00017 */  beql  $a1, $zero, .L800B916C
/* B302B0 800B9110 26310001 */   addiu $s1, $s1, 1
/* B302B4 800B9114 12200004 */  beqz  $s1, .L800B9128
/* B302B8 800B9118 02402025 */   move  $a0, $s2
/* B302BC 800B911C 0C00084C */  jal   osSyncPrintf
/* B302C0 800B9120 02202825 */   move  $a1, $s1
/* B302C4 800B9124 8605000E */  lh    $a1, 0xe($s0)
.L800B9128:
/* B302C8 800B9128 02602025 */  move  $a0, $s3
/* B302CC 800B912C 0C02D248 */  jal   func_800B4920
/* B302D0 800B9130 8E060008 */   lw    $a2, 8($s0)
/* B302D4 800B9134 02802025 */  move  $a0, $s4
/* B302D8 800B9138 8605000E */  lh    $a1, 0xe($s0)
/* B302DC 800B913C 0C02D248 */  jal   func_800B4920
/* B302E0 800B9140 8E060004 */   lw    $a2, 4($s0)
/* B302E4 800B9144 02A02025 */  move  $a0, $s5
/* B302E8 800B9148 0C00084C */  jal   osSyncPrintf
/* B302EC 800B914C 8605000E */   lh    $a1, 0xe($s0)
/* B302F0 800B9150 02C02025 */  move  $a0, $s6
/* B302F4 800B9154 0C00084C */  jal   osSyncPrintf
/* B302F8 800B9158 8605000C */   lh    $a1, 0xc($s0)
/* B302FC 800B915C 02E02025 */  move  $a0, $s7
/* B30300 800B9160 0C00084C */  jal   osSyncPrintf
/* B30304 800B9164 86050002 */   lh    $a1, 2($s0)
/* B30308 800B9168 26310001 */  addiu $s1, $s1, 1
.L800B916C:
/* B3030C 800B916C 163EFFE6 */  bne   $s1, $fp, .L800B9108
/* B30310 800B9170 26100010 */   addiu $s0, $s0, 0x10
/* B30314 800B9174 3C048014 */  lui   $a0, %hi(D_80143BA8) # $a0, 0x8014
/* B30318 800B9178 0C00084C */  jal   osSyncPrintf
/* B3031C 800B917C 24843BA8 */   addiu $a0, %lo(D_80143BA8) # addiu $a0, $a0, 0x3ba8
/* B30320 800B9180 8FBF0044 */  lw    $ra, 0x44($sp)
/* B30324 800B9184 8FB00020 */  lw    $s0, 0x20($sp)
/* B30328 800B9188 8FB10024 */  lw    $s1, 0x24($sp)
/* B3032C 800B918C 8FB20028 */  lw    $s2, 0x28($sp)
/* B30330 800B9190 8FB3002C */  lw    $s3, 0x2c($sp)
/* B30334 800B9194 8FB40030 */  lw    $s4, 0x30($sp)
/* B30338 800B9198 8FB50034 */  lw    $s5, 0x34($sp)
/* B3033C 800B919C 8FB60038 */  lw    $s6, 0x38($sp)
/* B30340 800B91A0 8FB7003C */  lw    $s7, 0x3c($sp)
/* B30344 800B91A4 8FBE0040 */  lw    $fp, 0x40($sp)
/* B30348 800B91A8 03E00008 */  jr    $ra
/* B3034C 800B91AC 27BD0048 */   addiu $sp, $sp, 0x48

