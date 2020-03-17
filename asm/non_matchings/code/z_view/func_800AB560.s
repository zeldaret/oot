.rdata
glabel D_80141280
    .asciz "../z_view.c"
    .balign 4

glabel D_8014128C
    .asciz "vp"
    .balign 4

glabel D_80141290
    .asciz "../z_view.c"
    .balign 4

glabel D_8014129C
    .asciz "projection"
    .balign 4

glabel D_801412A8
    .asciz "../z_view.c"
    .balign 4

glabel D_801412B4
    .asciz "viewing"
    .balign 4

glabel D_801412BC
    .asciz "../z_view.c"
    .balign 4

glabel D_801412C8
    .asciz "../z_view.c"
    .balign 4

.text
glabel func_800AB560
/* B22700 800AB560 27BDFF68 */  addiu $sp, $sp, -0x98
/* B22704 800AB564 AFBF0034 */  sw    $ra, 0x34($sp)
/* B22708 800AB568 AFB10030 */  sw    $s1, 0x30($sp)
/* B2270C 800AB56C AFB0002C */  sw    $s0, 0x2c($sp)
/* B22710 800AB570 8C910004 */  lw    $s1, 4($a0)
/* B22714 800AB574 00808025 */  move  $s0, $a0
/* B22718 800AB578 3C068014 */  lui   $a2, %hi(D_80141280) # $a2, 0x8014
/* B2271C 800AB57C 24C61280 */  addiu $a2, %lo(D_80141280) # addiu $a2, $a2, 0x1280
/* B22720 800AB580 27A40060 */  addiu $a0, $sp, 0x60
/* B22724 800AB584 24070330 */  li    $a3, 816
/* B22728 800AB588 0C031AB1 */  jal   func_800C6AC4
/* B2272C 800AB58C 02202825 */   move  $a1, $s1
/* B22730 800AB590 02202025 */  move  $a0, $s1
/* B22734 800AB594 0C031A73 */  jal   Graph_Alloc
/* B22738 800AB598 24050010 */   li    $a1, 16
/* B2273C 800AB59C 3C048014 */  lui   $a0, %hi(D_8014128C) # $a0, 0x8014
/* B22740 800AB5A0 3C068014 */  lui   $a2, %hi(D_80141290) # $a2, 0x8014
/* B22744 800AB5A4 AFA20080 */  sw    $v0, 0x80($sp)
/* B22748 800AB5A8 24C61290 */  addiu $a2, %lo(D_80141290) # addiu $a2, $a2, 0x1290
/* B2274C 800AB5AC 2484128C */  addiu $a0, %lo(D_8014128C) # addiu $a0, $a0, 0x128c
/* B22750 800AB5B0 00402825 */  move  $a1, $v0
/* B22754 800AB5B4 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B22758 800AB5B8 24070335 */   li    $a3, 821
/* B2275C 800AB5BC 8FA40080 */  lw    $a0, 0x80($sp)
/* B22760 800AB5C0 0C02A864 */  jal   func_800AA190
/* B22764 800AB5C4 26050008 */   addiu $a1, $s0, 8
/* B22768 800AB5C8 8FA40080 */  lw    $a0, 0x80($sp)
/* B2276C 800AB5CC 3C19E700 */  lui   $t9, 0xe700
/* B22770 800AB5D0 3C014080 */  li    $at, 0x40800000 # 0.000000
/* B22774 800AB5D4 8C8F0000 */  lw    $t7, ($a0)
/* B22778 800AB5D8 44810000 */  mtc1  $at, $f0
/* B2277C 800AB5DC 3C01ED00 */  lui   $at, 0xed00
/* B22780 800AB5E0 AE0F0050 */  sw    $t7, 0x50($s0)
/* B22784 800AB5E4 8C8E0004 */  lw    $t6, 4($a0)
/* B22788 800AB5E8 24050040 */  li    $a1, 64
/* B2278C 800AB5EC AE0E0054 */  sw    $t6, 0x54($s0)
/* B22790 800AB5F0 8C8F0008 */  lw    $t7, 8($a0)
/* B22794 800AB5F4 AE0F0058 */  sw    $t7, 0x58($s0)
/* B22798 800AB5F8 8C8E000C */  lw    $t6, 0xc($a0)
/* B2279C 800AB5FC AE0E005C */  sw    $t6, 0x5c($s0)
/* B227A0 800AB600 8E2202B0 */  lw    $v0, 0x2b0($s1)
/* B227A4 800AB604 24580008 */  addiu $t8, $v0, 8
/* B227A8 800AB608 AE3802B0 */  sw    $t8, 0x2b0($s1)
/* B227AC 800AB60C AC400004 */  sw    $zero, 4($v0)
/* B227B0 800AB610 AC590000 */  sw    $t9, ($v0)
/* B227B4 800AB614 8E2202B0 */  lw    $v0, 0x2b0($s1)
/* B227B8 800AB618 24480008 */  addiu $t0, $v0, 8
/* B227BC 800AB61C AE2802B0 */  sw    $t0, 0x2b0($s1)
/* B227C0 800AB620 8E090010 */  lw    $t1, 0x10($s0)
/* B227C4 800AB624 8E0F0008 */  lw    $t7, 8($s0)
/* B227C8 800AB628 44892000 */  mtc1  $t1, $f4
/* B227CC 800AB62C 448F8000 */  mtc1  $t7, $f16
/* B227D0 800AB630 468021A0 */  cvt.s.w $f6, $f4
/* B227D4 800AB634 468084A0 */  cvt.s.w $f18, $f16
/* B227D8 800AB638 46003202 */  mul.s $f8, $f6, $f0
/* B227DC 800AB63C 00000000 */  nop   
/* B227E0 800AB640 46009102 */  mul.s $f4, $f18, $f0
/* B227E4 800AB644 4600428D */  trunc.w.s $f10, $f8
/* B227E8 800AB648 4600218D */  trunc.w.s $f6, $f4
/* B227EC 800AB64C 440B5000 */  mfc1  $t3, $f10
/* B227F0 800AB650 44193000 */  mfc1  $t9, $f6
/* B227F4 800AB654 316C0FFF */  andi  $t4, $t3, 0xfff
/* B227F8 800AB658 000C6B00 */  sll   $t5, $t4, 0xc
/* B227FC 800AB65C 01A17025 */  or    $t6, $t5, $at
/* B22800 800AB660 33280FFF */  andi  $t0, $t9, 0xfff
/* B22804 800AB664 01C84825 */  or    $t1, $t6, $t0
/* B22808 800AB668 AC490000 */  sw    $t1, ($v0)
/* B2280C 800AB66C 8E0A0014 */  lw    $t2, 0x14($s0)
/* B22810 800AB670 8E18000C */  lw    $t8, 0xc($s0)
/* B22814 800AB674 3C0BDC08 */  li    $t3, 0xDC080000 # 0.000000
/* B22818 800AB678 448A4000 */  mtc1  $t2, $f8
/* B2281C 800AB67C 44982000 */  mtc1  $t8, $f4
/* B22820 800AB680 356B0008 */  ori   $t3, $t3, 8
/* B22824 800AB684 468042A0 */  cvt.s.w $f10, $f8
/* B22828 800AB688 468021A0 */  cvt.s.w $f6, $f4
/* B2282C 800AB68C 46005402 */  mul.s $f16, $f10, $f0
/* B22830 800AB690 00000000 */  nop   
/* B22834 800AB694 46003202 */  mul.s $f8, $f6, $f0
/* B22838 800AB698 4600848D */  trunc.w.s $f18, $f16
/* B2283C 800AB69C 4600428D */  trunc.w.s $f10, $f8
/* B22840 800AB6A0 440C9000 */  mfc1  $t4, $f18
/* B22844 800AB6A4 440E5000 */  mfc1  $t6, $f10
/* B22848 800AB6A8 318D0FFF */  andi  $t5, $t4, 0xfff
/* B2284C 800AB6AC 000D7B00 */  sll   $t7, $t5, 0xc
/* B22850 800AB6B0 31C80FFF */  andi  $t0, $t6, 0xfff
/* B22854 800AB6B4 01E84825 */  or    $t1, $t7, $t0
/* B22858 800AB6B8 AC490004 */  sw    $t1, 4($v0)
/* B2285C 800AB6BC 8E2202B0 */  lw    $v0, 0x2b0($s1)
/* B22860 800AB6C0 244A0008 */  addiu $t2, $v0, 8
/* B22864 800AB6C4 AE2A02B0 */  sw    $t2, 0x2b0($s1)
/* B22868 800AB6C8 AC440004 */  sw    $a0, 4($v0)
/* B2286C 800AB6CC 02202025 */  move  $a0, $s1
/* B22870 800AB6D0 0C031A73 */  jal   Graph_Alloc
/* B22874 800AB6D4 AC4B0000 */   sw    $t3, ($v0)
/* B22878 800AB6D8 3C048014 */  lui   $a0, %hi(D_8014129C) # $a0, 0x8014
/* B2287C 800AB6DC 3C068014 */  lui   $a2, %hi(D_801412A8) # $a2, 0x8014
/* B22880 800AB6E0 AFA2007C */  sw    $v0, 0x7c($sp)
/* B22884 800AB6E4 24C612A8 */  addiu $a2, %lo(D_801412A8) # addiu $a2, $a2, 0x12a8
/* B22888 800AB6E8 2484129C */  addiu $a0, %lo(D_8014129C) # addiu $a0, $a0, 0x129c
/* B2288C 800AB6EC 00402825 */  move  $a1, $v0
/* B22890 800AB6F0 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B22894 800AB6F4 24070341 */   li    $a3, 833
/* B22898 800AB6F8 8E0C0014 */  lw    $t4, 0x14($s0)
/* B2289C 800AB6FC 8E0D0010 */  lw    $t5, 0x10($s0)
/* B228A0 800AB700 8E18000C */  lw    $t8, 0xc($s0)
/* B228A4 800AB704 8E190008 */  lw    $t9, 8($s0)
/* B228A8 800AB708 018D1023 */  subu  $v0, $t4, $t5
/* B228AC 800AB70C 44828000 */  mtc1  $v0, $f16
/* B228B0 800AB710 03191823 */  subu  $v1, $t8, $t9
/* B228B4 800AB714 44832000 */  mtc1  $v1, $f4
/* B228B8 800AB718 468084A0 */  cvt.s.w $f18, $f16
/* B228BC 800AB71C 8FA4007C */  lw    $a0, 0x7c($sp)
/* B228C0 800AB720 C60A001C */  lwc1  $f10, 0x1c($s0)
/* B228C4 800AB724 8E060018 */  lw    $a2, 0x18($s0)
/* B228C8 800AB728 AE0400E0 */  sw    $a0, 0xe0($s0)
/* B228CC 800AB72C 468021A0 */  cvt.s.w $f6, $f4
/* B228D0 800AB730 E7AA0010 */  swc1  $f10, 0x10($sp)
/* B228D4 800AB734 C6100020 */  lwc1  $f16, 0x20($s0)
/* B228D8 800AB738 2605011C */  addiu $a1, $s0, 0x11c
/* B228DC 800AB73C E7B00014 */  swc1  $f16, 0x14($sp)
/* B228E0 800AB740 46069203 */  div.s $f8, $f18, $f6
/* B228E4 800AB744 C6040024 */  lwc1  $f4, 0x24($s0)
/* B228E8 800AB748 E7A40018 */  swc1  $f4, 0x18($sp)
/* B228EC 800AB74C 44074000 */  mfc1  $a3, $f8
/* B228F0 800AB750 0C0404C0 */  jal   guPerspective
/* B228F4 800AB754 00000000 */   nop   
/* B228F8 800AB758 8FA4007C */  lw    $a0, 0x7c($sp)
/* B228FC 800AB75C 02004825 */  move  $t1, $s0
/* B22900 800AB760 00804025 */  move  $t0, $a0
/* B22904 800AB764 248A003C */  addiu $t2, $a0, 0x3c
.L800AB768:
/* B22908 800AB768 8D0F0000 */  lw    $t7, ($t0)
/* B2290C 800AB76C 2508000C */  addiu $t0, $t0, 0xc
/* B22910 800AB770 2529000C */  addiu $t1, $t1, 0xc
/* B22914 800AB774 AD2F0054 */  sw    $t7, 0x54($t1)
/* B22918 800AB778 8D0EFFF8 */  lw    $t6, -8($t0)
/* B2291C 800AB77C AD2E0058 */  sw    $t6, 0x58($t1)
/* B22920 800AB780 8D0FFFFC */  lw    $t7, -4($t0)
/* B22924 800AB784 150AFFF8 */  bne   $t0, $t2, .L800AB768
/* B22928 800AB788 AD2F005C */   sw    $t7, 0x5c($t1)
/* B2292C 800AB78C 8D0F0000 */  lw    $t7, ($t0)
/* B22930 800AB790 3C0CDB0E */  lui   $t4, 0xdb0e
/* B22934 800AB794 3C19DA38 */  lui   $t9, (0xDA380007 >> 16) # lui $t9, 0xda38
/* B22938 800AB798 AD2F0060 */  sw    $t7, 0x60($t1)
/* B2293C 800AB79C 8E2202B0 */  lw    $v0, 0x2b0($s1)
/* B22940 800AB7A0 37390007 */  ori   $t9, (0xDA380007 & 0xFFFF) # ori $t9, $t9, 7
/* B22944 800AB7A4 24050040 */  li    $a1, 64
/* B22948 800AB7A8 244B0008 */  addiu $t3, $v0, 8
/* B2294C 800AB7AC AE2B02B0 */  sw    $t3, 0x2b0($s1)
/* B22950 800AB7B0 AC4C0000 */  sw    $t4, ($v0)
/* B22954 800AB7B4 960D011C */  lhu   $t5, 0x11c($s0)
/* B22958 800AB7B8 AC4D0004 */  sw    $t5, 4($v0)
/* B2295C 800AB7BC 8E2202B0 */  lw    $v0, 0x2b0($s1)
/* B22960 800AB7C0 24580008 */  addiu $t8, $v0, 8
/* B22964 800AB7C4 AE3802B0 */  sw    $t8, 0x2b0($s1)
/* B22968 800AB7C8 AC440004 */  sw    $a0, 4($v0)
/* B2296C 800AB7CC 02202025 */  move  $a0, $s1
/* B22970 800AB7D0 0C031A73 */  jal   Graph_Alloc
/* B22974 800AB7D4 AC590000 */   sw    $t9, ($v0)
/* B22978 800AB7D8 3C048014 */  lui   $a0, %hi(D_801412B4) # $a0, 0x8014
/* B2297C 800AB7DC 3C068014 */  lui   $a2, %hi(D_801412BC) # $a2, 0x8014
/* B22980 800AB7E0 AFA20078 */  sw    $v0, 0x78($sp)
/* B22984 800AB7E4 24C612BC */  addiu $a2, %lo(D_801412BC) # addiu $a2, $a2, 0x12bc
/* B22988 800AB7E8 248412B4 */  addiu $a0, %lo(D_801412B4) # addiu $a0, $a0, 0x12b4
/* B2298C 800AB7EC 00402825 */  move  $a1, $v0
/* B22990 800AB7F0 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B22994 800AB7F4 24070350 */   li    $a3, 848
/* B22998 800AB7F8 C60C0028 */  lwc1  $f12, 0x28($s0)
/* B2299C 800AB7FC C6120034 */  lwc1  $f18, 0x34($s0)
/* B229A0 800AB800 8FAA0078 */  lw    $t2, 0x78($sp)
/* B229A4 800AB804 460C9032 */  c.eq.s $f18, $f12
/* B229A8 800AB808 AE0A00E4 */  sw    $t2, 0xe4($s0)
/* B229AC 800AB80C 45020018 */  bc1fl .L800AB870
/* B229B0 800AB810 C60E002C */   lwc1  $f14, 0x2c($s0)
/* B229B4 800AB814 C602002C */  lwc1  $f2, 0x2c($s0)
/* B229B8 800AB818 C6060038 */  lwc1  $f6, 0x38($s0)
/* B229BC 800AB81C 46023032 */  c.eq.s $f6, $f2
/* B229C0 800AB820 00000000 */  nop   
/* B229C4 800AB824 45020012 */  bc1fl .L800AB870
/* B229C8 800AB828 C60E002C */   lwc1  $f14, 0x2c($s0)
/* B229CC 800AB82C C60E0030 */  lwc1  $f14, 0x30($s0)
/* B229D0 800AB830 C608003C */  lwc1  $f8, 0x3c($s0)
/* B229D4 800AB834 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B229D8 800AB838 460E4032 */  c.eq.s $f8, $f14
/* B229DC 800AB83C 00000000 */  nop   
/* B229E0 800AB840 4502000B */  bc1fl .L800AB870
/* B229E4 800AB844 C60E002C */   lwc1  $f14, 0x2c($s0)
/* B229E8 800AB848 44810000 */  mtc1  $at, $f0
/* B229EC 800AB84C 00000000 */  nop   
/* B229F0 800AB850 46006280 */  add.s $f10, $f12, $f0
/* B229F4 800AB854 46001400 */  add.s $f16, $f2, $f0
/* B229F8 800AB858 E60A0028 */  swc1  $f10, 0x28($s0)
/* B229FC 800AB85C C60C0028 */  lwc1  $f12, 0x28($s0)
/* B22A00 800AB860 46007100 */  add.s $f4, $f14, $f0
/* B22A04 800AB864 E610002C */  swc1  $f16, 0x2c($s0)
/* B22A08 800AB868 E6040030 */  swc1  $f4, 0x30($s0)
/* B22A0C 800AB86C C60E002C */  lwc1  $f14, 0x2c($s0)
.L800AB870:
/* B22A10 800AB870 0C02AF9D */  jal   func_800ABE74
/* B22A14 800AB874 8E060030 */   lw    $a2, 0x30($s0)
/* B22A18 800AB878 C6120034 */  lwc1  $f18, 0x34($s0)
/* B22A1C 800AB87C 8E050028 */  lw    $a1, 0x28($s0)
/* B22A20 800AB880 8E06002C */  lw    $a2, 0x2c($s0)
/* B22A24 800AB884 8E070030 */  lw    $a3, 0x30($s0)
/* B22A28 800AB888 E7B20010 */  swc1  $f18, 0x10($sp)
/* B22A2C 800AB88C C6060038 */  lwc1  $f6, 0x38($s0)
/* B22A30 800AB890 8FA40078 */  lw    $a0, 0x78($sp)
/* B22A34 800AB894 E7A60014 */  swc1  $f6, 0x14($sp)
/* B22A38 800AB898 C608003C */  lwc1  $f8, 0x3c($s0)
/* B22A3C 800AB89C E7A80018 */  swc1  $f8, 0x18($sp)
/* B22A40 800AB8A0 C60A0040 */  lwc1  $f10, 0x40($s0)
/* B22A44 800AB8A4 E7AA001C */  swc1  $f10, 0x1c($sp)
/* B22A48 800AB8A8 C6100044 */  lwc1  $f16, 0x44($s0)
/* B22A4C 800AB8AC E7B00020 */  swc1  $f16, 0x20($sp)
/* B22A50 800AB8B0 C6040048 */  lwc1  $f4, 0x48($s0)
/* B22A54 800AB8B4 0C04078D */  jal   func_80101E34
/* B22A58 800AB8B8 E7A40024 */   swc1  $f4, 0x24($sp)
/* B22A5C 800AB8BC 8FA40078 */  lw    $a0, 0x78($sp)
/* B22A60 800AB8C0 02007825 */  move  $t7, $s0
/* B22A64 800AB8C4 3C0DDA38 */  lui   $t5, (0xDA380005 >> 16) # lui $t5, 0xda38
/* B22A68 800AB8C8 00807025 */  move  $t6, $a0
/* B22A6C 800AB8CC 248B003C */  addiu $t3, $a0, 0x3c
.L800AB8D0:
/* B22A70 800AB8D0 8DC90000 */  lw    $t1, ($t6)
/* B22A74 800AB8D4 25CE000C */  addiu $t6, $t6, 0xc
/* B22A78 800AB8D8 25EF000C */  addiu $t7, $t7, 0xc
/* B22A7C 800AB8DC ADE90094 */  sw    $t1, 0x94($t7)
/* B22A80 800AB8E0 8DC8FFF8 */  lw    $t0, -8($t6)
/* B22A84 800AB8E4 ADE80098 */  sw    $t0, 0x98($t7)
/* B22A88 800AB8E8 8DC9FFFC */  lw    $t1, -4($t6)
/* B22A8C 800AB8EC 15CBFFF8 */  bne   $t6, $t3, .L800AB8D0
/* B22A90 800AB8F0 ADE9009C */   sw    $t1, 0x9c($t7)
/* B22A94 800AB8F4 8DC90000 */  lw    $t1, ($t6)
/* B22A98 800AB8F8 35AD0005 */  ori   $t5, (0xDA380005 & 0xFFFF) # ori $t5, $t5, 5
/* B22A9C 800AB8FC 3C068014 */  lui   $a2, %hi(D_801412C8) # $a2, 0x8014
/* B22AA0 800AB900 ADE900A0 */  sw    $t1, 0xa0($t7)
/* B22AA4 800AB904 8E2202B0 */  lw    $v0, 0x2b0($s1)
/* B22AA8 800AB908 24C612C8 */  addiu $a2, %lo(D_801412C8) # addiu $a2, $a2, 0x12c8
/* B22AAC 800AB90C 02202825 */  move  $a1, $s1
/* B22AB0 800AB910 244C0008 */  addiu $t4, $v0, 8
/* B22AB4 800AB914 AE2C02B0 */  sw    $t4, 0x2b0($s1)
/* B22AB8 800AB918 AC440004 */  sw    $a0, 4($v0)
/* B22ABC 800AB91C 27A40060 */  addiu $a0, $sp, 0x60
/* B22AC0 800AB920 24070367 */  li    $a3, 871
/* B22AC4 800AB924 0C031AD5 */  jal   func_800C6B54
/* B22AC8 800AB928 AC4D0000 */   sw    $t5, ($v0)
/* B22ACC 800AB92C 8FBF0034 */  lw    $ra, 0x34($sp)
/* B22AD0 800AB930 8FB0002C */  lw    $s0, 0x2c($sp)
/* B22AD4 800AB934 8FB10030 */  lw    $s1, 0x30($sp)
/* B22AD8 800AB938 27BD0098 */  addiu $sp, $sp, 0x98
/* B22ADC 800AB93C 03E00008 */  jr    $ra
/* B22AE0 800AB940 24020001 */   li    $v0, 1

