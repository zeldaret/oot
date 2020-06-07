glabel func_800B87D8
/* B2F978 800B87D8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B2F97C 800B87DC 3C0F8016 */  lui   $t7, %hi(D_80161150) # $t7, 0x8016
/* B2F980 800B87E0 AFB00014 */  sw    $s0, 0x14($sp)
/* B2F984 800B87E4 25EF1150 */  addiu $t7, %lo(D_80161150) # addiu $t7, $t7, 0x1150
/* B2F988 800B87E8 00047100 */  sll   $t6, $a0, 4
/* B2F98C 800B87EC AFBF001C */  sw    $ra, 0x1c($sp)
/* B2F990 800B87F0 AFB10018 */  sw    $s1, 0x18($sp)
/* B2F994 800B87F4 01CF8021 */  addu  $s0, $t6, $t7
/* B2F998 800B87F8 24180061 */  li    $t8, 97
/* B2F99C 800B87FC 00A08825 */  move  $s1, $a1
/* B2F9A0 800B8800 0C02E1CC */  jal   func_800B8730
/* B2F9A4 800B8804 A2180001 */   sb    $t8, 1($s0)
/* B2F9A8 800B8808 304800FF */  andi  $t0, $v0, 0xff
/* B2F9AC 800B880C 3C018016 */  lui   $at, %hi(D_8016128F)
/* B2F9B0 800B8810 A2020000 */  sb    $v0, ($s0)
/* B2F9B4 800B8814 00280821 */  addu  $at, $at, $t0
/* B2F9B8 800B8818 2419004F */  li    $t9, 79
/* B2F9BC 800B881C A039128F */  sb    $t9, %lo(D_8016128F)($at)
/* B2F9C0 800B8820 86270004 */  lh    $a3, 4($s1)
/* B2F9C4 800B8824 3C058014 */  lui   $a1, %hi(D_80143968) # $a1, 0x8014
/* B2F9C8 800B8828 24A53968 */  addiu $a1, %lo(D_80143968) # addiu $a1, $a1, 0x3968
/* B2F9CC 800B882C 00072100 */  sll   $a0, $a3, 4
/* B2F9D0 800B8830 AFA40024 */  sw    $a0, 0x24($sp)
/* B2F9D4 800B8834 0C034ED8 */  jal   DebugArena_MallocDebug
/* B2F9D8 800B8838 24060ABC */   li    $a2, 2748
/* B2F9DC 800B883C 8FA70024 */  lw    $a3, 0x24($sp)
/* B2F9E0 800B8840 14400009 */  bnez  $v0, .L800B8868
/* B2F9E4 800B8844 AE020008 */   sw    $v0, 8($s0)
/* B2F9E8 800B8848 3C048014 */  lui   $a0, %hi(D_80143978) # $a0, 0x8014
/* B2F9EC 800B884C 3C058014 */  lui   $a1, %hi(D_801439A4) # $a1, 0x8014
/* B2F9F0 800B8850 24A539A4 */  addiu $a1, %lo(D_801439A4) # addiu $a1, $a1, 0x39a4
/* B2F9F4 800B8854 24843978 */  addiu $a0, %lo(D_80143978) # addiu $a0, $a0, 0x3978
/* B2F9F8 800B8858 0C00084C */  jal   osSyncPrintf
/* B2F9FC 800B885C 24060ABF */   li    $a2, 2751
/* B2FA00 800B8860 10000040 */  b     .L800B8964
/* B2FA04 800B8864 2402003F */   li    $v0, 63
.L800B8868:
/* B2FA08 800B8868 3C058014 */  lui   $a1, %hi(D_801439B4) # $a1, 0x8014
/* B2FA0C 800B886C 24A539B4 */  addiu $a1, %lo(D_801439B4) # addiu $a1, $a1, 0x39b4
/* B2FA10 800B8870 00E02025 */  move  $a0, $a3
/* B2FA14 800B8874 0C034ED8 */  jal   DebugArena_MallocDebug
/* B2FA18 800B8878 24060AC2 */   li    $a2, 2754
/* B2FA1C 800B887C 1440000F */  bnez  $v0, .L800B88BC
/* B2FA20 800B8880 AE020004 */   sw    $v0, 4($s0)
/* B2FA24 800B8884 3C048014 */  lui   $a0, %hi(D_801439C4) # $a0, 0x8014
/* B2FA28 800B8888 3C058014 */  lui   $a1, %hi(D_801439F0) # $a1, 0x8014
/* B2FA2C 800B888C 24A539F0 */  addiu $a1, %lo(D_801439F0) # addiu $a1, $a1, 0x39f0
/* B2FA30 800B8890 248439C4 */  addiu $a0, %lo(D_801439C4) # addiu $a0, $a0, 0x39c4
/* B2FA34 800B8894 0C00084C */  jal   osSyncPrintf
/* B2FA38 800B8898 24060AC5 */   li    $a2, 2757
/* B2FA3C 800B889C 3C058014 */  lui   $a1, %hi(D_80143A00) # $a1, 0x8014
/* B2FA40 800B88A0 24A53A00 */  addiu $a1, %lo(D_80143A00) # addiu $a1, $a1, 0x3a00
/* B2FA44 800B88A4 8E040008 */  lw    $a0, 8($s0)
/* B2FA48 800B88A8 0C034F55 */  jal   DebugArena_FreeDebug
/* B2FA4C 800B88AC 24060AC6 */   li    $a2, 2758
/* B2FA50 800B88B0 AE000008 */  sw    $zero, 8($s0)
/* B2FA54 800B88B4 1000002B */  b     .L800B8964
/* B2FA58 800B88B8 2402003F */   li    $v0, 63
.L800B88BC:
/* B2FA5C 800B88BC 86290000 */  lh    $t1, ($s1)
/* B2FA60 800B88C0 00003825 */  move  $a3, $zero
/* B2FA64 800B88C4 00001025 */  move  $v0, $zero
/* B2FA68 800B88C8 A6090002 */  sh    $t1, 2($s0)
/* B2FA6C 800B88CC 862A0002 */  lh    $t2, 2($s1)
/* B2FA70 800B88D0 26230834 */  addiu $v1, $s1, 0x834
/* B2FA74 800B88D4 26240024 */  addiu $a0, $s1, 0x24
/* B2FA78 800B88D8 A60A000C */  sh    $t2, 0xc($s0)
/* B2FA7C 800B88DC 862B0004 */  lh    $t3, 4($s1)
/* B2FA80 800B88E0 A60B000E */  sh    $t3, 0xe($s0)
/* B2FA84 800B88E4 862C0004 */  lh    $t4, 4($s1)
/* B2FA88 800B88E8 5980001E */  blezl $t4, .L800B8964
/* B2FA8C 800B88EC 92020000 */   lbu   $v0, ($s0)
/* B2FA90 800B88F0 8E0D0008 */  lw    $t5, 8($s0)
.L800B88F4:
/* B2FA94 800B88F4 8C780000 */  lw    $t8, ($v1)
/* B2FA98 800B88F8 24E70001 */  addiu $a3, $a3, 1
/* B2FA9C 800B88FC 01A27021 */  addu  $t6, $t5, $v0
/* B2FAA0 800B8900 ADD80000 */  sw    $t8, ($t6)
/* B2FAA4 800B8904 8C6F0004 */  lw    $t7, 4($v1)
/* B2FAA8 800B8908 24630010 */  addiu $v1, $v1, 0x10
/* B2FAAC 800B890C 24840010 */  addiu $a0, $a0, 0x10
/* B2FAB0 800B8910 ADCF0004 */  sw    $t7, 4($t6)
/* B2FAB4 800B8914 8C78FFF8 */  lw    $t8, -8($v1)
/* B2FAB8 800B8918 ADD80008 */  sw    $t8, 8($t6)
/* B2FABC 800B891C 8C6FFFFC */  lw    $t7, -4($v1)
/* B2FAC0 800B8920 ADCF000C */  sw    $t7, 0xc($t6)
/* B2FAC4 800B8924 8E190004 */  lw    $t9, 4($s0)
/* B2FAC8 800B8928 8C8AFFF0 */  lw    $t2, -0x10($a0)
/* B2FACC 800B892C 03224021 */  addu  $t0, $t9, $v0
/* B2FAD0 800B8930 AD0A0000 */  sw    $t2, ($t0)
/* B2FAD4 800B8934 8C89FFF4 */  lw    $t1, -0xc($a0)
/* B2FAD8 800B8938 24420010 */  addiu $v0, $v0, 0x10
/* B2FADC 800B893C AD090004 */  sw    $t1, 4($t0)
/* B2FAE0 800B8940 8C8AFFF8 */  lw    $t2, -8($a0)
/* B2FAE4 800B8944 AD0A0008 */  sw    $t2, 8($t0)
/* B2FAE8 800B8948 8C89FFFC */  lw    $t1, -4($a0)
/* B2FAEC 800B894C AD09000C */  sw    $t1, 0xc($t0)
/* B2FAF0 800B8950 862B0004 */  lh    $t3, 4($s1)
/* B2FAF4 800B8954 00EB082A */  slt   $at, $a3, $t3
/* B2FAF8 800B8958 5420FFE6 */  bnezl $at, .L800B88F4
/* B2FAFC 800B895C 8E0D0008 */   lw    $t5, 8($s0)
/* B2FB00 800B8960 92020000 */  lbu   $v0, ($s0)
.L800B8964:
/* B2FB04 800B8964 8FBF001C */  lw    $ra, 0x1c($sp)
/* B2FB08 800B8968 8FB00014 */  lw    $s0, 0x14($sp)
/* B2FB0C 800B896C 8FB10018 */  lw    $s1, 0x18($sp)
/* B2FB10 800B8970 03E00008 */  jr    $ra
/* B2FB14 800B8974 27BD0028 */   addiu $sp, $sp, 0x28

