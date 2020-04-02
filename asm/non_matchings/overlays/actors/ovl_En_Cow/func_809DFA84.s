glabel func_809DFA84
/* 00C84 809DFA84 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00C88 809DFA88 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00C8C 809DFA8C AFB00028 */  sw      $s0, 0x0028($sp)
/* 00C90 809DFA90 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00C94 809DFA94 94820278 */  lhu     $v0, 0x0278($a0)           ## 00000278
/* 00C98 809DFA98 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C9C 809DFA9C 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00CA0 809DFAA0 18400003 */  blez    $v0, .L809DFAB0
/* 00CA4 809DFAA4 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00CA8 809DFAA8 1000003A */  beq     $zero, $zero, .L809DFB94
/* 00CAC 809DFAAC A48E0278 */  sh      $t6, 0x0278($a0)           ## 00000278
.L809DFAB0:
/* 00CB0 809DFAB0 44816000 */  mtc1    $at, $f12                  ## $f12 = 200.00
/* 00CB4 809DFAB4 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 00CB8 809DFAB8 00000000 */  nop
/* 00CBC 809DFABC 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00CC0 809DFAC0 44812000 */  mtc1    $at, $f4                   ## $f4 = 40.00
/* 00CC4 809DFAC4 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00CC8 809DFAC8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00CCC 809DFACC 46040180 */  add.s   $f6, $f0, $f4
/* 00CD0 809DFAD0 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 00CD4 809DFAD4 24844348 */  addiu   $a0, $a0, 0x4348           ## $a0 = 06004348
/* 00CD8 809DFAD8 444FF800 */  cfc1    $t7, $31
/* 00CDC 809DFADC 44D8F800 */  ctc1    $t8, $31
/* 00CE0 809DFAE0 00000000 */  nop
/* 00CE4 809DFAE4 46003224 */  cvt.w.s $f8, $f6
/* 00CE8 809DFAE8 4458F800 */  cfc1    $t8, $31
/* 00CEC 809DFAEC 00000000 */  nop
/* 00CF0 809DFAF0 33180078 */  andi    $t8, $t8, 0x0078           ## $t8 = 00000000
/* 00CF4 809DFAF4 53000013 */  beql    $t8, $zero, .L809DFB44
/* 00CF8 809DFAF8 44184000 */  mfc1    $t8, $f8
/* 00CFC 809DFAFC 44814000 */  mtc1    $at, $f8                   ## $f8 = 2147483648.00
/* 00D00 809DFB00 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00D04 809DFB04 46083201 */  sub.s   $f8, $f6, $f8
/* 00D08 809DFB08 44D8F800 */  ctc1    $t8, $31
/* 00D0C 809DFB0C 00000000 */  nop
/* 00D10 809DFB10 46004224 */  cvt.w.s $f8, $f8
/* 00D14 809DFB14 4458F800 */  cfc1    $t8, $31
/* 00D18 809DFB18 00000000 */  nop
/* 00D1C 809DFB1C 33180078 */  andi    $t8, $t8, 0x0078           ## $t8 = 00000000
/* 00D20 809DFB20 17000005 */  bne     $t8, $zero, .L809DFB38
/* 00D24 809DFB24 00000000 */  nop
/* 00D28 809DFB28 44184000 */  mfc1    $t8, $f8
/* 00D2C 809DFB2C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00D30 809DFB30 10000007 */  beq     $zero, $zero, .L809DFB50
/* 00D34 809DFB34 0301C025 */  or      $t8, $t8, $at              ## $t8 = 80000000
.L809DFB38:
/* 00D38 809DFB38 10000005 */  beq     $zero, $zero, .L809DFB50
/* 00D3C 809DFB3C 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 00D40 809DFB40 44184000 */  mfc1    $t8, $f8
.L809DFB44:
/* 00D44 809DFB44 00000000 */  nop
/* 00D48 809DFB48 0700FFFB */  bltz    $t8, .L809DFB38
/* 00D4C 809DFB4C 00000000 */  nop
.L809DFB50:
/* 00D50 809DFB50 44CFF800 */  ctc1    $t7, $31
/* 00D54 809DFB54 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00D58 809DFB58 A6180278 */  sh      $t8, 0x0278($s0)           ## 00000278
/* 00D5C 809DFB5C 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 00D60 809DFB60 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00D64 809DFB64 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00D68 809DFB68 46805420 */  cvt.s.w $f16, $f10
/* 00D6C 809DFB6C 8E0701FC */  lw      $a3, 0x01FC($s0)           ## 000001FC
/* 00D70 809DFB70 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00D74 809DFB74 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 00D78 809DFB78 44060000 */  mfc1    $a2, $f0
/* 00D7C 809DFB7C AFB90014 */  sw      $t9, 0x0014($sp)
/* 00D80 809DFB80 24A54348 */  addiu   $a1, $a1, 0x4348           ## $a1 = 06004348
/* 00D84 809DFB84 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 00D88 809DFB88 260401E4 */  addiu   $a0, $s0, 0x01E4           ## $a0 = 000001E4
/* 00D8C 809DFB8C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00D90 809DFB90 E7A00018 */  swc1    $f0, 0x0018($sp)
.L809DFB94:
/* 00D94 809DFB94 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 00D98 809DFB98 44812000 */  mtc1    $at, $f4                   ## $f4 = 150.00
/* 00D9C 809DFB9C C6120090 */  lwc1    $f18, 0x0090($s0)          ## 00000090
/* 00DA0 809DFBA0 4604903C */  c.lt.s  $f18, $f4
/* 00DA4 809DFBA4 00000000 */  nop
/* 00DA8 809DFBA8 45020018 */  bc1fl   .L809DFC0C
/* 00DAC 809DFBAC 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00DB0 809DFBB0 8608008A */  lh      $t0, 0x008A($s0)           ## 0000008A
/* 00DB4 809DFBB4 860900B6 */  lh      $t1, 0x00B6($s0)           ## 000000B6
/* 00DB8 809DFBB8 01091023 */  subu    $v0, $t0, $t1
/* 00DBC 809DFBBC 00021400 */  sll     $v0, $v0, 16
/* 00DC0 809DFBC0 00021403 */  sra     $v0, $v0, 16
/* 00DC4 809DFBC4 04400003 */  bltz    $v0, .L809DFBD4
/* 00DC8 809DFBC8 00021823 */  subu    $v1, $zero, $v0
/* 00DCC 809DFBCC 10000001 */  beq     $zero, $zero, .L809DFBD4
/* 00DD0 809DFBD0 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L809DFBD4:
/* 00DD4 809DFBD4 286161A9 */  slti    $at, $v1, 0x61A9
/* 00DD8 809DFBD8 5420000C */  bnel    $at, $zero, .L809DFC0C
/* 00DDC 809DFBDC 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00DE0 809DFBE0 96020276 */  lhu     $v0, 0x0276($s0)           ## 00000276
/* 00DE4 809DFBE4 304A0002 */  andi    $t2, $v0, 0x0002           ## $t2 = 00000000
/* 00DE8 809DFBE8 15400007 */  bne     $t2, $zero, .L809DFC08
/* 00DEC 809DFBEC 344B0002 */  ori     $t3, $v0, 0x0002           ## $t3 = 00000002
/* 00DF0 809DFBF0 8E0D01EC */  lw      $t5, 0x01EC($s0)           ## 000001EC
/* 00DF4 809DFBF4 3C0C0600 */  lui     $t4, 0x0600                ## $t4 = 06000000
/* 00DF8 809DFBF8 258C4348 */  addiu   $t4, $t4, 0x4348           ## $t4 = 06004348
/* 00DFC 809DFBFC 158D0002 */  bne     $t4, $t5, .L809DFC08
/* 00E00 809DFC00 A60B0276 */  sh      $t3, 0x0276($s0)           ## 00000276
/* 00E04 809DFC04 A6000278 */  sh      $zero, 0x0278($s0)         ## 00000278
.L809DFC08:
/* 00E08 809DFC08 8FBF002C */  lw      $ra, 0x002C($sp)
.L809DFC0C:
/* 00E0C 809DFC0C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00E10 809DFC10 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00E14 809DFC14 03E00008 */  jr      $ra
/* 00E18 809DFC18 00000000 */  nop


