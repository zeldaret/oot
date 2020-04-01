glabel func_8084CC98
/* 1AA88 8084CC98 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 1AA8C 8084CC9C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 1AA90 8084CCA0 AFB00020 */  sw      $s0, 0x0020($sp)
/* 1AA94 8084CCA4 AFA50054 */  sw      $a1, 0x0054($sp)
/* 1AA98 8084CCA8 8C8E0440 */  lw      $t6, 0x0440($a0)           ## 00000440
/* 1AA9C 8084CCAC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 1AAA0 8084CCB0 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 1AAA4 8084CCB4 AFAE004C */  sw      $t6, 0x004C($sp)
/* 1AAA8 8084CCB8 8C8F0680 */  lw      $t7, 0x0680($a0)           ## 00000680
/* 1AAAC 8084CCBC 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 1AAB0 8084CCC0 35F80040 */  ori     $t8, $t7, 0x0040           ## $t8 = 00000040
/* 1AAB4 8084CCC4 0C2132FD */  jal     func_8084CBF4
/* 1AAB8 8084CCC8 AC980680 */  sw      $t8, 0x0680($a0)           ## 00000680
/* 1AABC 8084CCCC 86190850 */  lh      $t9, 0x0850($s0)           ## 00000850
/* 1AAC0 8084CCD0 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 1AAC4 8084CCD4 8FA40054 */  lw      $a0, 0x0054($sp)
/* 1AAC8 8084CCD8 1720003C */  bne     $t9, $zero, .L8084CDCC
/* 1AACC 8084CCDC 00000000 */  nop
/* 1AAD0 8084CCE0 8FA40054 */  lw      $a0, 0x0054($sp)
/* 1AAD4 8084CCE4 0C028EF0 */  jal     func_800A3BC0
/* 1AAD8 8084CCE8 AFA50030 */  sw      $a1, 0x0030($sp)
/* 1AADC 8084CCEC 10400007 */  beq     $v0, $zero, .L8084CD0C
/* 1AAE0 8084CCF0 3C0C8085 */  lui     $t4, %hi(D_80854998)       ## $t4 = 80850000
/* 1AAE4 8084CCF4 3C080400 */  lui     $t0, 0x0400                ## $t0 = 04000000
/* 1AAE8 8084CCF8 250833B8 */  addiu   $t0, $t0, 0x33B8           ## $t0 = 040033B8
/* 1AAEC 8084CCFC 24090063 */  addiu   $t1, $zero, 0x0063         ## $t1 = 00000063
/* 1AAF0 8084CD00 AE0801BC */  sw      $t0, 0x01BC($s0)           ## 000001BC
/* 1AAF4 8084CD04 100001B2 */  beq     $zero, $zero, .L8084D3D0
/* 1AAF8 8084CD08 A6090850 */  sh      $t1, 0x0850($s0)           ## 00000850
.L8084CD0C:
/* 1AAFC 8084CD0C 820A043C */  lb      $t2, 0x043C($s0)           ## 0000043C
/* 1AB00 8084CD10 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 1AB04 8084CD14 258C4998 */  addiu   $t4, $t4, %lo(D_80854998)  ## $t4 = 80854998
/* 1AB08 8084CD18 05410003 */  bgez    $t2, .L8084CD28
/* 1AB0C 8084CD1C 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 1AB10 8084CD20 10000001 */  beq     $zero, $zero, .L8084CD28
/* 1AB14 8084CD24 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8084CD28:
/* 1AB18 8084CD28 00025840 */  sll     $t3, $v0,  1
/* 1AB1C 8084CD2C 016C1821 */  addu    $v1, $t3, $t4
/* 1AB20 8084CD30 906D0000 */  lbu     $t5, 0x0000($v1)           ## 00000000
/* 1AB24 8084CD34 8FA40030 */  lw      $a0, 0x0030($sp)
/* 1AB28 8084CD38 448D2000 */  mtc1    $t5, $f4                   ## $f4 = 0.00
/* 1AB2C 8084CD3C 05A10004 */  bgez    $t5, .L8084CD50
/* 1AB30 8084CD40 46802120 */  cvt.s.w $f4, $f4
/* 1AB34 8084CD44 44813000 */  mtc1    $at, $f6                   ## $f6 = 4294967296.00
/* 1AB38 8084CD48 00000000 */  nop
/* 1AB3C 8084CD4C 46062100 */  add.s   $f4, $f4, $f6
.L8084CD50:
/* 1AB40 8084CD50 44052000 */  mfc1    $a1, $f4
/* 1AB44 8084CD54 0C02914C */  jal     func_800A4530
/* 1AB48 8084CD58 AFA3002C */  sw      $v1, 0x002C($sp)
/* 1AB4C 8084CD5C 10400006 */  beq     $v0, $zero, .L8084CD78
/* 1AB50 8084CD60 8FA3002C */  lw      $v1, 0x002C($sp)
/* 1AB54 8084CD64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1AB58 8084CD68 0C00BDF7 */  jal     func_8002F7DC
/* 1AB5C 8084CD6C 24050831 */  addiu   $a1, $zero, 0x0831         ## $a1 = 00000831
/* 1AB60 8084CD70 10000198 */  beq     $zero, $zero, .L8084D3D4
/* 1AB64 8084CD74 8FBF0024 */  lw      $ra, 0x0024($sp)
.L8084CD78:
/* 1AB68 8084CD78 906E0001 */  lbu     $t6, 0x0001($v1)           ## 00000001
/* 1AB6C 8084CD7C 8FA40030 */  lw      $a0, 0x0030($sp)
/* 1AB70 8084CD80 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 1AB74 8084CD84 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 1AB78 8084CD88 05C10004 */  bgez    $t6, .L8084CD9C
/* 1AB7C 8084CD8C 46804220 */  cvt.s.w $f8, $f8
/* 1AB80 8084CD90 44815000 */  mtc1    $at, $f10                  ## $f10 = 4294967296.00
/* 1AB84 8084CD94 00000000 */  nop
/* 1AB88 8084CD98 460A4200 */  add.s   $f8, $f8, $f10
.L8084CD9C:
/* 1AB8C 8084CD9C 44054000 */  mfc1    $a1, $f8
/* 1AB90 8084CDA0 0C02914C */  jal     func_800A4530
/* 1AB94 8084CDA4 00000000 */  nop
/* 1AB98 8084CDA8 10400189 */  beq     $v0, $zero, .L8084D3D0
/* 1AB9C 8084CDAC 8FA40054 */  lw      $a0, 0x0054($sp)
/* 1ABA0 8084CDB0 0C00B79D */  jal     func_8002DE74
/* 1ABA4 8084CDB4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1ABA8 8084CDB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1ABAC 8084CDBC 0C00BDF7 */  jal     func_8002F7DC
/* 1ABB0 8084CDC0 24050832 */  addiu   $a1, $zero, 0x0832         ## $a1 = 00000832
/* 1ABB4 8084CDC4 10000183 */  beq     $zero, $zero, .L8084D3D4
/* 1ABB8 8084CDC8 8FBF0024 */  lw      $ra, 0x0024($sp)
.L8084CDCC:
/* 1ABBC 8084CDCC 0C00B79D */  jal     func_8002DE74
/* 1ABC0 8084CDD0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1ABC4 8084CDD4 3C0F8085 */  lui     $t7, %hi(D_8085499C)       ## $t7 = 80850000
/* 1ABC8 8084CDD8 25EF499C */  addiu   $t7, $t7, %lo(D_8085499C)  ## $t7 = 8085499C
/* 1ABCC 8084CDDC 8DF90000 */  lw      $t9, 0x0000($t7)           ## 8085499C
/* 1ABD0 8084CDE0 86020850 */  lh      $v0, 0x0850($s0)           ## 00000850
/* 1ABD4 8084CDE4 AA1901EC */  swl     $t9, 0x01EC($s0)           ## 000001EC
/* 1ABD8 8084CDE8 BA1901EF */  swr     $t9, 0x01EF($s0)           ## 000001EF
/* 1ABDC 8084CDEC 95F90004 */  lhu     $t9, 0x0004($t7)           ## 808549A0
/* 1ABE0 8084CDF0 A61901F0 */  sh      $t9, 0x01F0($s0)           ## 000001F0
/* 1ABE4 8084CDF4 8FA8004C */  lw      $t0, 0x004C($sp)
/* 1ABE8 8084CDF8 8D030210 */  lw      $v1, 0x0210($t0)           ## 00000210
/* 1ABEC 8084CDFC 10430039 */  beq     $v0, $v1, .L8084CEE4
/* 1ABF0 8084CE00 28610002 */  slti    $at, $v1, 0x0002
/* 1ABF4 8084CE04 10200003 */  beq     $at, $zero, .L8084CE14
/* 1ABF8 8084CE08 28410002 */  slti    $at, $v0, 0x0002
/* 1ABFC 8084CE0C 54200036 */  bnel    $at, $zero, .L8084CEE8
/* 1AC00 8084CE10 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L8084CE14:
/* 1AC04 8084CE14 00031400 */  sll     $v0, $v1, 16
/* 1AC08 8084CE18 00021403 */  sra     $v0, $v0, 16
/* 1AC0C 8084CE1C 28410002 */  slti    $at, $v0, 0x0002
/* 1AC10 8084CE20 1020001D */  beq     $at, $zero, .L8084CE98
/* 1AC14 8084CE24 A6020850 */  sh      $v0, 0x0850($s0)           ## 00000850
/* 1AC18 8084CE28 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 1AC1C 8084CE2C 00000000 */  nop
/* 1AC20 8084CE30 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 1AC24 8084CE34 A6090850 */  sh      $t1, 0x0850($s0)           ## 00000850
/* 1AC28 8084CE38 3C018085 */  lui     $at, %hi(D_80855530)       ## $at = 80850000
/* 1AC2C 8084CE3C C4305530 */  lwc1    $f16, %lo(D_80855530)($at)
/* 1AC30 8084CE40 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1AC34 8084CE44 3C018085 */  lui     $at, %hi(D_80855534)       ## $at = 80850000
/* 1AC38 8084CE48 4610003C */  c.lt.s  $f0, $f16
/* 1AC3C 8084CE4C 8FA40054 */  lw      $a0, 0x0054($sp)
/* 1AC40 8084CE50 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1AC44 8084CE54 3C068085 */  lui     $a2, %hi(D_8085498C)       ## $a2 = 80850000
/* 1AC48 8084CE58 45000003 */  bc1f    .L8084CE68
/* 1AC4C 8084CE5C 00000000 */  nop
/* 1AC50 8084CE60 10000007 */  beq     $zero, $zero, .L8084CE80
/* 1AC54 8084CE64 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
.L8084CE68:
/* 1AC58 8084CE68 C4325534 */  lwc1    $f18, %lo(D_80855534)($at)
/* 1AC5C 8084CE6C 4612003C */  c.lt.s  $f0, $f18
/* 1AC60 8084CE70 00000000 */  nop
/* 1AC64 8084CE74 45020003 */  bc1fl   .L8084CE84
/* 1AC68 8084CE78 00025080 */  sll     $t2, $v0,  2
/* 1AC6C 8084CE7C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8084CE80:
/* 1AC70 8084CE80 00025080 */  sll     $t2, $v0,  2
.L8084CE84:
/* 1AC74 8084CE84 00CA3021 */  addu    $a2, $a2, $t2
/* 1AC78 8084CE88 0C20C899 */  jal     func_80832264
/* 1AC7C 8084CE8C 8CC6498C */  lw      $a2, %lo(D_8085498C)($a2)
/* 1AC80 8084CE90 10000014 */  beq     $zero, $zero, .L8084CEE4
/* 1AC84 8084CE94 86020850 */  lh      $v0, 0x0850($s0)           ## 00000850
.L8084CE98:
/* 1AC88 8084CE98 860B0850 */  lh      $t3, 0x0850($s0)           ## 00000850
/* 1AC8C 8084CE9C 3C0D8085 */  lui     $t5, %hi(D_8085493C)       ## $t5 = 80850000
/* 1AC90 8084CEA0 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 1AC94 8084CEA4 000B6080 */  sll     $t4, $t3,  2
/* 1AC98 8084CEA8 01AC6821 */  addu    $t5, $t5, $t4
/* 1AC9C 8084CEAC 8DAD493C */  lw      $t5, %lo(D_8085493C)($t5)
/* 1ACA0 8084CEB0 3C064100 */  lui     $a2, 0x4100                ## $a2 = 41000000
/* 1ACA4 8084CEB4 AE0D01BC */  sw      $t5, 0x01BC($s0)           ## 000001BC
/* 1ACA8 8084CEB8 0C028FBA */  jal     SkelAnime_SetTransition
/* 1ACAC 8084CEBC 8FA40054 */  lw      $a0, 0x0054($sp)
/* 1ACB0 8084CEC0 86020850 */  lh      $v0, 0x0850($s0)           ## 00000850
/* 1ACB4 8084CEC4 8FA40054 */  lw      $a0, 0x0054($sp)
/* 1ACB8 8084CEC8 28410004 */  slti    $at, $v0, 0x0004
/* 1ACBC 8084CECC 50200006 */  beql    $at, $zero, .L8084CEE8
/* 1ACC0 8084CED0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 1ACC4 8084CED4 0C20D191 */  jal     func_80834644
/* 1ACC8 8084CED8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1ACCC 8084CEDC A200084F */  sb      $zero, 0x084F($s0)         ## 0000084F
/* 1ACD0 8084CEE0 86020850 */  lh      $v0, 0x0850($s0)           ## 00000850
.L8084CEE4:
/* 1ACD4 8084CEE4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L8084CEE8:
/* 1ACD8 8084CEE8 14410020 */  bne     $v0, $at, .L8084CF6C
/* 1ACDC 8084CEEC 8FA8004C */  lw      $t0, 0x004C($sp)
/* 1ACE0 8084CEF0 3C0E8085 */  lui     $t6, %hi(D_808535E0)       ## $t6 = 80850000
/* 1ACE4 8084CEF4 8DCE35E0 */  lw      $t6, %lo(D_808535E0)($t6)
/* 1ACE8 8084CEF8 15C00005 */  bne     $t6, $zero, .L8084CF10
/* 1ACEC 8084CEFC 00000000 */  nop
/* 1ACF0 8084CF00 0C20C893 */  jal     func_8083224C
/* 1ACF4 8084CF04 8FA40054 */  lw      $a0, 0x0054($sp)
/* 1ACF8 8084CF08 10400008 */  beq     $v0, $zero, .L8084CF2C
/* 1ACFC 8084CF0C 8FA40054 */  lw      $a0, 0x0054($sp)
.L8084CF10:
/* 1AD00 8084CF10 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 1AD04 8084CF14 24C633C8 */  addiu   $a2, $a2, 0x33C8           ## $a2 = 040033C8
/* 1AD08 8084CF18 8FA40054 */  lw      $a0, 0x0054($sp)
/* 1AD0C 8084CF1C 0C20C899 */  jal     func_80832264
/* 1AD10 8084CF20 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1AD14 8084CF24 10000017 */  beq     $zero, $zero, .L8084CF84
/* 1AD18 8084CF28 8FA40054 */  lw      $a0, 0x0054($sp)
.L8084CF2C:
/* 1AD1C 8084CF2C 0C028EF0 */  jal     func_800A3BC0
/* 1AD20 8084CF30 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 1AD24 8084CF34 10400003 */  beq     $v0, $zero, .L8084CF44
/* 1AD28 8084CF38 240F0063 */  addiu   $t7, $zero, 0x0063         ## $t7 = 00000063
/* 1AD2C 8084CF3C 10000010 */  beq     $zero, $zero, .L8084CF80
/* 1AD30 8084CF40 A60F0850 */  sh      $t7, 0x0850($s0)           ## 00000850
.L8084CF44:
/* 1AD34 8084CF44 8E1901BC */  lw      $t9, 0x01BC($s0)           ## 000001BC
/* 1AD38 8084CF48 3C180400 */  lui     $t8, 0x0400                ## $t8 = 04000000
/* 1AD3C 8084CF4C 271833B8 */  addiu   $t8, $t8, 0x33B8           ## $t8 = 040033B8
/* 1AD40 8084CF50 1719000B */  bne     $t8, $t9, .L8084CF80
/* 1AD44 8084CF54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1AD48 8084CF58 3C058085 */  lui     $a1, %hi(D_808549A4)       ## $a1 = 80850000
/* 1AD4C 8084CF5C 0C20CA49 */  jal     func_80832924
/* 1AD50 8084CF60 24A549A4 */  addiu   $a1, $a1, %lo(D_808549A4)  ## $a1 = 808549A4
/* 1AD54 8084CF64 10000007 */  beq     $zero, $zero, .L8084CF84
/* 1AD58 8084CF68 8FA40054 */  lw      $a0, 0x0054($sp)
.L8084CF6C:
/* 1AD5C 8084CF6C C5040214 */  lwc1    $f4, 0x0214($t0)           ## 00000214
/* 1AD60 8084CF70 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 1AD64 8084CF74 E60401CC */  swc1    $f4, 0x01CC($s0)           ## 000001CC
/* 1AD68 8084CF78 0C028F27 */  jal     func_800A3C9C
/* 1AD6C 8084CF7C 8FA40054 */  lw      $a0, 0x0054($sp)
.L8084CF80:
/* 1AD70 8084CF80 8FA40054 */  lw      $a0, 0x0054($sp)
.L8084CF84:
/* 1AD74 8084CF84 920501B4 */  lbu     $a1, 0x01B4($s0)           ## 000001B4
/* 1AD78 8084CF88 8E0601D8 */  lw      $a2, 0x01D8($s0)           ## 000001D8
/* 1AD7C 8084CF8C 0C028D1E */  jal     SkelAnime_LoadAnimationType1
/* 1AD80 8084CF90 8E0701D4 */  lw      $a3, 0x01D4($s0)           ## 000001D4
/* 1AD84 8084CF94 8FA90054 */  lw      $t1, 0x0054($sp)
/* 1AD88 8084CF98 912A1D6C */  lbu     $t2, 0x1D6C($t1)           ## 00001D6C
/* 1AD8C 8084CF9C 55400005 */  bnel    $t2, $zero, .L8084CFB4
/* 1AD90 8084CFA0 920C0444 */  lbu     $t4, 0x0444($s0)           ## 00000444
/* 1AD94 8084CFA4 920B0444 */  lbu     $t3, 0x0444($s0)           ## 00000444
/* 1AD98 8084CFA8 5160000A */  beql    $t3, $zero, .L8084CFD4
/* 1AD9C 8084CFAC 86020850 */  lh      $v0, 0x0850($s0)           ## 00000850
/* 1ADA0 8084CFB0 920C0444 */  lbu     $t4, 0x0444($s0)           ## 00000444
.L8084CFB4:
/* 1ADA4 8084CFB4 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 1ADA8 8084CFB8 55810003 */  bnel    $t4, $at, .L8084CFC8
/* 1ADAC 8084CFBC A20006AD */  sb      $zero, 0x06AD($s0)         ## 000006AD
/* 1ADB0 8084CFC0 A2000444 */  sb      $zero, 0x0444($s0)         ## 00000444
/* 1ADB4 8084CFC4 A20006AD */  sb      $zero, 0x06AD($s0)         ## 000006AD
.L8084CFC8:
/* 1ADB8 8084CFC8 10000011 */  beq     $zero, $zero, .L8084D010
/* 1ADBC 8084CFCC A200084F */  sb      $zero, 0x084F($s0)         ## 0000084F
/* 1ADC0 8084CFD0 86020850 */  lh      $v0, 0x0850($s0)           ## 00000850
.L8084CFD4:
/* 1ADC4 8084CFD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1ADC8 8084CFD8 28410002 */  slti    $at, $v0, 0x0002
/* 1ADCC 8084CFDC 14200003 */  bne     $at, $zero, .L8084CFEC
/* 1ADD0 8084CFE0 28410004 */  slti    $at, $v0, 0x0004
/* 1ADD4 8084CFE4 5420000B */  bnel    $at, $zero, .L8084D014
/* 1ADD8 8084CFE8 8FA7004C */  lw      $a3, 0x004C($sp)
.L8084CFEC:
/* 1ADDC 8084CFEC 0C20D99C */  jal     func_80836670
/* 1ADE0 8084CFF0 8FA50054 */  lw      $a1, 0x0054($sp)
/* 1ADE4 8084CFF4 3C018085 */  lui     $at, %hi(D_808535E0)       ## $at = 80850000
/* 1ADE8 8084CFF8 AC2235E0 */  sw      $v0, %lo(D_808535E0)($at)
/* 1ADEC 8084CFFC 3C0D8085 */  lui     $t5, %hi(D_808535E0)       ## $t5 = 80850000
/* 1ADF0 8084D000 8DAD35E0 */  lw      $t5, %lo(D_808535E0)($t5)
/* 1ADF4 8084D004 51A00003 */  beql    $t5, $zero, .L8084D014
/* 1ADF8 8084D008 8FA7004C */  lw      $a3, 0x004C($sp)
/* 1ADFC 8084D00C A200084F */  sb      $zero, 0x084F($s0)         ## 0000084F
.L8084D010:
/* 1AE00 8084D010 8FA7004C */  lw      $a3, 0x004C($sp)
.L8084D014:
/* 1AE04 8084D014 3C0141D8 */  lui     $at, 0x41D8                ## $at = 41D80000
/* 1AE08 8084D018 920E0444 */  lbu     $t6, 0x0444($s0)           ## 00000444
/* 1AE0C 8084D01C C4E60024 */  lwc1    $f6, 0x0024($a3)           ## 00000024
/* 1AE10 8084D020 C4E80258 */  lwc1    $f8, 0x0258($a3)           ## 00000258
/* 1AE14 8084D024 46083280 */  add.s   $f10, $f6, $f8
/* 1AE18 8084D028 44813000 */  mtc1    $at, $f6                   ## $f6 = 27.00
/* 1AE1C 8084D02C E60A0024 */  swc1    $f10, 0x0024($s0)          ## 00000024
/* 1AE20 8084D030 C4F2025C */  lwc1    $f18, 0x025C($a3)          ## 0000025C
/* 1AE24 8084D034 C4F00028 */  lwc1    $f16, 0x0028($a3)          ## 00000028
/* 1AE28 8084D038 46128100 */  add.s   $f4, $f16, $f18
/* 1AE2C 8084D03C 46062201 */  sub.s   $f8, $f4, $f6
/* 1AE30 8084D040 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 1AE34 8084D044 C4F00260 */  lwc1    $f16, 0x0260($a3)          ## 00000260
/* 1AE38 8084D048 C4EA002C */  lwc1    $f10, 0x002C($a3)          ## 0000002C
/* 1AE3C 8084D04C 46105480 */  add.s   $f18, $f10, $f16
/* 1AE40 8084D050 E612002C */  swc1    $f18, 0x002C($s0)          ## 0000002C
/* 1AE44 8084D054 84E200B6 */  lh      $v0, 0x00B6($a3)           ## 000000B6
/* 1AE48 8084D058 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 1AE4C 8084D05C 15C00014 */  bne     $t6, $zero, .L8084D0B0
/* 1AE50 8084D060 A602083C */  sh      $v0, 0x083C($s0)           ## 0000083C
/* 1AE54 8084D064 0C20C893 */  jal     func_8083224C
/* 1AE58 8084D068 8FA40054 */  lw      $a0, 0x0054($sp)
/* 1AE5C 8084D06C 144000D8 */  bne     $v0, $zero, .L8084D3D0
/* 1AE60 8084D070 8FAF004C */  lw      $t7, 0x004C($sp)
/* 1AE64 8084D074 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 1AE68 8084D078 C5E60068 */  lwc1    $f6, 0x0068($t7)           ## 00000068
/* 1AE6C 8084D07C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1AE70 8084D080 46062032 */  c.eq.s  $f4, $f6
/* 1AE74 8084D084 00000000 */  nop
/* 1AE78 8084D088 45020005 */  bc1fl   .L8084D0A0
/* 1AE7C 8084D08C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1AE80 8084D090 0C20ED91 */  jal     func_8083B644
/* 1AE84 8084D094 8FA50054 */  lw      $a1, 0x0054($sp)
/* 1AE88 8084D098 144000CD */  bne     $v0, $zero, .L8084D3D0
/* 1AE8C 8084D09C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8084D0A0:
/* 1AE90 8084D0A0 0C20F077 */  jal     func_8083C1DC
/* 1AE94 8084D0A4 8FA50054 */  lw      $a1, 0x0054($sp)
/* 1AE98 8084D0A8 144000C9 */  bne     $v0, $zero, .L8084D3D0
/* 1AE9C 8084D0AC 8FA7004C */  lw      $a3, 0x004C($sp)
.L8084D0B0:
/* 1AEA0 8084D0B0 3C188085 */  lui     $t8, %hi(D_808535E0)       ## $t8 = 80850000
/* 1AEA4 8084D0B4 8F1835E0 */  lw      $t8, %lo(D_808535E0)($t8)
/* 1AEA8 8084D0B8 5700005C */  bnel    $t8, $zero, .L8084D22C
/* 1AEAC 8084D0BC 8E09067C */  lw      $t1, 0x067C($s0)           ## 0000067C
/* 1AEB0 8084D0C0 8219084F */  lb      $t9, 0x084F($s0)           ## 0000084F
/* 1AEB4 8084D0C4 260606C8 */  addiu   $a2, $s0, 0x06C8           ## $a2 = 000006C8
/* 1AEB8 8084D0C8 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 000006C8
/* 1AEBC 8084D0CC 13200034 */  beq     $t9, $zero, .L8084D1A0
/* 1AEC0 8084D0D0 8FA40054 */  lw      $a0, 0x0054($sp)
/* 1AEC4 8084D0D4 0C028EF0 */  jal     func_800A3BC0
/* 1AEC8 8084D0D8 AFA60030 */  sw      $a2, 0x0030($sp)
/* 1AECC 8084D0DC 10400007 */  beq     $v0, $zero, .L8084D0FC
/* 1AED0 8084D0E0 8FA60030 */  lw      $a2, 0x0030($sp)
/* 1AED4 8084D0E4 8FA8004C */  lw      $t0, 0x004C($sp)
/* 1AED8 8084D0E8 2401FEFF */  addiu   $at, $zero, 0xFEFF         ## $at = FFFFFEFF
/* 1AEDC 8084D0EC 8D0901F0 */  lw      $t1, 0x01F0($t0)           ## 000001F0
/* 1AEE0 8084D0F0 01215024 */  and     $t2, $t1, $at
/* 1AEE4 8084D0F4 AD0A01F0 */  sw      $t2, 0x01F0($t0)           ## 000001F0
/* 1AEE8 8084D0F8 A200084F */  sb      $zero, 0x084F($s0)         ## 0000084F
.L8084D0FC:
/* 1AEEC 8084D0FC 8E0C06D0 */  lw      $t4, 0x06D0($s0)           ## 000006D0
/* 1AEF0 8084D100 3C0B0400 */  lui     $t3, 0x0400                ## $t3 = 04000000
/* 1AEF4 8084D104 256B33B0 */  addiu   $t3, $t3, 0x33B0           ## $t3 = 040033B0
/* 1AEF8 8084D108 156C0012 */  bne     $t3, $t4, .L8084D154
/* 1AEFC 8084D10C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 1AF00 8084D110 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 1AF04 8084D114 0C02914C */  jal     func_800A4530
/* 1AF08 8084D118 3C0541B8 */  lui     $a1, 0x41B8                ## $a1 = 41B80000
/* 1AF0C 8084D11C 10400006 */  beq     $v0, $zero, .L8084D138
/* 1AF10 8084D120 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1AF14 8084D124 0C00BDF7 */  jal     func_8002F7DC
/* 1AF18 8084D128 2405181E */  addiu   $a1, $zero, 0x181E         ## $a1 = 0000181E
/* 1AF1C 8084D12C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1AF20 8084D130 0C20C9A6 */  jal     func_80832698
/* 1AF24 8084D134 24056802 */  addiu   $a1, $zero, 0x6802         ## $a1 = 00006802
.L8084D138:
/* 1AF28 8084D138 8FA40054 */  lw      $a0, 0x0054($sp)
/* 1AF2C 8084D13C 920501B4 */  lbu     $a1, 0x01B4($s0)           ## 000001B4
/* 1AF30 8084D140 8E0601D4 */  lw      $a2, 0x01D4($s0)           ## 000001D4
/* 1AF34 8084D144 0C028D1E */  jal     SkelAnime_LoadAnimationType1
/* 1AF38 8084D148 8E0706E8 */  lw      $a3, 0x06E8($s0)           ## 000006E8
/* 1AF3C 8084D14C 10000037 */  beq     $zero, $zero, .L8084D22C
/* 1AF40 8084D150 8E09067C */  lw      $t1, 0x067C($s0)           ## 0000067C
.L8084D154:
/* 1AF44 8084D154 0C02914C */  jal     func_800A4530
/* 1AF48 8084D158 3C054120 */  lui     $a1, 0x4120                ## $a1 = 41200000
/* 1AF4C 8084D15C 10400006 */  beq     $v0, $zero, .L8084D178
/* 1AF50 8084D160 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1AF54 8084D164 0C00BDF7 */  jal     func_8002F7DC
/* 1AF58 8084D168 2405181E */  addiu   $a1, $zero, 0x181E         ## $a1 = 0000181E
/* 1AF5C 8084D16C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1AF60 8084D170 0C20C9A6 */  jal     func_80832698
/* 1AF64 8084D174 24056802 */  addiu   $a1, $zero, 0x6802         ## $a1 = 00006802
.L8084D178:
/* 1AF68 8084D178 3C0D8085 */  lui     $t5, %hi(D_80853410)       ## $t5 = 80850000
/* 1AF6C 8084D17C 25AD3410 */  addiu   $t5, $t5, %lo(D_80853410)  ## $t5 = 80853410
/* 1AF70 8084D180 920501B4 */  lbu     $a1, 0x01B4($s0)           ## 000001B4
/* 1AF74 8084D184 8E0601D4 */  lw      $a2, 0x01D4($s0)           ## 000001D4
/* 1AF78 8084D188 8E0706E8 */  lw      $a3, 0x06E8($s0)           ## 000006E8
/* 1AF7C 8084D18C AFAD0010 */  sw      $t5, 0x0010($sp)
/* 1AF80 8084D190 0C028D52 */  jal     SkelAnime_LoadAnimationType3
/* 1AF84 8084D194 8FA40054 */  lw      $a0, 0x0054($sp)
/* 1AF88 8084D198 10000024 */  beq     $zero, $zero, .L8084D22C
/* 1AF8C 8084D19C 8E09067C */  lw      $t1, 0x067C($s0)           ## 0000067C
.L8084D1A0:
/* 1AF90 8084D1A0 8CE301F0 */  lw      $v1, 0x01F0($a3)           ## 000001F0
/* 1AF94 8084D1A4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 1AF98 8084D1A8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1AF9C 8084D1AC 306E0200 */  andi    $t6, $v1, 0x0200           ## $t6 = 00000000
/* 1AFA0 8084D1B0 11C00003 */  beq     $t6, $zero, .L8084D1C0
/* 1AFA4 8084D1B4 306F0100 */  andi    $t7, $v1, 0x0100           ## $t7 = 00000000
/* 1AFA8 8084D1B8 10000001 */  beq     $zero, $zero, .L8084D1C0
/* 1AFAC 8084D1BC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8084D1C0:
/* 1AFB0 8084D1C0 10400004 */  beq     $v0, $zero, .L8084D1D4
/* 1AFB4 8084D1C4 8FA40054 */  lw      $a0, 0x0054($sp)
/* 1AFB8 8084D1C8 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 1AFBC 8084D1CC 10000010 */  beq     $zero, $zero, .L8084D210
/* 1AFC0 8084D1D0 24C633B0 */  addiu   $a2, $a2, 0x33B0           ## $a2 = 040033B0
.L8084D1D4:
/* 1AFC4 8084D1D4 11E00003 */  beq     $t7, $zero, .L8084D1E4
/* 1AFC8 8084D1D8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1AFCC 8084D1DC 10000001 */  beq     $zero, $zero, .L8084D1E4
/* 1AFD0 8084D1E0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8084D1E4:
/* 1AFD4 8084D1E4 1040000A */  beq     $v0, $zero, .L8084D210
/* 1AFD8 8084D1E8 00000000 */  nop
/* 1AFDC 8084D1EC 86020850 */  lh      $v0, 0x0850($s0)           ## 00000850
/* 1AFE0 8084D1F0 28410002 */  slti    $at, $v0, 0x0002
/* 1AFE4 8084D1F4 14200006 */  bne     $at, $zero, .L8084D210
/* 1AFE8 8084D1F8 24010063 */  addiu   $at, $zero, 0x0063         ## $at = 00000063
/* 1AFEC 8084D1FC 10410004 */  beq     $v0, $at, .L8084D210
/* 1AFF0 8084D200 0002C080 */  sll     $t8, $v0,  2
/* 1AFF4 8084D204 3C068085 */  lui     $a2, %hi(D_80854960)       ## $a2 = 80850000
/* 1AFF8 8084D208 00D83021 */  addu    $a2, $a2, $t8
/* 1AFFC 8084D20C 8CC64960 */  lw      $a2, %lo(D_80854960)($a2)
.L8084D210:
/* 1B000 8084D210 50C00006 */  beql    $a2, $zero, .L8084D22C
/* 1B004 8084D214 8E09067C */  lw      $t1, 0x067C($s0)           ## 0000067C
/* 1B008 8084D218 0C02901F */  jal     SkelAnime_LinkChangeAnimationDefaultStop
/* 1B00C 8084D21C 260506C8 */  addiu   $a1, $s0, 0x06C8           ## $a1 = 000006C8
/* 1B010 8084D220 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 1B014 8084D224 A219084F */  sb      $t9, 0x084F($s0)           ## 0000084F
/* 1B018 8084D228 8E09067C */  lw      $t1, 0x067C($s0)           ## 0000067C
.L8084D22C:
/* 1B01C 8084D22C 8FA40054 */  lw      $a0, 0x0054($sp)
/* 1B020 8084D230 000952C0 */  sll     $t2, $t1, 11
/* 1B024 8084D234 05430023 */  bgezl   $t2, .L8084D2C4
/* 1B028 8084D238 92080444 */  lbu     $t0, 0x0444($s0)           ## 00000444
/* 1B02C 8084D23C 0C20EB53 */  jal     func_8083AD4C
/* 1B030 8084D240 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1B034 8084D244 1040000A */  beq     $v0, $zero, .L8084D270
/* 1B038 8084D248 3C088086 */  lui     $t0, %hi(D_80858AB4)       ## $t0 = 80860000
/* 1B03C 8084D24C 8D088AB4 */  lw      $t0, %lo(D_80858AB4)($t0)
/* 1B040 8084D250 950B000C */  lhu     $t3, 0x000C($t0)           ## 8086000C
/* 1B044 8084D254 316C8000 */  andi    $t4, $t3, 0x8000           ## $t4 = 00000000
/* 1B048 8084D258 55800006 */  bnel    $t4, $zero, .L8084D274
/* 1B04C 8084D25C 8E0D067C */  lw      $t5, 0x067C($s0)           ## 0000067C
/* 1B050 8084D260 0C20CEF3 */  jal     func_80833BCC
/* 1B054 8084D264 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1B058 8084D268 10400008 */  beq     $v0, $zero, .L8084D28C
/* 1B05C 8084D26C 8FA40054 */  lw      $a0, 0x0054($sp)
.L8084D270:
/* 1B060 8084D270 8E0D067C */  lw      $t5, 0x067C($s0)           ## 0000067C
.L8084D274:
/* 1B064 8084D274 3C01FFEF */  lui     $at, 0xFFEF                ## $at = FFEF0000
/* 1B068 8084D278 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFEFFFFF
/* 1B06C 8084D27C 01A17024 */  and     $t6, $t5, $at
/* 1B070 8084D280 A20006AD */  sb      $zero, 0x06AD($s0)         ## 000006AD
/* 1B074 8084D284 10000052 */  beq     $zero, $zero, .L8084D3D0
/* 1B078 8084D288 AE0E067C */  sw      $t6, 0x067C($s0)           ## 0000067C
.L8084D28C:
/* 1B07C 8084D28C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1B080 8084D290 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 1B084 8084D294 0C212AF6 */  jal     func_8084ABD8
/* 1B088 8084D298 2407EC78 */  addiu   $a3, $zero, 0xEC78         ## $a3 = FFFFEC78
/* 1B08C 8084D29C 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 1B090 8084D2A0 240AEC78 */  addiu   $t2, $zero, 0xEC78         ## $t2 = FFFFEC78
/* 1B094 8084D2A4 A60A06B0 */  sh      $t2, 0x06B0($s0)           ## 000006B0
/* 1B098 8084D2A8 004FC023 */  subu    $t8, $v0, $t7
/* 1B09C 8084D2AC A61806BE */  sh      $t8, 0x06BE($s0)           ## 000006BE
/* 1B0A0 8084D2B0 861906BE */  lh      $t9, 0x06BE($s0)           ## 000006BE
/* 1B0A4 8084D2B4 27291388 */  addiu   $t1, $t9, 0x1388           ## $t1 = 00001388
/* 1B0A8 8084D2B8 10000045 */  beq     $zero, $zero, .L8084D3D0
/* 1B0AC 8084D2BC A60906BE */  sh      $t1, 0x06BE($s0)           ## 000006BE
/* 1B0B0 8084D2C0 92080444 */  lbu     $t0, 0x0444($s0)           ## 00000444
.L8084D2C4:
/* 1B0B4 8084D2C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1B0B8 8084D2C8 5500000A */  bnel    $t0, $zero, .L8084D2F4
/* 1B0BC 8084D2CC 8E0B0664 */  lw      $t3, 0x0664($s0)           ## 00000664
/* 1B0C0 8084D2D0 0C21326F */  jal     func_8084C9BC
/* 1B0C4 8084D2D4 8FA50054 */  lw      $a1, 0x0054($sp)
/* 1B0C8 8084D2D8 1440003D */  bne     $v0, $zero, .L8084D3D0
/* 1B0CC 8084D2DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1B0D0 8084D2E0 0C20EC10 */  jal     func_8083B040
/* 1B0D4 8084D2E4 8FA50054 */  lw      $a1, 0x0054($sp)
/* 1B0D8 8084D2E8 5440003A */  bnel    $v0, $zero, .L8084D3D4
/* 1B0DC 8084D2EC 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 1B0E0 8084D2F0 8E0B0664 */  lw      $t3, 0x0664($s0)           ## 00000664
.L8084D2F4:
/* 1B0E4 8084D2F4 11600026 */  beq     $t3, $zero, .L8084D390
/* 1B0E8 8084D2F8 00000000 */  nop
/* 1B0EC 8084D2FC 0C00B75E */  jal     func_8002DD78
/* 1B0F0 8084D300 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1B0F4 8084D304 1040001E */  beq     $v0, $zero, .L8084D380
/* 1B0F8 8084D308 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1B0FC 8084D30C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1B100 8084D310 0C20F6E6 */  jal     func_8083DB98
/* 1B104 8084D314 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 1B108 8084D318 860C00B6 */  lh      $t4, 0x00B6($s0)           ## 000000B6
/* 1B10C 8084D31C 240EB556 */  addiu   $t6, $zero, 0xB556         ## $t6 = FFFFB556
/* 1B110 8084D320 004C6823 */  subu    $t5, $v0, $t4
/* 1B114 8084D324 A60D06BE */  sh      $t5, 0x06BE($s0)           ## 000006BE
/* 1B118 8084D328 860306BE */  lh      $v1, 0x06BE($s0)           ## 000006BE
/* 1B11C 8084D32C 2861B556 */  slti    $at, $v1, 0xB556
/* 1B120 8084D330 50200004 */  beql    $at, $zero, .L8084D344
/* 1B124 8084D334 28614AAB */  slti    $at, $v1, 0x4AAB
/* 1B128 8084D338 10000007 */  beq     $zero, $zero, .L8084D358
/* 1B12C 8084D33C A60E06BE */  sh      $t6, 0x06BE($s0)           ## 000006BE
/* 1B130 8084D340 28614AAB */  slti    $at, $v1, 0x4AAB
.L8084D344:
/* 1B134 8084D344 14200003 */  bne     $at, $zero, .L8084D354
/* 1B138 8084D348 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 1B13C 8084D34C 10000001 */  beq     $zero, $zero, .L8084D354
/* 1B140 8084D350 24024AAA */  addiu   $v0, $zero, 0x4AAA         ## $v0 = 00004AAA
.L8084D354:
/* 1B144 8084D354 A60206BE */  sh      $v0, 0x06BE($s0)           ## 000006BE
.L8084D358:
/* 1B148 8084D358 860306BE */  lh      $v1, 0x06BE($s0)           ## 000006BE
/* 1B14C 8084D35C 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 1B150 8084D360 960906AE */  lhu     $t1, 0x06AE($s0)           ## 000006AE
/* 1B154 8084D364 24791388 */  addiu   $t9, $v1, 0x1388           ## $t9 = 00001388
/* 1B158 8084D368 01E3C021 */  addu    $t8, $t7, $v1
/* 1B15C 8084D36C 352A0080 */  ori     $t2, $t1, 0x0080           ## $t2 = 00000080
/* 1B160 8084D370 A6180046 */  sh      $t8, 0x0046($s0)           ## 00000046
/* 1B164 8084D374 A61906BE */  sh      $t9, 0x06BE($s0)           ## 000006BE
/* 1B168 8084D378 10000015 */  beq     $zero, $zero, .L8084D3D0
/* 1B16C 8084D37C A60A06AE */  sh      $t2, 0x06AE($s0)           ## 000006AE
.L8084D380:
/* 1B170 8084D380 0C20F6E6 */  jal     func_8083DB98
/* 1B174 8084D384 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 1B178 8084D388 10000012 */  beq     $zero, $zero, .L8084D3D4
/* 1B17C 8084D38C 8FBF0024 */  lw      $ra, 0x0024($sp)
.L8084D390:
/* 1B180 8084D390 0C00B75E */  jal     func_8002DD78
/* 1B184 8084D394 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1B188 8084D398 1040000D */  beq     $v0, $zero, .L8084D3D0
/* 1B18C 8084D39C 8FA40054 */  lw      $a0, 0x0054($sp)
/* 1B190 8084D3A0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1B194 8084D3A4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 1B198 8084D3A8 0C212AF6 */  jal     func_8084ABD8
/* 1B19C 8084D3AC 2407EC78 */  addiu   $a3, $zero, 0xEC78         ## $a3 = FFFFEC78
/* 1B1A0 8084D3B0 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 1B1A4 8084D3B4 240EEC78 */  addiu   $t6, $zero, 0xEC78         ## $t6 = FFFFEC78
/* 1B1A8 8084D3B8 A60E06B0 */  sh      $t6, 0x06B0($s0)           ## 000006B0
/* 1B1AC 8084D3BC 00485823 */  subu    $t3, $v0, $t0
/* 1B1B0 8084D3C0 A60B06BE */  sh      $t3, 0x06BE($s0)           ## 000006BE
/* 1B1B4 8084D3C4 860C06BE */  lh      $t4, 0x06BE($s0)           ## 000006BE
/* 1B1B8 8084D3C8 258D1388 */  addiu   $t5, $t4, 0x1388           ## $t5 = 00001388
/* 1B1BC 8084D3CC A60D06BE */  sh      $t5, 0x06BE($s0)           ## 000006BE
.L8084D3D0:
/* 1B1C0 8084D3D0 8FBF0024 */  lw      $ra, 0x0024($sp)
.L8084D3D4:
/* 1B1C4 8084D3D4 8FB00020 */  lw      $s0, 0x0020($sp)
/* 1B1C8 8084D3D8 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 1B1CC 8084D3DC 03E00008 */  jr      $ra
/* 1B1D0 8084D3E0 00000000 */  nop


