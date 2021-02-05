glabel func_80B3DE78
/* 01C98 80B3DE78 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01C9C 80B3DE7C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01CA0 80B3DE80 10A00018 */  beq     $a1, $zero, .L80B3DEE4
/* 01CA4 80B3DE84 AFA40028 */  sw      $a0, 0x0028($sp)
/* 01CA8 80B3DE88 3C040600 */  lui     $a0, %hi(D_06004828)                ## $a0 = 06000000
/* 01CAC 80B3DE8C 0C028800 */  jal     Animation_GetLastFrame

/* 01CB0 80B3DE90 24844828 */  addiu   $a0, $a0, %lo(D_06004828)           ## $a0 = 06004828
/* 01CB4 80B3DE94 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01CB8 80B3DE98 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01CBC 80B3DE9C 8FA30028 */  lw      $v1, 0x0028($sp)
/* 01CC0 80B3DEA0 468021A0 */  cvt.s.w $f6, $f4
/* 01CC4 80B3DEA4 3C050600 */  lui     $a1, %hi(D_06004828)                ## $a1 = 06000000
/* 01CC8 80B3DEA8 44070000 */  mfc1    $a3, $f0
/* 01CCC 80B3DEAC 24A54828 */  addiu   $a1, $a1, %lo(D_06004828)           ## $a1 = 06004828
/* 01CD0 80B3DEB0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01CD4 80B3DEB4 AFA00014 */  sw      $zero, 0x0014($sp)
/* 01CD8 80B3DEB8 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01CDC 80B3DEBC 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 01CE0 80B3DEC0 0C029468 */  jal     Animation_Change

/* 01CE4 80B3DEC4 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 01CE8 80B3DEC8 8FA30028 */  lw      $v1, 0x0028($sp)
/* 01CEC 80B3DECC 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 01CF0 80B3DED0 240E000D */  addiu   $t6, $zero, 0x000D         ## $t6 = 0000000D
/* 01CF4 80B3DED4 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01CF8 80B3DED8 AC6E0260 */  sw      $t6, 0x0260($v1)           ## 00000260
/* 01CFC 80B3DEDC AC6F0264 */  sw      $t7, 0x0264($v1)           ## 00000264
/* 01D00 80B3DEE0 E4680268 */  swc1    $f8, 0x0268($v1)           ## 00000268
.L80B3DEE4:
/* 01D04 80B3DEE4 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01D08 80B3DEE8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01D0C 80B3DEEC 03E00008 */  jr      $ra
/* 01D10 80B3DEF0 00000000 */  nop
