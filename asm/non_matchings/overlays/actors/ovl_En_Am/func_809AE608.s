glabel func_809AE608
/* 006E8 809AE608 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006EC 809AE60C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 006F0 809AE610 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 006F4 809AE614 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 006F8 809AE618 24A50238 */  addiu   $a1, $a1, 0x0238           ## $a1 = 06000238
/* 006FC 809AE61C AFA70018 */  sw      $a3, 0x0018($sp)
/* 00700 809AE620 24840164 */  addiu   $a0, $a0, 0x0164           ## $a0 = 00000164
/* 00704 809AE624 0C0294E1 */  jal     SkelAnime_ChangeAnimPlaybackRepeat
/* 00708 809AE628 3C064080 */  lui     $a2, 0x4080                ## $a2 = 40800000
/* 0070C 809AE62C 8FA40018 */  lw      $a0, 0x0018($sp)
/* 00710 809AE630 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00714 809AE634 240E0007 */  addiu   $t6, $zero, 0x0007         ## $t6 = 00000007
/* 00718 809AE638 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0071C 809AE63C 3C05809B */  lui     $a1, %hi(func_809AED8C)    ## $a1 = 809B0000
/* 00720 809AE640 24A5ED8C */  addiu   $a1, $a1, %lo(func_809AED8C) ## $a1 = 809AED8C
/* 00724 809AE644 AC8E01A8 */  sw      $t6, 0x01A8($a0)           ## 000001A8
/* 00728 809AE648 A48F0258 */  sh      $t7, 0x0258($a0)           ## 00000258
/* 0072C 809AE64C 0C26B7C8 */  jal     func_809ADF20
/* 00730 809AE650 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 00734 809AE654 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00738 809AE658 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0073C 809AE65C 03E00008 */  jr      $ra
/* 00740 809AE660 00000000 */  nop
