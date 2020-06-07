.rdata
glabel D_8014079C
    .asciz "../z_skin_awb.c"
    .balign 4

glabel D_801407AC
    .asciz "../z_skin_awb.c"
    .balign 4

glabel D_801407BC
    .asciz "../z_skin_awb.c"
    .balign 4

.text
glabel func_800A6888
/* B1DA28 800A6888 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B1DA2C 800A688C AFBF002C */  sw    $ra, 0x2c($sp)
/* B1DA30 800A6890 AFB40028 */  sw    $s4, 0x28($sp)
/* B1DA34 800A6894 AFB30024 */  sw    $s3, 0x24($sp)
/* B1DA38 800A6898 AFB20020 */  sw    $s2, 0x20($sp)
/* B1DA3C 800A689C AFB1001C */  sw    $s1, 0x1c($sp)
/* B1DA40 800A68A0 AFB00018 */  sw    $s0, 0x18($sp)
/* B1DA44 800A68A4 AFA40030 */  sw    $a0, 0x30($sp)
/* B1DA48 800A68A8 8CA70048 */  lw    $a3, 0x48($a1)
/* B1DA4C 800A68AC 00A08825 */  move  $s1, $a1
/* B1DA50 800A68B0 50E0002F */  beql  $a3, $zero, .L800A6970
/* B1DA54 800A68B4 8FBF002C */   lw    $ra, 0x2c($sp)
/* B1DA58 800A68B8 8CAE0044 */  lw    $t6, 0x44($a1)
/* B1DA5C 800A68BC 00009025 */  move  $s2, $zero
/* B1DA60 800A68C0 00008025 */  move  $s0, $zero
/* B1DA64 800A68C4 19C00020 */  blez  $t6, .L800A6948
/* B1DA68 800A68C8 3C148014 */   lui   $s4, %hi(D_801407AC) # $s4, 0x8014
/* B1DA6C 800A68CC 3C138014 */  lui   $s3, %hi(D_8014079C) # $s3, 0x8014
/* B1DA70 800A68D0 2673079C */  addiu $s3, %lo(D_8014079C) # addiu $s3, $s3, 0x79c
/* B1DA74 800A68D4 269407AC */  addiu $s4, %lo(D_801407AC) # addiu $s4, $s4, 0x7ac
/* B1DA78 800A68D8 00F01021 */  addu  $v0, $a3, $s0
.L800A68DC:
/* B1DA7C 800A68DC 8C440004 */  lw    $a0, 4($v0)
/* B1DA80 800A68E0 02602825 */  move  $a1, $s3
/* B1DA84 800A68E4 50800009 */  beql  $a0, $zero, .L800A690C
/* B1DA88 800A68E8 8C440008 */   lw    $a0, 8($v0)
/* B1DA8C 800A68EC 0C01EC35 */  jal   ZeldaArena_FreeDebug
/* B1DA90 800A68F0 24060114 */   li    $a2, 276
/* B1DA94 800A68F4 8E2F0048 */  lw    $t7, 0x48($s1)
/* B1DA98 800A68F8 01F0C021 */  addu  $t8, $t7, $s0
/* B1DA9C 800A68FC AF000004 */  sw    $zero, 4($t8)
/* B1DAA0 800A6900 8E270048 */  lw    $a3, 0x48($s1)
/* B1DAA4 800A6904 00F01021 */  addu  $v0, $a3, $s0
/* B1DAA8 800A6908 8C440008 */  lw    $a0, 8($v0)
.L800A690C:
/* B1DAAC 800A690C 02802825 */  move  $a1, $s4
/* B1DAB0 800A6910 50800008 */  beql  $a0, $zero, .L800A6934
/* B1DAB4 800A6914 8E290044 */   lw    $t1, 0x44($s1)
/* B1DAB8 800A6918 0C01EC35 */  jal   ZeldaArena_FreeDebug
/* B1DABC 800A691C 24060118 */   li    $a2, 280
/* B1DAC0 800A6920 8E390048 */  lw    $t9, 0x48($s1)
/* B1DAC4 800A6924 03304021 */  addu  $t0, $t9, $s0
/* B1DAC8 800A6928 AD000008 */  sw    $zero, 8($t0)
/* B1DACC 800A692C 8E270048 */  lw    $a3, 0x48($s1)
/* B1DAD0 800A6930 8E290044 */  lw    $t1, 0x44($s1)
.L800A6934:
/* B1DAD4 800A6934 26520001 */  addiu $s2, $s2, 1
/* B1DAD8 800A6938 2610000C */  addiu $s0, $s0, 0xc
/* B1DADC 800A693C 0249082A */  slt   $at, $s2, $t1
/* B1DAE0 800A6940 5420FFE6 */  bnezl $at, .L800A68DC
/* B1DAE4 800A6944 00F01021 */   addu  $v0, $a3, $s0
.L800A6948:
/* B1DAE8 800A6948 10E00005 */  beqz  $a3, .L800A6960
/* B1DAEC 800A694C 00E02025 */   move  $a0, $a3
/* B1DAF0 800A6950 3C058014 */  lui   $a1, %hi(D_801407BC) # $a1, 0x8014
/* B1DAF4 800A6954 24A507BC */  addiu $a1, %lo(D_801407BC) # addiu $a1, $a1, 0x7bc
/* B1DAF8 800A6958 0C01EC35 */  jal   ZeldaArena_FreeDebug
/* B1DAFC 800A695C 2406011E */   li    $a2, 286
.L800A6960:
/* B1DB00 800A6960 2624004C */  addiu $a0, $s1, 0x4c
/* B1DB04 800A6964 0C0295BC */  jal   SkelAnime_Free
/* B1DB08 800A6968 8FA50030 */   lw    $a1, 0x30($sp)
/* B1DB0C 800A696C 8FBF002C */  lw    $ra, 0x2c($sp)
.L800A6970:
/* B1DB10 800A6970 8FB00018 */  lw    $s0, 0x18($sp)
/* B1DB14 800A6974 8FB1001C */  lw    $s1, 0x1c($sp)
/* B1DB18 800A6978 8FB20020 */  lw    $s2, 0x20($sp)
/* B1DB1C 800A697C 8FB30024 */  lw    $s3, 0x24($sp)
/* B1DB20 800A6980 8FB40028 */  lw    $s4, 0x28($sp)
/* B1DB24 800A6984 03E00008 */  jr    $ra
/* B1DB28 800A6988 27BD0030 */   addiu $sp, $sp, 0x30

