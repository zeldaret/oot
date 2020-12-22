glabel func_809AE664
/* 00744 809AE664 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00748 809AE668 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0074C 809AE66C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00750 809AE670 3C050600 */  lui     $a1, %hi(D_06000238)                ## $a1 = 06000000
/* 00754 809AE674 24A50238 */  addiu   $a1, $a1, %lo(D_06000238)           ## $a1 = 06000238
/* 00758 809AE678 AFA70018 */  sw      $a3, 0x0018($sp)
/* 0075C 809AE67C 24840164 */  addiu   $a0, $a0, 0x0164           ## $a0 = 00000164
/* 00760 809AE680 0C0294E1 */  jal     SkelAnime_ChangeAnimPlaybackRepeat
/* 00764 809AE684 3C064080 */  lui     $a2, 0x4080                ## $a2 = 40800000
/* 00768 809AE688 8FA40018 */  lw      $a0, 0x0018($sp)
/* 0076C 809AE68C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00770 809AE690 240E0007 */  addiu   $t6, $zero, 0x0007         ## $t6 = 00000007
/* 00774 809AE694 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00778 809AE698 3C05809B */  lui     $a1, %hi(func_809AEC1C)    ## $a1 = 809B0000
/* 0077C 809AE69C 24A5EC1C */  addiu   $a1, $a1, %lo(func_809AEC1C) ## $a1 = 809AEC1C
/* 00780 809AE6A0 AC8E01A8 */  sw      $t6, 0x01A8($a0)           ## 000001A8
/* 00784 809AE6A4 A48F0258 */  sh      $t7, 0x0258($a0)           ## 00000258
/* 00788 809AE6A8 0C26B7C8 */  jal     func_809ADF20
/* 0078C 809AE6AC E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 00790 809AE6B0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00794 809AE6B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00798 809AE6B8 03E00008 */  jr      $ra
/* 0079C 809AE6BC 00000000 */  nop
