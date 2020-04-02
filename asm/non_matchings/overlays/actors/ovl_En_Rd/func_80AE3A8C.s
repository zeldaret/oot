glabel func_80AE3A8C
/* 0168C 80AE3A8C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01690 80AE3A90 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01694 80AE3A94 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01698 80AE3A98 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0169C 80AE3A9C 24A574F0 */  addiu   $a1, $a1, 0x74F0           ## $a1 = 060074F0
/* 016A0 80AE3AA0 AFA70018 */  sw      $a3, 0x0018($sp)
/* 016A4 80AE3AA4 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 016A8 80AE3AA8 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 016AC 80AE3AAC 3C06C0C0 */  lui     $a2, 0xC0C0                ## $a2 = C0C00000
/* 016B0 80AE3AB0 8FA70018 */  lw      $a3, 0x0018($sp)
/* 016B4 80AE3AB4 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 016B8 80AE3AB8 94EE0088 */  lhu     $t6, 0x0088($a3)           ## 00000088
/* 016BC 80AE3ABC 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 016C0 80AE3AC0 51E00005 */  beql    $t7, $zero, .L80AE3AD8
/* 016C4 80AE3AC4 8CF80004 */  lw      $t8, 0x0004($a3)           ## 00000004
/* 016C8 80AE3AC8 44812000 */  mtc1    $at, $f4                   ## $f4 = -2.00
/* 016CC 80AE3ACC 00000000 */  nop
/* 016D0 80AE3AD0 E4E40068 */  swc1    $f4, 0x0068($a3)           ## 00000068
/* 016D4 80AE3AD4 8CF80004 */  lw      $t8, 0x0004($a3)           ## 00000004
.L80AE3AD8:
/* 016D8 80AE3AD8 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 016DC 80AE3ADC 240538E6 */  addiu   $a1, $zero, 0x38E6         ## $a1 = 000038E6
/* 016E0 80AE3AE0 37190001 */  ori     $t9, $t8, 0x0001           ## $t9 = 00000001
/* 016E4 80AE3AE4 ACF90004 */  sw      $t9, 0x0004($a3)           ## 00000004
/* 016E8 80AE3AE8 0C00BE0A */  jal     Audio_PlayActorSound2

/* 016EC 80AE3AEC AFA70018 */  sw      $a3, 0x0018($sp)
/* 016F0 80AE3AF0 8FA40018 */  lw      $a0, 0x0018($sp)
/* 016F4 80AE3AF4 24080009 */  addiu   $t0, $zero, 0x0009         ## $t0 = 00000009
/* 016F8 80AE3AF8 3C0580AE */  lui     $a1, %hi(func_80AE3B18)    ## $a1 = 80AE0000
/* 016FC 80AE3AFC 24A53B18 */  addiu   $a1, $a1, %lo(func_80AE3B18) ## $a1 = 80AE3B18
/* 01700 80AE3B00 0C2B8900 */  jal     func_80AE2400
/* 01704 80AE3B04 A088031B */  sb      $t0, 0x031B($a0)           ## 0000031B
/* 01708 80AE3B08 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0170C 80AE3B0C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01710 80AE3B10 03E00008 */  jr      $ra
/* 01714 80AE3B14 00000000 */  nop


