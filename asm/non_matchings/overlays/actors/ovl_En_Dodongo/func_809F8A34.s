glabel func_809F8A34
/* 007E4 809F8A34 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 007E8 809F8A38 AFB00028 */  sw      $s0, 0x0028($sp)
/* 007EC 809F8A3C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 007F0 809F8A40 AFBF002C */  sw      $ra, 0x002C($sp)
/* 007F4 809F8A44 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 007F8 809F8A48 0C028800 */  jal     SkelAnime_GetFrameCount

/* 007FC 809F8A4C 24848B1C */  addiu   $a0, $a0, 0x8B1C           ## $a0 = 06008B1C
/* 00800 809F8A50 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00804 809F8A54 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00808 809F8A58 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 0080C 809F8A5C 468021A0 */  cvt.s.w $f6, $f4
/* 00810 809F8A60 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 00814 809F8A64 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00818 809F8A68 44060000 */  mfc1    $a2, $f0
/* 0081C 809F8A6C 44070000 */  mfc1    $a3, $f0
/* 00820 809F8A70 24A58B1C */  addiu   $a1, $a1, 0x8B1C           ## $a1 = 06008B1C
/* 00824 809F8A74 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00828 809F8A78 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0082C 809F8A7C AFA00014 */  sw      $zero, 0x0014($sp)
/* 00830 809F8A80 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00834 809F8A84 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00838 809F8A88 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 0083C 809F8A8C 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.50
/* 00840 809F8A90 24040032 */  addiu   $a0, $zero, 0x0032         ## $a0 = 00000032
/* 00844 809F8A94 24050046 */  addiu   $a1, $zero, 0x0046         ## $a1 = 00000046
/* 00848 809F8A98 0C01DF64 */  jal     Math_Rand_S16Offset

/* 0084C 809F8A9C E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 00850 809F8AA0 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00854 809F8AA4 240F0008 */  addiu   $t7, $zero, 0x0008         ## $t7 = 00000008
/* 00858 809F8AA8 3C0580A0 */  lui     $a1, %hi(func_809F9424)    ## $a1 = 80A00000
/* 0085C 809F8AAC A602030C */  sh      $v0, 0x030C($s0)           ## 0000030C
/* 00860 809F8AB0 A60E0316 */  sh      $t6, 0x0316($s0)           ## 00000316
/* 00864 809F8AB4 AE0F0304 */  sw      $t7, 0x0304($s0)           ## 00000304
/* 00868 809F8AB8 24A59424 */  addiu   $a1, $a1, %lo(func_809F9424) ## $a1 = 809F9424
/* 0086C 809F8ABC 0C27E094 */  jal     func_809F8250
/* 00870 809F8AC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00874 809F8AC4 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00878 809F8AC8 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0087C 809F8ACC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00880 809F8AD0 03E00008 */  jr      $ra
/* 00884 809F8AD4 00000000 */  nop
