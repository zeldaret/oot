glabel func_800A534C
/* B1C4EC 800A534C 44800000 */  mtc1  $zero, $f0
/* B1C4F0 800A5350 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1C4F4 800A5354 44866000 */  mtc1  $a2, $f12
/* B1C4F8 800A5358 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1C4FC 800A535C 44070000 */  mfc1  $a3, $f0
/* B1C500 800A5360 3C063F80 */  lui   $a2, 0x3f80
/* B1C504 800A5364 AFA00014 */  sw    $zero, 0x14($sp)
/* B1C508 800A5368 E7A00010 */  swc1  $f0, 0x10($sp)
/* B1C50C 800A536C 0C029468 */  jal   SkelAnime_ChangeAnimation
/* B1C510 800A5370 E7AC0018 */   swc1  $f12, 0x18($sp)
/* B1C514 800A5374 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1C518 800A5378 27BD0028 */  addiu $sp, $sp, 0x28
/* B1C51C 800A537C 03E00008 */  jr    $ra
/* B1C520 800A5380 00000000 */   nop   

