glabel func_800A51E8
/* B1C388 800A51E8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1C38C 800A51EC AFBF0024 */  sw    $ra, 0x24($sp)
/* B1C390 800A51F0 AFA40028 */  sw    $a0, 0x28($sp)
/* B1C394 800A51F4 AFA5002C */  sw    $a1, 0x2c($sp)
/* B1C398 800A51F8 0C028800 */  jal   SkelAnime_GetFrameCount
/* B1C39C 800A51FC 00A02025 */   move  $a0, $a1
/* B1C3A0 800A5200 44822000 */  mtc1  $v0, $f4
/* B1C3A4 800A5204 44800000 */  mtc1  $zero, $f0
/* B1C3A8 800A5208 240E0002 */  li    $t6, 2
/* B1C3AC 800A520C 468021A0 */  cvt.s.w $f6, $f4
/* B1C3B0 800A5210 44070000 */  mfc1  $a3, $f0
/* B1C3B4 800A5214 AFAE0014 */  sw    $t6, 0x14($sp)
/* B1C3B8 800A5218 8FA40028 */  lw    $a0, 0x28($sp)
/* B1C3BC 800A521C 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1C3C0 800A5220 3C063F80 */  lui   $a2, 0x3f80
/* B1C3C4 800A5224 E7A60010 */  swc1  $f6, 0x10($sp)
/* B1C3C8 800A5228 0C029468 */  jal   SkelAnime_ChangeAnimation
/* B1C3CC 800A522C E7A00018 */   swc1  $f0, 0x18($sp)
/* B1C3D0 800A5230 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1C3D4 800A5234 27BD0028 */  addiu $sp, $sp, 0x28
/* B1C3D8 800A5238 03E00008 */  jr    $ra
/* B1C3DC 800A523C 00000000 */   nop   

