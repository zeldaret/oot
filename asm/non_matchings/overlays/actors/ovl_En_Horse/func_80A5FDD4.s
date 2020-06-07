.late_rodata
glabel D_80A668F4
    .float 0.2

.text
glabel func_80A5FDD4
/* 04AE4 80A5FDD4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 04AE8 80A5FDD8 AFBF002C */  sw      $ra, 0x002C($sp)
/* 04AEC 80A5FDDC AFB00028 */  sw      $s0, 0x0028($sp)
/* 04AF0 80A5FDE0 C4800068 */  lwc1    $f0, 0x0068($a0)           ## 00000068
/* 04AF4 80A5FDE4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 04AF8 80A5FDE8 8C8E01F0 */  lw      $t6, 0x01F0($a0)           ## 000001F0
/* 04AFC 80A5FDEC 2401EFFF */  addiu   $at, $zero, 0xEFFF         ## $at = FFFFEFFF
/* 04B00 80A5FDF0 46002032 */  c.eq.s  $f4, $f0
/* 04B04 80A5FDF4 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 04B08 80A5FDF8 01C17824 */  and     $t7, $t6, $at
/* 04B0C 80A5FDFC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04B10 80A5FE00 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 04B14 80A5FE04 AC85014C */  sw      $a1, 0x014C($a0)           ## 0000014C
/* 04B18 80A5FE08 45000009 */  bc1f    .L80A5FE30
/* 04B1C 80A5FE0C AC8F01F0 */  sw      $t7, 0x01F0($a0)           ## 000001F0
/* 04B20 80A5FE10 8C980210 */  lw      $t8, 0x0210($a0)           ## 00000210
/* 04B24 80A5FE14 24040005 */  addiu   $a0, $zero, 0x0005         ## $a0 = 00000005
/* 04B28 80A5FE18 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 04B2C 80A5FE1C 13000002 */  beq     $t8, $zero, .L80A5FE28
/* 04B30 80A5FE20 00000000 */  nop
/* 04B34 80A5FE24 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L80A5FE28:
/* 04B38 80A5FE28 10000023 */  beq     $zero, $zero, .L80A5FEB8
/* 04B3C 80A5FE2C AE000210 */  sw      $zero, 0x0210($s0)         ## 00000210
.L80A5FE30:
/* 04B40 80A5FE30 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 04B44 80A5FE34 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 04B48 80A5FE38 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 04B4C 80A5FE3C 24040005 */  addiu   $a0, $zero, 0x0005         ## $a0 = 00000005
/* 04B50 80A5FE40 4606003E */  c.le.s  $f0, $f6
/* 04B54 80A5FE44 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 04B58 80A5FE48 45020008 */  bc1fl   .L80A5FE6C
/* 04B5C 80A5FE4C 44814000 */  mtc1    $at, $f8                   ## $f8 = 6.00
/* 04B60 80A5FE50 8E190210 */  lw      $t9, 0x0210($s0)           ## 00000210
/* 04B64 80A5FE54 10B90002 */  beq     $a1, $t9, .L80A5FE60
/* 04B68 80A5FE58 00000000 */  nop
/* 04B6C 80A5FE5C 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L80A5FE60:
/* 04B70 80A5FE60 10000015 */  beq     $zero, $zero, .L80A5FEB8
/* 04B74 80A5FE64 AE050210 */  sw      $a1, 0x0210($s0)           ## 00000210
/* 04B78 80A5FE68 44814000 */  mtc1    $at, $f8                   ## $f8 = 6.00
.L80A5FE6C:
/* 04B7C 80A5FE6C 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 04B80 80A5FE70 24040005 */  addiu   $a0, $zero, 0x0005         ## $a0 = 00000005
/* 04B84 80A5FE74 4608003E */  c.le.s  $f0, $f8
/* 04B88 80A5FE78 00000000 */  nop
/* 04B8C 80A5FE7C 45020009 */  bc1fl   .L80A5FEA4
/* 04B90 80A5FE80 8E090210 */  lw      $t1, 0x0210($s0)           ## 00000210
/* 04B94 80A5FE84 8E080210 */  lw      $t0, 0x0210($s0)           ## 00000210
/* 04B98 80A5FE88 24040005 */  addiu   $a0, $zero, 0x0005         ## $a0 = 00000005
/* 04B9C 80A5FE8C 10880002 */  beq     $a0, $t0, .L80A5FE98
/* 04BA0 80A5FE90 00000000 */  nop
/* 04BA4 80A5FE94 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L80A5FE98:
/* 04BA8 80A5FE98 10000007 */  beq     $zero, $zero, .L80A5FEB8
/* 04BAC 80A5FE9C AE040210 */  sw      $a0, 0x0210($s0)           ## 00000210
/* 04BB0 80A5FEA0 8E090210 */  lw      $t1, 0x0210($s0)           ## 00000210
.L80A5FEA4:
/* 04BB4 80A5FEA4 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 04BB8 80A5FEA8 50C90003 */  beql    $a2, $t1, .L80A5FEB8
/* 04BBC 80A5FEAC AE060210 */  sw      $a2, 0x0210($s0)           ## 00000210
/* 04BC0 80A5FEB0 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 04BC4 80A5FEB4 AE060210 */  sw      $a2, 0x0210($s0)           ## 00000210
.L80A5FEB8:
/* 04BC8 80A5FEB8 8E020210 */  lw      $v0, 0x0210($s0)           ## 00000210
/* 04BCC 80A5FEBC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 04BD0 80A5FEC0 14A20007 */  bne     $a1, $v0, .L80A5FEE0
/* 04BD4 80A5FEC4 00000000 */  nop
/* 04BD8 80A5FEC8 C60A0068 */  lwc1    $f10, 0x0068($s0)          ## 00000068
/* 04BDC 80A5FECC 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 04BE0 80A5FED0 00000000 */  nop
/* 04BE4 80A5FED4 46105482 */  mul.s   $f18, $f10, $f16
/* 04BE8 80A5FED8 1000002D */  beq     $zero, $zero, .L80A5FF90
/* 04BEC 80A5FEDC E7B20030 */  swc1    $f18, 0x0030($sp)
.L80A5FEE0:
/* 04BF0 80A5FEE0 14820013 */  bne     $a0, $v0, .L80A5FF30
/* 04BF4 80A5FEE4 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 04BF8 80A5FEE8 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 04BFC 80A5FEEC 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.25
/* 04C00 80A5FEF0 C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 04C04 80A5FEF4 3C0A8013 */  lui     $t2, %hi(D_801333E8)
/* 04C08 80A5FEF8 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 04C0C 80A5FEFC 46062202 */  mul.s   $f8, $f4, $f6
/* 04C10 80A5FF00 254A33E8 */  addiu   $t2, %lo(D_801333E8)
/* 04C14 80A5FF04 AFAA0014 */  sw      $t2, 0x0014($sp)
/* 04C18 80A5FF08 AFA70010 */  sw      $a3, 0x0010($sp)
/* 04C1C 80A5FF0C AFA30034 */  sw      $v1, 0x0034($sp)
/* 04C20 80A5FF10 24042804 */  addiu   $a0, $zero, 0x2804         ## $a0 = 00002804
/* 04C24 80A5FF14 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 04C28 80A5FF18 E7A80030 */  swc1    $f8, 0x0030($sp)
/* 04C2C 80A5FF1C 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 04C30 80A5FF20 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 04C34 80A5FF24 8FA30034 */  lw      $v1, 0x0034($sp)
/* 04C38 80A5FF28 10000019 */  beq     $zero, $zero, .L80A5FF90
/* 04C3C 80A5FF2C 8E020210 */  lw      $v0, 0x0210($s0)           ## 00000210
.L80A5FF30:
/* 04C40 80A5FF30 14C20014 */  bne     $a2, $v0, .L80A5FF84
/* 04C44 80A5FF34 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 04C48 80A5FF38 3C0180A6 */  lui     $at, %hi(D_80A668F4)       ## $at = 80A60000
/* 04C4C 80A5FF3C C43068F4 */  lwc1    $f16, %lo(D_80A668F4)($at)
/* 04C50 80A5FF40 C60A0068 */  lwc1    $f10, 0x0068($s0)          ## 00000068
/* 04C54 80A5FF44 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 04C58 80A5FF48 3C0B8013 */  lui     $t3, %hi(D_801333E8)
/* 04C5C 80A5FF4C 46105482 */  mul.s   $f18, $f10, $f16
/* 04C60 80A5FF50 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 04C64 80A5FF54 256B33E8 */  addiu   $t3, %lo(D_801333E8)
/* 04C68 80A5FF58 AFAB0014 */  sw      $t3, 0x0014($sp)
/* 04C6C 80A5FF5C AFA70010 */  sw      $a3, 0x0010($sp)
/* 04C70 80A5FF60 AFA30034 */  sw      $v1, 0x0034($sp)
/* 04C74 80A5FF64 24042804 */  addiu   $a0, $zero, 0x2804         ## $a0 = 00002804
/* 04C78 80A5FF68 E7B20030 */  swc1    $f18, 0x0030($sp)
/* 04C7C 80A5FF6C 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 04C80 80A5FF70 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 04C84 80A5FF74 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 04C88 80A5FF78 8FA30034 */  lw      $v1, 0x0034($sp)
/* 04C8C 80A5FF7C 10000004 */  beq     $zero, $zero, .L80A5FF90
/* 04C90 80A5FF80 8E020210 */  lw      $v0, 0x0210($s0)           ## 00000210
.L80A5FF84:
/* 04C94 80A5FF84 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.00
/* 04C98 80A5FF88 00000000 */  nop
/* 04C9C 80A5FF8C E7A40030 */  swc1    $f4, 0x0030($sp)
.L80A5FF90:
/* 04CA0 80A5FF90 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 04CA4 80A5FF94 5461002B */  bnel    $v1, $at, .L80A60044
/* 04CA8 80A5FF98 8E0C0158 */  lw      $t4, 0x0158($s0)           ## 00000158
/* 04CAC 80A5FF9C 8E0C0158 */  lw      $t4, 0x0158($s0)           ## 00000158
/* 04CB0 80A5FFA0 3C0E80A6 */  lui     $t6, %hi(D_80A65E58)       ## $t6 = 80A60000
/* 04CB4 80A5FFA4 00027880 */  sll     $t7, $v0,  2
/* 04CB8 80A5FFA8 000C6880 */  sll     $t5, $t4,  2
/* 04CBC 80A5FFAC 01CD7021 */  addu    $t6, $t6, $t5
/* 04CC0 80A5FFB0 8DCE5E58 */  lw      $t6, %lo(D_80A65E58)($t6)
/* 04CC4 80A5FFB4 01CFC021 */  addu    $t8, $t6, $t7
/* 04CC8 80A5FFB8 0C028800 */  jal     SkelAnime_GetFrameCount

/* 04CCC 80A5FFBC 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 04CD0 80A5FFC0 8E030210 */  lw      $v1, 0x0210($s0)           ## 00000210
/* 04CD4 80A5FFC4 3C0180A6 */  lui     $at, %hi(D_80A65E60)       ## $at = 80A60000
/* 04CD8 80A5FFC8 C7A80030 */  lwc1    $f8, 0x0030($sp)
/* 04CDC 80A5FFCC 00031880 */  sll     $v1, $v1,  2
/* 04CE0 80A5FFD0 00230821 */  addu    $at, $at, $v1
/* 04CE4 80A5FFD4 C4265E60 */  lwc1    $f6, %lo(D_80A65E60)($at)
/* 04CE8 80A5FFD8 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 04CEC 80A5FFDC 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.50
/* 04CF0 80A5FFE0 46083282 */  mul.s   $f10, $f6, $f8
/* 04CF4 80A5FFE4 8E190158 */  lw      $t9, 0x0158($s0)           ## 00000158
/* 04CF8 80A5FFE8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 04CFC 80A5FFEC 3C0980A6 */  lui     $t1, %hi(D_80A65E58)       ## $t1 = 80A60000
/* 04D00 80A5FFF0 00194080 */  sll     $t0, $t9,  2
/* 04D04 80A5FFF4 01284821 */  addu    $t1, $t1, $t0
/* 04D08 80A5FFF8 8D295E58 */  lw      $t1, %lo(D_80A65E58)($t1)
/* 04D0C 80A5FFFC 46105482 */  mul.s   $f18, $f10, $f16
/* 04D10 80A60000 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 04D14 80A60004 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 04D18 80A60008 01235021 */  addu    $t2, $t1, $v1
/* 04D1C 80A6000C 44814000 */  mtc1    $at, $f8                   ## $f8 = -3.00
/* 04D20 80A60010 8D450000 */  lw      $a1, 0x0000($t2)           ## 00000000
/* 04D24 80A60014 468021A0 */  cvt.s.w $f6, $f4
/* 04D28 80A60018 44069000 */  mfc1    $a2, $f18
/* 04D2C 80A6001C 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 04D30 80A60020 44070000 */  mfc1    $a3, $f0
/* 04D34 80A60024 AFAB0014 */  sw      $t3, 0x0014($sp)
/* 04D38 80A60028 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 04D3C 80A6002C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 04D40 80A60030 0C029468 */  jal     SkelAnime_ChangeAnim

/* 04D44 80A60034 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 04D48 80A60038 10000027 */  beq     $zero, $zero, .L80A600D8
/* 04D4C 80A6003C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 04D50 80A60040 8E0C0158 */  lw      $t4, 0x0158($s0)           ## 00000158
.L80A60044:
/* 04D54 80A60044 3C0E80A6 */  lui     $t6, %hi(D_80A65E58)       ## $t6 = 80A60000
/* 04D58 80A60048 00027880 */  sll     $t7, $v0,  2
/* 04D5C 80A6004C 000C6880 */  sll     $t5, $t4,  2
/* 04D60 80A60050 01CD7021 */  addu    $t6, $t6, $t5
/* 04D64 80A60054 8DCE5E58 */  lw      $t6, %lo(D_80A65E58)($t6)
/* 04D68 80A60058 01CFC021 */  addu    $t8, $t6, $t7
/* 04D6C 80A6005C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 04D70 80A60060 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 04D74 80A60064 8E030210 */  lw      $v1, 0x0210($s0)           ## 00000210
/* 04D78 80A60068 3C0180A6 */  lui     $at, %hi(D_80A65E60)       ## $at = 80A60000
/* 04D7C 80A6006C C7B00030 */  lwc1    $f16, 0x0030($sp)
/* 04D80 80A60070 00031880 */  sll     $v1, $v1,  2
/* 04D84 80A60074 00230821 */  addu    $at, $at, $v1
/* 04D88 80A60078 C42A5E60 */  lwc1    $f10, %lo(D_80A65E60)($at)
/* 04D8C 80A6007C 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 04D90 80A60080 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.50
/* 04D94 80A60084 46105482 */  mul.s   $f18, $f10, $f16
/* 04D98 80A60088 8E190158 */  lw      $t9, 0x0158($s0)           ## 00000158
/* 04D9C 80A6008C 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 04DA0 80A60090 3C0980A6 */  lui     $t1, %hi(D_80A65E58)       ## $t1 = 80A60000
/* 04DA4 80A60094 00194080 */  sll     $t0, $t9,  2
/* 04DA8 80A60098 01284821 */  addu    $t1, $t1, $t0
/* 04DAC 80A6009C 8D295E58 */  lw      $t1, %lo(D_80A65E58)($t1)
/* 04DB0 80A600A0 46049182 */  mul.s   $f6, $f18, $f4
/* 04DB4 80A600A4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 04DB8 80A600A8 01235021 */  addu    $t2, $t1, $v1
/* 04DBC 80A600AC 8D450000 */  lw      $a1, 0x0000($t2)           ## 00000000
/* 04DC0 80A600B0 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 04DC4 80A600B4 44070000 */  mfc1    $a3, $f0
/* 04DC8 80A600B8 468042A0 */  cvt.s.w $f10, $f8
/* 04DCC 80A600BC 44063000 */  mfc1    $a2, $f6
/* 04DD0 80A600C0 AFAB0014 */  sw      $t3, 0x0014($sp)
/* 04DD4 80A600C4 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 04DD8 80A600C8 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 04DDC 80A600CC 0C029468 */  jal     SkelAnime_ChangeAnim

/* 04DE0 80A600D0 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 04DE4 80A600D4 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A600D8:
/* 04DE8 80A600D8 8FB00028 */  lw      $s0, 0x0028($sp)
/* 04DEC 80A600DC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 04DF0 80A600E0 03E00008 */  jr      $ra
/* 04DF4 80A600E4 00000000 */  nop
