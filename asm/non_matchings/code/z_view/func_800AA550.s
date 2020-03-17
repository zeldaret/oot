.rdata
glabel D_801410A0
    .asciz "ulx >= 0"
    .balign 4

glabel D_801410AC
    .asciz "../z_view.c"
    .balign 4

glabel D_801410B8
    .asciz "uly >= 0"
    .balign 4

glabel D_801410C4
    .asciz "../z_view.c"
    .balign 4

glabel D_801410D0
    .asciz "lrx <= SCREEN_WD"
    .balign 4

glabel D_801410E4
    .asciz "../z_view.c"
    .balign 4

glabel D_801410F0
    .asciz "lry <= SCREEN_HT"
    .balign 4

glabel D_80141104
    .asciz "../z_view.c"
    .balign 4

glabel D_80141110
    .asciz "../z_view.c"
    .balign 4

glabel D_8014111C
    .asciz "../z_view.c"
    .balign 4

.text
glabel func_800AA550
/* B216F0 800AA550 27BDFF90 */  addiu $sp, $sp, -0x70
/* B216F4 800AA554 AFBF001C */  sw    $ra, 0x1c($sp)
/* B216F8 800AA558 AFB00018 */  sw    $s0, 0x18($sp)
/* B216FC 800AA55C 8C900004 */  lw    $s0, 4($a0)
/* B21700 800AA560 0C02CE3F */  jal   func_800B38FC
/* B21704 800AA564 AFA40070 */   sw    $a0, 0x70($sp)
/* B21708 800AA568 8FA50070 */  lw    $a1, 0x70($sp)
/* B2170C 800AA56C 00401825 */  move  $v1, $v0
/* B21710 800AA570 04410002 */  bgez  $v0, .L800AA57C
/* B21714 800AA574 00002025 */   move  $a0, $zero
/* B21718 800AA578 00001825 */  move  $v1, $zero
.L800AA57C:
/* B2171C 800AA57C 28610079 */  slti  $at, $v1, 0x79
/* B21720 800AA580 14200002 */  bnez  $at, .L800AA58C
/* B21724 800AA584 240601C6 */   li    $a2, 454
/* B21728 800AA588 24030078 */  li    $v1, 120
.L800AA58C:
/* B2172C 800AA58C 8CAE0010 */  lw    $t6, 0x10($a1)
/* B21730 800AA590 01C47821 */  addu  $t7, $t6, $a0
/* B21734 800AA594 AFAF0060 */  sw    $t7, 0x60($sp)
/* B21738 800AA598 8CB80008 */  lw    $t8, 8($a1)
/* B2173C 800AA59C 0303C821 */  addu  $t9, $t8, $v1
/* B21740 800AA5A0 AFB9005C */  sw    $t9, 0x5c($sp)
/* B21744 800AA5A4 8CA80014 */  lw    $t0, 0x14($a1)
/* B21748 800AA5A8 01044823 */  subu  $t1, $t0, $a0
/* B2174C 800AA5AC AFA90058 */  sw    $t1, 0x58($sp)
/* B21750 800AA5B0 8CAA000C */  lw    $t2, 0xc($a1)
/* B21754 800AA5B4 3C048014 */  lui   $a0, %hi(D_801410A0) # $a0, 0x8014
/* B21758 800AA5B8 248410A0 */  addiu $a0, %lo(D_801410A0) # addiu $a0, $a0, 0x10a0
/* B2175C 800AA5BC 01435823 */  subu  $t3, $t2, $v1
/* B21760 800AA5C0 05E10004 */  bgez  $t7, .L800AA5D4
/* B21764 800AA5C4 AFAB0054 */   sw    $t3, 0x54($sp)
/* B21768 800AA5C8 3C058014 */  lui   $a1, %hi(D_801410AC) # $a1, 0x8014
/* B2176C 800AA5CC 0C0007FC */  jal   __assert
/* B21770 800AA5D0 24A510AC */   addiu $a1, %lo(D_801410AC) # addiu $a1, $a1, 0x10ac
.L800AA5D4:
/* B21774 800AA5D4 8FAD005C */  lw    $t5, 0x5c($sp)
/* B21778 800AA5D8 3C048014 */  lui   $a0, %hi(D_801410B8) # $a0, 0x8014
/* B2177C 800AA5DC 248410B8 */  addiu $a0, %lo(D_801410B8) # addiu $a0, $a0, 0x10b8
/* B21780 800AA5E0 05A10004 */  bgez  $t5, .L800AA5F4
/* B21784 800AA5E4 3C058014 */   lui   $a1, %hi(D_801410C4) # $a1, 0x8014
/* B21788 800AA5E8 24A510C4 */  addiu $a1, %lo(D_801410C4) # addiu $a1, $a1, 0x10c4
/* B2178C 800AA5EC 0C0007FC */  jal   __assert
/* B21790 800AA5F0 240601C7 */   li    $a2, 455
.L800AA5F4:
/* B21794 800AA5F4 8FAE0058 */  lw    $t6, 0x58($sp)
/* B21798 800AA5F8 3C048014 */  lui   $a0, %hi(D_801410D0) # $a0, 0x8014
/* B2179C 800AA5FC 248410D0 */  addiu $a0, %lo(D_801410D0) # addiu $a0, $a0, 0x10d0
/* B217A0 800AA600 29C10141 */  slti  $at, $t6, 0x141
/* B217A4 800AA604 14200004 */  bnez  $at, .L800AA618
/* B217A8 800AA608 3C058014 */   lui   $a1, %hi(D_801410E4) # $a1, 0x8014
/* B217AC 800AA60C 24A510E4 */  addiu $a1, %lo(D_801410E4) # addiu $a1, $a1, 0x10e4
/* B217B0 800AA610 0C0007FC */  jal   __assert
/* B217B4 800AA614 240601C8 */   li    $a2, 456
.L800AA618:
/* B217B8 800AA618 8FAF0054 */  lw    $t7, 0x54($sp)
/* B217BC 800AA61C 3C048014 */  lui   $a0, %hi(D_801410F0) # $a0, 0x8014
/* B217C0 800AA620 248410F0 */  addiu $a0, %lo(D_801410F0) # addiu $a0, $a0, 0x10f0
/* B217C4 800AA624 29E100F1 */  slti  $at, $t7, 0xf1
/* B217C8 800AA628 14200004 */  bnez  $at, .L800AA63C
/* B217CC 800AA62C 3C058014 */   lui   $a1, %hi(D_80141104) # $a1, 0x8014
/* B217D0 800AA630 24A51104 */  addiu $a1, %lo(D_80141104) # addiu $a1, $a1, 0x1104
/* B217D4 800AA634 0C0007FC */  jal   __assert
/* B217D8 800AA638 240601C9 */   li    $a2, 457
.L800AA63C:
/* B217DC 800AA63C 3C068014 */  lui   $a2, %hi(D_80141110) # $a2, 0x8014
/* B217E0 800AA640 24C61110 */  addiu $a2, %lo(D_80141110) # addiu $a2, $a2, 0x1110
/* B217E4 800AA644 27A4003C */  addiu $a0, $sp, 0x3c
/* B217E8 800AA648 02002825 */  move  $a1, $s0
/* B217EC 800AA64C 0C031AB1 */  jal   func_800C6AC4
/* B217F0 800AA650 240701CB */   li    $a3, 459
/* B217F4 800AA654 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B217F8 800AA658 3C06E700 */  lui   $a2, 0xe700
/* B217FC 800AA65C 3C014080 */  li    $at, 0x40800000 # 0.000000
/* B21800 800AA660 24780008 */  addiu $t8, $v1, 8
/* B21804 800AA664 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* B21808 800AA668 AC600004 */  sw    $zero, 4($v1)
/* B2180C 800AA66C AC660000 */  sw    $a2, ($v1)
/* B21810 800AA670 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B21814 800AA674 44810000 */  mtc1  $at, $f0
/* B21818 800AA678 3C01ED00 */  lui   $at, 0xed00
/* B2181C 800AA67C 24790008 */  addiu $t9, $v1, 8
/* B21820 800AA680 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* B21824 800AA684 8FA80060 */  lw    $t0, 0x60($sp)
/* B21828 800AA688 8FAE005C */  lw    $t6, 0x5c($sp)
/* B2182C 800AA68C 240701D8 */  li    $a3, 472
/* B21830 800AA690 44882000 */  mtc1  $t0, $f4
/* B21834 800AA694 448E8000 */  mtc1  $t6, $f16
/* B21838 800AA698 468021A0 */  cvt.s.w $f6, $f4
/* B2183C 800AA69C 468084A0 */  cvt.s.w $f18, $f16
/* B21840 800AA6A0 46003202 */  mul.s $f8, $f6, $f0
/* B21844 800AA6A4 00000000 */  nop   
/* B21848 800AA6A8 46009102 */  mul.s $f4, $f18, $f0
/* B2184C 800AA6AC 4600428D */  trunc.w.s $f10, $f8
/* B21850 800AA6B0 4600218D */  trunc.w.s $f6, $f4
/* B21854 800AA6B4 440A5000 */  mfc1  $t2, $f10
/* B21858 800AA6B8 44183000 */  mfc1  $t8, $f6
/* B2185C 800AA6BC 314B0FFF */  andi  $t3, $t2, 0xfff
/* B21860 800AA6C0 000B6300 */  sll   $t4, $t3, 0xc
/* B21864 800AA6C4 01816825 */  or    $t5, $t4, $at
/* B21868 800AA6C8 33190FFF */  andi  $t9, $t8, 0xfff
/* B2186C 800AA6CC 01B92025 */  or    $a0, $t5, $t9
/* B21870 800AA6D0 AC640000 */  sw    $a0, ($v1)
/* B21874 800AA6D4 8FA80058 */  lw    $t0, 0x58($sp)
/* B21878 800AA6D8 8FAE0054 */  lw    $t6, 0x54($sp)
/* B2187C 800AA6DC 44884000 */  mtc1  $t0, $f8
/* B21880 800AA6E0 448E2000 */  mtc1  $t6, $f4
/* B21884 800AA6E4 468042A0 */  cvt.s.w $f10, $f8
/* B21888 800AA6E8 468021A0 */  cvt.s.w $f6, $f4
/* B2188C 800AA6EC 46005402 */  mul.s $f16, $f10, $f0
/* B21890 800AA6F0 00000000 */  nop   
/* B21894 800AA6F4 46003202 */  mul.s $f8, $f6, $f0
/* B21898 800AA6F8 4600848D */  trunc.w.s $f18, $f16
/* B2189C 800AA6FC 4600428D */  trunc.w.s $f10, $f8
/* B218A0 800AA700 440A9000 */  mfc1  $t2, $f18
/* B218A4 800AA704 44185000 */  mfc1  $t8, $f10
/* B218A8 800AA708 314B0FFF */  andi  $t3, $t2, 0xfff
/* B218AC 800AA70C 000B6300 */  sll   $t4, $t3, 0xc
/* B218B0 800AA710 330D0FFF */  andi  $t5, $t8, 0xfff
/* B218B4 800AA714 018D2825 */  or    $a1, $t4, $t5
/* B218B8 800AA718 AC650004 */  sw    $a1, 4($v1)
/* B218BC 800AA71C 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* B218C0 800AA720 24790008 */  addiu $t9, $v1, 8
/* B218C4 800AA724 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* B218C8 800AA728 AC600004 */  sw    $zero, 4($v1)
/* B218CC 800AA72C AC660000 */  sw    $a2, ($v1)
/* B218D0 800AA730 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* B218D4 800AA734 3C068014 */  lui   $a2, %hi(D_8014111C) # $a2, 0x8014
/* B218D8 800AA738 24C6111C */  addiu $a2, %lo(D_8014111C) # addiu $a2, $a2, 0x111c
/* B218DC 800AA73C 24680008 */  addiu $t0, $v1, 8
/* B218E0 800AA740 AE0802D0 */  sw    $t0, 0x2d0($s0)
/* B218E4 800AA744 AC650004 */  sw    $a1, 4($v1)
/* B218E8 800AA748 AC640000 */  sw    $a0, ($v1)
/* B218EC 800AA74C 27A4003C */  addiu $a0, $sp, 0x3c
/* B218F0 800AA750 0C031AD5 */  jal   func_800C6B54
/* B218F4 800AA754 02002825 */   move  $a1, $s0
/* B218F8 800AA758 8FBF001C */  lw    $ra, 0x1c($sp)
/* B218FC 800AA75C 8FB00018 */  lw    $s0, 0x18($sp)
/* B21900 800AA760 27BD0070 */  addiu $sp, $sp, 0x70
/* B21904 800AA764 03E00008 */  jr    $ra
/* B21908 800AA768 00000000 */   nop   

