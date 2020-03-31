glabel func_80AA6B80
/* 00B30 80AA6B80 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B34 80AA6B84 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00B38 80AA6B88 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00B3C 80AA6B8C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00B40 80AA6B90 24A52F10 */  addiu   $a1, $a1, 0x2F10           ## $a1 = 06002F10
/* 00B44 80AA6B94 AFA60018 */  sw      $a2, 0x0018($sp)
/* 00B48 80AA6B98 0C0294BE */  jal     SkelAnime_ChangeAnimationDefaultRepeat
/* 00B4C 80AA6B9C 2484018C */  addiu   $a0, $a0, 0x018C           ## $a0 = 0000018C
/* 00B50 80AA6BA0 8FA40018 */  lw      $a0, 0x0018($sp)
/* 00B54 80AA6BA4 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00B58 80AA6BA8 240538BA */  addiu   $a1, $zero, 0x38BA         ## $a1 = 000038BA
/* 00B5C 80AA6BAC 8FA40018 */  lw      $a0, 0x0018($sp)
/* 00B60 80AA6BB0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00B64 80AA6BB4 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 00B68 80AA6BB8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00B6C 80AA6BBC 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 00B70 80AA6BC0 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 00B74 80AA6BC4 3C0580AB */  lui     $a1, %hi(func_80AA800C)    ## $a1 = 80AB0000
/* 00B78 80AA6BC8 24A5800C */  addiu   $a1, $a1, %lo(func_80AA800C) ## $a1 = 80AA800C
/* 00B7C 80AA6BCC A48E0334 */  sh      $t6, 0x0334($a0)           ## 00000334
/* 00B80 80AA6BD0 AC8F0320 */  sw      $t7, 0x0320($a0)           ## 00000320
/* 00B84 80AA6BD4 A498032E */  sh      $t8, 0x032E($a0)           ## 0000032E
/* 00B88 80AA6BD8 0C2A9814 */  jal     func_80AA6050
/* 00B8C 80AA6BDC E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 00B90 80AA6BE0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00B94 80AA6BE4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B98 80AA6BE8 03E00008 */  jr      $ra
/* 00B9C 80AA6BEC 00000000 */  nop


