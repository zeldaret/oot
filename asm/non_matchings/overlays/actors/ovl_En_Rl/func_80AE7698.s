glabel func_80AE7698
/* 003E8 80AE7698 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 003EC 80AE769C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 003F0 80AE76A0 AFA40028 */  sw      $a0, 0x0028($sp)
/* 003F4 80AE76A4 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 003F8 80AE76A8 51C0001D */  beql    $t6, $zero, .L80AE7720
/* 003FC 80AE76AC 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00400 80AE76B0 8CA21D8C */  lw      $v0, 0x1D8C($a1)           ## 00001D8C
/* 00404 80AE76B4 5040001A */  beql    $v0, $zero, .L80AE7720
/* 00408 80AE76B8 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 0040C 80AE76BC 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 00410 80AE76C0 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00414 80AE76C4 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00418 80AE76C8 55E10015 */  bnel    $t7, $at, .L80AE7720
/* 0041C 80AE76CC 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00420 80AE76D0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00424 80AE76D4 2484040C */  addiu   $a0, $a0, 0x040C           ## $a0 = 0600040C
/* 00428 80AE76D8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0042C 80AE76DC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00430 80AE76E0 8FA40028 */  lw      $a0, 0x0028($sp)
/* 00434 80AE76E4 468021A0 */  cvt.s.w $f6, $f4
/* 00438 80AE76E8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0043C 80AE76EC 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 00440 80AE76F0 44070000 */  mfc1    $a3, $f0
/* 00444 80AE76F4 AFB80014 */  sw      $t8, 0x0014($sp)
/* 00448 80AE76F8 24A5040C */  addiu   $a1, $a1, 0x040C           ## $a1 = 0600040C
/* 0044C 80AE76FC E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00450 80AE7700 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00454 80AE7704 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00458 80AE7708 0C029468 */  jal     SkelAnime_ChangeAnim

/* 0045C 80AE770C E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00460 80AE7710 8FA80028 */  lw      $t0, 0x0028($sp)
/* 00464 80AE7714 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 00468 80AE7718 AD190194 */  sw      $t9, 0x0194($t0)           ## 00000194
/* 0046C 80AE771C 8FBF0024 */  lw      $ra, 0x0024($sp)
.L80AE7720:
/* 00470 80AE7720 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00474 80AE7724 03E00008 */  jr      $ra
/* 00478 80AE7728 00000000 */  nop


