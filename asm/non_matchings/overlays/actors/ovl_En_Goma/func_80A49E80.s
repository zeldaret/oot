glabel func_80A49E80
/* 00FC0 80A49E80 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00FC4 80A49E84 AFA40030 */  sw      $a0, 0x0030($sp)
/* 00FC8 80A49E88 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00FCC 80A49E8C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00FD0 80A49E90 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00FD4 80A49E94 24841548 */  addiu   $a0, $a0, 0x1548           ## $a0 = 06001548
/* 00FD8 80A49E98 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00FDC 80A49E9C 2404000A */  addiu   $a0, $zero, 0x000A         ## $a0 = 0000000A
/* 00FE0 80A49EA0 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 00FE4 80A49EA4 468021A0 */  cvt.s.w $f6, $f4
/* 00FE8 80A49EA8 0C01DF64 */  jal     Math_Rand_S16Offset

/* 00FEC 80A49EAC E7A6002C */  swc1    $f6, 0x002C($sp)
/* 00FF0 80A49EB0 8FA30030 */  lw      $v1, 0x0030($sp)
/* 00FF4 80A49EB4 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 00FF8 80A49EB8 44815000 */  mtc1    $at, $f10                  ## $f10 = -5.00
/* 00FFC 80A49EBC A46202CC */  sh      $v0, 0x02CC($v1)           ## 000002CC
/* 01000 80A49EC0 C7A8002C */  lwc1    $f8, 0x002C($sp)
/* 01004 80A49EC4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01008 80A49EC8 24A51548 */  addiu   $a1, $a1, 0x1548           ## $a1 = 06001548
/* 0100C 80A49ECC AFA00014 */  sw      $zero, 0x0014($sp)
/* 01010 80A49ED0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01014 80A49ED4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01018 80A49ED8 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 0101C 80A49EDC E7AA0018 */  swc1    $f10, 0x0018($sp)
/* 01020 80A49EE0 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01024 80A49EE4 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 01028 80A49EE8 8FAF0030 */  lw      $t7, 0x0030($sp)
/* 0102C 80A49EEC 3C0E80A5 */  lui     $t6, %hi(func_80A4A2EC)    ## $t6 = 80A50000
/* 01030 80A49EF0 25CEA2EC */  addiu   $t6, $t6, %lo(func_80A4A2EC) ## $t6 = 80A4A2EC
/* 01034 80A49EF4 ADEE02B0 */  sw      $t6, 0x02B0($t7)           ## 000002B0
/* 01038 80A49EF8 8FB80030 */  lw      $t8, 0x0030($sp)
/* 0103C 80A49EFC A70002B8 */  sh      $zero, 0x02B8($t8)         ## 000002B8
/* 01040 80A49F00 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01044 80A49F04 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01048 80A49F08 03E00008 */  jr      $ra
/* 0104C 80A49F0C 00000000 */  nop
