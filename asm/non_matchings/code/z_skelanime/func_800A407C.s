glabel func_800A407C
/* B1B21C 800A407C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1B220 800A4080 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1B224 800A4084 AFA40028 */  sw    $a0, 0x28($sp)
/* B1B228 800A4088 AFA5002C */  sw    $a1, 0x2c($sp)
/* B1B22C 800A408C AFA60030 */  sw    $a2, 0x30($sp)
/* B1B230 800A4090 0C028800 */  jal   SkelAnime_GetFrameCount
/* B1B234 800A4094 00C02025 */   move  $a0, $a2
/* B1B238 800A4098 44822000 */  mtc1  $v0, $f4
/* B1B23C 800A409C 44800000 */  mtc1  $zero, $f0
/* B1B240 800A40A0 240E0002 */  li    $t6, 2
/* B1B244 800A40A4 468021A0 */  cvt.s.w $f6, $f4
/* B1B248 800A40A8 AFAE0018 */  sw    $t6, 0x18($sp)
/* B1B24C 800A40AC 8FA40028 */  lw    $a0, 0x28($sp)
/* B1B250 800A40B0 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1B254 800A40B4 8FA60030 */  lw    $a2, 0x30($sp)
/* B1B258 800A40B8 3C073F80 */  lui   $a3, 0x3f80
/* B1B25C 800A40BC E7A60014 */  swc1  $f6, 0x14($sp)
/* B1B260 800A40C0 E7A00010 */  swc1  $f0, 0x10($sp)
/* B1B264 800A40C4 0C028FC2 */  jal   func_800A3F08
/* B1B268 800A40C8 E7A0001C */   swc1  $f0, 0x1c($sp)
/* B1B26C 800A40CC 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1B270 800A40D0 27BD0028 */  addiu $sp, $sp, 0x28
/* B1B274 800A40D4 03E00008 */  jr    $ra
/* B1B278 800A40D8 00000000 */   nop   

