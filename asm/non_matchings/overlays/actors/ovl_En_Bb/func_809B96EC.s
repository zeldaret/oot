glabel func_809B96EC
/* 0140C 809B96EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01410 809B96F0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01414 809B96F4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01418 809B96F8 3C050600 */  lui     $a1, %hi(D_06000444)                ## $a1 = 06000000
/* 0141C 809B96FC 24A50444 */  addiu   $a1, $a1, %lo(D_06000444)           ## $a1 = 06000444
/* 01420 809B9700 AFA60018 */  sw      $a2, 0x0018($sp)
/* 01424 809B9704 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 01428 809B9708 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0142C 809B970C 8FA40018 */  lw      $a0, 0x0018($sp)
/* 01430 809B9710 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 01434 809B9714 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
/* 01438 809B9718 94980088 */  lhu     $t8, 0x0088($a0)           ## 00000088
/* 0143C 809B971C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01440 809B9720 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 01444 809B9724 44813000 */  mtc1    $at, $f6                   ## $f6 = -2.00
/* 01448 809B9728 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 0144C 809B972C 240F00C8 */  addiu   $t7, $zero, 0x00C8         ## $t7 = 000000C8
/* 01450 809B9730 3319FFFE */  andi    $t9, $t8, 0xFFFE           ## $t9 = 00000000
/* 01454 809B9734 240538CD */  addiu   $a1, $zero, 0x38CD         ## $a1 = 000038CD
/* 01458 809B9738 AC8E0250 */  sw      $t6, 0x0250($a0)           ## 00000250
/* 0145C 809B973C AC8F0260 */  sw      $t7, 0x0260($a0)           ## 00000260
/* 01460 809B9740 A0800114 */  sb      $zero, 0x0114($a0)         ## 00000114
/* 01464 809B9744 A4990088 */  sh      $t9, 0x0088($a0)           ## 00000088
/* 01468 809B9748 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 0146C 809B974C E480028C */  swc1    $f0, 0x028C($a0)           ## 0000028C
/* 01470 809B9750 E4800288 */  swc1    $f0, 0x0288($a0)           ## 00000288
/* 01474 809B9754 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01478 809B9758 E486006C */  swc1    $f6, 0x006C($a0)           ## 0000006C
/* 0147C 809B975C 3C05809C */  lui     $a1, %hi(func_809B977C)    ## $a1 = 809C0000
/* 01480 809B9760 8FA40018 */  lw      $a0, 0x0018($sp)
/* 01484 809B9764 0C26E0B8 */  jal     func_809B82E0
/* 01488 809B9768 24A5977C */  addiu   $a1, $a1, %lo(func_809B977C) ## $a1 = 809B977C
/* 0148C 809B976C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01490 809B9770 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01494 809B9774 03E00008 */  jr      $ra
/* 01498 809B9778 00000000 */  nop
