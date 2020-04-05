glabel func_80A74E2C
/* 00B1C 80A74E2C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00B20 80A74E30 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00B24 80A74E34 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B28 80A74E38 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00B2C 80A74E3C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00B30 80A74E40 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00B34 80A74E44 24841C28 */  addiu   $a0, $a0, 0x1C28           ## $a0 = 06001C28
/* 00B38 80A74E48 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00B3C 80A74E4C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00B40 80A74E50 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00B44 80A74E54 468021A0 */  cvt.s.w $f6, $f4
/* 00B48 80A74E58 240F0006 */  addiu   $t7, $zero, 0x0006         ## $t7 = 00000006
/* 00B4C 80A74E5C 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00B50 80A74E60 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 00B54 80A74E64 A20E02FF */  sb      $t6, 0x02FF($s0)           ## 000002FF
/* 00B58 80A74E68 A20F02F8 */  sb      $t7, 0x02F8($s0)           ## 000002F8
/* 00B5C 80A74E6C E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 00B60 80A74E70 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00B64 80A74E74 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 00B68 80A74E78 44070000 */  mfc1    $a3, $f0
/* 00B6C 80A74E7C AFB80014 */  sw      $t8, 0x0014($sp)
/* 00B70 80A74E80 24A51C28 */  addiu   $a1, $a1, 0x1C28           ## $a1 = 06001C28
/* 00B74 80A74E84 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00B78 80A74E88 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00B7C 80A74E8C 3C063FC0 */  lui     $a2, 0x3FC0                ## $a2 = 3FC00000
/* 00B80 80A74E90 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00B84 80A74E94 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00B88 80A74E98 3C0580A7 */  lui     $a1, %hi(func_80A74EBC)    ## $a1 = 80A70000
/* 00B8C 80A74E9C 24A54EBC */  addiu   $a1, $a1, %lo(func_80A74EBC) ## $a1 = 80A74EBC
/* 00B90 80A74EA0 0C29D0E4 */  jal     func_80A74390
/* 00B94 80A74EA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B98 80A74EA8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00B9C 80A74EAC 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00BA0 80A74EB0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00BA4 80A74EB4 03E00008 */  jr      $ra
/* 00BA8 80A74EB8 00000000 */  nop


