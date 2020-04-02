glabel func_80B35B94
/* 01EE4 80B35B94 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01EE8 80B35B98 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01EEC 80B35B9C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01EF0 80B35BA0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01EF4 80B35BA4 24A54AD0 */  addiu   $a1, $a1, 0x4AD0           ## $a1 = 06004AD0
/* 01EF8 80B35BA8 AFA70018 */  sw      $a3, 0x0018($sp)
/* 01EFC 80B35BAC 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 01F00 80B35BB0 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 01F04 80B35BB4 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 01F08 80B35BB8 8FA40018 */  lw      $a0, 0x0018($sp)
/* 01F0C 80B35BBC 3C01C0C0 */  lui     $at, 0xC0C0                ## $at = C0C00000
/* 01F10 80B35BC0 44812000 */  mtc1    $at, $f4                   ## $f4 = -6.00
/* 01F14 80B35BC4 8482008A */  lh      $v0, 0x008A($a0)           ## 0000008A
/* 01F18 80B35BC8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 01F1C 80B35BCC 240F0005 */  addiu   $t7, $zero, 0x0005         ## $t7 = 00000005
/* 01F20 80B35BD0 2405386C */  addiu   $a1, $zero, 0x386C         ## $a1 = 0000386C
/* 01F24 80B35BD4 AC8002E8 */  sw      $zero, 0x02E8($a0)         ## 000002E8
/* 01F28 80B35BD8 A48E0300 */  sh      $t6, 0x0300($a0)           ## 00000300
/* 01F2C 80B35BDC AC8F02D4 */  sw      $t7, 0x02D4($a0)           ## 000002D4
/* 01F30 80B35BE0 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 01F34 80B35BE4 A4820032 */  sh      $v0, 0x0032($a0)           ## 00000032
/* 01F38 80B35BE8 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01F3C 80B35BEC A48200B6 */  sh      $v0, 0x00B6($a0)           ## 000000B6
/* 01F40 80B35BF0 3C0580B3 */  lui     $a1, %hi(func_80B35C10)    ## $a1 = 80B30000
/* 01F44 80B35BF4 8FA40018 */  lw      $a0, 0x0018($sp)
/* 01F48 80B35BF8 0C2CCF2C */  jal     func_80B33CB0
/* 01F4C 80B35BFC 24A55C10 */  addiu   $a1, $a1, %lo(func_80B35C10) ## $a1 = 80B35C10
/* 01F50 80B35C00 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01F54 80B35C04 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01F58 80B35C08 03E00008 */  jr      $ra
/* 01F5C 80B35C0C 00000000 */  nop


