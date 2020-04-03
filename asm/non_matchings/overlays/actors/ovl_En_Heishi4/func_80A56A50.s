glabel func_80A56A50
/* 00980 80A56A50 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00984 80A56A54 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00988 80A56A58 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 0098C 80A56A5C 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00990 80A56A60 AFA5002C */  sw      $a1, 0x002C($sp)
/* 00994 80A56A64 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00998 80A56A68 2484C374 */  addiu   $a0, $a0, 0xC374           ## $a0 = 0600C374
/* 0099C 80A56A6C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 009A0 80A56A70 8FA30028 */  lw      $v1, 0x0028($sp)
/* 009A4 80A56A74 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 009A8 80A56A78 46802020 */  cvt.s.w $f0, $f4
/* 009AC 80A56A7C 44813000 */  mtc1    $at, $f6                   ## $f6 = -10.00
/* 009B0 80A56A80 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 009B4 80A56A84 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 009B8 80A56A88 24A5C374 */  addiu   $a1, $a1, 0xC374           ## $a1 = 0600C374
/* 009BC 80A56A8C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 009C0 80A56A90 E4600288 */  swc1    $f0, 0x0288($v1)           ## 00000288
/* 009C4 80A56A94 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 009C8 80A56A98 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 009CC 80A56A9C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 009D0 80A56AA0 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 009D4 80A56AA4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 009D8 80A56AA8 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 009DC 80A56AAC 8FB80028 */  lw      $t8, 0x0028($sp)
/* 009E0 80A56AB0 3C0F80A5 */  lui     $t7, %hi(func_80A56ACC)    ## $t7 = 80A50000
/* 009E4 80A56AB4 25EF6ACC */  addiu   $t7, $t7, %lo(func_80A56ACC) ## $t7 = 80A56ACC
/* 009E8 80A56AB8 AF0F025C */  sw      $t7, 0x025C($t8)           ## 0000025C
/* 009EC 80A56ABC 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 009F0 80A56AC0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 009F4 80A56AC4 03E00008 */  jr      $ra
/* 009F8 80A56AC8 00000000 */  nop


