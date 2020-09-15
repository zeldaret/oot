glabel func_800E1148
/* B582E8 800E1148 3C0E8017 */  lui   $t6, %hi(gAudioContext+0x2d32) # $t6, 0x8017
/* B582EC 800E114C 85CE1EB2 */  lh    $t6, %lo(gAudioContext+0x2d32)($t6)
/* B582F0 800E1150 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B582F4 800E1154 AFB00018 */  sw    $s0, 0x18($sp)
/* B582F8 800E1158 2410FFFF */  li    $s0, -1
/* B582FC 800E115C AFBF0024 */  sw    $ra, 0x24($sp)
/* B58300 800E1160 AFB20020 */  sw    $s2, 0x20($sp)
/* B58304 800E1164 120E0003 */  beq   $s0, $t6, .L800E1174
/* B58308 800E1168 AFB1001C */   sw    $s1, 0x1c($sp)
/* B5830C 800E116C 0C03839B */  jal   func_800E0E6C
/* B58310 800E1170 01C02025 */   move  $a0, $t6
.L800E1174:
/* B58314 800E1174 3C048017 */  lui   $a0, %hi(gAudioContext+0x2d3e) # $a0, 0x8017
/* B58318 800E1178 84841EBE */  lh    $a0, %lo(gAudioContext+0x2d3e)($a0)
/* B5831C 800E117C 12040003 */  beq   $s0, $a0, .L800E118C
/* B58320 800E1180 00000000 */   nop   
/* B58324 800E1184 0C03839B */  jal   func_800E0E6C
/* B58328 800E1188 00000000 */   nop   
.L800E118C:
/* B5832C 800E118C 3C188017 */  lui   $t8, %hi(gAudioContext+0x2c40) # $t8, 0x8017
/* B58330 800E1190 8F181DC0 */  lw    $t8, %lo(gAudioContext+0x2c40)($t8)
/* B58334 800E1194 3C0F8017 */  lui   $t7, %hi(gAudioContext+0x2c40) # $t7, 0x8017
/* B58338 800E1198 25EF1DC0 */  addiu $t7, %lo(gAudioContext+0x2c40) # addiu $t7, $t7, 0x1dc0
/* B5833C 800E119C 01E09025 */  move  $s2, $t7
/* B58340 800E11A0 1300000A */  beqz  $t8, .L800E11CC
/* B58344 800E11A4 00008025 */   move  $s0, $zero
/* B58348 800E11A8 01E08825 */  move  $s1, $t7
.L800E11AC:
/* B5834C 800E11AC 0C03839B */  jal   func_800E0E6C
/* B58350 800E11B0 8624001E */   lh    $a0, 0x1e($s1)
/* B58354 800E11B4 8E590000 */  lw    $t9, ($s2)
/* B58358 800E11B8 26100001 */  addiu $s0, $s0, 1
/* B5835C 800E11BC 2631000C */  addiu $s1, $s1, 0xc
/* B58360 800E11C0 0219082B */  sltu  $at, $s0, $t9
/* B58364 800E11C4 1420FFF9 */  bnez  $at, .L800E11AC
/* B58368 800E11C8 00000000 */   nop   
.L800E11CC:
/* B5836C 800E11CC 8FBF0024 */  lw    $ra, 0x24($sp)
/* B58370 800E11D0 8FB00018 */  lw    $s0, 0x18($sp)
/* B58374 800E11D4 8FB1001C */  lw    $s1, 0x1c($sp)
/* B58378 800E11D8 8FB20020 */  lw    $s2, 0x20($sp)
/* B5837C 800E11DC 03E00008 */  jr    $ra
/* B58380 800E11E0 27BD0028 */   addiu $sp, $sp, 0x28