glabel func_80A5CF64
/* 01C74 80A5CF64 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01C78 80A5CF68 AFBF002C */  sw      $ra, 0x002C($sp)
/* 01C7C 80A5CF6C AFB00028 */  sw      $s0, 0x0028($sp)
/* 01C80 80A5CF70 3C01420C */  lui     $at, 0x420C                ## $at = 420C0000
/* 01C84 80A5CF74 44812000 */  mtc1    $at, $f4                   ## $f4 = 35.00
/* 01C88 80A5CF78 C4800214 */  lwc1    $f0, 0x0214($a0)           ## 00000214
/* 01C8C 80A5CF7C 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 01C90 80A5CF80 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01C94 80A5CF84 4600203C */  c.lt.s  $f4, $f0
/* 01C98 80A5CF88 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 01C9C 80A5CF8C AC800210 */  sw      $zero, 0x0210($a0)         ## 00000210
/* 01CA0 80A5CF90 3C0141E0 */  lui     $at, 0x41E0                ## $at = 41E00000
/* 01CA4 80A5CF94 45020005 */  bc1fl   .L80A5CFAC
/* 01CA8 80A5CF98 44813000 */  mtc1    $at, $f6                   ## $f6 = 28.00
/* 01CAC 80A5CF9C 8C820158 */  lw      $v0, 0x0158($a0)           ## 00000158
/* 01CB0 80A5CFA0 5040000B */  beql    $v0, $zero, .L80A5CFD0
/* 01CB4 80A5CFA4 8E0301F0 */  lw      $v1, 0x01F0($s0)           ## 000001F0
/* 01CB8 80A5CFA8 44813000 */  mtc1    $at, $f6                   ## $f6 = 28.00
.L80A5CFAC:
/* 01CBC 80A5CFAC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01CC0 80A5CFB0 8E020158 */  lw      $v0, 0x0158($s0)           ## 00000158
/* 01CC4 80A5CFB4 4600303C */  c.lt.s  $f6, $f0
/* 01CC8 80A5CFB8 00000000 */  nop
/* 01CCC 80A5CFBC 45020014 */  bc1fl   .L80A5D010
/* 01CD0 80A5CFC0 C60801C4 */  lwc1    $f8, 0x01C4($s0)           ## 000001C4
/* 01CD4 80A5CFC4 54410012 */  bnel    $v0, $at, .L80A5D010
/* 01CD8 80A5CFC8 C60801C4 */  lwc1    $f8, 0x01C4($s0)           ## 000001C4
/* 01CDC 80A5CFCC 8E0301F0 */  lw      $v1, 0x01F0($s0)           ## 000001F0
.L80A5CFD0:
/* 01CE0 80A5CFD0 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 01CE4 80A5CFD4 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 01CE8 80A5CFD8 306F1000 */  andi    $t7, $v1, 0x1000           ## $t7 = 00000000
/* 01CEC 80A5CFDC 15E0000B */  bne     $t7, $zero, .L80A5D00C
/* 01CF0 80A5CFE0 34781000 */  ori     $t8, $v1, 0x1000           ## $t8 = 00001000
/* 01CF4 80A5CFE4 3C198013 */  lui     $t9, %hi(D_801333E8)
/* 01CF8 80A5CFE8 AE1801F0 */  sw      $t8, 0x01F0($s0)           ## 000001F0
/* 01CFC 80A5CFEC 273933E8 */  addiu   $t9, %lo(D_801333E8)
/* 01D00 80A5CFF0 AFB90014 */  sw      $t9, 0x0014($sp)
/* 01D04 80A5CFF4 AFA70010 */  sw      $a3, 0x0010($sp)
/* 01D08 80A5CFF8 2404282C */  addiu   $a0, $zero, 0x282C         ## $a0 = 0000282C
/* 01D0C 80A5CFFC 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 01D10 80A5D000 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 01D14 80A5D004 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01D18 80A5D008 8E020158 */  lw      $v0, 0x0158($s0)           ## 00000158
.L80A5D00C:
/* 01D1C 80A5D00C C60801C4 */  lwc1    $f8, 0x01C4($s0)           ## 000001C4
.L80A5D010:
/* 01D20 80A5D010 00024080 */  sll     $t0, $v0,  2
/* 01D24 80A5D014 3C0980A6 */  lui     $t1, %hi(D_80A65E58)       ## $t1 = 80A60000
/* 01D28 80A5D018 E7A80034 */  swc1    $f8, 0x0034($sp)
/* 01D2C 80A5D01C 8E0A0210 */  lw      $t2, 0x0210($s0)           ## 00000210
/* 01D30 80A5D020 01284821 */  addu    $t1, $t1, $t0
/* 01D34 80A5D024 8D295E58 */  lw      $t1, %lo(D_80A65E58)($t1)
/* 01D38 80A5D028 000A5880 */  sll     $t3, $t2,  2
/* 01D3C 80A5D02C 012B6021 */  addu    $t4, $t1, $t3
/* 01D40 80A5D030 0C028800 */  jal     Animation_GetLastFrame

/* 01D44 80A5D034 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 01D48 80A5D038 8E0D0158 */  lw      $t5, 0x0158($s0)           ## 00000158
/* 01D4C 80A5D03C 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 01D50 80A5D040 3C0F80A6 */  lui     $t7, %hi(D_80A65E58)       ## $t7 = 80A60000
/* 01D54 80A5D044 000D7080 */  sll     $t6, $t5,  2
/* 01D58 80A5D048 8E180210 */  lw      $t8, 0x0210($s0)           ## 00000210
/* 01D5C 80A5D04C 01EE7821 */  addu    $t7, $t7, $t6
/* 01D60 80A5D050 8DEF5E58 */  lw      $t7, %lo(D_80A65E58)($t7)
/* 01D64 80A5D054 46805420 */  cvt.s.w $f16, $f10
/* 01D68 80A5D058 0018C880 */  sll     $t9, $t8,  2
/* 01D6C 80A5D05C 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 01D70 80A5D060 01F94021 */  addu    $t0, $t7, $t9
/* 01D74 80A5D064 44819000 */  mtc1    $at, $f18                  ## $f18 = -3.00
/* 01D78 80A5D068 8D050000 */  lw      $a1, 0x0000($t0)           ## 00000000
/* 01D7C 80A5D06C 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 01D80 80A5D070 AFAA0014 */  sw      $t2, 0x0014($sp)
/* 01D84 80A5D074 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 01D88 80A5D078 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 01D8C 80A5D07C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01D90 80A5D080 8FA70034 */  lw      $a3, 0x0034($sp)
/* 01D94 80A5D084 0C029468 */  jal     Animation_Change

/* 01D98 80A5D088 E7B20018 */  swc1    $f18, 0x0018($sp)
/* 01D9C 80A5D08C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01DA0 80A5D090 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01DA4 80A5D094 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01DA8 80A5D098 03E00008 */  jr      $ra
/* 01DAC 80A5D09C 00000000 */  nop
