.late_rodata
glabel D_809ED780
    .float 1820.0

.text
glabel func_809ECA50
/* 001D0 809ECA50 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 001D4 809ECA54 3C0F809F */  lui     $t7, %hi(D_809ED740)       ## $t7 = 809F0000
/* 001D8 809ECA58 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 001DC 809ECA5C AFB00020 */  sw      $s0, 0x0020($sp)
/* 001E0 809ECA60 AFA5008C */  sw      $a1, 0x008C($sp)
/* 001E4 809ECA64 25EFD740 */  addiu   $t7, $t7, %lo(D_809ED740)  ## $t7 = 809ED740
/* 001E8 809ECA68 8DF90000 */  lw      $t9, 0x0000($t7)           ## 809ED740
/* 001EC 809ECA6C 27AE007C */  addiu   $t6, $sp, 0x007C           ## $t6 = FFFFFFF4
/* 001F0 809ECA70 8DF80004 */  lw      $t8, 0x0004($t7)           ## 809ED744
/* 001F4 809ECA74 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 001F8 809ECA78 8DF90008 */  lw      $t9, 0x0008($t7)           ## 809ED748
/* 001FC 809ECA7C 3C09809F */  lui     $t1, %hi(D_809ED74C)       ## $t1 = 809F0000
/* 00200 809ECA80 2529D74C */  addiu   $t1, $t1, %lo(D_809ED74C)  ## $t1 = 809ED74C
/* 00204 809ECA84 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 00208 809ECA88 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 0020C 809ECA8C 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 809ED74C
/* 00210 809ECA90 27A80070 */  addiu   $t0, $sp, 0x0070           ## $t0 = FFFFFFE8
/* 00214 809ECA94 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 809ED750
/* 00218 809ECA98 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE8
/* 0021C 809ECA9C 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 809ED754
/* 00220 809ECAA0 3C0D809F */  lui     $t5, %hi(D_809ED758)       ## $t5 = 809F0000
/* 00224 809ECAA4 25ADD758 */  addiu   $t5, $t5, %lo(D_809ED758)  ## $t5 = 809ED758
/* 00228 809ECAA8 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFEC
/* 0022C 809ECAAC AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFF0
/* 00230 809ECAB0 8DAF0000 */  lw      $t7, 0x0000($t5)           ## 809ED758
/* 00234 809ECAB4 27AC0064 */  addiu   $t4, $sp, 0x0064           ## $t4 = FFFFFFDC
/* 00238 809ECAB8 8DAE0004 */  lw      $t6, 0x0004($t5)           ## 809ED75C
/* 0023C 809ECABC AD8F0000 */  sw      $t7, 0x0000($t4)           ## FFFFFFDC
/* 00240 809ECAC0 8DAF0008 */  lw      $t7, 0x0008($t5)           ## 809ED760
/* 00244 809ECAC4 AD8E0004 */  sw      $t6, 0x0004($t4)           ## FFFFFFE0
/* 00248 809ECAC8 27B9004C */  addiu   $t9, $sp, 0x004C           ## $t9 = FFFFFFC4
/* 0024C 809ECACC AD8F0008 */  sw      $t7, 0x0008($t4)           ## FFFFFFE4
/* 00250 809ECAD0 8FB8008C */  lw      $t8, 0x008C($sp)
/* 00254 809ECAD4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00258 809ECAD8 8F061C44 */  lw      $a2, 0x1C44($t8)           ## 00001C44
/* 0025C 809ECADC 8CC90024 */  lw      $t1, 0x0024($a2)           ## 00000024
/* 00260 809ECAE0 AF290000 */  sw      $t1, 0x0000($t9)           ## FFFFFFC4
/* 00264 809ECAE4 8CC80028 */  lw      $t0, 0x0028($a2)           ## 00000028
/* 00268 809ECAE8 AF280004 */  sw      $t0, 0x0004($t9)           ## FFFFFFC8
/* 0026C 809ECAEC 8CC9002C */  lw      $t1, 0x002C($a2)           ## 0000002C
/* 00270 809ECAF0 AF290008 */  sw      $t1, 0x0008($t9)           ## FFFFFFCC
/* 00274 809ECAF4 84C400B6 */  lh      $a0, 0x00B6($a2)           ## 000000B6
/* 00278 809ECAF8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0027C 809ECAFC AFA60060 */  sw      $a2, 0x0060($sp)
/* 00280 809ECB00 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 00284 809ECB04 44813000 */  mtc1    $at, $f6                   ## $f6 = -5.00
/* 00288 809ECB08 C7A4004C */  lwc1    $f4, 0x004C($sp)
/* 0028C 809ECB0C 8FA60060 */  lw      $a2, 0x0060($sp)
/* 00290 809ECB10 46060202 */  mul.s   $f8, $f0, $f6
/* 00294 809ECB14 46082280 */  add.s   $f10, $f4, $f8
/* 00298 809ECB18 E7AA004C */  swc1    $f10, 0x004C($sp)
/* 0029C 809ECB1C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 002A0 809ECB20 84C400B6 */  lh      $a0, 0x00B6($a2)           ## 000000B6
/* 002A4 809ECB24 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 002A8 809ECB28 44819000 */  mtc1    $at, $f18                  ## $f18 = -5.00
/* 002AC 809ECB2C C7B00054 */  lwc1    $f16, 0x0054($sp)
/* 002B0 809ECB30 3C0A8016 */  lui     $t2, %hi(gSaveContext+4)
/* 002B4 809ECB34 46120182 */  mul.s   $f6, $f0, $f18
/* 002B8 809ECB38 8D4AE664 */  lw      $t2, %lo(gSaveContext+4)($t2)
/* 002BC 809ECB3C 8FA60060 */  lw      $a2, 0x0060($sp)
/* 002C0 809ECB40 C7A80050 */  lwc1    $f8, 0x0050($sp)
/* 002C4 809ECB44 3C014260 */  lui     $at, 0x4260                ## $at = 42600000
/* 002C8 809ECB48 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 002CC 809ECB4C 260401D0 */  addiu   $a0, $s0, 0x01D0           ## $a0 = 000001D0
/* 002D0 809ECB50 46068100 */  add.s   $f4, $f16, $f6
/* 002D4 809ECB54 C7B00050 */  lwc1    $f16, 0x0050($sp)
/* 002D8 809ECB58 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 002DC 809ECB5C 11400007 */  beq     $t2, $zero, .L809ECB7C
/* 002E0 809ECB60 E7A40054 */  swc1    $f4, 0x0054($sp)
/* 002E4 809ECB64 3C014218 */  lui     $at, 0x4218                ## $at = 42180000
/* 002E8 809ECB68 44815000 */  mtc1    $at, $f10                  ## $f10 = 38.00
/* 002EC 809ECB6C 00000000 */  nop
/* 002F0 809ECB70 460A4480 */  add.s   $f18, $f8, $f10
/* 002F4 809ECB74 10000005 */  beq     $zero, $zero, .L809ECB8C
/* 002F8 809ECB78 E7B20050 */  swc1    $f18, 0x0050($sp)
.L809ECB7C:
/* 002FC 809ECB7C 44813000 */  mtc1    $at, $f6                   ## $f6 = 38.00
/* 00300 809ECB80 00000000 */  nop
/* 00304 809ECB84 46068100 */  add.s   $f4, $f16, $f6
/* 00308 809ECB88 E7A40050 */  swc1    $f4, 0x0050($sp)
.L809ECB8C:
/* 0030C 809ECB8C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00310 809ECB90 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 00314 809ECB94 C60A0090 */  lwc1    $f10, 0x0090($s0)          ## 00000090
/* 00318 809ECB98 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 0031C 809ECB9C 4608503E */  c.le.s  $f10, $f8
/* 00320 809ECBA0 00000000 */  nop
/* 00324 809ECBA4 450200D2 */  bc1fl   .L809ECEF0
/* 00328 809ECBA8 8CC20680 */  lw      $v0, 0x0680($a2)           ## 00000680
/* 0032C 809ECBAC A60001D2 */  sh      $zero, 0x01D2($s0)         ## 000001D2
/* 00330 809ECBB0 860201D2 */  lh      $v0, 0x01D2($s0)           ## 000001D2
/* 00334 809ECBB4 260501DC */  addiu   $a1, $s0, 0x01DC           ## $a1 = 000001DC
/* 00338 809ECBB8 27A4004C */  addiu   $a0, $sp, 0x004C           ## $a0 = FFFFFFC4
/* 0033C 809ECBBC A60201D4 */  sh      $v0, 0x01D4($s0)           ## 000001D4
/* 00340 809ECBC0 A60201D6 */  sh      $v0, 0x01D6($s0)           ## 000001D6
/* 00344 809ECBC4 AFA60060 */  sw      $a2, 0x0060($sp)
/* 00348 809ECBC8 0C01DFE4 */  jal     Math_Vec3f_DistXYZ

/* 0034C 809ECBCC AFA50030 */  sw      $a1, 0x0030($sp)
/* 00350 809ECBD0 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 00354 809ECBD4 44819000 */  mtc1    $at, $f18                  ## $f18 = 12.00
/* 00358 809ECBD8 8FA60060 */  lw      $a2, 0x0060($sp)
/* 0035C 809ECBDC 4612003E */  c.le.s  $f0, $f18
/* 00360 809ECBE0 00000000 */  nop
/* 00364 809ECBE4 4502004B */  bc1fl   .L809ECD14
/* 00368 809ECBE8 8CC20680 */  lw      $v0, 0x0680($a2)           ## 00000680
/* 0036C 809ECBEC 920B01CC */  lbu     $t3, 0x01CC($s0)           ## 000001CC
/* 00370 809ECBF0 8FA4008C */  lw      $a0, 0x008C($sp)
/* 00374 809ECBF4 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 00378 809ECBF8 15600013 */  bne     $t3, $zero, .L809ECC48
/* 0037C 809ECBFC 0324C821 */  addu    $t9, $t9, $a0
/* 00380 809ECC00 8F391D4C */  lw      $t9, 0x1D4C($t9)           ## 00011D4C
/* 00384 809ECC04 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 00388 809ECC08 0320F809 */  jalr    $ra, $t9
/* 0038C 809ECC0C 00000000 */  nop
/* 00390 809ECC10 1040002B */  beq     $v0, $zero, .L809ECCC0
/* 00394 809ECC14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00398 809ECC18 920C01CC */  lbu     $t4, 0x01CC($s0)           ## 000001CC
/* 0039C 809ECC1C 8E020118 */  lw      $v0, 0x0118($s0)           ## 00000118
/* 003A0 809ECC20 A60001CA */  sh      $zero, 0x01CA($s0)         ## 000001CA
/* 003A4 809ECC24 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 003A8 809ECC28 10400003 */  beq     $v0, $zero, .L809ECC38
/* 003AC 809ECC2C A20D01CC */  sb      $t5, 0x01CC($s0)           ## 000001CC
/* 003B0 809ECC30 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 003B4 809ECC34 A44E001C */  sh      $t6, 0x001C($v0)           ## 0000001C
.L809ECC38:
/* 003B8 809ECC38 0C00BE0A */  jal     Audio_PlayActorSound2

/* 003BC 809ECC3C 24053902 */  addiu   $a1, $zero, 0x3902         ## $a1 = 00003902
/* 003C0 809ECC40 10000020 */  beq     $zero, $zero, .L809ECCC4
/* 003C4 809ECC44 260401E8 */  addiu   $a0, $s0, 0x01E8           ## $a0 = 000001E8
.L809ECC48:
/* 003C8 809ECC48 860F01CA */  lh      $t7, 0x01CA($s0)           ## 000001CA
/* 003CC 809ECC4C 25F81194 */  addiu   $t8, $t7, 0x1194           ## $t8 = 00001194
/* 003D0 809ECC50 A61801CA */  sh      $t8, 0x01CA($s0)           ## 000001CA
/* 003D4 809ECC54 860401CA */  lh      $a0, 0x01CA($s0)           ## 000001CA
/* 003D8 809ECC58 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 003DC 809ECC5C AFA60060 */  sw      $a2, 0x0060($sp)
/* 003E0 809ECC60 3C01809F */  lui     $at, %hi(D_809ED780)       ## $at = 809F0000
/* 003E4 809ECC64 C430D780 */  lwc1    $f16, %lo(D_809ED780)($at)
/* 003E8 809ECC68 8FA60060 */  lw      $a2, 0x0060($sp)
/* 003EC 809ECC6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003F0 809ECC70 46100182 */  mul.s   $f6, $f0, $f16
/* 003F4 809ECC74 4600310D */  trunc.w.s $f4, $f6
/* 003F8 809ECC78 44092000 */  mfc1    $t1, $f4
/* 003FC 809ECC7C 00000000 */  nop
/* 00400 809ECC80 A60901D2 */  sh      $t1, 0x01D2($s0)           ## 000001D2
/* 00404 809ECC84 8CCA0680 */  lw      $t2, 0x0680($a2)           ## 00000680
/* 00408 809ECC88 314B0080 */  andi    $t3, $t2, 0x0080           ## $t3 = 00000000
/* 0040C 809ECC8C 55600006 */  bnel    $t3, $zero, .L809ECCA8
/* 00410 809ECC90 861901CA */  lh      $t9, 0x01CA($s0)           ## 000001CA
/* 00414 809ECC94 0C27B3D8 */  jal     func_809ECF60
/* 00418 809ECC98 A20001CC */  sb      $zero, 0x01CC($s0)         ## 000001CC
/* 0041C 809ECC9C 100000AC */  beq     $zero, $zero, .L809ECF50
/* 00420 809ECCA0 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00424 809ECCA4 861901CA */  lh      $t9, 0x01CA($s0)           ## 000001CA
.L809ECCA8:
/* 00428 809ECCA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0042C 809ECCAC 2B219195 */  slti    $at, $t9, 0x9195
/* 00430 809ECCB0 50200004 */  beql    $at, $zero, .L809ECCC4
/* 00434 809ECCB4 260401E8 */  addiu   $a0, $s0, 0x01E8           ## $a0 = 000001E8
/* 00438 809ECCB8 0C00BE0A */  jal     Audio_PlayActorSound2

/* 0043C 809ECCBC 24053902 */  addiu   $a1, $zero, 0x3902         ## $a1 = 00003902
.L809ECCC0:
/* 00440 809ECCC0 260401E8 */  addiu   $a0, $s0, 0x01E8           ## $a0 = 000001E8
.L809ECCC4:
/* 00444 809ECCC4 27A5004C */  addiu   $a1, $sp, 0x004C           ## $a1 = FFFFFFC4
/* 00448 809ECCC8 260601D4 */  addiu   $a2, $s0, 0x01D4           ## $a2 = 000001D4
/* 0044C 809ECCCC 0C00D611 */  jal     func_80035844
/* 00450 809ECCD0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00454 809ECCD4 860C01D6 */  lh      $t4, 0x01D6($s0)           ## 000001D6
/* 00458 809ECCD8 860D00B6 */  lh      $t5, 0x00B6($s0)           ## 000000B6
/* 0045C 809ECCDC 860801D4 */  lh      $t0, 0x01D4($s0)           ## 000001D4
/* 00460 809ECCE0 860900B4 */  lh      $t1, 0x00B4($s0)           ## 000000B4
/* 00464 809ECCE4 860B01CE */  lh      $t3, 0x01CE($s0)           ## 000001CE
/* 00468 809ECCE8 018D7023 */  subu    $t6, $t4, $t5
/* 0046C 809ECCEC 860F01D2 */  lh      $t7, 0x01D2($s0)           ## 000001D2
/* 00470 809ECCF0 860C01D0 */  lh      $t4, 0x01D0($s0)           ## 000001D0
/* 00474 809ECCF4 01095023 */  subu    $t2, $t0, $t1
/* 00478 809ECCF8 014BC823 */  subu    $t9, $t2, $t3
/* 0047C 809ECCFC 01CFC023 */  subu    $t8, $t6, $t7
/* 00480 809ECD00 032C6823 */  subu    $t5, $t9, $t4
/* 00484 809ECD04 A61801D6 */  sh      $t8, 0x01D6($s0)           ## 000001D6
/* 00488 809ECD08 10000014 */  beq     $zero, $zero, .L809ECD5C
/* 0048C 809ECD0C A60D01D4 */  sh      $t5, 0x01D4($s0)           ## 000001D4
/* 00490 809ECD10 8CC20680 */  lw      $v0, 0x0680($a2)           ## 00000680
.L809ECD14:
/* 00494 809ECD14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00498 809ECD18 304E0080 */  andi    $t6, $v0, 0x0080           ## $t6 = 00000000
/* 0049C 809ECD1C 51C0000A */  beql    $t6, $zero, .L809ECD48
/* 004A0 809ECD20 86090018 */  lh      $t1, 0x0018($s0)           ## 00000018
/* 004A4 809ECD24 8CCF0118 */  lw      $t7, 0x0118($a2)           ## 00000118
/* 004A8 809ECD28 2401FF7F */  addiu   $at, $zero, 0xFF7F         ## $at = FFFFFF7F
/* 004AC 809ECD2C 0041C024 */  and     $t8, $v0, $at
/* 004B0 809ECD30 160F0004 */  bne     $s0, $t7, .L809ECD44
/* 004B4 809ECD34 240800C8 */  addiu   $t0, $zero, 0x00C8         ## $t0 = 000000C8
/* 004B8 809ECD38 ACD80680 */  sw      $t8, 0x0680($a2)           ## 00000680
/* 004BC 809ECD3C ACC00118 */  sw      $zero, 0x0118($a2)         ## 00000118
/* 004C0 809ECD40 A4C80850 */  sh      $t0, 0x0850($a2)           ## 00000850
.L809ECD44:
/* 004C4 809ECD44 86090018 */  lh      $t1, 0x0018($s0)           ## 00000018
.L809ECD48:
/* 004C8 809ECD48 51200005 */  beql    $t1, $zero, .L809ECD60
/* 004CC 809ECD4C 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 004D0 809ECD50 0C00BE0A */  jal     Audio_PlayActorSound2

/* 004D4 809ECD54 24053903 */  addiu   $a1, $zero, 0x3903         ## $a1 = 00003903
/* 004D8 809ECD58 A6000018 */  sh      $zero, 0x0018($s0)         ## 00000018
.L809ECD5C:
/* 004DC 809ECD5C 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
.L809ECD60:
/* 004E0 809ECD60 AFA4002C */  sw      $a0, 0x002C($sp)
/* 004E4 809ECD64 0C01E01A */  jal     Math_Vec3f_Yaw

/* 004E8 809ECD68 27A5004C */  addiu   $a1, $sp, 0x004C           ## $a1 = FFFFFFC4
/* 004EC 809ECD6C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 004F0 809ECD70 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 004F4 809ECD74 8FA5004C */  lw      $a1, 0x004C($sp)
/* 004F8 809ECD78 8FA40030 */  lw      $a0, 0x0030($sp)
/* 004FC 809ECD7C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00500 809ECD80 3C074180 */  lui     $a3, 0x4180                ## $a3 = 41800000
/* 00504 809ECD84 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 00508 809ECD88 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 0050C 809ECD8C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00510 809ECD90 260401E0 */  addiu   $a0, $s0, 0x01E0           ## $a0 = 000001E0
/* 00514 809ECD94 8FA50050 */  lw      $a1, 0x0050($sp)
/* 00518 809ECD98 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0051C 809ECD9C 3C074180 */  lui     $a3, 0x4180                ## $a3 = 41800000
/* 00520 809ECDA0 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 00524 809ECDA4 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 00528 809ECDA8 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 0052C 809ECDAC 260401E4 */  addiu   $a0, $s0, 0x01E4           ## $a0 = 000001E4
/* 00530 809ECDB0 8FA50054 */  lw      $a1, 0x0054($sp)
/* 00534 809ECDB4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00538 809ECDB8 3C074180 */  lui     $a3, 0x4180                ## $a3 = 41800000
/* 0053C 809ECDBC 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 00540 809ECDC0 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 00544 809ECDC4 260401F4 */  addiu   $a0, $s0, 0x01F4           ## $a0 = 000001F4
/* 00548 809ECDC8 AFA40028 */  sw      $a0, 0x0028($sp)
/* 0054C 809ECDCC 8FA50030 */  lw      $a1, 0x0030($sp)
/* 00550 809ECDD0 27A60044 */  addiu   $a2, $sp, 0x0044           ## $a2 = FFFFFFBC
/* 00554 809ECDD4 0C00D611 */  jal     func_80035844
/* 00558 809ECDD8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0055C 809ECDDC C60C01DC */  lwc1    $f12, 0x01DC($s0)          ## 000001DC
/* 00560 809ECDE0 C60E01E0 */  lwc1    $f14, 0x01E0($s0)          ## 000001E0
/* 00564 809ECDE4 8E0601E4 */  lw      $a2, 0x01E4($s0)           ## 000001E4
/* 00568 809ECDE8 0C034261 */  jal     Matrix_Translate
/* 0056C 809ECDEC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00570 809ECDF0 87A40044 */  lh      $a0, 0x0044($sp)
/* 00574 809ECDF4 87A50046 */  lh      $a1, 0x0046($sp)
/* 00578 809ECDF8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0057C 809ECDFC 0C034421 */  jal     Matrix_RotateRPY
/* 00580 809ECE00 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00584 809ECE04 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFDC
/* 00588 809ECE08 0C0346BD */  jal     Matrix_MultVec3f
/* 0058C 809ECE0C 8FA50028 */  lw      $a1, 0x0028($sp)
/* 00590 809ECE10 C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 00000024
/* 00594 809ECE14 C60E0028 */  lwc1    $f14, 0x0028($s0)          ## 00000028
/* 00598 809ECE18 8E06002C */  lw      $a2, 0x002C($s0)           ## 0000002C
/* 0059C 809ECE1C 0C034261 */  jal     Matrix_Translate
/* 005A0 809ECE20 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 005A4 809ECE24 8FA4002C */  lw      $a0, 0x002C($sp)
/* 005A8 809ECE28 8FA50028 */  lw      $a1, 0x0028($sp)
/* 005AC 809ECE2C 27A60044 */  addiu   $a2, $sp, 0x0044           ## $a2 = FFFFFFBC
/* 005B0 809ECE30 0C00D611 */  jal     func_80035844
/* 005B4 809ECE34 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 005B8 809ECE38 87A40044 */  lh      $a0, 0x0044($sp)
/* 005BC 809ECE3C 87A50046 */  lh      $a1, 0x0046($sp)
/* 005C0 809ECE40 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 005C4 809ECE44 0C034421 */  jal     Matrix_RotateRPY
/* 005C8 809ECE48 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 005CC 809ECE4C 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFE8
/* 005D0 809ECE50 0C0346BD */  jal     Matrix_MultVec3f
/* 005D4 809ECE54 8FA50028 */  lw      $a1, 0x0028($sp)
/* 005D8 809ECE58 8FA4002C */  lw      $a0, 0x002C($sp)
/* 005DC 809ECE5C 0C01E027 */  jal     Math_Vec3f_Pitch

/* 005E0 809ECE60 8FA50028 */  lw      $a1, 0x0028($sp)
/* 005E4 809ECE64 A60201CE */  sh      $v0, 0x01CE($s0)           ## 000001CE
/* 005E8 809ECE68 8FA50028 */  lw      $a1, 0x0028($sp)
/* 005EC 809ECE6C 0C01E01A */  jal     Math_Vec3f_Yaw

/* 005F0 809ECE70 8FA4002C */  lw      $a0, 0x002C($sp)
/* 005F4 809ECE74 860A00B6 */  lh      $t2, 0x00B6($s0)           ## 000000B6
/* 005F8 809ECE78 004A1823 */  subu    $v1, $v0, $t2
/* 005FC 809ECE7C 00031C00 */  sll     $v1, $v1, 16
/* 00600 809ECE80 00031C03 */  sra     $v1, $v1, 16
/* 00604 809ECE84 04600003 */  bltz    $v1, .L809ECE94
/* 00608 809ECE88 00031023 */  subu    $v0, $zero, $v1
/* 0060C 809ECE8C 10000001 */  beq     $zero, $zero, .L809ECE94
/* 00610 809ECE90 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L809ECE94:
/* 00614 809ECE94 28414000 */  slti    $at, $v0, 0x4000
/* 00618 809ECE98 54200006 */  bnel    $at, $zero, .L809ECEB4
/* 0061C 809ECE9C 8FA40028 */  lw      $a0, 0x0028($sp)
/* 00620 809ECEA0 860B01CE */  lh      $t3, 0x01CE($s0)           ## 000001CE
/* 00624 809ECEA4 24198000 */  addiu   $t9, $zero, 0x8000         ## $t9 = FFFF8000
/* 00628 809ECEA8 032B6023 */  subu    $t4, $t9, $t3
/* 0062C 809ECEAC A60C01CE */  sh      $t4, 0x01CE($s0)           ## 000001CE
/* 00630 809ECEB0 8FA40028 */  lw      $a0, 0x0028($sp)
.L809ECEB4:
/* 00634 809ECEB4 0C01E027 */  jal     Math_Vec3f_Pitch

/* 00638 809ECEB8 8FA50030 */  lw      $a1, 0x0030($sp)
/* 0063C 809ECEBC 860401CE */  lh      $a0, 0x01CE($s0)           ## 000001CE
/* 00640 809ECEC0 00446823 */  subu    $t5, $v0, $a0
/* 00644 809ECEC4 A60D01D0 */  sh      $t5, 0x01D0($s0)           ## 000001D0
/* 00648 809ECEC8 860301D0 */  lh      $v1, 0x01D0($s0)           ## 000001D0
/* 0064C 809ECECC 0461001F */  bgez    $v1, .L809ECF4C
/* 00650 809ECED0 00037040 */  sll     $t6, $v1,  1
/* 00654 809ECED4 00030823 */  subu    $at, $zero, $v1
/* 00658 809ECED8 008E7821 */  addu    $t7, $a0, $t6
/* 0065C 809ECEDC 0001C040 */  sll     $t8, $at,  1
/* 00660 809ECEE0 A60F01CE */  sh      $t7, 0x01CE($s0)           ## 000001CE
/* 00664 809ECEE4 10000019 */  beq     $zero, $zero, .L809ECF4C
/* 00668 809ECEE8 A61801D0 */  sh      $t8, 0x01D0($s0)           ## 000001D0
/* 0066C 809ECEEC 8CC20680 */  lw      $v0, 0x0680($a2)           ## 00000680
.L809ECEF0:
/* 00670 809ECEF0 30480080 */  andi    $t0, $v0, 0x0080           ## $t0 = 00000000
/* 00674 809ECEF4 5100000A */  beql    $t0, $zero, .L809ECF20
/* 00678 809ECEF8 A60B0018 */  sh      $t3, 0x0018($s0)           ## 00000018
/* 0067C 809ECEFC 8CC90118 */  lw      $t1, 0x0118($a2)           ## 00000118
/* 00680 809ECF00 2401FF7F */  addiu   $at, $zero, 0xFF7F         ## $at = FFFFFF7F
/* 00684 809ECF04 00415024 */  and     $t2, $v0, $at
/* 00688 809ECF08 16090004 */  bne     $s0, $t1, .L809ECF1C
/* 0068C 809ECF0C 241900C8 */  addiu   $t9, $zero, 0x00C8         ## $t9 = 000000C8
/* 00690 809ECF10 ACCA0680 */  sw      $t2, 0x0680($a2)           ## 00000680
/* 00694 809ECF14 ACC00118 */  sw      $zero, 0x0118($a2)         ## 00000118
/* 00698 809ECF18 A4D90850 */  sh      $t9, 0x0850($a2)           ## 00000850
.L809ECF1C:
/* 0069C 809ECF1C A60B0018 */  sh      $t3, 0x0018($s0)           ## 00000018
.L809ECF20:
/* 006A0 809ECF20 AFA00010 */  sw      $zero, 0x0010($sp)
/* 006A4 809ECF24 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 006A8 809ECF28 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 006AC 809ECF2C 260401CE */  addiu   $a0, $s0, 0x01CE           ## $a0 = 000001CE
/* 006B0 809ECF30 2405C000 */  addiu   $a1, $zero, 0xC000         ## $a1 = FFFFC000
/* 006B4 809ECF34 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 006B8 809ECF38 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 006BC 809ECF3C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 006C0 809ECF40 AFA00010 */  sw      $zero, 0x0010($sp)
/* 006C4 809ECF44 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 006C8 809ECF48 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L809ECF4C:
/* 006CC 809ECF4C 8FBF0024 */  lw      $ra, 0x0024($sp)
.L809ECF50:
/* 006D0 809ECF50 8FB00020 */  lw      $s0, 0x0020($sp)
/* 006D4 809ECF54 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
/* 006D8 809ECF58 03E00008 */  jr      $ra
/* 006DC 809ECF5C 00000000 */  nop
