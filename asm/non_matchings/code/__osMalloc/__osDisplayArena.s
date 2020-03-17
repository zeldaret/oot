.rdata
glabel D_8014AF48
    .asciz "アリーナは初期化されていません\n" #Arena is not initalized
    .balign 4

glabel D_8014AF68
    .asciz "アリーナの内容 (0x%08x)\n" #Arena contents
    .balign 4

glabel D_8014AF84
    .asciz "メモリブロック範囲 status サイズ  [時刻  s ms us ns: TID:src:行]\n" #Memory block range status size [time s ms us ns: TID: src: line]
    .balign 4

glabel D_8014AFC8
    .asciz "%08x-%08x%c %s %08x"
    .balign 4

glabel D_8014AFDC
    .asciz "空き" #Free
    .balign 4

glabel D_8014AFE4
    .asciz "確保" #Secure
    .balign 4
   
glabel D_8014AFEC
    .asciz " [%016llu:%2d:%s:%d]"
    .balign 4

glabel D_8014B004
    .asciz "**NULL**"
    .balign 4

glabel D_8014B010
    .asciz "\n"
    .balign 4

glabel D_8014B014
    .asciz "%08x Block Invalid\n"
    .balign 4

glabel D_8014B028
    .asciz "確保ブロックサイズの合計 0x%08x バイト\n" #Total reserved block size 0x% 08x bytes
    .balign 4

glabel D_8014B050
    .asciz "空きブロックサイズの合計 0x%08x バイト\n" #Total free block size 0x% 08x bytes
    .balign 4

glabel D_8014B078
    .asciz "最大空きブロックサイズ   0x%08x バイト\n" #Maximum free block size 0x% 08x bytes
    .balign 4

.text
glabel __osDisplayArena
/* B76020 800FEE80 27BDFF98 */  addiu $sp, $sp, -0x68
/* B76024 800FEE84 AFBF003C */  sw    $ra, 0x3c($sp)
/* B76028 800FEE88 AFB40038 */  sw    $s4, 0x38($sp)
/* B7602C 800FEE8C AFB30034 */  sw    $s3, 0x34($sp)
/* B76030 800FEE90 AFB20030 */  sw    $s2, 0x30($sp)
/* B76034 800FEE94 AFB1002C */  sw    $s1, 0x2c($sp)
/* B76038 800FEE98 AFB00028 */  sw    $s0, 0x28($sp)
/* B7603C 800FEE9C 0C03F7D3 */  jal   __osMallocIsInitalized
/* B76040 800FEEA0 AFA40068 */   sw    $a0, 0x68($sp)
/* B76044 800FEEA4 14400005 */  bnez  $v0, .L800FEEBC
/* B76048 800FEEA8 3C048015 */   lui   $a0, %hi(D_8014AF48) # $a0, 0x8015
/* B7604C 800FEEAC 0C00084C */  jal   osSyncPrintf
/* B76050 800FEEB0 2484AF48 */   addiu $a0, %lo(D_8014AF48) # addiu $a0, $a0, -0x50b8
/* B76054 800FEEB4 10000076 */  b     .L800FF090
/* B76058 800FEEB8 8FBF003C */   lw    $ra, 0x3c($sp)
.L800FEEBC:
/* B7605C 800FEEBC 0C03F70F */  jal   ArenaImpl_Lock
/* B76060 800FEEC0 8FA40068 */   lw    $a0, 0x68($sp)
/* B76064 800FEEC4 3C048015 */  lui   $a0, %hi(D_8014AF68) # $a0, 0x8015
/* B76068 800FEEC8 0000A025 */  move  $s4, $zero
/* B7606C 800FEECC 00009025 */  move  $s2, $zero
/* B76070 800FEED0 00009825 */  move  $s3, $zero
/* B76074 800FEED4 2484AF68 */  addiu $a0, %lo(D_8014AF68) # addiu $a0, $a0, -0x5098
/* B76078 800FEED8 0C00084C */  jal   osSyncPrintf
/* B7607C 800FEEDC 8FA50068 */   lw    $a1, 0x68($sp)
/* B76080 800FEEE0 3C048015 */  lui   $a0, %hi(D_8014AF84) # $a0, 0x8015
/* B76084 800FEEE4 0C00084C */  jal   osSyncPrintf
/* B76088 800FEEE8 2484AF84 */   addiu $a0, %lo(D_8014AF84) # addiu $a0, $a0, -0x507c
/* B7608C 800FEEEC 8FAE0068 */  lw    $t6, 0x68($sp)
/* B76090 800FEEF0 8DD00000 */  lw    $s0, ($t6)
/* B76094 800FEEF4 12000057 */  beqz  $s0, .L800FF054
/* B76098 800FEEF8 00000000 */   nop   
.L800FEEFC:
/* B7609C 800FEEFC 1200004F */  beqz  $s0, .L800FF03C
/* B760A0 800FEF00 3C048015 */   lui   $a0, %hi(D_8014B014)
/* B760A4 800FEF04 860F0000 */  lh    $t7, ($s0)
/* B760A8 800FEF08 24017373 */  li    $at, 29555
/* B760AC 800FEF0C 02002825 */  move  $a1, $s0
/* B760B0 800FEF10 15E1004A */  bne   $t7, $at, .L800FF03C
/* B760B4 800FEF14 00000000 */   nop   
/* B760B8 800FEF18 8E110008 */  lw    $s1, 8($s0)
/* B760BC 800FEF1C 3C038015 */  lui   $v1, %hi(D_8014AFE4) # $v1, 0x8015
/* B760C0 800FEF20 2463AFE4 */  addiu $v1, %lo(D_8014AFE4) # addiu $v1, $v1, -0x501c
/* B760C4 800FEF24 16200003 */  bnez  $s1, .L800FEF34
/* B760C8 800FEF28 3C048015 */   lui   $a0, %hi(D_8014AFC8) # $a0, 0x8015
/* B760CC 800FEF2C 10000008 */  b     .L800FEF50
/* B760D0 800FEF30 24070024 */   li    $a3, 36
.L800FEF34:
/* B760D4 800FEF34 8E38000C */  lw    $t8, 0xc($s1)
/* B760D8 800FEF38 24020020 */  li    $v0, 32
/* B760DC 800FEF3C 12180003 */  beq   $s0, $t8, .L800FEF4C
/* B760E0 800FEF40 00000000 */   nop   
/* B760E4 800FEF44 10000001 */  b     .L800FEF4C
/* B760E8 800FEF48 24020021 */   li    $v0, 33
.L800FEF4C:
/* B760EC 800FEF4C 00403825 */  move  $a3, $v0
.L800FEF50:
/* B760F0 800FEF50 86190002 */  lh    $t9, 2($s0)
/* B760F4 800FEF54 13200004 */  beqz  $t9, .L800FEF68
/* B760F8 800FEF58 00000000 */   nop   
/* B760FC 800FEF5C 3C038015 */  lui   $v1, %hi(D_8014AFDC) # $v1, 0x8015
/* B76100 800FEF60 10000001 */  b     .L800FEF68
/* B76104 800FEF64 2463AFDC */   addiu $v1, %lo(D_8014AFDC) # addiu $v1, $v1, -0x5024
.L800FEF68:
/* B76108 800FEF68 8E020004 */  lw    $v0, 4($s0)
/* B7610C 800FEF6C AFA30010 */  sw    $v1, 0x10($sp)
/* B76110 800FEF70 2484AFC8 */  addiu $a0, %lo(D_8014AFC8) # addiu $a0, $a0, -0x5038
/* B76114 800FEF74 02023021 */  addu  $a2, $s0, $v0
/* B76118 800FEF78 24C60030 */  addiu $a2, $a2, 0x30
/* B7611C 800FEF7C 0C00084C */  jal   osSyncPrintf
/* B76120 800FEF80 AFA20014 */   sw    $v0, 0x14($sp)
/* B76124 800FEF84 86080002 */  lh    $t0, 2($s0)
/* B76128 800FEF88 24060000 */  li    $a2, 0
/* B7612C 800FEF8C 24070040 */  li    $a3, 64
/* B76130 800FEF90 1500001B */  bnez  $t0, .L800FF000
/* B76134 800FEF94 00000000 */   nop   
/* B76138 800FEF98 8E040020 */  lw    $a0, 0x20($s0)
/* B7613C 800FEF9C 0C000E1E */  jal   __ll_mul
/* B76140 800FEFA0 8E050024 */   lw    $a1, 0x24($s0)
/* B76144 800FEFA4 00402025 */  move  $a0, $v0
/* B76148 800FEFA8 00602825 */  move  $a1, $v1
/* B7614C 800FEFAC 24060000 */  li    $a2, 0
/* B76150 800FEFB0 0C000DDE */  jal   __ull_div
/* B76154 800FEFB4 24070003 */   li    $a3, 3
/* B76158 800FEFB8 AFA20040 */  sw    $v0, 0x40($sp)
/* B7615C 800FEFBC AFA30044 */  sw    $v1, 0x44($sp)
/* B76160 800FEFC0 8E040010 */  lw    $a0, 0x10($s0)
/* B76164 800FEFC4 8FA70044 */  lw    $a3, 0x44($sp)
/* B76168 800FEFC8 3C038015 */  lui   $v1, %hi(D_8014B004) # $v1, 0x8015
/* B7616C 800FEFCC 10800003 */  beqz  $a0, .L800FEFDC
/* B76170 800FEFD0 8FA60040 */   lw    $a2, 0x40($sp)
/* B76174 800FEFD4 10000002 */  b     .L800FEFE0
/* B76178 800FEFD8 00801825 */   move  $v1, $a0
.L800FEFDC:
/* B7617C 800FEFDC 2463B004 */  addiu $v1, %lo(D_8014B004) # addiu $v1, $v1, -0x4ffc
.L800FEFE0:
/* B76180 800FEFE0 8E090018 */  lw    $t1, 0x18($s0)
/* B76184 800FEFE4 AFA30014 */  sw    $v1, 0x14($sp)
/* B76188 800FEFE8 3C048015 */  lui   $a0, %hi(D_8014AFEC) # $a0, 0x8015
/* B7618C 800FEFEC AFA90010 */  sw    $t1, 0x10($sp)
/* B76190 800FEFF0 8E0A0014 */  lw    $t2, 0x14($s0)
/* B76194 800FEFF4 2484AFEC */  addiu $a0, %lo(D_8014AFEC) # addiu $a0, $a0, -0x5014
/* B76198 800FEFF8 0C00084C */  jal   osSyncPrintf
/* B7619C 800FEFFC AFAA0018 */   sw    $t2, 0x18($sp)
.L800FF000:
/* B761A0 800FF000 3C048015 */  lui   $a0, %hi(D_8014B010) # $a0, 0x8015
/* B761A4 800FF004 0C00084C */  jal   osSyncPrintf
/* B761A8 800FF008 2484B010 */   addiu $a0, %lo(D_8014B010) # addiu $a0, $a0, -0x4ff0
/* B761AC 800FF00C 860B0002 */  lh    $t3, 2($s0)
/* B761B0 800FF010 51600008 */  beql  $t3, $zero, .L800FF034
/* B761B4 800FF014 8E0C0004 */   lw    $t4, 4($s0)
/* B761B8 800FF018 8E020004 */  lw    $v0, 4($s0)
/* B761BC 800FF01C 0282082B */  sltu  $at, $s4, $v0
/* B761C0 800FF020 1020000A */  beqz  $at, .L800FF04C
/* B761C4 800FF024 02429021 */   addu  $s2, $s2, $v0
/* B761C8 800FF028 10000008 */  b     .L800FF04C
/* B761CC 800FF02C 0040A025 */   move  $s4, $v0
/* B761D0 800FF030 8E0C0004 */  lw    $t4, 4($s0)
.L800FF034:
/* B761D4 800FF034 10000005 */  b     .L800FF04C
/* B761D8 800FF038 026C9821 */   addu  $s3, $s3, $t4
.L800FF03C:
/* B761DC 800FF03C 2484B014 */  addiu $a0, %lo(D_8014B014)
/* B761E0 800FF040 02002825 */  move  $a1, $s0
/* B761E4 800FF044 0C00084C */  jal   osSyncPrintf
/* B761E8 800FF048 00008825 */   move  $s1, $zero
.L800FF04C:
/* B761EC 800FF04C 1620FFAB */  bnez  $s1, .L800FEEFC
/* B761F0 800FF050 02208025 */   move  $s0, $s1
.L800FF054:
/* B761F4 800FF054 3C048015 */  lui   $a0, %hi(D_8014B028) # $a0, 0x8015
/* B761F8 800FF058 2484B028 */  addiu $a0, %lo(D_8014B028) # addiu $a0, $a0, -0x4fd8
/* B761FC 800FF05C 0C00084C */  jal   osSyncPrintf
/* B76200 800FF060 02602825 */   move  $a1, $s3
/* B76204 800FF064 3C048015 */  lui   $a0, %hi(D_8014B050) # $a0, 0x8015
/* B76208 800FF068 2484B050 */  addiu $a0, %lo(D_8014B050) # addiu $a0, $a0, -0x4fb0
/* B7620C 800FF06C 0C00084C */  jal   osSyncPrintf
/* B76210 800FF070 02402825 */   move  $a1, $s2
/* B76214 800FF074 3C048015 */  lui   $a0, %hi(D_8014B078) # $a0, 0x8015
/* B76218 800FF078 2484B078 */  addiu $a0, %lo(D_8014B078) # addiu $a0, $a0, -0x4f88
/* B7621C 800FF07C 0C00084C */  jal   osSyncPrintf
/* B76220 800FF080 02802825 */   move  $a1, $s4
/* B76224 800FF084 0C03F719 */  jal   ArenaImpl_Unlock
/* B76228 800FF088 8FA40068 */   lw    $a0, 0x68($sp)
/* B7622C 800FF08C 8FBF003C */  lw    $ra, 0x3c($sp)
.L800FF090:
/* B76230 800FF090 8FB00028 */  lw    $s0, 0x28($sp)
/* B76234 800FF094 8FB1002C */  lw    $s1, 0x2c($sp)
/* B76238 800FF098 8FB20030 */  lw    $s2, 0x30($sp)
/* B7623C 800FF09C 8FB30034 */  lw    $s3, 0x34($sp)
/* B76240 800FF0A0 8FB40038 */  lw    $s4, 0x38($sp)
/* B76244 800FF0A4 03E00008 */  jr    $ra
/* B76248 800FF0A8 27BD0068 */   addiu $sp, $sp, 0x68