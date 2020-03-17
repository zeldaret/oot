glabel func_800A5240
/* B1C3E0 800A5240 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1C3E4 800A5244 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1C3E8 800A5248 AFA40028 */  sw    $a0, 0x28($sp)
/* B1C3EC 800A524C AFA5002C */  sw    $a1, 0x2c($sp)
/* B1C3F0 800A5250 AFA60030 */  sw    $a2, 0x30($sp)
/* B1C3F4 800A5254 0C028800 */  jal   SkelAnime_GetFrameCount
/* B1C3F8 800A5258 00A02025 */   move  $a0, $a1
/* B1C3FC 800A525C 44822000 */  mtc1  $v0, $f4
/* B1C400 800A5260 C7A80030 */  lwc1  $f8, 0x30($sp)
/* B1C404 800A5264 240E0002 */  li    $t6, 2
/* B1C408 800A5268 468021A0 */  cvt.s.w $f6, $f4
/* B1C40C 800A526C AFAE0014 */  sw    $t6, 0x14($sp)
/* B1C410 800A5270 8FA40028 */  lw    $a0, 0x28($sp)
/* B1C414 800A5274 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1C418 800A5278 3C063F80 */  lui   $a2, 0x3f80
/* B1C41C 800A527C 24070000 */  li    $a3, 0
/* B1C420 800A5280 E7A60010 */  swc1  $f6, 0x10($sp)
/* B1C424 800A5284 0C029468 */  jal   SkelAnime_ChangeAnimation
/* B1C428 800A5288 E7A80018 */   swc1  $f8, 0x18($sp)
/* B1C42C 800A528C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1C430 800A5290 27BD0028 */  addiu $sp, $sp, 0x28
/* B1C434 800A5294 03E00008 */  jr    $ra
/* B1C438 800A5298 00000000 */   nop   

