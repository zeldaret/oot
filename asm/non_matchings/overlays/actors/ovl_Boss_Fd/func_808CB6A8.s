glabel func_808CB6A8
/* 008E8 808CB6A8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 008EC 808CB6AC AFB00018 */  sw      $s0, 0x0018($sp)
/* 008F0 808CB6B0 AFA50024 */  sw      $a1, 0x0024($sp)
/* 008F4 808CB6B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 008F8 808CB6B8 AFBF001C */  sw      $ra, 0x001C($sp)
/* 008FC 808CB6BC 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00900 808CB6C0 24A515E4 */  addiu   $a1, $a1, 0x15E4           ## $a1 = 060115E4
/* 00904 808CB6C4 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 00908 808CB6C8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0090C 808CB6CC 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00910 808CB6D0 24A51524 */  addiu   $a1, $a1, 0x1524           ## $a1 = 06011524
/* 00914 808CB6D4 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 00918 808CB6D8 26040190 */  addiu   $a0, $s0, 0x0190           ## $a0 = 00000190
/* 0091C 808CB6DC 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00920 808CB6E0 24A51464 */  addiu   $a1, $a1, 0x1464           ## $a1 = 06011464
/* 00924 808CB6E4 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 00928 808CB6E8 260401D4 */  addiu   $a0, $s0, 0x01D4           ## $a0 = 000001D4
/* 0092C 808CB6EC 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 00930 808CB6F0 44812000 */  mtc1    $at, $f4                   ## $f4 = 1000.00
/* 00934 808CB6F4 3C0E808D */  lui     $t6, %hi(func_808CB718)    ## $t6 = 808D0000
/* 00938 808CB6F8 25CEB718 */  addiu   $t6, $t6, %lo(func_808CB718) ## $t6 = 808CB718
/* 0093C 808CB6FC AE0E0218 */  sw      $t6, 0x0218($s0)           ## 00000218
/* 00940 808CB700 E60402AC */  swc1    $f4, 0x02AC($s0)           ## 000002AC
/* 00944 808CB704 8FBF001C */  lw      $ra, 0x001C($sp)
/* 00948 808CB708 8FB00018 */  lw      $s0, 0x0018($sp)
/* 0094C 808CB70C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00950 808CB710 03E00008 */  jr      $ra
/* 00954 808CB714 00000000 */  nop


