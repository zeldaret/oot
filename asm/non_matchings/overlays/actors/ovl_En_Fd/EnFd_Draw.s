glabel EnFd_Draw
/* 0195C 80A0D01C 27BDFF60 */  addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
/* 01960 80A0D020 3C0F80A1 */  lui     $t7, %hi(D_80A0E0D0)       ## $t7 = 80A10000
/* 01964 80A0D024 AFBF003C */  sw      $ra, 0x003C($sp)
/* 01968 80A0D028 AFB10038 */  sw      $s1, 0x0038($sp)
/* 0196C 80A0D02C AFB00034 */  sw      $s0, 0x0034($sp)
/* 01970 80A0D030 AFA500A4 */  sw      $a1, 0x00A4($sp)
/* 01974 80A0D034 25EFE0D0 */  addiu   $t7, $t7, %lo(D_80A0E0D0)  ## $t7 = 80A0E0D0
/* 01978 80A0D038 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80A0E0D0
/* 0197C 80A0D03C 27AE008C */  addiu   $t6, $sp, 0x008C           ## $t6 = FFFFFFEC
/* 01980 80A0D040 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80A0E0D4
/* 01984 80A0D044 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFEC
/* 01988 80A0D048 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80A0E0D8
/* 0198C 80A0D04C 3C0980A1 */  lui     $t1, %hi(D_80A0E0DC)       ## $t1 = 80A10000
/* 01990 80A0D050 2529E0DC */  addiu   $t1, $t1, %lo(D_80A0E0DC)  ## $t1 = 80A0E0DC
/* 01994 80A0D054 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF0
/* 01998 80A0D058 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF4
/* 0199C 80A0D05C 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80A0E0DC
/* 019A0 80A0D060 27A80080 */  addiu   $t0, $sp, 0x0080           ## $t0 = FFFFFFE0
/* 019A4 80A0D064 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80A0E0E0
/* 019A8 80A0D068 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE0
/* 019AC 80A0D06C 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80A0E0E4
/* 019B0 80A0D070 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFE4
/* 019B4 80A0D074 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 019B8 80A0D078 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFE8
/* 019BC 80A0D07C 8FAC00A4 */  lw      $t4, 0x00A4($sp)
/* 019C0 80A0D080 3C0680A1 */  lui     $a2, %hi(D_80A0E120)       ## $a2 = 80A10000
/* 019C4 80A0D084 24C6E120 */  addiu   $a2, $a2, %lo(D_80A0E120)  ## $a2 = 80A0E120
/* 019C8 80A0D088 8D8D009C */  lw      $t5, 0x009C($t4)           ## 0000009C
/* 019CC 80A0D08C 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFC4
/* 019D0 80A0D090 240706D7 */  addiu   $a3, $zero, 0x06D7         ## $a3 = 000006D7
/* 019D4 80A0D094 AFAD007C */  sw      $t5, 0x007C($sp)
/* 019D8 80A0D098 8D850000 */  lw      $a1, 0x0000($t4)           ## 00000000
/* 019DC 80A0D09C 0C031AB1 */  jal     Graph_OpenDisp
/* 019E0 80A0D0A0 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 019E4 80A0D0A4 0C034213 */  jal     Matrix_Push
/* 019E8 80A0D0A8 00000000 */  nop
/* 019EC 80A0D0AC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 019F0 80A0D0B0 0C2836D1 */  jal     func_80A0DB44
/* 019F4 80A0D0B4 8FA500A4 */  lw      $a1, 0x00A4($sp)
/* 019F8 80A0D0B8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 019FC 80A0D0BC 0C2835CC */  jal     func_80A0D730
/* 01A00 80A0D0C0 8FA500A4 */  lw      $a1, 0x00A4($sp)
/* 01A04 80A0D0C4 0C034221 */  jal     Matrix_Pull
/* 01A08 80A0D0C8 00000000 */  nop
/* 01A0C 80A0D0CC 8E2F0190 */  lw      $t7, 0x0190($s1)           ## 00000190
/* 01A10 80A0D0D0 3C0E80A1 */  lui     $t6, %hi(func_80A0C310)    ## $t6 = 80A10000
/* 01A14 80A0D0D4 25CEC310 */  addiu   $t6, $t6, %lo(func_80A0C310) ## $t6 = 80A0C310
/* 01A18 80A0D0D8 11CF00C0 */  beq     $t6, $t7, .L80A0D3DC
/* 01A1C 80A0D0DC 3C0180A1 */  lui     $at, %hi(D_80A0E1D8)       ## $at = 80A10000
/* 01A20 80A0D0E0 C62404CC */  lwc1    $f4, 0x04CC($s1)           ## 000004CC
/* 01A24 80A0D0E4 C426E1D8 */  lwc1    $f6, %lo(D_80A0E1D8)($at)
/* 01A28 80A0D0E8 8FB800A4 */  lw      $t8, 0x00A4($sp)
/* 01A2C 80A0D0EC 4606203C */  c.lt.s  $f4, $f6
/* 01A30 80A0D0F0 00000000 */  nop
/* 01A34 80A0D0F4 450300BA */  bc1tl   .L80A0D3E0
/* 01A38 80A0D0F8 8FA800A4 */  lw      $t0, 0x00A4($sp)
/* 01A3C 80A0D0FC 0C024F61 */  jal     func_80093D84
/* 01A40 80A0D100 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 01A44 80A0D104 922200AF */  lbu     $v0, 0x00AF($s1)           ## 000000AF
/* 01A48 80A0D108 3C08FA00 */  lui     $t0, 0xFA00                ## $t0 = FA000000
/* 01A4C 80A0D10C 35080080 */  ori     $t0, $t0, 0x0080           ## $t0 = FA000080
/* 01A50 80A0D110 2442FFFF */  addiu   $v0, $v0, 0xFFFF           ## $v0 = FFFFFFFF
/* 01A54 80A0D114 04410003 */  bgez    $v0, .L80A0D124
/* 01A58 80A0D118 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01A5C 80A0D11C 10000007 */  beq     $zero, $zero, .L80A0D13C
/* 01A60 80A0D120 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
.L80A0D124:
/* 01A64 80A0D124 28410018 */  slti    $at, $v0, 0x0018
/* 01A68 80A0D128 14200003 */  bne     $at, $zero, .L80A0D138
/* 01A6C 80A0D12C 00401825 */  or      $v1, $v0, $zero            ## $v1 = FFFFFFFF
/* 01A70 80A0D130 10000001 */  beq     $zero, $zero, .L80A0D138
/* 01A74 80A0D134 24030017 */  addiu   $v1, $zero, 0x0017         ## $v1 = 00000017
.L80A0D138:
/* 01A78 80A0D138 00602825 */  or      $a1, $v1, $zero            ## $a1 = 00000017
.L80A0D13C:
/* 01A7C 80A0D13C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01A80 80A0D140 27A9008C */  addiu   $t1, $sp, 0x008C           ## $t1 = FFFFFFEC
/* 01A84 80A0D144 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 01A88 80A0D148 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000007
/* 01A8C 80A0D14C AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 01A90 80A0D150 AC480000 */  sw      $t0, 0x0000($v0)           ## FFFFFFFF
/* 01A94 80A0D154 C62804CC */  lwc1    $f8, 0x04CC($s1)           ## 000004CC
/* 01A98 80A0D158 00402025 */  or      $a0, $v0, $zero            ## $a0 = FFFFFFFF
/* 01A9C 80A0D15C 04A10003 */  bgez    $a1, .L80A0D16C
/* 01AA0 80A0D160 000530C3 */  sra     $a2, $a1,  3
/* 01AA4 80A0D164 24A10007 */  addiu   $at, $a1, 0x0007           ## $at = 0000001E
/* 01AA8 80A0D168 000130C3 */  sra     $a2, $at,  3
.L80A0D16C:
/* 01AAC 80A0D16C 00063080 */  sll     $a2, $a2,  2
/* 01AB0 80A0D170 00C91821 */  addu    $v1, $a2, $t1
/* 01AB4 80A0D174 906B0002 */  lbu     $t3, 0x0002($v1)           ## 00000019
/* 01AB8 80A0D178 906E0000 */  lbu     $t6, 0x0000($v1)           ## 00000017
/* 01ABC 80A0D17C 90680001 */  lbu     $t0, 0x0001($v1)           ## 00000018
/* 01AC0 80A0D180 000B6A00 */  sll     $t5, $t3,  8
/* 01AC4 80A0D184 444BF800 */  cfc1    $t3, $31
/* 01AC8 80A0D188 44CCF800 */  ctc1    $t4, $31
/* 01ACC 80A0D18C 000E7E00 */  sll     $t7, $t6, 24
/* 01AD0 80A0D190 01AFC025 */  or      $t8, $t5, $t7              ## $t8 = 00000000
/* 01AD4 80A0D194 460042A4 */  cvt.w.s $f10, $f8
/* 01AD8 80A0D198 00084C00 */  sll     $t1, $t0, 16
/* 01ADC 80A0D19C 03095025 */  or      $t2, $t8, $t1              ## $t2 = FFFFFFEC
/* 01AE0 80A0D1A0 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 01AE4 80A0D1A4 444CF800 */  cfc1    $t4, $31
/* 01AE8 80A0D1A8 27B80080 */  addiu   $t8, $sp, 0x0080           ## $t8 = FFFFFFE0
/* 01AEC 80A0D1AC 3C08FB00 */  lui     $t0, 0xFB00                ## $t0 = FB000000
/* 01AF0 80A0D1B0 318C0078 */  andi    $t4, $t4, 0x0078           ## $t4 = 00000000
/* 01AF4 80A0D1B4 11800012 */  beq     $t4, $zero, .L80A0D200
/* 01AF8 80A0D1B8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01AFC 80A0D1BC 44815000 */  mtc1    $at, $f10                  ## $f10 = 2147483648.00
/* 01B00 80A0D1C0 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 01B04 80A0D1C4 460A4281 */  sub.s   $f10, $f8, $f10
/* 01B08 80A0D1C8 44CCF800 */  ctc1    $t4, $31
/* 01B0C 80A0D1CC 00000000 */  nop
/* 01B10 80A0D1D0 460052A4 */  cvt.w.s $f10, $f10
/* 01B14 80A0D1D4 444CF800 */  cfc1    $t4, $31
/* 01B18 80A0D1D8 00000000 */  nop
/* 01B1C 80A0D1DC 318C0078 */  andi    $t4, $t4, 0x0078           ## $t4 = 00000000
/* 01B20 80A0D1E0 15800005 */  bne     $t4, $zero, .L80A0D1F8
/* 01B24 80A0D1E4 00000000 */  nop
/* 01B28 80A0D1E8 440C5000 */  mfc1    $t4, $f10
/* 01B2C 80A0D1EC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01B30 80A0D1F0 10000007 */  beq     $zero, $zero, .L80A0D210
/* 01B34 80A0D1F4 01816025 */  or      $t4, $t4, $at              ## $t4 = 80000000
.L80A0D1F8:
/* 01B38 80A0D1F8 10000005 */  beq     $zero, $zero, .L80A0D210
/* 01B3C 80A0D1FC 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
.L80A0D200:
/* 01B40 80A0D200 440C5000 */  mfc1    $t4, $f10
/* 01B44 80A0D204 00000000 */  nop
/* 01B48 80A0D208 0580FFFB */  bltz    $t4, .L80A0D1F8
/* 01B4C 80A0D20C 00000000 */  nop
.L80A0D210:
/* 01B50 80A0D210 01807025 */  or      $t6, $t4, $zero            ## $t6 = FFFFFFFF
/* 01B54 80A0D214 31CD00FF */  andi    $t5, $t6, 0x00FF           ## $t5 = 000000FF
/* 01B58 80A0D218 014D7825 */  or      $t7, $t2, $t5              ## $t7 = FFFFFFFF
/* 01B5C 80A0D21C AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000003
/* 01B60 80A0D220 8E0402D0 */  lw      $a0, 0x02D0($s0)           ## 000002D0
/* 01B64 80A0D224 44CBF800 */  ctc1    $t3, $31
/* 01B68 80A0D228 00D81821 */  addu    $v1, $a2, $t8
/* 01B6C 80A0D22C 24990008 */  addiu   $t9, $a0, 0x0008           ## $t9 = 00000007
/* 01B70 80A0D230 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 01B74 80A0D234 AC880000 */  sw      $t0, 0x0000($a0)           ## FFFFFFFF
/* 01B78 80A0D238 906B0002 */  lbu     $t3, 0x0002($v1)           ## 00000019
/* 01B7C 80A0D23C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 01B80 80A0D240 C63004CC */  lwc1    $f16, 0x04CC($s1)          ## 000004CC
/* 01B84 80A0D244 000B6200 */  sll     $t4, $t3,  8
/* 01B88 80A0D248 444BF800 */  cfc1    $t3, $31
/* 01B8C 80A0D24C 44CEF800 */  ctc1    $t6, $31
/* 01B90 80A0D250 90680001 */  lbu     $t0, 0x0001($v1)           ## 00000018
/* 01B94 80A0D254 906A0000 */  lbu     $t2, 0x0000($v1)           ## 00000017
/* 01B98 80A0D258 460084A4 */  cvt.w.s $f18, $f16
/* 01B9C 80A0D25C 0008C400 */  sll     $t8, $t0, 16
/* 01BA0 80A0D260 000A6E00 */  sll     $t5, $t2, 24
/* 01BA4 80A0D264 018D7825 */  or      $t7, $t4, $t5              ## $t7 = FFFFFFFF
/* 01BA8 80A0D268 444EF800 */  cfc1    $t6, $31
/* 01BAC 80A0D26C 3C08DB06 */  lui     $t0, 0xDB06                ## $t0 = DB060000
/* 01BB0 80A0D270 01F84825 */  or      $t1, $t7, $t8              ## $t1 = FFFFFFFF
/* 01BB4 80A0D274 31CE0078 */  andi    $t6, $t6, 0x0078           ## $t6 = 00000000
/* 01BB8 80A0D278 11C00013 */  beq     $t6, $zero, .L80A0D2C8
/* 01BBC 80A0D27C 35080020 */  ori     $t0, $t0, 0x0020           ## $t0 = DB060020
/* 01BC0 80A0D280 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 01BC4 80A0D284 44819000 */  mtc1    $at, $f18                  ## $f18 = 2147483648.00
/* 01BC8 80A0D288 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 01BCC 80A0D28C 46128481 */  sub.s   $f18, $f16, $f18
/* 01BD0 80A0D290 44CEF800 */  ctc1    $t6, $31
/* 01BD4 80A0D294 00000000 */  nop
/* 01BD8 80A0D298 460094A4 */  cvt.w.s $f18, $f18
/* 01BDC 80A0D29C 444EF800 */  cfc1    $t6, $31
/* 01BE0 80A0D2A0 00000000 */  nop
/* 01BE4 80A0D2A4 31CE0078 */  andi    $t6, $t6, 0x0078           ## $t6 = 00000000
/* 01BE8 80A0D2A8 15C00005 */  bne     $t6, $zero, .L80A0D2C0
/* 01BEC 80A0D2AC 00000000 */  nop
/* 01BF0 80A0D2B0 440E9000 */  mfc1    $t6, $f18
/* 01BF4 80A0D2B4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01BF8 80A0D2B8 10000007 */  beq     $zero, $zero, .L80A0D2D8
/* 01BFC 80A0D2BC 01C17025 */  or      $t6, $t6, $at              ## $t6 = 80000000
.L80A0D2C0:
/* 01C00 80A0D2C0 10000005 */  beq     $zero, $zero, .L80A0D2D8
/* 01C04 80A0D2C4 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
.L80A0D2C8:
/* 01C08 80A0D2C8 440E9000 */  mfc1    $t6, $f18
/* 01C0C 80A0D2CC 00000000 */  nop
/* 01C10 80A0D2D0 05C0FFFB */  bltz    $t6, .L80A0D2C0
/* 01C14 80A0D2D4 00000000 */  nop
.L80A0D2D8:
/* 01C18 80A0D2D8 01C05025 */  or      $t2, $t6, $zero            ## $t2 = FFFFFFFF
/* 01C1C 80A0D2DC 314C00FF */  andi    $t4, $t2, 0x00FF           ## $t4 = 000000FF
/* 01C20 80A0D2E0 012C6825 */  or      $t5, $t1, $t4              ## $t5 = FFFFFFFF
/* 01C24 80A0D2E4 AC8D0004 */  sw      $t5, 0x0004($a0)           ## 00000003
/* 01C28 80A0D2E8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01C2C 80A0D2EC 44CBF800 */  ctc1    $t3, $31
/* 01C30 80A0D2F0 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 01C34 80A0D2F4 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000007
/* 01C38 80A0D2F8 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 01C3C 80A0D2FC AC480000 */  sw      $t0, 0x0000($v0)           ## FFFFFFFF
/* 01C40 80A0D300 8FAF00A4 */  lw      $t7, 0x00A4($sp)
/* 01C44 80A0D304 8FAA007C */  lw      $t2, 0x007C($sp)
/* 01C48 80A0D308 24080008 */  addiu   $t0, $zero, 0x0008         ## $t0 = 00000008
/* 01C4C 80A0D30C 8DE40000 */  lw      $a0, 0x0000($t7)           ## FFFFFFFF
/* 01C50 80A0D310 000A4880 */  sll     $t1, $t2,  2
/* 01C54 80A0D314 012A4823 */  subu    $t1, $t1, $t2
/* 01C58 80A0D318 00094840 */  sll     $t1, $t1,  1
/* 01C5C 80A0D31C 312C00FF */  andi    $t4, $t1, 0x00FF           ## $t4 = 000000FF
/* 01C60 80A0D320 01ACC823 */  subu    $t9, $t5, $t4
/* 01C64 80A0D324 240F0040 */  addiu   $t7, $zero, 0x0040         ## $t7 = 00000040
/* 01C68 80A0D328 240B0040 */  addiu   $t3, $zero, 0x0040         ## $t3 = 00000040
/* 01C6C 80A0D32C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 01C70 80A0D330 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 01C74 80A0D334 AFB80010 */  sw      $t8, 0x0010($sp)
/* 01C78 80A0D338 AFAE0018 */  sw      $t6, 0x0018($sp)
/* 01C7C 80A0D33C AFAB0014 */  sw      $t3, 0x0014($sp)
/* 01C80 80A0D340 AFAF0028 */  sw      $t7, 0x0028($sp)
/* 01C84 80A0D344 AFB90020 */  sw      $t9, 0x0020($sp)
/* 01C88 80A0D348 AFA80024 */  sw      $t0, 0x0024($sp)
/* 01C8C 80A0D34C AFA0001C */  sw      $zero, 0x001C($sp)
/* 01C90 80A0D350 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01C94 80A0D354 0C0253D0 */  jal     Gfx_TwoTexScroll
/* 01C98 80A0D358 AFA20058 */  sw      $v0, 0x0058($sp)
/* 01C9C 80A0D35C 8FA30058 */  lw      $v1, 0x0058($sp)
/* 01CA0 80A0D360 3C0BE700 */  lui     $t3, 0xE700                ## $t3 = E7000000
/* 01CA4 80A0D364 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 01CA8 80A0D368 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01CAC 80A0D36C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01CB0 80A0D370 3C098011 */  lui     $t1, 0x8011                ## $t1 = 80110000
/* 01CB4 80A0D374 25296280 */  addiu   $t1, $t1, 0x6280           ## $t1 = 80116280
/* 01CB8 80A0D378 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01CBC 80A0D37C AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 01CC0 80A0D380 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 01CC4 80A0D384 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 01CC8 80A0D388 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01CCC 80A0D38C 354A0024 */  ori     $t2, $t2, 0x0024           ## $t2 = DB060024
/* 01CD0 80A0D390 3C0D80A1 */  lui     $t5, %hi(func_80A0CCB8)    ## $t5 = 80A10000
/* 01CD4 80A0D394 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 01CD8 80A0D398 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 01CDC 80A0D39C AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 01CE0 80A0D3A0 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 01CE4 80A0D3A4 9227014E */  lbu     $a3, 0x014E($s1)           ## 0000014E
/* 01CE8 80A0D3A8 8E26016C */  lw      $a2, 0x016C($s1)           ## 0000016C
/* 01CEC 80A0D3AC 8E250150 */  lw      $a1, 0x0150($s1)           ## 00000150
/* 01CF0 80A0D3B0 3C0C80A1 */  lui     $t4, %hi(func_80A0CCF0)    ## $t4 = 80A10000
/* 01CF4 80A0D3B4 258CCCF0 */  addiu   $t4, $t4, %lo(func_80A0CCF0) ## $t4 = 80A0CCF0
/* 01CF8 80A0D3B8 25ADCCB8 */  addiu   $t5, $t5, %lo(func_80A0CCB8) ## $t5 = 80A0CCB8
/* 01CFC 80A0D3BC AFAD0010 */  sw      $t5, 0x0010($sp)
/* 01D00 80A0D3C0 AFAC0014 */  sw      $t4, 0x0014($sp)
/* 01D04 80A0D3C4 AFB10018 */  sw      $s1, 0x0018($sp)
/* 01D08 80A0D3C8 8E1902D0 */  lw      $t9, 0x02D0($s0)           ## 000002D0
/* 01D0C 80A0D3CC 8FA400A4 */  lw      $a0, 0x00A4($sp)
/* 01D10 80A0D3D0 0C0289CF */  jal     SkelAnime_DrawSV2
/* 01D14 80A0D3D4 AFB9001C */  sw      $t9, 0x001C($sp)
/* 01D18 80A0D3D8 AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
.L80A0D3DC:
/* 01D1C 80A0D3DC 8FA800A4 */  lw      $t0, 0x00A4($sp)
.L80A0D3E0:
/* 01D20 80A0D3E0 3C0680A1 */  lui     $a2, %hi(D_80A0E130)       ## $a2 = 80A10000
/* 01D24 80A0D3E4 24C6E130 */  addiu   $a2, $a2, %lo(D_80A0E130)  ## $a2 = 80A0E130
/* 01D28 80A0D3E8 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFC4
/* 01D2C 80A0D3EC 2407071E */  addiu   $a3, $zero, 0x071E         ## $a3 = 0000071E
/* 01D30 80A0D3F0 0C031AD5 */  jal     Graph_CloseDisp
/* 01D34 80A0D3F4 8D050000 */  lw      $a1, 0x0000($t0)           ## 00000000
/* 01D38 80A0D3F8 8FBF003C */  lw      $ra, 0x003C($sp)
/* 01D3C 80A0D3FC 8FB00034 */  lw      $s0, 0x0034($sp)
/* 01D40 80A0D400 8FB10038 */  lw      $s1, 0x0038($sp)
/* 01D44 80A0D404 03E00008 */  jr      $ra
/* 01D48 80A0D408 27BD00A0 */  addiu   $sp, $sp, 0x00A0           ## $sp = 00000000


