glabel func_80AF7BCC
/* 003DC 80AF7BCC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 003E0 80AF7BD0 AFA40028 */  sw      $a0, 0x0028($sp)
/* 003E4 80AF7BD4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 003E8 80AF7BD8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 003EC 80AF7BDC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 003F0 80AF7BE0 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 060000B4
/* 003F4 80AF7BE4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 003F8 80AF7BE8 8FA40028 */  lw      $a0, 0x0028($sp)
/* 003FC 80AF7BEC 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00400 80AF7BF0 468021A0 */  cvt.s.w $f6, $f4
/* 00404 80AF7BF4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00408 80AF7BF8 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 0040C 80AF7BFC AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00410 80AF7C00 24A500B4 */  addiu   $a1, $a1, 0x00B4           ## $a1 = 060000B4
/* 00414 80AF7C04 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00418 80AF7C08 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 0041C 80AF7C0C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00420 80AF7C10 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00424 80AF7C14 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00428 80AF7C18 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 0042C 80AF7C1C 8FA20028 */  lw      $v0, 0x0028($sp)
/* 00430 80AF7C20 3C1880B0 */  lui     $t8, %hi(func_80AF80E4)    ## $t8 = 80B00000
/* 00434 80AF7C24 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 00438 80AF7C28 271880E4 */  addiu   $t8, $t8, %lo(func_80AF80E4) ## $t8 = 80AF80E4
/* 0043C 80AF7C2C A44F01FA */  sh      $t7, 0x01FA($v0)           ## 000001FA
/* 00440 80AF7C30 AC580190 */  sw      $t8, 0x0190($v0)           ## 00000190
/* 00444 80AF7C34 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00448 80AF7C38 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0044C 80AF7C3C 03E00008 */  jr      $ra
/* 00450 80AF7C40 00000000 */  nop


