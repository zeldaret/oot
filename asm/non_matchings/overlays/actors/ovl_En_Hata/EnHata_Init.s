.late_rodata
glabel D_80A51260
    .float 550.0
glabel D_80A51264
    .float 2200.0
glabel D_80A51268
    .float 65535.0
 
.text
glabel EnHata_Init
/* 00000 80A50D50 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00004 80A50D54 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00008 80A50D58 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0000C 80A50D5C AFBF002C */  sw      $ra, 0x002C($sp)
/* 00010 80A50D60 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00014 80A50D64 AFA5004C */  sw      $a1, 0x004C($sp)
/* 00018 80A50D68 AFA0003C */  sw      $zero, 0x003C($sp)
/* 0001C 80A50D6C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00020 80A50D70 24840444 */  addiu   $a0, $a0, 0x0444           ## $a0 = 06000444
/* 00024 80A50D74 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00028 80A50D78 3C053C5A */  lui     $a1, 0x3C5A                ## $a1 = 3C5A0000
/* 0002C 80A50D7C 34A5740E */  ori     $a1, $a1, 0x740E           ## $a1 = 3C5A740E
/* 00030 80A50D80 468021A0 */  cvt.s.w $f6, $f4
/* 00034 80A50D84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00038 80A50D88 0C00B58B */  jal     Actor_SetScale

/* 0003C 80A50D8C E7A60038 */  swc1    $f6, 0x0038($sp)
/* 00040 80A50D90 26050164 */  addiu   $a1, $s0, 0x0164           ## $a1 = 00000164
/* 00044 80A50D94 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00048 80A50D98 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 0004C 80A50D9C 24E70444 */  addiu   $a3, $a3, 0x0444           ## $a3 = 06000444
/* 00050 80A50DA0 24C62FD0 */  addiu   $a2, $a2, 0x2FD0           ## $a2 = 06002FD0
/* 00054 80A50DA4 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00058 80A50DA8 8FA4004C */  lw      $a0, 0x004C($sp)
/* 0005C 80A50DAC AFA00010 */  sw      $zero, 0x0010($sp)
/* 00060 80A50DB0 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00064 80A50DB4 0C02915F */  jal     SkelAnime_Init

/* 00068 80A50DB8 AFA00018 */  sw      $zero, 0x0018($sp)
/* 0006C 80A50DBC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00070 80A50DC0 C7A80038 */  lwc1    $f8, 0x0038($sp)
/* 00074 80A50DC4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00078 80A50DC8 44070000 */  mfc1    $a3, $f0
/* 0007C 80A50DCC 24A50444 */  addiu   $a1, $a1, 0x0444           ## $a1 = 06000444
/* 00080 80A50DD0 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00084 80A50DD4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00088 80A50DD8 AFA00014 */  sw      $zero, 0x0014($sp)
/* 0008C 80A50DDC E7A80010 */  swc1    $f8, 0x0010($sp)
/* 00090 80A50DE0 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00094 80A50DE4 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00098 80A50DE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0009C 80A50DEC 0C010D20 */  jal     DynaPolyInfo_SetActorMove

/* 000A0 80A50DF0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 000A4 80A50DF4 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 000A8 80A50DF8 248400C0 */  addiu   $a0, $a0, 0x00C0           ## $a0 = 060000C0
/* 000AC 80A50DFC 0C010620 */  jal     DynaPolyInfo_Alloc

/* 000B0 80A50E00 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFF4
/* 000B4 80A50E04 8FA4004C */  lw      $a0, 0x004C($sp)
/* 000B8 80A50E08 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000BC 80A50E0C 8FA7003C */  lw      $a3, 0x003C($sp)
/* 000C0 80A50E10 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 000C4 80A50E14 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 000C8 80A50E18 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 000CC 80A50E1C 44815000 */  mtc1    $at, $f10                  ## $f10 = 500.00
/* 000D0 80A50E20 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 000D4 80A50E24 3C0180A5 */  lui     $at, %hi(D_80A51260)       ## $at = 80A50000
/* 000D8 80A50E28 E60A00F8 */  swc1    $f10, 0x00F8($s0)          ## 000000F8
/* 000DC 80A50E2C C4301260 */  lwc1    $f16, %lo(D_80A51260)($at)
/* 000E0 80A50E30 3C0180A5 */  lui     $at, %hi(D_80A51264)       ## $at = 80A50000
/* 000E4 80A50E34 240F0006 */  addiu   $t7, $zero, 0x0006         ## $t7 = 00000006
/* 000E8 80A50E38 E61000FC */  swc1    $f16, 0x00FC($s0)          ## 000000FC
/* 000EC 80A50E3C C4321264 */  lwc1    $f18, %lo(D_80A51264)($at)
/* 000F0 80A50E40 241803E8 */  addiu   $t8, $zero, 0x03E8         ## $t8 = 000003E8
/* 000F4 80A50E44 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 000F8 80A50E48 A60F0272 */  sh      $t7, 0x0272($s0)           ## 00000272
/* 000FC 80A50E4C A6180274 */  sh      $t8, 0x0274($s0)           ## 00000274
/* 00100 80A50E50 A6190276 */  sh      $t9, 0x0276($s0)           ## 00000276
/* 00104 80A50E54 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00108 80A50E58 E61200F4 */  swc1    $f18, 0x00F4($s0)          ## 000000F4
/* 0010C 80A50E5C 3C0180A5 */  lui     $at, %hi(D_80A51268)       ## $at = 80A50000
/* 00110 80A50E60 C4241268 */  lwc1    $f4, %lo(D_80A51268)($at)
/* 00114 80A50E64 46040182 */  mul.s   $f6, $f0, $f4
/* 00118 80A50E68 4600320D */  trunc.w.s $f8, $f6
/* 0011C 80A50E6C 44094000 */  mfc1    $t1, $f8
/* 00120 80A50E70 00000000 */  nop
/* 00124 80A50E74 A6090278 */  sh      $t1, 0x0278($s0)           ## 00000278
/* 00128 80A50E78 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0012C 80A50E7C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00130 80A50E80 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00134 80A50E84 03E00008 */  jr      $ra
/* 00138 80A50E88 00000000 */  nop
