glabel func_80A957E0
/* 00490 80A957E0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00494 80A957E4 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00498 80A957E8 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 0049C 80A957EC 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 004A0 80A957F0 0C028800 */  jal     SkelAnime_GetLastFrame

/* 004A4 80A957F4 248402B8 */  addiu   $a0, $a0, 0x02B8           ## $a0 = 060002B8
/* 004A8 80A957F8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 004AC 80A957FC 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 004B0 80A95800 44810000 */  mtc1    $at, $f0                   ## $f0 = -3.00
/* 004B4 80A95804 46802120 */  cvt.s.w $f4, $f4
/* 004B8 80A95808 8FA40028 */  lw      $a0, 0x0028($sp)
/* 004BC 80A9580C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 004C0 80A95810 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 004C4 80A95814 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 004C8 80A95818 44060000 */  mfc1    $a2, $f0
/* 004CC 80A9581C 44072000 */  mfc1    $a3, $f4
/* 004D0 80A95820 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 004D4 80A95824 24A502B8 */  addiu   $a1, $a1, 0x02B8           ## $a1 = 060002B8
/* 004D8 80A95828 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 004DC 80A9582C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 004E0 80A95830 0C029468 */  jal     SkelAnime_ChangeAnim

/* 004E4 80A95834 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 004E8 80A95838 0C2A5530 */  jal     func_80A954C0
/* 004EC 80A9583C 8FA40028 */  lw      $a0, 0x0028($sp)
/* 004F0 80A95840 8FB80028 */  lw      $t8, 0x0028($sp)
/* 004F4 80A95844 3C0F80A9 */  lui     $t7, %hi(func_80A960B0)    ## $t7 = 80A90000
/* 004F8 80A95848 25EF60B0 */  addiu   $t7, $t7, %lo(func_80A960B0) ## $t7 = 80A960B0
/* 004FC 80A9584C AF0F0190 */  sw      $t7, 0x0190($t8)           ## 00000190
/* 00500 80A95850 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00504 80A95854 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00508 80A95858 03E00008 */  jr      $ra
/* 0050C 80A9585C 00000000 */  nop
