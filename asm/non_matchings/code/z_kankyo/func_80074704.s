.rdata
glabel D_8013C5CC
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C5DC
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C5EC
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C5FC
    .asciz "../z_kankyo.c"
    .balign 4

.late_rodata
glabel D_8013C7DC
    .float 0.4

glabel D_8013C7E0
    .float 0.7

glabel D_8013C7E4
    .float 1.5707964 # M_PI / 2

glabel D_8013C7E8
    .float 1.2

glabel D_8013C7EC
    .float 0.1

glabel D_8013C7F0
    .float 0.02

.text
glabel func_80074704
/* AEB8A4 80074704 27BDFED8 */  addiu $sp, $sp, -0x128
/* AEB8A8 80074708 3C0F8012 */  lui   $t7, %hi(D_8011FE70) # $t7, 0x8012
/* AEB8AC 8007470C AFBF006C */  sw    $ra, 0x6c($sp)
/* AEB8B0 80074710 AFBE0068 */  sw    $fp, 0x68($sp)
/* AEB8B4 80074714 AFB70064 */  sw    $s7, 0x64($sp)
/* AEB8B8 80074718 AFB60060 */  sw    $s6, 0x60($sp)
/* AEB8BC 8007471C AFB5005C */  sw    $s5, 0x5c($sp)
/* AEB8C0 80074720 AFB40058 */  sw    $s4, 0x58($sp)
/* AEB8C4 80074724 AFB30054 */  sw    $s3, 0x54($sp)
/* AEB8C8 80074728 AFB20050 */  sw    $s2, 0x50($sp)
/* AEB8CC 8007472C AFB1004C */  sw    $s1, 0x4c($sp)
/* AEB8D0 80074730 AFB00048 */  sw    $s0, 0x48($sp)
/* AEB8D4 80074734 F7BE0040 */  sdc1  $f30, 0x40($sp)
/* AEB8D8 80074738 F7BC0038 */  sdc1  $f28, 0x38($sp)
/* AEB8DC 8007473C F7BA0030 */  sdc1  $f26, 0x30($sp)
/* AEB8E0 80074740 F7B80028 */  sdc1  $f24, 0x28($sp)
/* AEB8E4 80074744 F7B60020 */  sdc1  $f22, 0x20($sp)
/* AEB8E8 80074748 F7B40018 */  sdc1  $f20, 0x18($sp)
/* AEB8EC 8007474C 25EFFE70 */  addiu $t7, %lo(D_8011FE70) # addiu $t7, $t7, -0x190
/* AEB8F0 80074750 8DF90000 */  lw    $t9, ($t7)
/* AEB8F4 80074754 27AE00DC */  addiu $t6, $sp, 0xdc
/* AEB8F8 80074758 8DF80004 */  lw    $t8, 4($t7)
/* AEB8FC 8007475C ADD90000 */  sw    $t9, ($t6)
/* AEB900 80074760 8DF90008 */  lw    $t9, 8($t7)
/* AEB904 80074764 3C098012 */  lui   $t1, %hi(D_8011FE7C) # $t1, 0x8012
/* AEB908 80074768 2529FE7C */  addiu $t1, %lo(D_8011FE7C) # addiu $t1, $t1, -0x184
/* AEB90C 8007476C ADD80004 */  sw    $t8, 4($t6)
/* AEB910 80074770 ADD90008 */  sw    $t9, 8($t6)
/* AEB914 80074774 8D2B0000 */  lw    $t3, ($t1)
/* AEB918 80074778 27A800D0 */  addiu $t0, $sp, 0xd0
/* AEB91C 8007477C 8D2A0004 */  lw    $t2, 4($t1)
/* AEB920 80074780 AD0B0000 */  sw    $t3, ($t0)
/* AEB924 80074784 8D2B0008 */  lw    $t3, 8($t1)
/* AEB928 80074788 AD0A0004 */  sw    $t2, 4($t0)
/* AEB92C 8007478C 3C010001 */  lui   $at, 1
/* AEB930 80074790 AD0B0008 */  sw    $t3, 8($t0)
/* AEB934 80074794 8C8C0790 */  lw    $t4, 0x790($a0)
/* AEB938 80074798 00C08825 */  move  $s1, $a2
/* AEB93C 8007479C 00A0B025 */  move  $s6, $a1
/* AEB940 800747A0 858D014C */  lh    $t5, 0x14c($t4)
/* AEB944 800747A4 8C951C44 */  lw    $s5, 0x1c44($a0)
/* AEB948 800747A8 0081A021 */  addu  $s4, $a0, $at
/* AEB94C 800747AC 31AE0100 */  andi  $t6, $t5, 0x100
/* AEB950 800747B0 55C0013C */  bnezl $t6, .L80074CA4
/* AEB954 800747B4 8FBF006C */   lw    $ra, 0x6c($sp)
/* AEB958 800747B8 928F0B14 */  lbu   $t7, 0xb14($s4)
/* AEB95C 800747BC 00C02825 */  move  $a1, $a2
/* AEB960 800747C0 3C068014 */  lui   $a2, %hi(D_8013C5CC) # $a2, 0x8014
/* AEB964 800747C4 15E00136 */  bnez  $t7, .L80074CA0
/* AEB968 800747C8 27A400B8 */   addiu $a0, $sp, 0xb8
/* AEB96C 800747CC 24C6C5CC */  addiu $a2, %lo(D_8013C5CC) # addiu $a2, $a2, -0x3a34
/* AEB970 800747D0 0C031AB1 */  jal   Graph_OpenDisps
/* AEB974 800747D4 24070AEF */   li    $a3, 2799
/* AEB978 800747D8 C6C20028 */  lwc1  $f2, 0x28($s6)
/* AEB97C 800747DC C6C40034 */  lwc1  $f4, 0x34($s6)
/* AEB980 800747E0 C6CC002C */  lwc1  $f12, 0x2c($s6)
/* AEB984 800747E4 C6C60038 */  lwc1  $f6, 0x38($s6)
/* AEB988 800747E8 46022501 */  sub.s $f20, $f4, $f2
/* AEB98C 800747EC C6D20030 */  lwc1  $f18, 0x30($s6)
/* AEB990 800747F0 C6C8003C */  lwc1  $f8, 0x3c($s6)
/* AEB994 800747F4 460C3401 */  sub.s $f16, $f6, $f12
/* AEB998 800747F8 4614A282 */  mul.s $f10, $f20, $f20
/* AEB99C 800747FC 3C014248 */  li    $at, 0x42480000 # 0.000000
/* AEB9A0 80074800 46124581 */  sub.s $f22, $f8, $f18
/* AEB9A4 80074804 46108102 */  mul.s $f4, $f16, $f16
/* AEB9A8 80074808 4481C000 */  mtc1  $at, $f24
/* AEB9AC 8007480C 3C01438C */  li    $at, 0x438C0000 # 0.000000
/* AEB9B0 80074810 4616B202 */  mul.s $f8, $f22, $f22
/* AEB9B4 80074814 3C19E700 */  li    $t9, 0xE7000000 # 0.000000
/* AEB9B8 80074818 46045180 */  add.s $f6, $f10, $f4
/* AEB9BC 8007481C 46083000 */  add.s $f0, $f6, $f8
/* AEB9C0 80074820 46000004 */  sqrt.s $f0, $f0
/* AEB9C4 80074824 4600A383 */  div.s $f14, $f20, $f0
/* AEB9C8 80074828 46008183 */  div.s $f6, $f16, $f0
/* AEB9CC 8007482C 46187282 */  mul.s $f10, $f14, $f24
/* AEB9D0 80074830 4600B683 */  div.s $f26, $f22, $f0
/* AEB9D4 80074834 460A1100 */  add.s $f4, $f2, $f10
/* AEB9D8 80074838 46183202 */  mul.s $f8, $f6, $f24
/* AEB9DC 8007483C E7A400F8 */  swc1  $f4, 0xf8($sp)
/* AEB9E0 80074840 46086280 */  add.s $f10, $f12, $f8
/* AEB9E4 80074844 4618D102 */  mul.s $f4, $f26, $f24
/* AEB9E8 80074848 44814000 */  mtc1  $at, $f8
/* AEB9EC 8007484C E7AA00F4 */  swc1  $f10, 0xf4($sp)
/* AEB9F0 80074850 46087282 */  mul.s $f10, $f14, $f8
/* AEB9F4 80074854 46049180 */  add.s $f6, $f18, $f4
/* AEB9F8 80074858 460A1100 */  add.s $f4, $f2, $f10
/* AEB9FC 8007485C E7A600F0 */  swc1  $f6, 0xf0($sp)
/* AEBA00 80074860 44813000 */  mtc1  $at, $f6
/* AEBA04 80074864 E7A400EC */  swc1  $f4, 0xec($sp)
/* AEBA08 80074868 4606D202 */  mul.s $f8, $f26, $f6
/* AEBA0C 8007486C 46089280 */  add.s $f10, $f18, $f8
/* AEBA10 80074870 E7AA00E8 */  swc1  $f10, 0xe8($sp)
/* AEBA14 80074874 92830B13 */  lbu   $v1, 0xb13($s4)
/* AEBA18 80074878 50600014 */  beql  $v1, $zero, .L800748CC
/* AEBA1C 8007487C 00009025 */   move  $s2, $zero
/* AEBA20 80074880 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* AEBA24 80074884 3C0A96FF */  lui   $t2, (0x96FFFF1E >> 16) # lui $t2, 0x96ff
/* AEBA28 80074888 354AFF1E */  ori   $t2, (0x96FFFF1E & 0xFFFF) # ori $t2, $t2, 0xff1e
/* AEBA2C 8007488C 24580008 */  addiu $t8, $v0, 8
/* AEBA30 80074890 AE3802D0 */  sw    $t8, 0x2d0($s1)
/* AEBA34 80074894 AC400004 */  sw    $zero, 4($v0)
/* AEBA38 80074898 AC590000 */  sw    $t9, ($v0)
/* AEBA3C 8007489C 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* AEBA40 800748A0 3C09FA00 */  lui   $t1, 0xfa00
/* AEBA44 800748A4 24050014 */  li    $a1, 20
/* AEBA48 800748A8 24480008 */  addiu $t0, $v0, 8
/* AEBA4C 800748AC AE2802D0 */  sw    $t0, 0x2d0($s1)
/* AEBA50 800748B0 AC4A0004 */  sw    $t2, 4($v0)
/* AEBA54 800748B4 AC490000 */  sw    $t1, ($v0)
/* AEBA58 800748B8 0C024DDD */  jal   Gfx_CallSetupDL
/* AEBA5C 800748BC 8E2402D0 */   lw    $a0, 0x2d0($s1)
/* AEBA60 800748C0 AE2202D0 */  sw    $v0, 0x2d0($s1)
/* AEBA64 800748C4 92830B13 */  lbu   $v1, 0xb13($s4)
/* AEBA68 800748C8 00009025 */  move  $s2, $zero
.L800748CC:
/* AEBA6C 800748CC 18600076 */  blez  $v1, .L80074AA8
/* AEBA70 800748D0 00601025 */   move  $v0, $v1
/* AEBA74 800748D4 3C018014 */  lui   $at, %hi(D_8013C7DC)
/* AEBA78 800748D8 C43EC7DC */  lwc1  $f30, %lo(D_8013C7DC)($at)
/* AEBA7C 800748DC 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* AEBA80 800748E0 4481E000 */  mtc1  $at, $f28
/* AEBA84 800748E4 3C0B0405 */  lui   $t3, %hi(D_04048160) # $t3, 0x405
/* AEBA88 800748E8 256B8160 */  addiu $t3, %lo(D_04048160) # addiu $t3, $t3, -0x7ea0
/* AEBA8C 800748EC 3C018014 */  lui   $at, %hi(D_8013C7E0)
/* AEBA90 800748F0 3C130100 */  lui   $s3, 0x100
/* AEBA94 800748F4 3C17DA38 */  lui   $s7, (0xDA380003 >> 16) # lui $s7, 0xda38
/* AEBA98 800748F8 36F70003 */  ori   $s7, (0xDA380003 & 0xFFFF) # ori $s7, $s7, 3
/* AEBA9C 800748FC 26730000 */  addiu $s3, $s3, 0
/* AEBAA0 80074900 C43AC7E0 */  lwc1  $f26, %lo(D_8013C7E0)($at)
/* AEBAA4 80074904 AFAB0078 */  sw    $t3, 0x78($sp)
/* AEBAA8 80074908 3C1EDE00 */  lui   $fp, 0xde00
.L8007490C:
/* AEBAAC 8007490C 0C03F66B */  jal   Math_Rand_ZeroOne
/* AEBAB0 80074910 00000000 */   nop   
/* AEBAB4 80074914 0C03F66B */  jal   Math_Rand_ZeroOne
/* AEBAB8 80074918 46000586 */   mov.s $f22, $f0
/* AEBABC 8007491C 0C03F66B */  jal   Math_Rand_ZeroOne
/* AEBAC0 80074920 46000506 */   mov.s $f20, $f0
/* AEBAC4 80074924 461AB101 */  sub.s $f4, $f22, $f26
/* AEBAC8 80074928 C7A800F8 */  lwc1  $f8, 0xf8($sp)
/* AEBACC 8007492C 00003825 */  move  $a3, $zero
/* AEBAD0 80074930 461AA281 */  sub.s $f10, $f20, $f26
/* AEBAD4 80074934 461C2182 */  mul.s $f6, $f4, $f28
/* AEBAD8 80074938 46083300 */  add.s $f12, $f6, $f8
/* AEBADC 8007493C 461C5102 */  mul.s $f4, $f10, $f28
/* AEBAE0 80074940 C7A600F4 */  lwc1  $f6, 0xf4($sp)
/* AEBAE4 80074944 461A0201 */  sub.s $f8, $f0, $f26
/* AEBAE8 80074948 461C4282 */  mul.s $f10, $f8, $f28
/* AEBAEC 8007494C 46062380 */  add.s $f14, $f4, $f6
/* AEBAF0 80074950 C7A400F0 */  lwc1  $f4, 0xf0($sp)
/* AEBAF4 80074954 46045180 */  add.s $f6, $f10, $f4
/* AEBAF8 80074958 44063000 */  mfc1  $a2, $f6
/* AEBAFC 8007495C 0C034261 */  jal   Matrix_Translate
/* AEBB00 80074960 00000000 */   nop   
/* AEBB04 80074964 868C0ACC */  lh    $t4, 0xacc($s4)
/* AEBB08 80074968 448C4000 */  mtc1  $t4, $f8
/* AEBB0C 8007496C 00000000 */  nop   
/* AEBB10 80074970 468042A0 */  cvt.s.w $f10, $f8
/* AEBB14 80074974 E7AA00D0 */  swc1  $f10, 0xd0($sp)
/* AEBB18 80074978 868D0ACE */  lh    $t5, 0xace($s4)
/* AEBB1C 8007497C C7B400D0 */  lwc1  $f20, 0xd0($sp)
/* AEBB20 80074980 448D2000 */  mtc1  $t5, $f4
/* AEBB24 80074984 00000000 */  nop   
/* AEBB28 80074988 468021A0 */  cvt.s.w $f6, $f4
/* AEBB2C 8007498C E7A600D4 */  swc1  $f6, 0xd4($sp)
/* AEBB30 80074990 868E0AD0 */  lh    $t6, 0xad0($s4)
/* AEBB34 80074994 448E4000 */  mtc1  $t6, $f8
/* AEBB38 80074998 00000000 */  nop   
/* AEBB3C 8007499C 468042A0 */  cvt.s.w $f10, $f8
/* AEBB40 800749A0 0C03F66B */  jal   Math_Rand_ZeroOne
/* AEBB44 800749A4 E7AA00D8 */   swc1  $f10, 0xd8($sp)
/* AEBB48 800749A8 3C0143FA */  li    $at, 0x43FA0000 # 0.000000
/* AEBB4C 800749AC 44813000 */  mtc1  $at, $f6
/* AEBB50 800749B0 C7A400D4 */  lwc1  $f4, 0xd4($sp)
/* AEBB54 800749B4 3C014348 */  li    $at, 0x43480000 # 0.000000
/* AEBB58 800749B8 44815000 */  mtc1  $at, $f10
/* AEBB5C 800749BC 46062200 */  add.s $f8, $f4, $f6
/* AEBB60 800749C0 C7B600D8 */  lwc1  $f22, 0xd8($sp)
/* AEBB64 800749C4 460A0102 */  mul.s $f4, $f0, $f10
/* AEBB68 800749C8 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* AEBB6C 800749CC 3C18DA38 */  lui   $t8, (0xDA380001 >> 16) # lui $t8, 0xda38
/* AEBB70 800749D0 4614A182 */  mul.s $f6, $f20, $f20
/* AEBB74 800749D4 244F0008 */  addiu $t7, $v0, 8
/* AEBB78 800749D8 AE2F02D0 */  sw    $t7, 0x2d0($s1)
/* AEBB7C 800749DC 4616B282 */  mul.s $f10, $f22, $f22
/* AEBB80 800749E0 37180001 */  ori   $t8, (0xDA380001 & 0xFFFF) # ori $t8, $t8, 1
/* AEBB84 800749E4 46082400 */  add.s $f16, $f4, $f8
/* AEBB88 800749E8 AC580000 */  sw    $t8, ($v0)
/* AEBB8C 800749EC AC530004 */  sw    $s3, 4($v0)
/* AEBB90 800749F0 46008387 */  neg.s $f14, $f16
/* AEBB94 800749F4 460A3000 */  add.s $f0, $f6, $f10
/* AEBB98 800749F8 0C0341F5 */  jal   Math_Atan2F
/* AEBB9C 800749FC 46000304 */   sqrt.s $f12, $f0
/* AEBBA0 80074A00 46000606 */  mov.s $f24, $f0
/* AEBBA4 80074A04 4600B306 */  mov.s $f12, $f22
/* AEBBA8 80074A08 0C0341F5 */  jal   Math_Atan2F
/* AEBBAC 80074A0C 4600A386 */   mov.s $f14, $f20
/* AEBBB0 80074A10 46000307 */  neg.s $f12, $f0
/* AEBBB4 80074A14 0C034348 */  jal   Matrix_RotateY
/* AEBBB8 80074A18 24050001 */   li    $a1, 1
/* AEBBBC 80074A1C 3C018014 */  lui   $at, %hi(D_8013C7E4)
/* AEBBC0 80074A20 C424C7E4 */  lwc1  $f4, %lo(D_8013C7E4)($at)
/* AEBBC4 80074A24 24050001 */  li    $a1, 1
/* AEBBC8 80074A28 0C0342DC */  jal   Matrix_RotateX
/* AEBBCC 80074A2C 46182301 */   sub.s $f12, $f4, $f24
/* AEBBD0 80074A30 3C018014 */  lui   $at, %hi(D_8013C7E8)
/* AEBBD4 80074A34 4406F000 */  mfc1  $a2, $f30
/* AEBBD8 80074A38 C42EC7E8 */  lwc1  $f14, %lo(D_8013C7E8)($at)
/* AEBBDC 80074A3C 4600F306 */  mov.s $f12, $f30
/* AEBBE0 80074A40 0C0342A3 */  jal   Matrix_Scale
/* AEBBE4 80074A44 24070001 */   li    $a3, 1
/* AEBBE8 80074A48 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* AEBBEC 80074A4C 3C058014 */  lui   $a1, %hi(D_8013C5DC) # $a1, 0x8014
/* AEBBF0 80074A50 24A5C5DC */  addiu $a1, %lo(D_8013C5DC) # addiu $a1, $a1, -0x3a24
/* AEBBF4 80074A54 24590008 */  addiu $t9, $v0, 8
/* AEBBF8 80074A58 AE3902D0 */  sw    $t9, 0x2d0($s1)
/* AEBBFC 80074A5C 02202025 */  move  $a0, $s1
/* AEBC00 80074A60 24060B47 */  li    $a2, 2887
/* AEBC04 80074A64 AC570000 */  sw    $s7, ($v0)
/* AEBC08 80074A68 0C0346A2 */  jal   Matrix_NewMtx
/* AEBC0C 80074A6C 00408025 */   move  $s0, $v0
/* AEBC10 80074A70 AE020004 */  sw    $v0, 4($s0)
/* AEBC14 80074A74 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* AEBC18 80074A78 26520001 */  addiu $s2, $s2, 1
/* AEBC1C 80074A7C 00129400 */  sll   $s2, $s2, 0x10
/* AEBC20 80074A80 24480008 */  addiu $t0, $v0, 8
/* AEBC24 80074A84 AE2802D0 */  sw    $t0, 0x2d0($s1)
/* AEBC28 80074A88 AC5E0000 */  sw    $fp, ($v0)
/* AEBC2C 80074A8C 8FA90078 */  lw    $t1, 0x78($sp)
/* AEBC30 80074A90 00129403 */  sra   $s2, $s2, 0x10
/* AEBC34 80074A94 AC490004 */  sw    $t1, 4($v0)
/* AEBC38 80074A98 92820B13 */  lbu   $v0, 0xb13($s4)
/* AEBC3C 80074A9C 0242082A */  slt   $at, $s2, $v0
/* AEBC40 80074AA0 1420FF9A */  bnez  $at, .L8007490C
/* AEBC44 80074AA4 00000000 */   nop   
.L80074AA8:
/* AEBC48 80074AA8 C6A80028 */  lwc1  $f8, 0x28($s5)
/* AEBC4C 80074AAC C6C6002C */  lwc1  $f6, 0x2c($s6)
/* AEBC50 80074AB0 3C17DA38 */  lui   $s7, (0xDA380003 >> 16) # lui $s7, 0xda38
/* AEBC54 80074AB4 36F70003 */  ori   $s7, (0xDA380003 & 0xFFFF) # ori $s7, $s7, 3
/* AEBC58 80074AB8 4606403C */  c.lt.s $f8, $f6
/* AEBC5C 80074ABC 3C1EDE00 */  lui   $fp, 0xde00
/* AEBC60 80074AC0 00009825 */  move  $s3, $zero
/* AEBC64 80074AC4 45000070 */  bc1f  .L80074C88
/* AEBC68 80074AC8 00000000 */   nop   
/* AEBC6C 80074ACC 1840006E */  blez  $v0, .L80074C88
/* AEBC70 80074AD0 00009025 */   move  $s2, $zero
/* AEBC74 80074AD4 3C01C1F0 */  li    $at, 0xC1F00000 # 0.000000
/* AEBC78 80074AD8 4481F000 */  mtc1  $at, $f30
/* AEBC7C 80074ADC 3C01C240 */  li    $at, 0xC2400000 # 0.000000
/* AEBC80 80074AE0 4481E000 */  mtc1  $at, $f28
/* AEBC84 80074AE4 3C018014 */  lui   $at, %hi(D_8013C7EC)
/* AEBC88 80074AE8 C43AC7EC */  lwc1  $f26, %lo(D_8013C7EC)($at)
/* AEBC8C 80074AEC 3C018014 */  lui   $at, %hi(D_8013C7F0)
/* AEBC90 80074AF0 C438C7F0 */  lwc1  $f24, %lo(D_8013C7F0)($at)
/* AEBC94 80074AF4 3C014000 */  lui   $at, 0x4000
/* AEBC98 80074AF8 3C0A0402 */  li    $t2, 0x04020000 # 0.000000
/* AEBC9C 80074AFC 254AA0B0 */  addiu $t2, %lo(D_0401A0B0) # addiu $t2, $t2, -0x5f50
/* AEBCA0 80074B00 4481B000 */  mtc1  $at, $f22
/* AEBCA4 80074B04 AFAA007C */  sw    $t2, 0x7c($sp)
.L80074B08:
/* AEBCA8 80074B08 16600014 */  bnez  $s3, .L80074B5C
/* AEBCAC 80074B0C 00000000 */   nop   
/* AEBCB0 80074B10 0C024F61 */  jal   func_80093D84
/* AEBCB4 80074B14 02202025 */   move  $a0, $s1
/* AEBCB8 80074B18 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* AEBCBC 80074B1C 3C0D9B9B */  lui   $t5, (0x9B9B9B00 >> 16) # lui $t5, 0x9b9b
/* AEBCC0 80074B20 35AD9B00 */  ori   $t5, (0x9B9B9B00 & 0xFFFF) # ori $t5, $t5, 0x9b00
/* AEBCC4 80074B24 244B0008 */  addiu $t3, $v0, 8
/* AEBCC8 80074B28 AE2B02D0 */  sw    $t3, 0x2d0($s1)
/* AEBCCC 80074B2C 3C0CFB00 */  lui   $t4, 0xfb00
/* AEBCD0 80074B30 AC4C0000 */  sw    $t4, ($v0)
/* AEBCD4 80074B34 AC4D0004 */  sw    $t5, 4($v0)
/* AEBCD8 80074B38 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* AEBCDC 80074B3C 3C0FFA00 */  lui   $t7, 0xfa00
/* AEBCE0 80074B40 2418FF78 */  li    $t8, -136
/* AEBCE4 80074B44 244E0008 */  addiu $t6, $v0, 8
/* AEBCE8 80074B48 AE2E02D0 */  sw    $t6, 0x2d0($s1)
/* AEBCEC 80074B4C 26730001 */  addiu $s3, $s3, 1
/* AEBCF0 80074B50 327300FF */  andi  $s3, $s3, 0xff
/* AEBCF4 80074B54 AC580004 */  sw    $t8, 4($v0)
/* AEBCF8 80074B58 AC4F0000 */  sw    $t7, ($v0)
.L80074B5C:
/* AEBCFC 80074B5C 0C01D1B7 */  jal   func_800746DC
/* AEBD00 80074B60 00000000 */   nop   
/* AEBD04 80074B64 0C01D1B7 */  jal   func_800746DC
/* AEBD08 80074B68 46000506 */   mov.s $f20, $f0
/* AEBD0C 80074B6C 3C01438C */  li    $at, 0x438C0000 # 0.000000
/* AEBD10 80074B70 44811000 */  mtc1  $at, $f2
/* AEBD14 80074B74 C7A400EC */  lwc1  $f4, 0xec($sp)
/* AEBD18 80074B78 C6A80028 */  lwc1  $f8, 0x28($s5)
/* AEBD1C 80074B7C 4602A282 */  mul.s $f10, $f20, $f2
/* AEBD20 80074B80 00003825 */  move  $a3, $zero
/* AEBD24 80074B84 46164380 */  add.s $f14, $f8, $f22
/* AEBD28 80074B88 46020182 */  mul.s $f6, $f0, $f2
/* AEBD2C 80074B8C 46045300 */  add.s $f12, $f10, $f4
/* AEBD30 80074B90 C7AA00E8 */  lwc1  $f10, 0xe8($sp)
/* AEBD34 80074B94 460A3100 */  add.s $f4, $f6, $f10
/* AEBD38 80074B98 44062000 */  mfc1  $a2, $f4
/* AEBD3C 80074B9C 0C034261 */  jal   Matrix_Translate
/* AEBD40 80074BA0 00000000 */   nop   
/* AEBD44 80074BA4 3C028016 */  lui   $v0, %hi(gSaveContext+4) # $v0, 0x8016
/* AEBD48 80074BA8 8C42E664 */  lw    $v0, %lo(gSaveContext+4)($v0)
/* AEBD4C 80074BAC 14400009 */  bnez  $v0, .L80074BD4
/* AEBD50 80074BB0 00000000 */   nop   
/* AEBD54 80074BB4 C6A80028 */  lwc1  $f8, 0x28($s5)
/* AEBD58 80074BB8 C6CA002C */  lwc1  $f10, 0x2c($s6)
/* AEBD5C 80074BBC 46164180 */  add.s $f6, $f8, $f22
/* AEBD60 80074BC0 460A3101 */  sub.s $f4, $f6, $f10
/* AEBD64 80074BC4 4604E03C */  c.lt.s $f28, $f4
/* AEBD68 80074BC8 00000000 */  nop   
/* AEBD6C 80074BCC 4503000C */  bc1tl .L80074C00
/* AEBD70 80074BD0 4406C000 */   mfc1  $a2, $f24
.L80074BD4:
/* AEBD74 80074BD4 10400010 */  beqz  $v0, .L80074C18
/* AEBD78 80074BD8 24070001 */   li    $a3, 1
/* AEBD7C 80074BDC C6A80028 */  lwc1  $f8, 0x28($s5)
/* AEBD80 80074BE0 C6CA002C */  lwc1  $f10, 0x2c($s6)
/* AEBD84 80074BE4 46164180 */  add.s $f6, $f8, $f22
/* AEBD88 80074BE8 460A3101 */  sub.s $f4, $f6, $f10
/* AEBD8C 80074BEC 4604F03C */  c.lt.s $f30, $f4
/* AEBD90 80074BF0 00000000 */  nop   
/* AEBD94 80074BF4 45020009 */  bc1fl .L80074C1C
/* AEBD98 80074BF8 4406D000 */   mfc1  $a2, $f26
/* AEBD9C 80074BFC 4406C000 */  mfc1  $a2, $f24
.L80074C00:
/* AEBDA0 80074C00 4600C306 */  mov.s $f12, $f24
/* AEBDA4 80074C04 4600C386 */  mov.s $f14, $f24
/* AEBDA8 80074C08 0C0342A3 */  jal   Matrix_Scale
/* AEBDAC 80074C0C 24070001 */   li    $a3, 1
/* AEBDB0 80074C10 10000006 */  b     .L80074C2C
/* AEBDB4 80074C14 8E2202D0 */   lw    $v0, 0x2d0($s1)
.L80074C18:
/* AEBDB8 80074C18 4406D000 */  mfc1  $a2, $f26
.L80074C1C:
/* AEBDBC 80074C1C 4600D306 */  mov.s $f12, $f26
/* AEBDC0 80074C20 0C0342A3 */  jal   Matrix_Scale
/* AEBDC4 80074C24 4600D386 */   mov.s $f14, $f26
/* AEBDC8 80074C28 8E2202D0 */  lw    $v0, 0x2d0($s1)
.L80074C2C:
/* AEBDCC 80074C2C 3C058014 */  lui   $a1, %hi(D_8013C5EC) # $a1, 0x8014
/* AEBDD0 80074C30 24A5C5EC */  addiu $a1, %lo(D_8013C5EC) # addiu $a1, $a1, -0x3a14
/* AEBDD4 80074C34 24590008 */  addiu $t9, $v0, 8
/* AEBDD8 80074C38 AE3902D0 */  sw    $t9, 0x2d0($s1)
/* AEBDDC 80074C3C 02202025 */  move  $a0, $s1
/* AEBDE0 80074C40 24060B7C */  li    $a2, 2940
/* AEBDE4 80074C44 AC570000 */  sw    $s7, ($v0)
/* AEBDE8 80074C48 0C0346A2 */  jal   Matrix_NewMtx
/* AEBDEC 80074C4C 00408025 */   move  $s0, $v0
/* AEBDF0 80074C50 AE020004 */  sw    $v0, 4($s0)
/* AEBDF4 80074C54 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* AEBDF8 80074C58 26520001 */  addiu $s2, $s2, 1
/* AEBDFC 80074C5C 00129400 */  sll   $s2, $s2, 0x10
/* AEBE00 80074C60 24480008 */  addiu $t0, $v0, 8
/* AEBE04 80074C64 AE2802D0 */  sw    $t0, 0x2d0($s1)
/* AEBE08 80074C68 AC5E0000 */  sw    $fp, ($v0)
/* AEBE0C 80074C6C 8FA9007C */  lw    $t1, 0x7c($sp)
/* AEBE10 80074C70 00129403 */  sra   $s2, $s2, 0x10
/* AEBE14 80074C74 AC490004 */  sw    $t1, 4($v0)
/* AEBE18 80074C78 928A0B13 */  lbu   $t2, 0xb13($s4)
/* AEBE1C 80074C7C 024A082A */  slt   $at, $s2, $t2
/* AEBE20 80074C80 1420FFA1 */  bnez  $at, .L80074B08
/* AEBE24 80074C84 00000000 */   nop   
.L80074C88:
/* AEBE28 80074C88 3C068014 */  lui   $a2, %hi(D_8013C5FC) # $a2, 0x8014
/* AEBE2C 80074C8C 24C6C5FC */  addiu $a2, %lo(D_8013C5FC) # addiu $a2, $a2, -0x3a04
/* AEBE30 80074C90 27A400B8 */  addiu $a0, $sp, 0xb8
/* AEBE34 80074C94 02202825 */  move  $a1, $s1
/* AEBE38 80074C98 0C031AD5 */  jal   Graph_CloseDisps
/* AEBE3C 80074C9C 24070B82 */   li    $a3, 2946
.L80074CA0:
/* AEBE40 80074CA0 8FBF006C */  lw    $ra, 0x6c($sp)
.L80074CA4:
/* AEBE44 80074CA4 D7B40018 */  ldc1  $f20, 0x18($sp)
/* AEBE48 80074CA8 D7B60020 */  ldc1  $f22, 0x20($sp)
/* AEBE4C 80074CAC D7B80028 */  ldc1  $f24, 0x28($sp)
/* AEBE50 80074CB0 D7BA0030 */  ldc1  $f26, 0x30($sp)
/* AEBE54 80074CB4 D7BC0038 */  ldc1  $f28, 0x38($sp)
/* AEBE58 80074CB8 D7BE0040 */  ldc1  $f30, 0x40($sp)
/* AEBE5C 80074CBC 8FB00048 */  lw    $s0, 0x48($sp)
/* AEBE60 80074CC0 8FB1004C */  lw    $s1, 0x4c($sp)
/* AEBE64 80074CC4 8FB20050 */  lw    $s2, 0x50($sp)
/* AEBE68 80074CC8 8FB30054 */  lw    $s3, 0x54($sp)
/* AEBE6C 80074CCC 8FB40058 */  lw    $s4, 0x58($sp)
/* AEBE70 80074CD0 8FB5005C */  lw    $s5, 0x5c($sp)
/* AEBE74 80074CD4 8FB60060 */  lw    $s6, 0x60($sp)
/* AEBE78 80074CD8 8FB70064 */  lw    $s7, 0x64($sp)
/* AEBE7C 80074CDC 8FBE0068 */  lw    $fp, 0x68($sp)
/* AEBE80 80074CE0 03E00008 */  jr    $ra
/* AEBE84 80074CE4 27BD0128 */   addiu $sp, $sp, 0x128

