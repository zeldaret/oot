.late_rodata
glabel D_8094AEC8
 .word 0x407F5C29

.text
glabel func_8093A0A8
/* 013D8 8093A0A8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 013DC 8093A0AC AFBF001C */  sw      $ra, 0x001C($sp)
/* 013E0 8093A0B0 AFB00018 */  sw      $s0, 0x0018($sp)
/* 013E4 8093A0B4 AFA5002C */  sw      $a1, 0x002C($sp)
/* 013E8 8093A0B8 8C8E0118 */  lw      $t6, 0x0118($a0)           ## 00000118
/* 013EC 8093A0BC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 013F0 8093A0C0 3C088094 */  lui     $t0, %hi(func_8093A2AC)    ## $t0 = 80940000
/* 013F4 8093A0C4 AFAE0024 */  sw      $t6, 0x0024($sp)
/* 013F8 8093A0C8 8C980004 */  lw      $t8, 0x0004($a0)           ## 00000004
/* 013FC 8093A0CC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01400 8093A0D0 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01404 8093A0D4 2508A2AC */  addiu   $t0, $t0, %lo(func_8093A2AC) ## $t0 = 8093A2AC
/* 01408 8093A0D8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0140C 8093A0DC 37190001 */  ori     $t9, $t8, 0x0001           ## $t9 = 00000001
/* 01410 8093A0E0 A08F05F8 */  sb      $t7, 0x05F8($a0)           ## 000005F8
/* 01414 8093A0E4 AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
/* 01418 8093A0E8 AC88014C */  sw      $t0, 0x014C($a0)           ## 0000014C
/* 0141C 8093A0EC 24A56F28 */  addiu   $a1, $a1, 0x6F28           ## $a1 = 06006F28
/* 01420 8093A0F0 24840568 */  addiu   $a0, $a0, 0x0568           ## $a0 = 00000568
/* 01424 8093A0F4 3C06C120 */  lui     $a2, 0xC120                ## $a2 = C1200000
/* 01428 8093A0F8 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 0142C 8093A0FC E484FF60 */  swc1    $f4, -0x00A0($a0)          ## 000004C8
/* 01430 8093A100 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01434 8093A104 00000000 */  nop
/* 01438 8093A108 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0143C 8093A10C 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 01440 8093A110 8FA20024 */  lw      $v0, 0x0024($sp)
/* 01444 8093A114 4606003C */  c.lt.s  $f0, $f6
/* 01448 8093A118 00000000 */  nop
/* 0144C 8093A11C 45000026 */  bc1f    .L8093A1B8
/* 01450 8093A120 00000000 */  nop
/* 01454 8093A124 10400024 */  beq     $v0, $zero, .L8093A1B8
/* 01458 8093A128 00000000 */  nop
/* 0145C 8093A12C 8C4A014C */  lw      $t2, 0x014C($v0)           ## 0000014C
/* 01460 8093A130 3C098094 */  lui     $t1, %hi(func_8093B1AC)    ## $t1 = 80940000
/* 01464 8093A134 2529B1AC */  addiu   $t1, $t1, %lo(func_8093B1AC) ## $t1 = 8093B1AC
/* 01468 8093A138 152A001F */  bne     $t1, $t2, .L8093A1B8
/* 0146C 8093A13C 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 01470 8093A140 44816000 */  mtc1    $at, $f12                  ## $f12 = 200.00
/* 01474 8093A144 0C00CFC8 */  jal     Math_Rand_CenteredFloat

/* 01478 8093A148 00000000 */  nop
/* 0147C 8093A14C 8FAB0024 */  lw      $t3, 0x0024($sp)
/* 01480 8093A150 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 01484 8093A154 44816000 */  mtc1    $at, $f12                  ## $f12 = 200.00
/* 01488 8093A158 C5680024 */  lwc1    $f8, 0x0024($t3)           ## 00000024
/* 0148C 8093A15C 46080280 */  add.s   $f10, $f0, $f8
/* 01490 8093A160 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 01494 8093A164 E60A04B0 */  swc1    $f10, 0x04B0($s0)          ## 000004B0
/* 01498 8093A168 3C0143AA */  lui     $at, 0x43AA                ## $at = 43AA0000
/* 0149C 8093A16C 44818000 */  mtc1    $at, $f16                  ## $f16 = 340.00
/* 014A0 8093A170 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 014A4 8093A174 44816000 */  mtc1    $at, $f12                  ## $f12 = 200.00
/* 014A8 8093A178 46100480 */  add.s   $f18, $f0, $f16
/* 014AC 8093A17C 0C00CFC8 */  jal     Math_Rand_CenteredFloat

/* 014B0 8093A180 E61204B4 */  swc1    $f18, 0x04B4($s0)          ## 000004B4
/* 014B4 8093A184 8FAC0024 */  lw      $t4, 0x0024($sp)
/* 014B8 8093A188 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 014BC 8093A18C 44816000 */  mtc1    $at, $f12                  ## $f12 = 50.00
/* 014C0 8093A190 C584002C */  lwc1    $f4, 0x002C($t4)           ## 0000002C
/* 014C4 8093A194 46040180 */  add.s   $f6, $f0, $f4
/* 014C8 8093A198 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 014CC 8093A19C E60604B8 */  swc1    $f6, 0x04B8($s0)           ## 000004B8
/* 014D0 8093A1A0 4600020D */  trunc.w.s $f8, $f0
/* 014D4 8093A1A4 44184000 */  mfc1    $t8, $f8
/* 014D8 8093A1A8 00000000 */  nop
/* 014DC 8093A1AC 27190032 */  addiu   $t9, $t8, 0x0032           ## $t9 = 00000032
/* 014E0 8093A1B0 10000039 */  beq     $zero, $zero, .L8093A298
/* 014E4 8093A1B4 A6190178 */  sh      $t9, 0x0178($s0)           ## 00000178
.L8093A1B8:
/* 014E8 8093A1B8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 014EC 8093A1BC 00000000 */  nop
/* 014F0 8093A1C0 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 014F4 8093A1C4 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 014F8 8093A1C8 3C018095 */  lui     $at, %hi(D_8094AEC8)       ## $at = 80950000
/* 014FC 8093A1CC 460A003C */  c.lt.s  $f0, $f10
/* 01500 8093A1D0 00000000 */  nop
/* 01504 8093A1D4 4500001A */  bc1f    .L8093A240
/* 01508 8093A1D8 00000000 */  nop
/* 0150C 8093A1DC 3C014448 */  lui     $at, 0x4448                ## $at = 44480000
/* 01510 8093A1E0 44816000 */  mtc1    $at, $f12                  ## $f12 = 800.00
/* 01514 8093A1E4 0C00CFC8 */  jal     Math_Rand_CenteredFloat

/* 01518 8093A1E8 00000000 */  nop
/* 0151C 8093A1EC 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 01520 8093A1F0 44816000 */  mtc1    $at, $f12                  ## $f12 = 200.00
/* 01524 8093A1F4 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 01528 8093A1F8 E60004B0 */  swc1    $f0, 0x04B0($s0)           ## 000004B0
/* 0152C 8093A1FC 3C0143AA */  lui     $at, 0x43AA                ## $at = 43AA0000
/* 01530 8093A200 44818000 */  mtc1    $at, $f16                  ## $f16 = 340.00
/* 01534 8093A204 3C014448 */  lui     $at, 0x4448                ## $at = 44480000
/* 01538 8093A208 44816000 */  mtc1    $at, $f12                  ## $f12 = 800.00
/* 0153C 8093A20C 46100480 */  add.s   $f18, $f0, $f16
/* 01540 8093A210 0C00CFC8 */  jal     Math_Rand_CenteredFloat

/* 01544 8093A214 E61204B4 */  swc1    $f18, 0x04B4($s0)          ## 000004B4
/* 01548 8093A218 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 0154C 8093A21C 44816000 */  mtc1    $at, $f12                  ## $f12 = 50.00
/* 01550 8093A220 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 01554 8093A224 E60004B8 */  swc1    $f0, 0x04B8($s0)           ## 000004B8
/* 01558 8093A228 4600010D */  trunc.w.s $f4, $f0
/* 0155C 8093A22C 440B2000 */  mfc1    $t3, $f4
/* 01560 8093A230 00000000 */  nop
/* 01564 8093A234 256C0032 */  addiu   $t4, $t3, 0x0032           ## $t4 = 00000032
/* 01568 8093A238 10000017 */  beq     $zero, $zero, .L8093A298
/* 0156C 8093A23C A60C0178 */  sh      $t4, 0x0178($s0)           ## 00000178
.L8093A240:
/* 01570 8093A240 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 01574 8093A244 C42CAEC8 */  lwc1    $f12, %lo(D_8094AEC8)($at)
/* 01578 8093A248 4600018D */  trunc.w.s $f6, $f0
/* 0157C 8093A24C 3C088095 */  lui     $t0, %hi(D_8094A8AC)       ## $t0 = 80950000
/* 01580 8093A250 2508A8AC */  addiu   $t0, $t0, %lo(D_8094A8AC)  ## $t0 = 8094A8AC
/* 01584 8093A254 240C00C8 */  addiu   $t4, $zero, 0x00C8         ## $t4 = 000000C8
/* 01588 8093A258 440E3000 */  mfc1    $t6, $f6
/* 0158C 8093A25C 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 01590 8093A260 000E7C00 */  sll     $t7, $t6, 16
/* 01594 8093A264 000FC403 */  sra     $t8, $t7, 16
/* 01598 8093A268 0018C880 */  sll     $t9, $t8,  2
/* 0159C 8093A26C 0338C823 */  subu    $t9, $t9, $t8
/* 015A0 8093A270 0019C880 */  sll     $t9, $t9,  2
/* 015A4 8093A274 03284821 */  addu    $t1, $t9, $t0
/* 015A8 8093A278 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 00000000
/* 015AC 8093A27C AE0B04B0 */  sw      $t3, 0x04B0($s0)           ## 000004B0
/* 015B0 8093A280 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 00000004
/* 015B4 8093A284 AE0A04B4 */  sw      $t2, 0x04B4($s0)           ## 000004B4
/* 015B8 8093A288 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 00000008
/* 015BC 8093A28C A60C0178 */  sh      $t4, 0x0178($s0)           ## 00000178
/* 015C0 8093A290 A60D015E */  sh      $t5, 0x015E($s0)           ## 0000015E
/* 015C4 8093A294 AE0B04B8 */  sw      $t3, 0x04B8($s0)           ## 000004B8
.L8093A298:
/* 015C8 8093A298 8FBF001C */  lw      $ra, 0x001C($sp)
/* 015CC 8093A29C 8FB00018 */  lw      $s0, 0x0018($sp)
/* 015D0 8093A2A0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 015D4 8093A2A4 03E00008 */  jr      $ra
/* 015D8 8093A2A8 00000000 */  nop


