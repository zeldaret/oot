glabel func_80AA68FC
/* 008AC 80AA68FC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 008B0 80AA6900 AFB00018 */  sw      $s0, 0x0018($sp)
/* 008B4 80AA6904 AFA50024 */  sw      $a1, 0x0024($sp)
/* 008B8 80AA6908 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 008BC 80AA690C AFBF001C */  sw      $ra, 0x001C($sp)
/* 008C0 80AA6910 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 008C4 80AA6914 24A541A8 */  addiu   $a1, $a1, 0x41A8           ## $a1 = 060041A8
/* 008C8 80AA6918 2484018C */  addiu   $a0, $a0, 0x018C           ## $a0 = 0000018C
/* 008CC 80AA691C 0C0294D3 */  jal     SkelAnime_ChangeAnimationTransitionRepeat
/* 008D0 80AA6920 3C06C080 */  lui     $a2, 0xC080                ## $a2 = C0800000
/* 008D4 80AA6924 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 008D8 80AA6928 24040028 */  addiu   $a0, $zero, 0x0028         ## $a0 = 00000028
/* 008DC 80AA692C 24050050 */  addiu   $a1, $zero, 0x0050         ## $a1 = 00000050
/* 008E0 80AA6930 0C01DF64 */  jal     Math_Rand_S16Offset

/* 008E4 80AA6934 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 008E8 80AA6938 240E0006 */  addiu   $t6, $zero, 0x0006         ## $t6 = 00000006
/* 008EC 80AA693C A602032A */  sh      $v0, 0x032A($s0)           ## 0000032A
/* 008F0 80AA6940 AE0E0320 */  sw      $t6, 0x0320($s0)           ## 00000320
/* 008F4 80AA6944 8FA50024 */  lw      $a1, 0x0024($sp)
/* 008F8 80AA6948 0C2A9911 */  jal     func_80AA6444
/* 008FC 80AA694C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00900 80AA6950 3C0580AA */  lui     $a1, %hi(func_80AA71AC)    ## $a1 = 80AA0000
/* 00904 80AA6954 24A571AC */  addiu   $a1, $a1, %lo(func_80AA71AC) ## $a1 = 80AA71AC
/* 00908 80AA6958 0C2A9814 */  jal     func_80AA6050
/* 0090C 80AA695C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00910 80AA6960 8FBF001C */  lw      $ra, 0x001C($sp)
/* 00914 80AA6964 8FB00018 */  lw      $s0, 0x0018($sp)
/* 00918 80AA6968 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0091C 80AA696C 03E00008 */  jr      $ra
/* 00920 80AA6970 00000000 */  nop


