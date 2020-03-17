glabel func_800A52F8
/* B1C498 800A52F8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1C49C 800A52FC AFBF0024 */  sw    $ra, 0x24($sp)
/* B1C4A0 800A5300 AFA40028 */  sw    $a0, 0x28($sp)
/* B1C4A4 800A5304 AFA5002C */  sw    $a1, 0x2c($sp)
/* B1C4A8 800A5308 0C028800 */  jal   SkelAnime_GetFrameCount
/* B1C4AC 800A530C 00A02025 */   move  $a0, $a1
/* B1C4B0 800A5310 44822000 */  mtc1  $v0, $f4
/* B1C4B4 800A5314 44800000 */  mtc1  $zero, $f0
/* B1C4B8 800A5318 8FA40028 */  lw    $a0, 0x28($sp)
/* B1C4BC 800A531C 468021A0 */  cvt.s.w $f6, $f4
/* B1C4C0 800A5320 44070000 */  mfc1  $a3, $f0
/* B1C4C4 800A5324 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1C4C8 800A5328 3C063F80 */  lui   $a2, 0x3f80
/* B1C4CC 800A532C AFA00014 */  sw    $zero, 0x14($sp)
/* B1C4D0 800A5330 E7A00018 */  swc1  $f0, 0x18($sp)
/* B1C4D4 800A5334 0C029468 */  jal   SkelAnime_ChangeAnimation
/* B1C4D8 800A5338 E7A60010 */   swc1  $f6, 0x10($sp)
/* B1C4DC 800A533C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1C4E0 800A5340 27BD0028 */  addiu $sp, $sp, 0x28
/* B1C4E4 800A5344 03E00008 */  jr    $ra
/* B1C4E8 800A5348 00000000 */   nop   

