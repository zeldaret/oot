.late_rodata
glabel D_809D1614
    .float 0.6

.text
glabel func_809CF72C
/* 0104C 809CF72C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01050 809CF730 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01054 809CF734 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01058 809CF738 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0105C 809CF73C 24A521A0 */  addiu   $a1, $a1, 0x21A0           ## $a1 = 060021A0
/* 01060 809CF740 AFA70018 */  sw      $a3, 0x0018($sp)
/* 01064 809CF744 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01068 809CF748 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 0106C 809CF74C 3C06C000 */  lui     $a2, 0xC000                ## $a2 = C0000000
/* 01070 809CF750 8FA40018 */  lw      $a0, 0x0018($sp)
/* 01074 809CF754 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 01078 809CF758 3C01809D */  lui     $at, %hi(D_809D1614)       ## $at = 809D0000
/* 0107C 809CF75C A08E0220 */  sb      $t6, 0x0220($a0)           ## 00000220
/* 01080 809CF760 A0800221 */  sb      $zero, 0x0221($a0)         ## 00000221
/* 01084 809CF764 C4241614 */  lwc1    $f4, %lo(D_809D1614)($at)
/* 01088 809CF768 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 0108C 809CF76C 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 01090 809CF770 24180BB8 */  addiu   $t8, $zero, 0x0BB8         ## $t8 = 00000BB8
/* 01094 809CF774 24053975 */  addiu   $a1, $zero, 0x3975         ## $a1 = 00003975
/* 01098 809CF778 A48F0222 */  sh      $t7, 0x0222($a0)           ## 00000222
/* 0109C 809CF77C A4980224 */  sh      $t8, 0x0224($a0)           ## 00000224
/* 010A0 809CF780 E4840250 */  swc1    $f4, 0x0250($a0)           ## 00000250
/* 010A4 809CF784 0C00BE0A */  jal     Audio_PlayActorSound2

/* 010A8 809CF788 E4860068 */  swc1    $f6, 0x0068($a0)           ## 00000068
/* 010AC 809CF78C 3C05809D */  lui     $a1, %hi(func_809CF7AC)    ## $a1 = 809D0000
/* 010B0 809CF790 8FA40018 */  lw      $a0, 0x0018($sp)
/* 010B4 809CF794 0C2739B8 */  jal     func_809CE6E0
/* 010B8 809CF798 24A5F7AC */  addiu   $a1, $a1, %lo(func_809CF7AC) ## $a1 = 809CF7AC
/* 010BC 809CF79C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 010C0 809CF7A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 010C4 809CF7A4 03E00008 */  jr      $ra
/* 010C8 809CF7A8 00000000 */  nop
