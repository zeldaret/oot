glabel func_8096B3E4
/* 01914 8096B3E4 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01918 8096B3E8 AFA40040 */  sw      $a0, 0x0040($sp)
/* 0191C 8096B3EC AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01920 8096B3F0 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 01924 8096B3F4 AFA50044 */  sw      $a1, 0x0044($sp)
/* 01928 8096B3F8 0C028800 */  jal     Animation_LastFrame

/* 0192C 8096B3FC 24842014 */  addiu   $a0, $a0, 0x2014           ## $a0 = 06012014
/* 01930 8096B400 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01934 8096B404 8FA50040 */  lw      $a1, 0x0040($sp)
/* 01938 8096B408 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 0193C 8096B40C 468021A0 */  cvt.s.w $f6, $f4
/* 01940 8096B410 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 01944 8096B414 AFA5002C */  sw      $a1, 0x002C($sp)
/* 01948 8096B418 24C61CA8 */  addiu   $a2, $a2, 0x1CA8           ## $a2 = 06011CA8
/* 0194C 8096B41C 8FA40044 */  lw      $a0, 0x0044($sp)
/* 01950 8096B420 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01954 8096B424 E7A60030 */  swc1    $f6, 0x0030($sp)
/* 01958 8096B428 AFA00010 */  sw      $zero, 0x0010($sp)
/* 0195C 8096B42C AFA00014 */  sw      $zero, 0x0014($sp)
/* 01960 8096B430 0C0291BE */  jal     SkelAnime_InitFlex
/* 01964 8096B434 AFA00018 */  sw      $zero, 0x0018($sp)
/* 01968 8096B438 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0196C 8096B43C C7A80030 */  lwc1    $f8, 0x0030($sp)
/* 01970 8096B440 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01974 8096B444 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 01978 8096B448 44070000 */  mfc1    $a3, $f0
/* 0197C 8096B44C AFAE0014 */  sw      $t6, 0x0014($sp)
/* 01980 8096B450 24A52014 */  addiu   $a1, $a1, 0x2014           ## $a1 = 06012014
/* 01984 8096B454 8FA4002C */  lw      $a0, 0x002C($sp)
/* 01988 8096B458 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0198C 8096B45C E7A80010 */  swc1    $f8, 0x0010($sp)
/* 01990 8096B460 0C029468 */  jal     Animation_Change

/* 01994 8096B464 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 01998 8096B468 8FA20040 */  lw      $v0, 0x0040($sp)
/* 0199C 8096B46C 240F0015 */  addiu   $t7, $zero, 0x0015         ## $t7 = 00000015
/* 019A0 8096B470 AC4F0198 */  sw      $t7, 0x0198($v0)           ## 00000198
/* 019A4 8096B474 A04000C8 */  sb      $zero, 0x00C8($v0)         ## 000000C8
/* 019A8 8096B478 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 019AC 8096B47C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 019B0 8096B480 03E00008 */  jr      $ra
/* 019B4 8096B484 00000000 */  nop
