.late_rodata
glabel jtbl_808F7FB0
    .word L808DAD6C
    .word L808DAF1C
    .word L808DB080
    .word L808DB0D8
    .word L808DB174

glabel D_808F7FC4
    .float 1.5707964

glabel D_808F7FC8
    .float 1.5707964

.text
glabel func_808DAD20
/* 044B0 808DAD20 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 044B4 808DAD24 AFB10030 */  sw      $s1, 0x0030($sp)
/* 044B8 808DAD28 AFB0002C */  sw      $s0, 0x002C($sp)
/* 044BC 808DAD2C 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 044C0 808DAD30 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 044C4 808DAD34 24900150 */  addiu   $s0, $a0, 0x0150           ## $s0 = 00000150
/* 044C8 808DAD38 F7B40020 */  sdc1    $f20, 0x0020($sp)
/* 044CC 808DAD3C AFA5008C */  sw      $a1, 0x008C($sp)
/* 044D0 808DAD40 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 044D4 808DAD44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000150
/* 044D8 808DAD48 962E01C2 */  lhu     $t6, 0x01C2($s1)           ## 000001C2
/* 044DC 808DAD4C 2DC10005 */  sltiu   $at, $t6, 0x0005
/* 044E0 808DAD50 1020011A */  beq     $at, $zero, .L808DB1BC
/* 044E4 808DAD54 000E7080 */  sll     $t6, $t6,  2
/* 044E8 808DAD58 3C01808F */  lui     $at, %hi(jtbl_808F7FB0)       ## $at = 808F0000
/* 044EC 808DAD5C 002E0821 */  addu    $at, $at, $t6
/* 044F0 808DAD60 8C2E7FB0 */  lw      $t6, %lo(jtbl_808F7FB0)($at)
/* 044F4 808DAD64 01C00008 */  jr      $t6
/* 044F8 808DAD68 00000000 */  nop
glabel L808DAD6C
/* 044FC 808DAD6C 862401A2 */  lh      $a0, 0x01A2($s1)           ## 000001A2
/* 04500 808DAD70 00800821 */  addu    $at, $a0, $zero
/* 04504 808DAD74 00042080 */  sll     $a0, $a0,  2
/* 04508 808DAD78 00812021 */  addu    $a0, $a0, $at
/* 0450C 808DAD7C 00042200 */  sll     $a0, $a0,  8
/* 04510 808DAD80 00042400 */  sll     $a0, $a0, 16
/* 04514 808DAD84 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 04518 808DAD88 00042403 */  sra     $a0, $a0, 16
/* 0451C 808DAD8C 862401A2 */  lh      $a0, 0x01A2($s1)           ## 000001A2
/* 04520 808DAD90 C62401D0 */  lwc1    $f4, 0x01D0($s1)           ## 000001D0
/* 04524 808DAD94 00800821 */  addu    $at, $a0, $zero
/* 04528 808DAD98 000420C0 */  sll     $a0, $a0,  3
/* 0452C 808DAD9C 00812023 */  subu    $a0, $a0, $at
/* 04530 808DADA0 00042200 */  sll     $a0, $a0,  8
/* 04534 808DADA4 00042400 */  sll     $a0, $a0, 16
/* 04538 808DADA8 46002502 */  mul.s   $f20, $f4, $f0
/* 0453C 808DADAC 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 04540 808DADB0 00042403 */  sra     $a0, $a0, 16
/* 04544 808DADB4 C62601D0 */  lwc1    $f6, 0x01D0($s1)           ## 000001D0
/* 04548 808DADB8 4405A000 */  mfc1    $a1, $f20
/* 0454C 808DADBC 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 04550 808DADC0 46003202 */  mul.s   $f8, $f6, $f0
/* 04554 808DADC4 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 04558 808DADC8 26240024 */  addiu   $a0, $s1, 0x0024           ## $a0 = 00000024
/* 0455C 808DADCC E7A80078 */  swc1    $f8, 0x0078($sp)
/* 04560 808DADD0 0C01E107 */  jal     Math_ApproachF

/* 04564 808DADD4 8E2701C8 */  lw      $a3, 0x01C8($s1)           ## 000001C8
/* 04568 808DADD8 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 0456C 808DADDC 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 04570 808DADE0 2624002C */  addiu   $a0, $s1, 0x002C           ## $a0 = 0000002C
/* 04574 808DADE4 8FA50078 */  lw      $a1, 0x0078($sp)
/* 04578 808DADE8 0C01E107 */  jal     Math_ApproachF

/* 0457C 808DADEC 8E2701C8 */  lw      $a3, 0x01C8($s1)           ## 000001C8
/* 04580 808DADF0 262401D0 */  addiu   $a0, $s1, 0x01D0           ## $a0 = 000001D0
/* 04584 808DADF4 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 04588 808DADF8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0458C 808DADFC 0C01E107 */  jal     Math_ApproachF

/* 04590 808DAE00 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 04594 808DAE04 862201B6 */  lh      $v0, 0x01B6($s1)           ## 000001B6
/* 04598 808DAE08 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0459C 808DAE0C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 045A0 808DAE10 54410005 */  bnel    $v0, $at, .L808DAE28
/* 045A4 808DAE14 2841000E */  slti    $at, $v0, 0x000E
/* 045A8 808DAE18 0C00BE0A */  jal     Audio_PlayActorSound2

/* 045AC 808DAE1C 240539CB */  addiu   $a1, $zero, 0x39CB         ## $a1 = 000039CB
/* 045B0 808DAE20 862201B6 */  lh      $v0, 0x01B6($s1)           ## 000001B6
/* 045B4 808DAE24 2841000E */  slti    $at, $v0, 0x000E
.L808DAE28:
/* 045B8 808DAE28 10200013 */  beq     $at, $zero, .L808DAE78
/* 045BC 808DAE2C 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
/* 045C0 808DAE30 4481A000 */  mtc1    $at, $f20                  ## $f20 = 250.00
/* 045C4 808DAE34 3C01808F */  lui     $at, %hi(D_808F7FC4)       ## $at = 808F0000
/* 045C8 808DAE38 0C00CFBE */  jal     Rand_ZeroFloat

/* 045CC 808DAE3C C42C7FC4 */  lwc1    $f12, %lo(D_808F7FC4)($at)
/* 045D0 808DAE40 3C01808F */  lui     $at, %hi(D_808F7FC8)       ## $at = 808F0000
/* 045D4 808DAE44 C4307FC8 */  lwc1    $f16, %lo(D_808F7FC8)($at)
/* 045D8 808DAE48 C62A0258 */  lwc1    $f10, 0x0258($s1)          ## 00000258
/* 045DC 808DAE4C 26240254 */  addiu   $a0, $s1, 0x0254           ## $a0 = 00000254
/* 045E0 808DAE50 46100480 */  add.s   $f18, $f0, $f16
/* 045E4 808DAE54 3C0540E0 */  lui     $a1, 0x40E0                ## $a1 = 40E00000
/* 045E8 808DAE58 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 045EC 808DAE5C 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 045F0 808DAE60 46125100 */  add.s   $f4, $f10, $f18
/* 045F4 808DAE64 0C01E107 */  jal     Math_ApproachF

/* 045F8 808DAE68 E6240258 */  swc1    $f4, 0x0258($s1)           ## 00000258
/* 045FC 808DAE6C 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 04600 808DAE70 10000004 */  beq     $zero, $zero, .L808DAE84
/* 04604 808DAE74 A22F01A0 */  sb      $t7, 0x01A0($s1)           ## 000001A0
.L808DAE78:
/* 04608 808DAE78 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 0460C 808DAE7C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 200.00
/* 04610 808DAE80 00000000 */  nop
.L808DAE84:
/* 04614 808DAE84 4405A000 */  mfc1    $a1, $f20
/* 04618 808DAE88 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 0461C 808DAE8C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 04620 808DAE90 26240028 */  addiu   $a0, $s1, 0x0028           ## $a0 = 00000028
/* 04624 808DAE94 0C01E107 */  jal     Math_ApproachF

/* 04628 808DAE98 8E270060 */  lw      $a3, 0x0060($s1)           ## 00000060
/* 0462C 808DAE9C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 04630 808DAEA0 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 04634 808DAEA4 26240060 */  addiu   $a0, $s1, 0x0060           ## $a0 = 00000060
/* 04638 808DAEA8 3C0541A0 */  lui     $a1, 0x41A0                ## $a1 = 41A00000
/* 0463C 808DAEAC 44060000 */  mfc1    $a2, $f0
/* 04640 808DAEB0 44070000 */  mfc1    $a3, $f0
/* 04644 808DAEB4 0C01E107 */  jal     Math_ApproachF

/* 04648 808DAEB8 00000000 */  nop
/* 0464C 808DAEBC 862201B6 */  lh      $v0, 0x01B6($s1)           ## 000001B6
/* 04650 808DAEC0 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 04654 808DAEC4 3C040600 */  lui     $a0, %hi(D_06002D2C)                ## $a0 = 06000000
/* 04658 808DAEC8 1441000E */  bne     $v0, $at, .L808DAF04
/* 0465C 808DAECC 00000000 */  nop
/* 04660 808DAED0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 04664 808DAED4 24842D2C */  addiu   $a0, $a0, %lo(D_06002D2C)           ## $a0 = 06002D2C
/* 04668 808DAED8 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 0466C 808DAEDC 3C050600 */  lui     $a1, %hi(D_06002D2C)                ## $a1 = 06000000
/* 04670 808DAEE0 24A52D2C */  addiu   $a1, $a1, %lo(D_06002D2C)           ## $a1 = 06002D2C
/* 04674 808DAEE4 46803220 */  cvt.s.w $f8, $f6
/* 04678 808DAEE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000150
/* 0467C 808DAEEC 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 04680 808DAEF0 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 04684 808DAEF4 E62801CC */  swc1    $f8, 0x01CC($s1)           ## 000001CC
/* 04688 808DAEF8 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 0468C 808DAEFC 862201B6 */  lh      $v0, 0x01B6($s1)           ## 000001B6
/* 04690 808DAF00 E6300060 */  swc1    $f16, 0x0060($s1)          ## 00000060
.L808DAF04:
/* 04694 808DAF04 144000AD */  bne     $v0, $zero, .L808DB1BC
/* 04698 808DAF08 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 0469C 808DAF0C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 046A0 808DAF10 A63801C2 */  sh      $t8, 0x01C2($s1)           ## 000001C2
/* 046A4 808DAF14 100000A9 */  beq     $zero, $zero, .L808DB1BC
/* 046A8 808DAF18 E62A0060 */  swc1    $f10, 0x0060($s1)          ## 00000060
glabel L808DAF1C
/* 046AC 808DAF1C 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 046B0 808DAF20 3C198090 */  lui     $t9, %hi(D_808F93C0)       ## $t9 = 80900000
/* 046B4 808DAF24 8F3993C0 */  lw      $t9, %lo(D_808F93C0)($t9)
/* 046B8 808DAF28 44819000 */  mtc1    $at, $f18                  ## $f18 = -1.00
/* 046BC 808DAF2C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 046C0 808DAF30 26240060 */  addiu   $a0, $s1, 0x0060           ## $a0 = 00000060
/* 046C4 808DAF34 E73216C8 */  swc1    $f18, 0x16C8($t9)          ## 809016C8
/* 046C8 808DAF38 A22801A0 */  sb      $t0, 0x01A0($s1)           ## 000001A0
/* 046CC 808DAF3C 3C05C248 */  lui     $a1, 0xC248                ## $a1 = C2480000
/* 046D0 808DAF40 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 046D4 808DAF44 0C01E107 */  jal     Math_ApproachF

/* 046D8 808DAF48 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 046DC 808DAF4C C6240028 */  lwc1    $f4, 0x0028($s1)           ## 00000028
/* 046E0 808DAF50 C6260060 */  lwc1    $f6, 0x0060($s1)           ## 00000060
/* 046E4 808DAF54 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 046E8 808DAF58 44810000 */  mtc1    $at, $f0                   ## $f0 = 60.00
/* 046EC 808DAF5C 46062200 */  add.s   $f8, $f4, $f6
/* 046F0 808DAF60 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 046F4 808DAF64 240A000A */  addiu   $t2, $zero, 0x000A         ## $t2 = 0000000A
/* 046F8 808DAF68 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 046FC 808DAF6C E6280028 */  swc1    $f8, 0x0028($s1)           ## 00000028
/* 04700 808DAF70 C6300028 */  lwc1    $f16, 0x0028($s1)          ## 00000028
/* 04704 808DAF74 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 04708 808DAF78 24070014 */  addiu   $a3, $zero, 0x0014         ## $a3 = 00000014
/* 0470C 808DAF7C 4600803C */  c.lt.s  $f16, $f0
/* 04710 808DAF80 00000000 */  nop
/* 04714 808DAF84 4502008E */  bc1fl   .L808DB1C0
/* 04718 808DAF88 8622019C */  lh      $v0, 0x019C($s1)           ## 0000019C
/* 0471C 808DAF8C E6200028 */  swc1    $f0, 0x0028($s1)           ## 00000028
/* 04720 808DAF90 A62901C2 */  sh      $t1, 0x01C2($s1)           ## 000001C2
/* 04724 808DAF94 A62A01B6 */  sh      $t2, 0x01B6($s1)           ## 000001B6
/* 04728 808DAF98 0C00CFA2 */  jal     func_80033E88
/* 0472C 808DAF9C 8FA5008C */  lw      $a1, 0x008C($sp)
/* 04730 808DAFA0 240B0023 */  addiu   $t3, $zero, 0x0023         ## $t3 = 00000023
/* 04734 808DAFA4 A62B019C */  sh      $t3, 0x019C($s1)           ## 0000019C
/* 04738 808DAFA8 A220019E */  sb      $zero, 0x019E($s1)         ## 0000019E
/* 0473C 808DAFAC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 04740 808DAFB0 0C00BE0A */  jal     Audio_PlayActorSound2

/* 04744 808DAFB4 24053915 */  addiu   $a1, $zero, 0x3915         ## $a1 = 00003915
/* 04748 808DAFB8 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 0474C 808DAFBC 8E2E0260 */  lw      $t6, 0x0260($s1)           ## 00000260
/* 04750 808DAFC0 27AC0060 */  addiu   $t4, $sp, 0x0060           ## $t4 = FFFFFFD8
/* 04754 808DAFC4 E62A0254 */  swc1    $f10, 0x0254($s1)          ## 00000254
/* 04758 808DAFC8 AD8E0000 */  sw      $t6, 0x0000($t4)           ## FFFFFFD8
/* 0475C 808DAFCC 8E2D0264 */  lw      $t5, 0x0264($s1)           ## 00000264
/* 04760 808DAFD0 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 04764 808DAFD4 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 04768 808DAFD8 AD8D0004 */  sw      $t5, 0x0004($t4)           ## FFFFFFDC
/* 0476C 808DAFDC 8E2E0268 */  lw      $t6, 0x0268($s1)           ## 00000268
/* 04770 808DAFE0 4481A000 */  mtc1    $at, $f20                  ## $f20 = 25.00
/* 04774 808DAFE4 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 04778 808DAFE8 AD8E0008 */  sw      $t6, 0x0008($t4)           ## FFFFFFE0
/* 0477C 808DAFEC E7B20064 */  swc1    $f18, 0x0064($sp)
.L808DAFF0:
/* 04780 808DAFF0 0C00CFC8 */  jal     Rand_CenteredFloat

/* 04784 808DAFF4 4600A306 */  mov.s   $f12, $f20
/* 04788 808DAFF8 3C014188 */  lui     $at, 0x4188                ## $at = 41880000
/* 0478C 808DAFFC 44816000 */  mtc1    $at, $f12                  ## $f12 = 17.00
/* 04790 808DB000 0C00CFBE */  jal     Rand_ZeroFloat

/* 04794 808DB004 E7A0006C */  swc1    $f0, 0x006C($sp)
/* 04798 808DB008 E7A00070 */  swc1    $f0, 0x0070($sp)
/* 0479C 808DB00C 0C00CFC8 */  jal     Rand_CenteredFloat

/* 047A0 808DB010 4600A306 */  mov.s   $f12, $f20
/* 047A4 808DB014 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 047A8 808DB018 44816000 */  mtc1    $at, $f12                  ## $f12 = 300.00
/* 047AC 808DB01C 0C00CFBE */  jal     Rand_ZeroFloat

/* 047B0 808DB020 E7A00074 */  swc1    $f0, 0x0074($sp)
/* 047B4 808DB024 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 047B8 808DB028 44812000 */  mtc1    $at, $f4                   ## $f4 = 500.00
/* 047BC 808DB02C 3C014150 */  lui     $at, 0x4150                ## $at = 41500000
/* 047C0 808DB030 44814000 */  mtc1    $at, $f8                   ## $f8 = 13.00
/* 047C4 808DB034 46040180 */  add.s   $f6, $f0, $f4
/* 047C8 808DB038 3C07808E */  lui     $a3, %hi(D_808E4C6C)       ## $a3 = 808E0000
/* 047CC 808DB03C 240F001E */  addiu   $t7, $zero, 0x001E         ## $t7 = 0000001E
/* 047D0 808DB040 AFAF0018 */  sw      $t7, 0x0018($sp)
/* 047D4 808DB044 24E74C6C */  addiu   $a3, $a3, %lo(D_808E4C6C)  ## $a3 = 808E4C6C
/* 047D8 808DB048 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 047DC 808DB04C 8FA4008C */  lw      $a0, 0x008C($sp)
/* 047E0 808DB050 27A50060 */  addiu   $a1, $sp, 0x0060           ## $a1 = FFFFFFD8
/* 047E4 808DB054 27A6006C */  addiu   $a2, $sp, 0x006C           ## $a2 = FFFFFFE4
/* 047E8 808DB058 0C235AAB */  jal     func_808D6AAC
/* 047EC 808DB05C E7A80014 */  swc1    $f8, 0x0014($sp)
/* 047F0 808DB060 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 047F4 808DB064 00108400 */  sll     $s0, $s0, 16
/* 047F8 808DB068 00108403 */  sra     $s0, $s0, 16
/* 047FC 808DB06C 2A010050 */  slti    $at, $s0, 0x0050
/* 04800 808DB070 1420FFDF */  bne     $at, $zero, .L808DAFF0
/* 04804 808DB074 00000000 */  nop
/* 04808 808DB078 10000051 */  beq     $zero, $zero, .L808DB1C0
/* 0480C 808DB07C 8622019C */  lh      $v0, 0x019C($s1)           ## 0000019C
glabel L808DB080
/* 04810 808DB080 863901B6 */  lh      $t9, 0x01B6($s1)           ## 000001B6
/* 04814 808DB084 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 04818 808DB088 A23801A0 */  sb      $t8, 0x01A0($s1)           ## 000001A0
/* 0481C 808DB08C 1720004B */  bne     $t9, $zero, .L808DB1BC
/* 04820 808DB090 3C040600 */  lui     $a0, %hi(D_0600343C)                ## $a0 = 06000000
/* 04824 808DB094 0C028800 */  jal     SkelAnime_GetFrameCount

/* 04828 808DB098 2484343C */  addiu   $a0, $a0, %lo(D_0600343C)           ## $a0 = 0600343C
/* 0482C 808DB09C 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 04830 808DB0A0 3C050600 */  lui     $a1, %hi(D_0600343C)                ## $a1 = 06000000
/* 04834 808DB0A4 24A5343C */  addiu   $a1, $a1, %lo(D_0600343C)           ## $a1 = 0600343C
/* 04838 808DB0A8 468082A0 */  cvt.s.w $f10, $f16
/* 0483C 808DB0AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000001
/* 04840 808DB0B0 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 04844 808DB0B4 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 04848 808DB0B8 E62A01CC */  swc1    $f10, 0x01CC($s1)          ## 000001CC
/* 0484C 808DB0BC 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 04850 808DB0C0 24080003 */  addiu   $t0, $zero, 0x0003         ## $t0 = 00000003
/* 04854 808DB0C4 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 04858 808DB0C8 A62801C2 */  sh      $t0, 0x01C2($s1)           ## 000001C2
/* 0485C 808DB0CC A229019F */  sb      $t1, 0x019F($s1)           ## 0000019F
/* 04860 808DB0D0 1000003A */  beq     $zero, $zero, .L808DB1BC
/* 04864 808DB0D4 E6320060 */  swc1    $f18, 0x0060($s1)          ## 00000060
glabel L808DB0D8
/* 04868 808DB0D8 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 0486C 808DB0DC 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 04870 808DB0E0 26240028 */  addiu   $a0, $s1, 0x0028           ## $a0 = 00000028
/* 04874 808DB0E4 3C054316 */  lui     $a1, 0x4316                ## $a1 = 43160000
/* 04878 808DB0E8 0C01E107 */  jal     Math_ApproachF

/* 0487C 808DB0EC 8E270060 */  lw      $a3, 0x0060($s1)           ## 00000060
/* 04880 808DB0F0 26240060 */  addiu   $a0, $s1, 0x0060           ## $a0 = 00000060
/* 04884 808DB0F4 3C0541A0 */  lui     $a1, 0x41A0                ## $a1 = 41A00000
/* 04888 808DB0F8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0488C 808DB0FC 0C01E107 */  jal     Math_ApproachF

/* 04890 808DB100 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 04894 808DB104 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000001
/* 04898 808DB108 0C0295B2 */  jal     func_800A56C8
/* 0489C 808DB10C 8E2501CC */  lw      $a1, 0x01CC($s1)           ## 000001CC
/* 048A0 808DB110 1040002A */  beq     $v0, $zero, .L808DB1BC
/* 048A4 808DB114 3C040601 */  lui     $a0, %hi(D_06008A88)                ## $a0 = 06010000
/* 048A8 808DB118 0C028800 */  jal     SkelAnime_GetFrameCount

/* 048AC 808DB11C 24848A88 */  addiu   $a0, $a0, %lo(D_06008A88)           ## $a0 = 06008A88
/* 048B0 808DB120 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 048B4 808DB124 3C050601 */  lui     $a1, %hi(D_06008A88)                ## $a1 = 06010000
/* 048B8 808DB128 24A58A88 */  addiu   $a1, $a1, %lo(D_06008A88)           ## $a1 = 06008A88
/* 048BC 808DB12C 468021A0 */  cvt.s.w $f6, $f4
/* 048C0 808DB130 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000001
/* 048C4 808DB134 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 048C8 808DB138 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 048CC 808DB13C E62601CC */  swc1    $f6, 0x01CC($s1)           ## 000001CC
/* 048D0 808DB140 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 048D4 808DB144 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000001
/* 048D8 808DB148 3C014190 */  lui     $at, 0x4190                ## $at = 41900000
/* 048DC 808DB14C 3C0A8090 */  lui     $t2, %hi(D_808F93C0)       ## $t2 = 80900000
/* 048E0 808DB150 8D4A93C0 */  lw      $t2, %lo(D_808F93C0)($t2)
/* 048E4 808DB154 44814000 */  mtc1    $at, $f8                   ## $f8 = 18.00
/* 048E8 808DB158 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 048EC 808DB15C 240528C7 */  addiu   $a1, $zero, 0x28C7         ## $a1 = 000028C7
/* 048F0 808DB160 0C00BE0A */  jal     Audio_PlayActorSound2

/* 048F4 808DB164 E54816C4 */  swc1    $f8, 0x16C4($t2)           ## 809016C4
/* 048F8 808DB168 240B0004 */  addiu   $t3, $zero, 0x0004         ## $t3 = 00000004
/* 048FC 808DB16C 10000013 */  beq     $zero, $zero, .L808DB1BC
/* 04900 808DB170 A62B01C2 */  sh      $t3, 0x01C2($s1)           ## 000001C2
glabel L808DB174
/* 04904 808DB174 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 04908 808DB178 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 0490C 808DB17C 26240028 */  addiu   $a0, $s1, 0x0028           ## $a0 = 00000028
/* 04910 808DB180 3C054316 */  lui     $a1, 0x4316                ## $a1 = 43160000
/* 04914 808DB184 0C01E107 */  jal     Math_ApproachF

/* 04918 808DB188 8E270060 */  lw      $a3, 0x0060($s1)           ## 00000060
/* 0491C 808DB18C 26240060 */  addiu   $a0, $s1, 0x0060           ## $a0 = 00000060
/* 04920 808DB190 3C0541A0 */  lui     $a1, 0x41A0                ## $a1 = 41A00000
/* 04924 808DB194 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 04928 808DB198 0C01E107 */  jal     Math_ApproachF

/* 0492C 808DB19C 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 04930 808DB1A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000001
/* 04934 808DB1A4 0C0295B2 */  jal     func_800A56C8
/* 04938 808DB1A8 8E2501CC */  lw      $a1, 0x01CC($s1)           ## 000001CC
/* 0493C 808DB1AC 10400003 */  beq     $v0, $zero, .L808DB1BC
/* 04940 808DB1B0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 04944 808DB1B4 0C236EBC */  jal     func_808DBAF0
/* 04948 808DB1B8 8FA5008C */  lw      $a1, 0x008C($sp)
.L808DB1BC:
/* 0494C 808DB1BC 8622019C */  lh      $v0, 0x019C($s1)           ## 0000019C
.L808DB1C0:
/* 04950 808DB1C0 24010023 */  addiu   $at, $zero, 0x0023         ## $at = 00000023
/* 04954 808DB1C4 10410005 */  beq     $v0, $at, .L808DB1DC
/* 04958 808DB1C8 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
/* 0495C 808DB1CC 10410003 */  beq     $v0, $at, .L808DB1DC
/* 04960 808DB1D0 24010019 */  addiu   $at, $zero, 0x0019         ## $at = 00000019
/* 04964 808DB1D4 54410013 */  bnel    $v0, $at, .L808DB224
/* 04968 808DB1D8 24010023 */  addiu   $at, $zero, 0x0023         ## $at = 00000023
.L808DB1DC:
/* 0496C 808DB1DC 8E2D0024 */  lw      $t5, 0x0024($s1)           ## 00000024
/* 04970 808DB1E0 27A50054 */  addiu   $a1, $sp, 0x0054           ## $a1 = FFFFFFCC
/* 04974 808DB1E4 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 04978 808DB1E8 ACAD0000 */  sw      $t5, 0x0000($a1)           ## FFFFFFCC
/* 0497C 808DB1EC 8E2C0028 */  lw      $t4, 0x0028($s1)           ## 00000028
/* 04980 808DB1F0 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 04984 808DB1F4 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 04988 808DB1F8 ACAC0004 */  sw      $t4, 0x0004($a1)           ## FFFFFFD0
/* 0498C 808DB1FC 8E2D002C */  lw      $t5, 0x002C($s1)           ## 0000002C
/* 04990 808DB200 ACAD0008 */  sw      $t5, 0x0008($a1)           ## FFFFFFD4
/* 04994 808DB204 E7B00058 */  swc1    $f16, 0x0058($sp)
/* 04998 808DB208 862E019C */  lh      $t6, 0x019C($s1)           ## 0000019C
/* 0499C 808DB20C 8FA4008C */  lw      $a0, 0x008C($sp)
/* 049A0 808DB210 25CFFFE7 */  addiu   $t7, $t6, 0xFFE7           ## $t7 = FFFFFFE7
/* 049A4 808DB214 0C235B95 */  jal     func_808D6E54
/* 049A8 808DB218 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 049AC 808DB21C 8622019C */  lh      $v0, 0x019C($s1)           ## 0000019C
/* 049B0 808DB220 24010023 */  addiu   $at, $zero, 0x0023         ## $at = 00000023
.L808DB224:
/* 049B4 808DB224 5441000F */  bnel    $v0, $at, .L808DB264
/* 049B8 808DB228 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 049BC 808DB22C 8E390024 */  lw      $t9, 0x0024($s1)           ## 00000024
/* 049C0 808DB230 27A50048 */  addiu   $a1, $sp, 0x0048           ## $a1 = FFFFFFC0
/* 049C4 808DB234 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 049C8 808DB238 ACB90000 */  sw      $t9, 0x0000($a1)           ## FFFFFFC0
/* 049CC 808DB23C 8E380028 */  lw      $t8, 0x0028($s1)           ## 00000028
/* 049D0 808DB240 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 049D4 808DB244 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 049D8 808DB248 ACB80004 */  sw      $t8, 0x0004($a1)           ## FFFFFFC4
/* 049DC 808DB24C 8E39002C */  lw      $t9, 0x002C($s1)           ## 0000002C
/* 049E0 808DB250 ACB90008 */  sw      $t9, 0x0008($a1)           ## FFFFFFC8
/* 049E4 808DB254 8FA4008C */  lw      $a0, 0x008C($sp)
/* 049E8 808DB258 0C235BCF */  jal     func_808D6F3C
/* 049EC 808DB25C E7AA004C */  swc1    $f10, 0x004C($sp)
/* 049F0 808DB260 8FBF0034 */  lw      $ra, 0x0034($sp)
.L808DB264:
/* 049F4 808DB264 D7B40020 */  ldc1    $f20, 0x0020($sp)
/* 049F8 808DB268 8FB0002C */  lw      $s0, 0x002C($sp)
/* 049FC 808DB26C 8FB10030 */  lw      $s1, 0x0030($sp)
/* 04A00 808DB270 03E00008 */  jr      $ra
/* 04A04 808DB274 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
