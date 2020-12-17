glabel func_809CFBA8
/* 014C8 809CFBA8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 014CC 809CFBAC AFB00018 */  sw      $s0, 0x0018($sp)
/* 014D0 809CFBB0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 014D4 809CFBB4 AFBF001C */  sw      $ra, 0x001C($sp)
/* 014D8 809CFBB8 3C050600 */  lui     $a1, %hi(D_06002250)                ## $a1 = 06000000
/* 014DC 809CFBBC 24A52250 */  addiu   $a1, $a1, %lo(D_06002250)           ## $a1 = 06002250
/* 014E0 809CFBC0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 014E4 809CFBC4 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 014E8 809CFBC8 3C06BF80 */  lui     $a2, 0xBF80                ## $a2 = BF800000
/* 014EC 809CFBCC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 014F0 809CFBD0 3C014130 */  lui     $at, 0x4130                ## $at = 41300000
/* 014F4 809CFBD4 44812000 */  mtc1    $at, $f4                   ## $f4 = 11.00
/* 014F8 809CFBD8 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 014FC 809CFBDC 240F03E8 */  addiu   $t7, $zero, 0x03E8         ## $t7 = 000003E8
/* 01500 809CFBE0 A20E0220 */  sb      $t6, 0x0220($s0)           ## 00000220
/* 01504 809CFBE4 A60F0222 */  sh      $t7, 0x0222($s0)           ## 00000222
/* 01508 809CFBE8 E6000260 */  swc1    $f0, 0x0260($s0)           ## 00000260
/* 0150C 809CFBEC E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 01510 809CFBF0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01514 809CFBF4 E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
/* 01518 809CFBF8 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 0151C 809CFBFC 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.25
/* 01520 809CFC00 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01524 809CFC04 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 01528 809CFC08 46060202 */  mul.s   $f8, $f0, $f6
/* 0152C 809CFC0C 24180BB8 */  addiu   $t8, $zero, 0x0BB8         ## $t8 = 00000BB8
/* 01530 809CFC10 A6180224 */  sh      $t8, 0x0224($s0)           ## 00000224
/* 01534 809CFC14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01538 809CFC18 24053976 */  addiu   $a1, $zero, 0x3976         ## $a1 = 00003976
/* 0153C 809CFC1C 460A4400 */  add.s   $f16, $f8, $f10
/* 01540 809CFC20 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01544 809CFC24 E610025C */  swc1    $f16, 0x025C($s0)          ## 0000025C
/* 01548 809CFC28 3C05809D */  lui     $a1, %hi(func_809CFC4C)    ## $a1 = 809D0000
/* 0154C 809CFC2C 24A5FC4C */  addiu   $a1, $a1, %lo(func_809CFC4C) ## $a1 = 809CFC4C
/* 01550 809CFC30 0C2739B8 */  jal     func_809CE6E0
/* 01554 809CFC34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01558 809CFC38 8FBF001C */  lw      $ra, 0x001C($sp)
/* 0155C 809CFC3C 8FB00018 */  lw      $s0, 0x0018($sp)
/* 01560 809CFC40 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01564 809CFC44 03E00008 */  jr      $ra
/* 01568 809CFC48 00000000 */  nop
