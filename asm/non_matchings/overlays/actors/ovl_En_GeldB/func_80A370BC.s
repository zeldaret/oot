glabel func_80A370BC
/* 01DAC 80A370BC 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01DB0 80A370C0 AFB00030 */  sw      $s0, 0x0030($sp)
/* 01DB4 80A370C4 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 01DB8 80A370C8 F7B40028 */  sdc1    $f20, 0x0028($sp)
/* 01DBC 80A370CC 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 01DC0 80A370D0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01DC4 80A370D4 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 01DC8 80A370D8 2484A814 */  addiu   $a0, $a0, 0xA814           ## $a0 = 0600A814
/* 01DCC 80A370DC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01DD0 80A370E0 AFAE0038 */  sw      $t6, 0x0038($sp)
/* 01DD4 80A370E4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01DD8 80A370E8 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 01DDC 80A370EC 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01DE0 80A370F0 468021A0 */  cvt.s.w $f6, $f4
/* 01DE4 80A370F4 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01DE8 80A370F8 4407A000 */  mfc1    $a3, $f20
/* 01DEC 80A370FC AFAF0014 */  sw      $t7, 0x0014($sp)
/* 01DF0 80A37100 24A5A814 */  addiu   $a1, $a1, 0xA814           ## $a1 = 0600A814
/* 01DF4 80A37104 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 01DF8 80A37108 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01DFC 80A3710C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01E00 80A37110 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01E04 80A37114 E7B40018 */  swc1    $f20, 0x0018($sp)
/* 01E08 80A37118 8FB80038 */  lw      $t8, 0x0038($sp)
/* 01E0C 80A3711C 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 01E10 80A37120 870200B6 */  lh      $v0, 0x00B6($t8)           ## 000000B6
/* 01E14 80A37124 00592023 */  subu    $a0, $v0, $t9
/* 01E18 80A37128 00042400 */  sll     $a0, $a0, 16
/* 01E1C 80A3712C 00042403 */  sra     $a0, $a0, 16
/* 01E20 80A37130 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01E24 80A37134 A7A2003E */  sh      $v0, 0x003E($sp)
/* 01E28 80A37138 4600A03C */  c.lt.s  $f20, $f0
/* 01E2C 80A3713C 87A2003E */  lh      $v0, 0x003E($sp)
/* 01E30 80A37140 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 01E34 80A37144 45020005 */  bc1fl   .L80A3715C
/* 01E38 80A37148 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 01E3C 80A3714C 44814000 */  mtc1    $at, $f8                   ## $f8 = -10.00
/* 01E40 80A37150 1000001D */  beq     $zero, $zero, .L80A371C8
/* 01E44 80A37154 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 01E48 80A37158 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
.L80A3715C:
/* 01E4C 80A3715C 00482023 */  subu    $a0, $v0, $t0
/* 01E50 80A37160 00042400 */  sll     $a0, $a0, 16
/* 01E54 80A37164 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01E58 80A37168 00042403 */  sra     $a0, $a0, 16
/* 01E5C 80A3716C 4614003C */  c.lt.s  $f0, $f20
/* 01E60 80A37170 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01E64 80A37174 45000004 */  bc1f    .L80A37188
/* 01E68 80A37178 00000000 */  nop
/* 01E6C 80A3717C 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 01E70 80A37180 10000011 */  beq     $zero, $zero, .L80A371C8
/* 01E74 80A37184 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
.L80A37188:
/* 01E78 80A37188 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01E7C 80A3718C 00000000 */  nop
/* 01E80 80A37190 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01E84 80A37194 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 01E88 80A37198 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 01E8C 80A3719C 4600803C */  c.lt.s  $f16, $f0
/* 01E90 80A371A0 00000000 */  nop
/* 01E94 80A371A4 45020006 */  bc1fl   .L80A371C0
/* 01E98 80A371A8 44812000 */  mtc1    $at, $f4                   ## $f4 = -10.00
/* 01E9C 80A371AC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01EA0 80A371B0 44819000 */  mtc1    $at, $f18                  ## $f18 = 10.00
/* 01EA4 80A371B4 10000004 */  beq     $zero, $zero, .L80A371C8
/* 01EA8 80A371B8 E6120068 */  swc1    $f18, 0x0068($s0)          ## 00000068
/* 01EAC 80A371BC 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
.L80A371C0:
/* 01EB0 80A371C0 00000000 */  nop
/* 01EB4 80A371C4 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
.L80A371C8:
/* 01EB8 80A371C8 C6060068 */  lwc1    $f6, 0x0068($s0)           ## 00000068
/* 01EBC 80A371CC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01EC0 80A371D0 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 01EC4 80A371D4 46003207 */  neg.s   $f8, $f6
/* 01EC8 80A371D8 860900B6 */  lh      $t1, 0x00B6($s0)           ## 000000B6
/* 01ECC 80A371DC 460A4402 */  mul.s   $f16, $f8, $f10
/* 01ED0 80A371E0 240A0006 */  addiu   $t2, $zero, 0x0006         ## $t2 = 00000006
/* 01ED4 80A371E4 240B0010 */  addiu   $t3, $zero, 0x0010         ## $t3 = 00000010
/* 01ED8 80A371E8 3C0580A3 */  lui     $a1, %hi(func_80A37224)    ## $a1 = 80A30000
/* 01EDC 80A371EC AE0A0300 */  sw      $t2, 0x0300($s0)           ## 00000300
/* 01EE0 80A371F0 E6140304 */  swc1    $f20, 0x0304($s0)          ## 00000304
/* 01EE4 80A371F4 E614030C */  swc1    $f20, 0x030C($s0)          ## 0000030C
/* 01EE8 80A371F8 E61001A4 */  swc1    $f16, 0x01A4($s0)          ## 000001A4
/* 01EEC 80A371FC AE0B02EC */  sw      $t3, 0x02EC($s0)           ## 000002EC
/* 01EF0 80A37200 24A57224 */  addiu   $a1, $a1, %lo(func_80A37224) ## $a1 = 80A37224
/* 01EF4 80A37204 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EF8 80A37208 0C28D4C4 */  jal     func_80A35310
/* 01EFC 80A3720C A6090032 */  sh      $t1, 0x0032($s0)           ## 00000032
/* 01F00 80A37210 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 01F04 80A37214 D7B40028 */  ldc1    $f20, 0x0028($sp)
/* 01F08 80A37218 8FB00030 */  lw      $s0, 0x0030($sp)
/* 01F0C 80A3721C 03E00008 */  jr      $ra
/* 01F10 80A37220 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
