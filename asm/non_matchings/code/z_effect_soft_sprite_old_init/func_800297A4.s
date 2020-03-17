.late_rodata
glabel D_80135C4C
    .float -0.07

.text
glabel func_800297A4
/* AA0944 800297A4 27BDFF78 */  addiu $sp, $sp, -0x88
/* AA0948 800297A8 F7B60038 */  sdc1  $f22, 0x38($sp)
/* AA094C 800297AC 3C018013 */  lui   $at, %hi(D_80135C4C)
/* AA0950 800297B0 4486B000 */  mtc1  $a2, $f22
/* AA0954 800297B4 C4245C4C */  lwc1  $f4, %lo(D_80135C4C)($at)
/* AA0958 800297B8 AFB10044 */  sw    $s1, 0x44($sp)
/* AA095C 800297BC 87B100A2 */  lh    $s1, 0xa2($sp)
/* AA0960 800297C0 46162182 */  mul.s $f6, $f4, $f22
/* AA0964 800297C4 44800000 */  mtc1  $zero, $f0
/* AA0968 800297C8 AFB60058 */  sw    $s6, 0x58($sp)
/* AA096C 800297CC 0007B400 */  sll   $s6, $a3, 0x10
/* AA0970 800297D0 AFB50054 */  sw    $s5, 0x54($sp)
/* AA0974 800297D4 AFB40050 */  sw    $s4, 0x50($sp)
/* AA0978 800297D8 AFB00040 */  sw    $s0, 0x40($sp)
/* AA097C 800297DC 0080A025 */  move  $s4, $a0
/* AA0980 800297E0 00A0A825 */  move  $s5, $a1
/* AA0984 800297E4 0016B403 */  sra   $s6, $s6, 0x10
/* AA0988 800297E8 AFBF0064 */  sw    $ra, 0x64($sp)
/* AA098C 800297EC AFBE0060 */  sw    $fp, 0x60($sp)
/* AA0990 800297F0 AFB7005C */  sw    $s7, 0x5c($sp)
/* AA0994 800297F4 AFB3004C */  sw    $s3, 0x4c($sp)
/* AA0998 800297F8 AFB20048 */  sw    $s2, 0x48($sp)
/* AA099C 800297FC F7B40030 */  sdc1  $f20, 0x30($sp)
/* AA09A0 80029800 AFA70094 */  sw    $a3, 0x94($sp)
/* AA09A4 80029804 E7A60070 */  swc1  $f6, 0x70($sp)
/* AA09A8 80029808 00008025 */  move  $s0, $zero
/* AA09AC 8002980C E7A00074 */  swc1  $f0, 0x74($sp)
/* AA09B0 80029810 1A200028 */  blez  $s1, .L800298B4
/* AA09B4 80029814 E7A0006C */   swc1  $f0, 0x6c($sp)
/* AA09B8 80029818 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AA09BC 8002981C 4481A000 */  mtc1  $at, $f20
/* AA09C0 80029820 87BE00AA */  lh    $fp, 0xaa($sp)
/* AA09C4 80029824 87B700A6 */  lh    $s7, 0xa6($sp)
/* AA09C8 80029828 87B3009E */  lh    $s3, 0x9e($sp)
/* AA09CC 8002982C 87B2009A */  lh    $s2, 0x9a($sp)
.L80029830:
/* AA09D0 80029830 0C03F66B */  jal   Math_Rand_ZeroOne
/* AA09D4 80029834 00000000 */   nop   
/* AA09D8 80029838 46140201 */  sub.s $f8, $f0, $f20
/* AA09DC 8002983C 46164282 */  mul.s $f10, $f8, $f22
/* AA09E0 80029840 0C03F66B */  jal   Math_Rand_ZeroOne
/* AA09E4 80029844 E7AA0078 */   swc1  $f10, 0x78($sp)
/* AA09E8 80029848 46140401 */  sub.s $f16, $f0, $f20
/* AA09EC 8002984C 46168482 */  mul.s $f18, $f16, $f22
/* AA09F0 80029850 0C03F66B */  jal   Math_Rand_ZeroOne
/* AA09F4 80029854 E7B20080 */   swc1  $f18, 0x80($sp)
/* AA09F8 80029858 46140102 */  mul.s $f4, $f0, $f20
/* AA09FC 8002985C 00122400 */  sll   $a0, $s2, 0x10
/* AA0A00 80029860 00132C00 */  sll   $a1, $s3, 0x10
/* AA0A04 80029864 00052C03 */  sra   $a1, $a1, 0x10
/* AA0A08 80029868 00042403 */  sra   $a0, $a0, 0x10
/* AA0A0C 8002986C 46142180 */  add.s $f6, $f4, $f20
/* AA0A10 80029870 46163202 */  mul.s $f8, $f6, $f22
/* AA0A14 80029874 0C01DF64 */  jal   Math_Rand_S16Offset
/* AA0A18 80029878 E7A8007C */   swc1  $f8, 0x7c($sp)
/* AA0A1C 8002987C 8FAE00AC */  lw    $t6, 0xac($sp)
/* AA0A20 80029880 02802025 */  move  $a0, $s4
/* AA0A24 80029884 02A02825 */  move  $a1, $s5
/* AA0A28 80029888 27A60078 */  addiu $a2, $sp, 0x78
/* AA0A2C 8002988C 27A7006C */  addiu $a3, $sp, 0x6c
/* AA0A30 80029890 AFB60010 */  sw    $s6, 0x10($sp)
/* AA0A34 80029894 AFA20014 */  sw    $v0, 0x14($sp)
/* AA0A38 80029898 AFB70018 */  sw    $s7, 0x18($sp)
/* AA0A3C 8002989C AFBE001C */  sw    $fp, 0x1c($sp)
/* AA0A40 800298A0 0C00A5C9 */  jal   func_80029724
/* AA0A44 800298A4 AFAE0020 */   sw    $t6, 0x20($sp)
/* AA0A48 800298A8 26100001 */  addiu $s0, $s0, 1
/* AA0A4C 800298AC 1611FFE0 */  bne   $s0, $s1, .L80029830
/* AA0A50 800298B0 00000000 */   nop   
.L800298B4:
/* AA0A54 800298B4 8FBF0064 */  lw    $ra, 0x64($sp)
/* AA0A58 800298B8 D7B40030 */  ldc1  $f20, 0x30($sp)
/* AA0A5C 800298BC D7B60038 */  ldc1  $f22, 0x38($sp)
/* AA0A60 800298C0 8FB00040 */  lw    $s0, 0x40($sp)
/* AA0A64 800298C4 8FB10044 */  lw    $s1, 0x44($sp)
/* AA0A68 800298C8 8FB20048 */  lw    $s2, 0x48($sp)
/* AA0A6C 800298CC 8FB3004C */  lw    $s3, 0x4c($sp)
/* AA0A70 800298D0 8FB40050 */  lw    $s4, 0x50($sp)
/* AA0A74 800298D4 8FB50054 */  lw    $s5, 0x54($sp)
/* AA0A78 800298D8 8FB60058 */  lw    $s6, 0x58($sp)
/* AA0A7C 800298DC 8FB7005C */  lw    $s7, 0x5c($sp)
/* AA0A80 800298E0 8FBE0060 */  lw    $fp, 0x60($sp)
/* AA0A84 800298E4 03E00008 */  jr    $ra
/* AA0A88 800298E8 27BD0088 */   addiu $sp, $sp, 0x88

