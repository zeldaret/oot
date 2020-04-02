glabel func_809F89CC
/* 0077C 809F89CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00780 809F89D0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00784 809F89D4 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00788 809F89D8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0078C 809F89DC 24A54C20 */  addiu   $a1, $a1, 0x4C20           ## $a1 = 06004C20
/* 00790 809F89E0 AFA70018 */  sw      $a3, 0x0018($sp)
/* 00794 809F89E4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00798 809F89E8 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 0079C 809F89EC 3C06C080 */  lui     $a2, 0xC080                ## $a2 = C0800000
/* 007A0 809F89F0 8FA70018 */  lw      $a3, 0x0018($sp)
/* 007A4 809F89F4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 007A8 809F89F8 2404001E */  addiu   $a0, $zero, 0x001E         ## $a0 = 0000001E
/* 007AC 809F89FC 24050032 */  addiu   $a1, $zero, 0x0032         ## $a1 = 00000032
/* 007B0 809F8A00 0C01DF64 */  jal     Math_Rand_S16Offset

/* 007B4 809F8A04 E4E40068 */  swc1    $f4, 0x0068($a3)           ## 00000068
/* 007B8 809F8A08 8FA40018 */  lw      $a0, 0x0018($sp)
/* 007BC 809F8A0C 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 007C0 809F8A10 3C0580A0 */  lui     $a1, %hi(func_809F8C94)    ## $a1 = 80A00000
/* 007C4 809F8A14 24A58C94 */  addiu   $a1, $a1, %lo(func_809F8C94) ## $a1 = 809F8C94
/* 007C8 809F8A18 A482030C */  sh      $v0, 0x030C($a0)           ## 0000030C
/* 007CC 809F8A1C 0C27E094 */  jal     func_809F8250
/* 007D0 809F8A20 AC8E0304 */  sw      $t6, 0x0304($a0)           ## 00000304
/* 007D4 809F8A24 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 007D8 809F8A28 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007DC 809F8A2C 03E00008 */  jr      $ra
/* 007E0 809F8A30 00000000 */  nop


