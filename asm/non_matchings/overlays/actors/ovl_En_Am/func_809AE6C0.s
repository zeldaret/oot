glabel func_809AE6C0
/* 007A0 809AE6C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007A4 809AE6C4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 007A8 809AE6C8 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 007AC 809AE6CC 3C050600 */  lui     $a1, %hi(D_06000238)                ## $a1 = 06000000
/* 007B0 809AE6D0 24A50238 */  addiu   $a1, $a1, %lo(D_06000238)           ## $a1 = 06000238
/* 007B4 809AE6D4 AFA70018 */  sw      $a3, 0x0018($sp)
/* 007B8 809AE6D8 24840164 */  addiu   $a0, $a0, 0x0164           ## $a0 = 00000164
/* 007BC 809AE6DC 0C0294E1 */  jal     SkelAnime_ChangeAnimPlaybackRepeat
/* 007C0 809AE6E0 3C064080 */  lui     $a2, 0x4080                ## $a2 = 40800000
/* 007C4 809AE6E4 8FA40018 */  lw      $a0, 0x0018($sp)
/* 007C8 809AE6E8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 007CC 809AE6EC 240E0007 */  addiu   $t6, $zero, 0x0007         ## $t6 = 00000007
/* 007D0 809AE6F0 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 007D4 809AE6F4 3C05809B */  lui     $a1, %hi(func_809AEB14)    ## $a1 = 809B0000
/* 007D8 809AE6F8 24A5EB14 */  addiu   $a1, $a1, %lo(func_809AEB14) ## $a1 = 809AEB14
/* 007DC 809AE6FC AC8E01A8 */  sw      $t6, 0x01A8($a0)           ## 000001A8
/* 007E0 809AE700 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 007E4 809AE704 0C26B7C8 */  jal     func_809ADF20
/* 007E8 809AE708 A48F0032 */  sh      $t7, 0x0032($a0)           ## 00000032
/* 007EC 809AE70C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 007F0 809AE710 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007F4 809AE714 03E00008 */  jr      $ra
/* 007F8 809AE718 00000000 */  nop
