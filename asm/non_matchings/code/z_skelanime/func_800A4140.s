glabel func_800A4140
/* B1B2E0 800A4140 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1B2E4 800A4144 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1B2E8 800A4148 AFA40028 */  sw    $a0, 0x28($sp)
/* B1B2EC 800A414C AFA5002C */  sw    $a1, 0x2c($sp)
/* B1B2F0 800A4150 AFA60030 */  sw    $a2, 0x30($sp)
/* B1B2F4 800A4154 0C028800 */  jal   SkelAnime_GetFrameCount
/* B1B2F8 800A4158 00C02025 */   move  $a0, $a2
/* B1B2FC 800A415C 44822000 */  mtc1  $v0, $f4
/* B1B300 800A4160 44800000 */  mtc1  $zero, $f0
/* B1B304 800A4164 8FA40028 */  lw    $a0, 0x28($sp)
/* B1B308 800A4168 468021A0 */  cvt.s.w $f6, $f4
/* B1B30C 800A416C 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1B310 800A4170 8FA60030 */  lw    $a2, 0x30($sp)
/* B1B314 800A4174 3C073F80 */  lui   $a3, 0x3f80
/* B1B318 800A4178 AFA00018 */  sw    $zero, 0x18($sp)
/* B1B31C 800A417C E7A00010 */  swc1  $f0, 0x10($sp)
/* B1B320 800A4180 E7A60014 */  swc1  $f6, 0x14($sp)
/* B1B324 800A4184 0C028FC2 */  jal   func_800A3F08
/* B1B328 800A4188 E7A0001C */   swc1  $f0, 0x1c($sp)
/* B1B32C 800A418C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1B330 800A4190 27BD0028 */  addiu $sp, $sp, 0x28
/* B1B334 800A4194 03E00008 */  jr    $ra
/* B1B338 800A4198 00000000 */   nop   

