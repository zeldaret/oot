glabel func_808DC66C
/* 05DFC 808DC66C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 05E00 808DC670 AFBF001C */  sw      $ra, 0x001C($sp)
/* 05E04 808DC674 AFB00018 */  sw      $s0, 0x0018($sp)
/* 05E08 808DC678 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05E0C 808DC67C 0C235C4B */  jal     func_808D712C
/* 05E10 808DC680 2406017C */  addiu   $a2, $zero, 0x017C         ## $a2 = 0000017C
/* 05E14 808DC684 3C040601 */  lui     $a0, %hi(D_06008128)                ## $a0 = 06010000
/* 05E18 808DC688 0C028800 */  jal     SkelAnime_GetFrameCount

/* 05E1C 808DC68C 24848128 */  addiu   $a0, $a0, %lo(D_06008128)           ## $a0 = 06008128
/* 05E20 808DC690 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 05E24 808DC694 3C050601 */  lui     $a1, %hi(D_06008128)                ## $a1 = 06010000
/* 05E28 808DC698 24A58128 */  addiu   $a1, $a1, %lo(D_06008128)           ## $a1 = 06008128
/* 05E2C 808DC69C 468021A0 */  cvt.s.w $f6, $f4
/* 05E30 808DC6A0 26040150 */  addiu   $a0, $s0, 0x0150           ## $a0 = 00000150
/* 05E34 808DC6A4 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 05E38 808DC6A8 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 05E3C 808DC6AC E60601CC */  swc1    $f6, 0x01CC($s0)           ## 000001CC
/* 05E40 808DC6B0 3C048090 */  lui     $a0, %hi(D_808F93C0)       ## $a0 = 80900000
/* 05E44 808DC6B4 240E0046 */  addiu   $t6, $zero, 0x0046         ## $t6 = 00000046
/* 05E48 808DC6B8 248493C0 */  addiu   $a0, $a0, %lo(D_808F93C0)  ## $a0 = 808F93C0
/* 05E4C 808DC6BC A60E01B6 */  sh      $t6, 0x01B6($s0)           ## 000001B6
/* 05E50 808DC6C0 8C8F0000 */  lw      $t7, 0x0000($a0)           ## 808F93C0
/* 05E54 808DC6C4 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 05E58 808DC6C8 3C0B808E */  lui     $t3, %hi(func_808DC75C)    ## $t3 = 808E0000
/* 05E5C 808DC6CC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 05E60 808DC6D0 E5E816C0 */  swc1    $f8, 0x16C0($t7)           ## 000016C0
/* 05E64 808DC6D4 8C830000 */  lw      $v1, 0x0000($a0)           ## 808F93C0
/* 05E68 808DC6D8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 05E6C 808DC6DC 240A0050 */  addiu   $t2, $zero, 0x0050         ## $t2 = 00000050
/* 05E70 808DC6E0 C46A16C0 */  lwc1    $f10, 0x16C0($v1)          ## 000016C0
/* 05E74 808DC6E4 256BC75C */  addiu   $t3, $t3, %lo(func_808DC75C) ## $t3 = 808DC75C
/* 05E78 808DC6E8 240C000F */  addiu   $t4, $zero, 0x000F         ## $t4 = 0000000F
/* 05E7C 808DC6EC E46A16BC */  swc1    $f10, 0x16BC($v1)          ## 000016BC
/* 05E80 808DC6F0 3C03808E */  lui     $v1, %hi(D_808E4C58)       ## $v1 = 808E0000
/* 05E84 808DC6F4 24634C58 */  addiu   $v1, $v1, %lo(D_808E4C58)  ## $v1 = 808E4C58
.L808DC6F8:
/* 05E88 808DC6F8 0062C021 */  addu    $t8, $v1, $v0
/* 05E8C 808DC6FC 00024040 */  sll     $t0, $v0,  1
/* 05E90 808DC700 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000002
/* 05E94 808DC704 00021400 */  sll     $v0, $v0, 16
/* 05E98 808DC708 93190000 */  lbu     $t9, 0x0000($t8)           ## 00000000
/* 05E9C 808DC70C 00021403 */  sra     $v0, $v0, 16
/* 05EA0 808DC710 2841000F */  slti    $at, $v0, 0x000F
/* 05EA4 808DC714 02084821 */  addu    $t1, $s0, $t0
/* 05EA8 808DC718 1420FFF7 */  bne     $at, $zero, .L808DC6F8
/* 05EAC 808DC71C A53904E4 */  sh      $t9, 0x04E4($t1)           ## 000004E4
/* 05EB0 808DC720 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 05EB4 808DC724 44818000 */  mtc1    $at, $f16                  ## $f16 = 6.00
/* 05EB8 808DC728 A60A02E6 */  sh      $t2, 0x02E6($s0)           ## 000002E6
/* 05EBC 808DC72C A60002E8 */  sh      $zero, 0x02E8($s0)         ## 000002E8
/* 05EC0 808DC730 AE0B0194 */  sw      $t3, 0x0194($s0)           ## 00000194
/* 05EC4 808DC734 E6000064 */  swc1    $f0, 0x0064($s0)           ## 00000064
/* 05EC8 808DC738 E600005C */  swc1    $f0, 0x005C($s0)           ## 0000005C
/* 05ECC 808DC73C A60001C2 */  sh      $zero, 0x01C2($s0)         ## 000001C2
/* 05ED0 808DC740 A60C01A6 */  sh      $t4, 0x01A6($s0)           ## 000001A6
/* 05ED4 808DC744 E6100508 */  swc1    $f16, 0x0508($s0)          ## 00000508
/* 05ED8 808DC748 8FBF001C */  lw      $ra, 0x001C($sp)
/* 05EDC 808DC74C 8FB00018 */  lw      $s0, 0x0018($sp)
/* 05EE0 808DC750 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 05EE4 808DC754 03E00008 */  jr      $ra
/* 05EE8 808DC758 00000000 */  nop
