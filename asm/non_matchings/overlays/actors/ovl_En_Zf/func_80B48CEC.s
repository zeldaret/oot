glabel func_80B48CEC
/* 04C9C 80B48CEC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 04CA0 80B48CF0 AFB00028 */  sw      $s0, 0x0028($sp)
/* 04CA4 80B48CF4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04CA8 80B48CF8 AFBF002C */  sw      $ra, 0x002C($sp)
/* 04CAC 80B48CFC 3C040601 */  lui     $a0, %hi(D_06014E60)                ## $a0 = 06010000
/* 04CB0 80B48D00 0C028800 */  jal     SkelAnime_GetFrameCount

/* 04CB4 80B48D04 24844E60 */  addiu   $a0, $a0, %lo(D_06014E60)           ## $a0 = 06014E60
/* 04CB8 80B48D08 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 04CBC 80B48D0C 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 04CC0 80B48D10 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 04CC4 80B48D14 468021A0 */  cvt.s.w $f6, $f4
/* 04CC8 80B48D18 3C050601 */  lui     $a1, %hi(D_06014E60)                ## $a1 = 06010000
/* 04CCC 80B48D1C 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 04CD0 80B48D20 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 04CD4 80B48D24 24A54E60 */  addiu   $a1, $a1, %lo(D_06014E60)           ## $a1 = 06014E60
/* 04CD8 80B48D28 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 04CDC 80B48D2C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 04CE0 80B48D30 3C063FC0 */  lui     $a2, 0x3FC0                ## $a2 = 3FC00000
/* 04CE4 80B48D34 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 04CE8 80B48D38 0C029468 */  jal     SkelAnime_ChangeAnim

/* 04CEC 80B48D3C E7A80018 */  swc1    $f8, 0x0018($sp)
/* 04CF0 80B48D40 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
/* 04CF4 80B48D44 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 04CF8 80B48D48 2408000F */  addiu   $t0, $zero, 0x000F         ## $t0 = 0000000F
/* 04CFC 80B48D4C 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 04D00 80B48D50 13000010 */  beq     $t8, $zero, .L80B48D94
/* 04D04 80B48D54 3C0B80B5 */  lui     $t3, %hi(D_80B4A1B4)       ## $t3 = 80B50000
/* 04D08 80B48D58 C6000060 */  lwc1    $f0, 0x0060($s0)           ## 00000060
/* 04D0C 80B48D5C 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 04D10 80B48D60 46001032 */  c.eq.s  $f2, $f0
/* 04D14 80B48D64 00000000 */  nop
/* 04D18 80B48D68 45030008 */  bc1tl   .L80B48D8C
/* 04D1C 80B48D6C E6020068 */  swc1    $f2, 0x0068($s0)           ## 00000068
/* 04D20 80B48D70 44815000 */  mtc1    $at, $f10                  ## $f10 = -4.00
/* 04D24 80B48D74 00000000 */  nop
/* 04D28 80B48D78 46005032 */  c.eq.s  $f10, $f0
/* 04D2C 80B48D7C 00000000 */  nop
/* 04D30 80B48D80 45020005 */  bc1fl   .L80B48D98
/* 04D34 80B48D84 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 04D38 80B48D88 E6020068 */  swc1    $f2, 0x0068($s0)           ## 00000068
.L80B48D8C:
/* 04D3C 80B48D8C 10000003 */  beq     $zero, $zero, .L80B48D9C
/* 04D40 80B48D90 AE0003E4 */  sw      $zero, 0x03E4($s0)         ## 000003E4
.L80B48D94:
/* 04D44 80B48D94 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
.L80B48D98:
/* 04D48 80B48D98 AE1903E4 */  sw      $t9, 0x03E4($s0)           ## 000003E4
.L80B48D9C:
/* 04D4C 80B48D9C 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
/* 04D50 80B48DA0 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 04D54 80B48DA4 AE0803DC */  sw      $t0, 0x03DC($s0)           ## 000003DC
/* 04D58 80B48DA8 01215024 */  and     $t2, $t1, $at
/* 04D5C 80B48DAC AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
/* 04D60 80B48DB0 856BA1B4 */  lh      $t3, %lo(D_80B4A1B4)($t3)
/* 04D64 80B48DB4 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 04D68 80B48DB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04D6C 80B48DBC 11610018 */  beq     $t3, $at, .L80B48E20
/* 04D70 80B48DC0 2405382D */  addiu   $a1, $zero, 0x382D         ## $a1 = 0000382D
/* 04D74 80B48DC4 8E020120 */  lw      $v0, 0x0120($s0)           ## 00000120
/* 04D78 80B48DC8 240C005A */  addiu   $t4, $zero, 0x005A         ## $t4 = 0000005A
/* 04D7C 80B48DCC 5040000B */  beql    $v0, $zero, .L80B48DFC
/* 04D80 80B48DD0 8E180124 */  lw      $t8, 0x0124($s0)           ## 00000124
/* 04D84 80B48DD4 A44C03F4 */  sh      $t4, 0x03F4($v0)           ## 000003F4
/* 04D88 80B48DD8 8E020120 */  lw      $v0, 0x0120($s0)           ## 00000120
/* 04D8C 80B48DDC 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 04D90 80B48DE0 904D00AF */  lbu     $t5, 0x00AF($v0)           ## 000000AF
/* 04D94 80B48DE4 29A10003 */  slti    $at, $t5, 0x0003
/* 04D98 80B48DE8 1020000D */  beq     $at, $zero, .L80B48E20
/* 04D9C 80B48DEC 00000000 */  nop
/* 04DA0 80B48DF0 1000000B */  beq     $zero, $zero, .L80B48E20
/* 04DA4 80B48DF4 A04E00AF */  sb      $t6, 0x00AF($v0)           ## 000000AF
/* 04DA8 80B48DF8 8E180124 */  lw      $t8, 0x0124($s0)           ## 00000124
.L80B48DFC:
/* 04DAC 80B48DFC 240F005A */  addiu   $t7, $zero, 0x005A         ## $t7 = 0000005A
/* 04DB0 80B48E00 24080003 */  addiu   $t0, $zero, 0x0003         ## $t0 = 00000003
/* 04DB4 80B48E04 A70F03F4 */  sh      $t7, 0x03F4($t8)           ## 000003F4
/* 04DB8 80B48E08 8E020124 */  lw      $v0, 0x0124($s0)           ## 00000124
/* 04DBC 80B48E0C 905900AF */  lbu     $t9, 0x00AF($v0)           ## 000000AF
/* 04DC0 80B48E10 2B210003 */  slti    $at, $t9, 0x0003
/* 04DC4 80B48E14 10200002 */  beq     $at, $zero, .L80B48E20
/* 04DC8 80B48E18 00000000 */  nop
/* 04DCC 80B48E1C A04800AF */  sb      $t0, 0x00AF($v0)           ## 000000AF
.L80B48E20:
/* 04DD0 80B48E20 3C0180B5 */  lui     $at, %hi(D_80B4A1B0)       ## $at = 80B50000
/* 04DD4 80B48E24 0C00BE0A */  jal     Audio_PlayActorSound2

/* 04DD8 80B48E28 A420A1B0 */  sh      $zero, %lo(D_80B4A1B0)($at)
/* 04DDC 80B48E2C 3C0580B5 */  lui     $a1, %hi(func_80B48E50)    ## $a1 = 80B50000
/* 04DE0 80B48E30 24A58E50 */  addiu   $a1, $a1, %lo(func_80B48E50) ## $a1 = 80B48E50
/* 04DE4 80B48E34 0C2D1014 */  jal     func_80B44050
/* 04DE8 80B48E38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04DEC 80B48E3C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 04DF0 80B48E40 8FB00028 */  lw      $s0, 0x0028($sp)
/* 04DF4 80B48E44 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 04DF8 80B48E48 03E00008 */  jr      $ra
/* 04DFC 80B48E4C 00000000 */  nop
