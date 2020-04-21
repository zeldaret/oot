glabel func_809CFF10
/* 01830 809CFF10 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01834 809CFF14 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01838 809CFF18 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0183C 809CFF1C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01840 809CFF20 24A52250 */  addiu   $a1, $a1, 0x2250           ## $a1 = 06002250
/* 01844 809CFF24 AFA70018 */  sw      $a3, 0x0018($sp)
/* 01848 809CFF28 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0184C 809CFF2C 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 01850 809CFF30 3C06BF80 */  lui     $a2, 0xBF80                ## $a2 = BF800000
/* 01854 809CFF34 8FA40018 */  lw      $a0, 0x0018($sp)
/* 01858 809CFF38 3C014130 */  lui     $at, 0x4130                ## $at = 41300000
/* 0185C 809CFF3C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01860 809CFF40 44813000 */  mtc1    $at, $f6                   ## $f6 = 11.00
/* 01864 809CFF44 240E0006 */  addiu   $t6, $zero, 0x0006         ## $t6 = 00000006
/* 01868 809CFF48 240F03E8 */  addiu   $t7, $zero, 0x03E8         ## $t7 = 000003E8
/* 0186C 809CFF4C 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 01870 809CFF50 24053976 */  addiu   $a1, $zero, 0x3976         ## $a1 = 00003976
/* 01874 809CFF54 A08E0220 */  sb      $t6, 0x0220($a0)           ## 00000220
/* 01878 809CFF58 A48F0222 */  sh      $t7, 0x0222($a0)           ## 00000222
/* 0187C 809CFF5C A0980221 */  sb      $t8, 0x0221($a0)           ## 00000221
/* 01880 809CFF60 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 01884 809CFF64 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01888 809CFF68 E4860060 */  swc1    $f6, 0x0060($a0)           ## 00000060
/* 0188C 809CFF6C 8FA40018 */  lw      $a0, 0x0018($sp)
/* 01890 809CFF70 3C05809D */  lui     $a1, %hi(func_809CFF98)    ## $a1 = 809D0000
/* 01894 809CFF74 24A5FF98 */  addiu   $a1, $a1, %lo(func_809CFF98) ## $a1 = 809CFF98
/* 01898 809CFF78 94990088 */  lhu     $t9, 0x0088($a0)           ## 00000088
/* 0189C 809CFF7C 3328FFFE */  andi    $t0, $t9, 0xFFFE           ## $t0 = 00000000
/* 018A0 809CFF80 0C2739B8 */  jal     func_809CE6E0
/* 018A4 809CFF84 A4880088 */  sh      $t0, 0x0088($a0)           ## 00000088
/* 018A8 809CFF88 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 018AC 809CFF8C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 018B0 809CFF90 03E00008 */  jr      $ra
/* 018B4 809CFF94 00000000 */  nop
