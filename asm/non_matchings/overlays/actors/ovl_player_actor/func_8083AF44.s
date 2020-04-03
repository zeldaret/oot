glabel func_8083AF44
/* 08D34 8083AF44 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 08D38 8083AF48 AFA60038 */  sw      $a2, 0x0038($sp)
/* 08D3C 8083AF4C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 08D40 8083AF50 AFB00020 */  sw      $s0, 0x0020($sp)
/* 08D44 8083AF54 3C068085 */  lui     $a2, %hi(func_808507F4)    ## $a2 = 80850000
/* 08D48 8083AF58 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 08D4C 8083AF5C AFA50034 */  sw      $a1, 0x0034($sp)
/* 08D50 8083AF60 24C607F4 */  addiu   $a2, $a2, %lo(func_808507F4) ## $a2 = 808507F4
/* 08D54 8083AF64 0C20D779 */  jal     func_80835DE4
/* 08D58 8083AF68 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 08D5C 8083AF6C 8FA30038 */  lw      $v1, 0x0038($sp)
/* 08D60 8083AF70 8FAF0034 */  lw      $t7, 0x0034($sp)
/* 08D64 8083AF74 3C188085 */  lui     $t8, %hi(D_80854390)       ## $t8 = 80850000
/* 08D68 8083AF78 27184390 */  addiu   $t8, $t8, %lo(D_80854390)  ## $t8 = 80854390
/* 08D6C 8083AF7C 246EFFFD */  addiu   $t6, $v1, 0xFFFD           ## $t6 = FFFFFFFD
/* 08D70 8083AF80 00781021 */  addu    $v0, $v1, $t8
/* 08D74 8083AF84 A1EE084F */  sb      $t6, 0x084F($t7)           ## 0000084F
/* 08D78 8083AF88 AFA2002C */  sw      $v0, 0x002C($sp)
/* 08D7C 8083AF8C 90450000 */  lbu     $a1, 0x0000($v0)           ## 00000000
/* 08D80 8083AF90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 08D84 8083AF94 0C021DC2 */  jal     func_80087708
/* 08D88 8083AF98 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 08D8C 8083AF9C 8FA50034 */  lw      $a1, 0x0034($sp)
/* 08D90 8083AFA0 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 08D94 8083AFA4 3C073F54 */  lui     $a3, 0x3F54                ## $a3 = 3F540000
/* 08D98 8083AFA8 34E77AE1 */  ori     $a3, $a3, 0x7AE1           ## $a3 = 3F547AE1
/* 08D9C 8083AFAC 24C62D28 */  addiu   $a2, $a2, 0x2D28           ## $a2 = 04002D28
/* 08DA0 8083AFB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 08DA4 8083AFB4 0C029037 */  jal     SkelAnime_ChangeLinkAnimPlaybackStop
/* 08DA8 8083AFB8 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 08DAC 8083AFBC 8FB9002C */  lw      $t9, 0x002C($sp)
/* 08DB0 8083AFC0 3C088085 */  lui     $t0, %hi(D_80854395)       ## $t0 = 80850000
/* 08DB4 8083AFC4 25084395 */  addiu   $t0, $t0, %lo(D_80854395)  ## $t0 = 80854395
/* 08DB8 8083AFC8 1728000A */  bne     $t9, $t0, .L8083AFF4
/* 08DBC 8083AFCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 08DC0 8083AFD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 08DC4 8083AFD4 2405044C */  addiu   $a1, $zero, 0x044C         ## $a1 = 0000044C
/* 08DC8 8083AFD8 2406FF9B */  addiu   $a2, $zero, 0xFF9B         ## $a2 = FFFFFF9B
/* 08DCC 8083AFDC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 08DD0 8083AFE0 0C02003E */  jal     func_800800F8
/* 08DD4 8083AFE4 AFA00010 */  sw      $zero, 0x0010($sp)
/* 08DD8 8083AFE8 8FA90034 */  lw      $t1, 0x0034($sp)
/* 08DDC 8083AFEC 10000003 */  beq     $zero, $zero, .L8083AFFC
/* 08DE0 8083AFF0 A522046C */  sh      $v0, 0x046C($t1)           ## 0000046C
.L8083AFF4:
/* 08DE4 8083AFF4 0C20D7A9 */  jal     func_80835EA4
/* 08DE8 8083AFF8 2405000A */  addiu   $a1, $zero, 0x000A         ## $a1 = 0000000A
.L8083AFFC:
/* 08DEC 8083AFFC 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 08DF0 8083B000 8FB00020 */  lw      $s0, 0x0020($sp)
/* 08DF4 8083B004 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 08DF8 8083B008 03E00008 */  jr      $ra
/* 08DFC 8083B00C 00000000 */  nop


