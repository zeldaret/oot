glabel EnBigokuta_Update
/* 01D6C 809BE9CC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01D70 809BE9D0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 01D74 809BE9D4 AFB40024 */  sw      $s4, 0x0024($sp)
/* 01D78 809BE9D8 AFB2001C */  sw      $s2, 0x001C($sp)
/* 01D7C 809BE9DC 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 01D80 809BE9E0 0080A025 */  or      $s4, $a0, $zero            ## $s4 = 00000000
/* 01D84 809BE9E4 AFB50028 */  sw      $s5, 0x0028($sp)
/* 01D88 809BE9E8 AFB30020 */  sw      $s3, 0x0020($sp)
/* 01D8C 809BE9EC AFB10018 */  sw      $s1, 0x0018($sp)
/* 01D90 809BE9F0 0C26F9E6 */  jal     func_809BE798
/* 01D94 809BE9F4 AFB00014 */  sw      $s0, 0x0014($sp)
/* 01D98 809BE9F8 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01D9C 809BE9FC 0C26FA37 */  jal     func_809BE8DC
/* 01DA0 809BEA00 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 01DA4 809BEA04 8E990190 */  lw      $t9, 0x0190($s4)           ## 00000190
/* 01DA8 809BEA08 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01DAC 809BEA0C 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 01DB0 809BEA10 0320F809 */  jalr    $ra, $t9
/* 01DB4 809BEA14 00000000 */  nop
/* 01DB8 809BEA18 0C26F4B9 */  jal     func_809BD2E4
/* 01DBC 809BEA1C 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01DC0 809BEA20 0C26F95A */  jal     func_809BE568
/* 01DC4 809BEA24 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01DC8 809BEA28 8E440790 */  lw      $a0, 0x0790($s2)           ## 00000790
/* 01DCC 809BEA2C 0C0169DF */  jal     Camera_ChangeSetting
/* 01DD0 809BEA30 24050034 */  addiu   $a1, $zero, 0x0034         ## $a1 = 00000034
/* 01DD4 809BEA34 8E440790 */  lw      $a0, 0x0790($s2)           ## 00000790
/* 01DD8 809BEA38 0C016B47 */  jal     func_8005AD1C
/* 01DDC 809BEA3C 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 01DE0 809BEA40 928E02FC */  lbu     $t6, 0x02FC($s4)           ## 000002FC
/* 01DE4 809BEA44 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 01DE8 809BEA48 51E00037 */  beql    $t7, $zero, .L809BEB28
/* 01DEC 809BEA4C 928D029D */  lbu     $t5, 0x029D($s4)           ## 0000029D
/* 01DF0 809BEA50 8E880190 */  lw      $t0, 0x0190($s4)           ## 00000190
/* 01DF4 809BEA54 3C18809C */  lui     $t8, %hi(func_809BE058)    ## $t8 = 809C0000
/* 01DF8 809BEA58 2718E058 */  addiu   $t8, $t8, %lo(func_809BE058) ## $t8 = 809BE058
/* 01DFC 809BEA5C 13080013 */  beq     $t8, $t0, .L809BEAAC
/* 01E00 809BEA60 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 01E04 809BEA64 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01E08 809BEA68 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01E0C 809BEA6C 02419821 */  addu    $s3, $s2, $at
/* 01E10 809BEA70 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 01E14 809BEA74 269102EC */  addiu   $s1, $s4, 0x02EC           ## $s1 = 000002EC
/* 01E18 809BEA78 24150098 */  addiu   $s5, $zero, 0x0098         ## $s5 = 00000098
.L809BEA7C:
/* 01E1C 809BEA7C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01E20 809BEA80 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 01E24 809BEA84 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 01E28 809BEA88 02203025 */  or      $a2, $s1, $zero            ## $a2 = 000002EC
/* 01E2C 809BEA8C 2610004C */  addiu   $s0, $s0, 0x004C           ## $s0 = 0000004C
/* 01E30 809BEA90 1615FFFA */  bne     $s0, $s5, .L809BEA7C
/* 01E34 809BEA94 2631004C */  addiu   $s1, $s1, 0x004C           ## $s1 = 00000338
/* 01E38 809BEA98 8E890004 */  lw      $t1, 0x0004($s4)           ## 00000004
/* 01E3C 809BEA9C 3C010100 */  lui     $at, 0x0100                ## $at = 01000000
/* 01E40 809BEAA0 01215025 */  or      $t2, $t1, $at              ## $t2 = 01000000
/* 01E44 809BEAA4 1000000D */  beq     $zero, $zero, .L809BEADC
/* 01E48 809BEAA8 AE8A0004 */  sw      $t2, 0x0004($s4)           ## 00000004
.L809BEAAC:
/* 01E4C 809BEAAC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01E50 809BEAB0 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01E54 809BEAB4 02419821 */  addu    $s3, $s2, $at
/* 01E58 809BEAB8 269102EC */  addiu   $s1, $s4, 0x02EC           ## $s1 = 000002EC
/* 01E5C 809BEABC 24150098 */  addiu   $s5, $zero, 0x0098         ## $s5 = 00000098
.L809BEAC0:
/* 01E60 809BEAC0 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01E64 809BEAC4 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 01E68 809BEAC8 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOC
/* 01E6C 809BEACC 02203025 */  or      $a2, $s1, $zero            ## $a2 = 000002EC
/* 01E70 809BEAD0 2610004C */  addiu   $s0, $s0, 0x004C           ## $s0 = 00000098
/* 01E74 809BEAD4 1615FFFA */  bne     $s0, $s5, .L809BEAC0
/* 01E78 809BEAD8 2631004C */  addiu   $s1, $s1, 0x004C           ## $s1 = 00000338
.L809BEADC:
/* 01E7C 809BEADC 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 01E80 809BEAE0 269102EC */  addiu   $s1, $s4, 0x02EC           ## $s1 = 000002EC
/* 01E84 809BEAE4 24150098 */  addiu   $s5, $zero, 0x0098         ## $s5 = 00000098
.L809BEAE8:
/* 01E88 809BEAE8 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01E8C 809BEAEC 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 01E90 809BEAF0 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01E94 809BEAF4 02203025 */  or      $a2, $s1, $zero            ## $a2 = 000002EC
/* 01E98 809BEAF8 2610004C */  addiu   $s0, $s0, 0x004C           ## $s0 = 0000004C
/* 01E9C 809BEAFC 1615FFFA */  bne     $s0, $s5, .L809BEAE8
/* 01EA0 809BEB00 2631004C */  addiu   $s1, $s1, 0x004C           ## $s1 = 00000338
/* 01EA4 809BEB04 928B029D */  lbu     $t3, 0x029D($s4)           ## 0000029D
/* 01EA8 809BEB08 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01EAC 809BEB0C 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 01EB0 809BEB10 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 01EB4 809BEB14 51800004 */  beql    $t4, $zero, .L809BEB28
/* 01EB8 809BEB18 928D029D */  lbu     $t5, 0x029D($s4)           ## 0000029D
/* 01EBC 809BEB1C 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01EC0 809BEB20 2686028C */  addiu   $a2, $s4, 0x028C           ## $a2 = 0000028C
/* 01EC4 809BEB24 928D029D */  lbu     $t5, 0x029D($s4)           ## 0000029D
.L809BEB28:
/* 01EC8 809BEB28 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01ECC 809BEB2C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01ED0 809BEB30 31B90001 */  andi    $t9, $t5, 0x0001           ## $t9 = 00000000
/* 01ED4 809BEB34 02419821 */  addu    $s3, $s2, $at
/* 01ED8 809BEB38 13200006 */  beq     $t9, $zero, .L809BEB54
/* 01EDC 809BEB3C 2686028C */  addiu   $a2, $s4, 0x028C           ## $a2 = 0000028C
/* 01EE0 809BEB40 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01EE4 809BEB44 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOC
/* 01EE8 809BEB48 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 01EEC 809BEB4C 10000005 */  beq     $zero, $zero, .L809BEB64
/* 01EF0 809BEB50 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
.L809BEB54:
/* 01EF4 809BEB54 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01EF8 809BEB58 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 01EFC 809BEB5C 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 01F00 809BEB60 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
.L809BEB64:
/* 01F04 809BEB64 44813000 */  mtc1    $at, $f6                   ## $f6 = 25.00
/* 01F08 809BEB68 C6840054 */  lwc1    $f4, 0x0054($s4)           ## 00000054
/* 01F0C 809BEB6C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01F10 809BEB70 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 01F14 809BEB74 46062202 */  mul.s   $f8, $f4, $f6
/* 01F18 809BEB78 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01F1C 809BEB7C 460A4402 */  mul.s   $f16, $f8, $f10
/* 01F20 809BEB80 44058000 */  mfc1    $a1, $f16
/* 01F24 809BEB84 0C00B56E */  jal     Actor_SetHeight

/* 01F28 809BEB88 00000000 */  nop
/* 01F2C 809BEB8C 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01F30 809BEB90 0C26F3AF */  jal     func_809BCEBC
/* 01F34 809BEB94 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 01F38 809BEB98 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01F3C 809BEB9C 8FB00014 */  lw      $s0, 0x0014($sp)
/* 01F40 809BEBA0 8FB10018 */  lw      $s1, 0x0018($sp)
/* 01F44 809BEBA4 8FB2001C */  lw      $s2, 0x001C($sp)
/* 01F48 809BEBA8 8FB30020 */  lw      $s3, 0x0020($sp)
/* 01F4C 809BEBAC 8FB40024 */  lw      $s4, 0x0024($sp)
/* 01F50 809BEBB0 8FB50028 */  lw      $s5, 0x0028($sp)
/* 01F54 809BEBB4 03E00008 */  jr      $ra
/* 01F58 809BEBB8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
