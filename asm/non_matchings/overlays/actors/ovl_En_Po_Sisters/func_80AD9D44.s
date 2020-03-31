glabel func_80AD9D44
/* 00DB4 80AD9D44 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00DB8 80AD9D48 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00DBC 80AD9D4C AFB00028 */  sw      $s0, 0x0028($sp)
/* 00DC0 80AD9D50 908E0194 */  lbu     $t6, 0x0194($a0)           ## 00000194
/* 00DC4 80AD9D54 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00DC8 80AD9D58 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00DCC 80AD9D5C 15C10009 */  bne     $t6, $at, .L80AD9D84
/* 00DD0 80AD9D60 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00DD4 80AD9D64 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00DD8 80AD9D68 0C02947A */  jal     SkelAnime_ChangeAnimationDefaultStop
/* 00DDC 80AD9D6C 24A5119C */  addiu   $a1, $a1, 0x119C           ## $a1 = 0600119C
/* 00DE0 80AD9D70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DE4 80AD9D74 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00DE8 80AD9D78 24053873 */  addiu   $a1, $zero, 0x3873         ## $a1 = 00003873
/* 00DEC 80AD9D7C 10000011 */  beq     $zero, $zero, .L80AD9DC4
/* 00DF0 80AD9D80 00000000 */  nop
.L80AD9D84:
/* 00DF4 80AD9D84 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00DF8 80AD9D88 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00DFC 80AD9D8C 2484119C */  addiu   $a0, $a0, 0x119C           ## $a0 = 0600119C
/* 00E00 80AD9D90 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00E04 80AD9D94 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00E08 80AD9D98 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00E0C 80AD9D9C 468021A0 */  cvt.s.w $f6, $f4
/* 00E10 80AD9DA0 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 00E14 80AD9DA4 44070000 */  mfc1    $a3, $f0
/* 00E18 80AD9DA8 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 00E1C 80AD9DAC 24A5119C */  addiu   $a1, $a1, 0x119C           ## $a1 = 0600119C
/* 00E20 80AD9DB0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00E24 80AD9DB4 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00E28 80AD9DB8 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00E2C 80AD9DBC 0C029468 */  jal     SkelAnime_ChangeAnimation

/* 00E30 80AD9DC0 E7A00018 */  swc1    $f0, 0x0018($sp)
.L80AD9DC4:
/* 00E34 80AD9DC4 3C1980AE */  lui     $t9, %hi(func_80ADB9F0)    ## $t9 = 80AE0000
/* 00E38 80AD9DC8 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 00E3C 80AD9DCC 2739B9F0 */  addiu   $t9, $t9, %lo(func_80ADB9F0) ## $t9 = 80ADB9F0
/* 00E40 80AD9DD0 A2000231 */  sb      $zero, 0x0231($s0)         ## 00000231
/* 00E44 80AD9DD4 A2180199 */  sb      $t8, 0x0199($s0)           ## 00000199
/* 00E48 80AD9DD8 AE190190 */  sw      $t9, 0x0190($s0)           ## 00000190
/* 00E4C 80AD9DDC 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00E50 80AD9DE0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00E54 80AD9DE4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00E58 80AD9DE8 03E00008 */  jr      $ra
/* 00E5C 80AD9DEC 00000000 */  nop


