glabel EnZl1_Init
/* 00010 80B4AB50 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00014 80B4AB54 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00018 80B4AB58 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 80B4AB5C AFBF002C */  sw      $ra, 0x002C($sp)
/* 00020 80B4AB60 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00024 80B4AB64 AFA50044 */  sw      $a1, 0x0044($sp)
/* 00028 80B4AB68 0C028800 */  jal     SkelAnime_GetFrameCount

/* 0002C 80B4AB6C 24842118 */  addiu   $a0, $a0, 0x2118           ## $a0 = 06012118
/* 00030 80B4AB70 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00034 80B4AB74 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00038 80B4AB78 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 0003C 80B4AB7C 468021A0 */  cvt.s.w $f6, $f4
/* 00040 80B4AB80 24C6F5D8 */  addiu   $a2, $a2, 0xF5D8           ## $a2 = 0600F5D8
/* 00044 80B4AB84 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00048 80B4AB88 8FA40044 */  lw      $a0, 0x0044($sp)
/* 0004C 80B4AB8C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00050 80B4AB90 AFA00010 */  sw      $zero, 0x0010($sp)
/* 00054 80B4AB94 E7A6003C */  swc1    $f6, 0x003C($sp)
/* 00058 80B4AB98 AFA00014 */  sw      $zero, 0x0014($sp)
/* 0005C 80B4AB9C 0C0291BE */  jal     SkelAnime_InitSV
/* 00060 80B4ABA0 AFA00018 */  sw      $zero, 0x0018($sp)
/* 00064 80B4ABA4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00068 80B4ABA8 C7A8003C */  lwc1    $f8, 0x003C($sp)
/* 0006C 80B4ABAC 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00070 80B4ABB0 44070000 */  mfc1    $a3, $f0
/* 00074 80B4ABB4 24A52118 */  addiu   $a1, $a1, 0x2118           ## $a1 = 06012118
/* 00078 80B4ABB8 8FA40034 */  lw      $a0, 0x0034($sp)
/* 0007C 80B4ABBC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00080 80B4ABC0 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00084 80B4ABC4 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 00088 80B4ABC8 0C029468 */  jal     SkelAnime_ChangeAnimation

/* 0008C 80B4ABCC E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00090 80B4ABD0 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 00094 80B4ABD4 AFA50030 */  sw      $a1, 0x0030($sp)
/* 00098 80B4ABD8 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 0009C 80B4ABDC 8FA40044 */  lw      $a0, 0x0044($sp)
/* 000A0 80B4ABE0 3C0780B5 */  lui     $a3, %hi(D_80B4E5F0)       ## $a3 = 80B50000
/* 000A4 80B4ABE4 8FA50030 */  lw      $a1, 0x0030($sp)
/* 000A8 80B4ABE8 24E7E5F0 */  addiu   $a3, $a3, %lo(D_80B4E5F0)  ## $a3 = 80B4E5F0
/* 000AC 80B4ABEC 8FA40044 */  lw      $a0, 0x0044($sp)
/* 000B0 80B4ABF0 0C01712B */  jal     ActorCollider_InitCylinder

/* 000B4 80B4ABF4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000B8 80B4ABF8 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 000BC 80B4ABFC 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 000C0 80B4AC00 0C00B58B */  jal     Actor_SetScale

/* 000C4 80B4AC04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000C8 80B4AC08 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 000CC 80B4AC0C 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 000D0 80B4AC10 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 000D4 80B4AC14 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 000D8 80B4AC18 0C00AC78 */  jal     ActorShape_Init

/* 000DC 80B4AC1C 3C0741C0 */  lui     $a3, 0x41C0                ## $a3 = 41C00000
/* 000E0 80B4AC20 A200001F */  sb      $zero, 0x001F($s0)         ## 0000001F
/* 000E4 80B4AC24 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 000E8 80B4AC28 8DCEF9C0 */  lw      $t6, -0x0640($t6)          ## 8015F9C0
/* 000EC 80B4AC2C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 000F0 80B4AC30 29C10004 */  slti    $at, $t6, 0x0004
/* 000F4 80B4AC34 14200014 */  bne     $at, $zero, .L80B4AC88
/* 000F8 80B4AC38 00000000 */  nop
/* 000FC 80B4AC3C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00100 80B4AC40 24840438 */  addiu   $a0, $a0, 0x0438           ## $a0 = 06000438
/* 00104 80B4AC44 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 00108 80B4AC48 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0010C 80B4AC4C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00110 80B4AC50 46805420 */  cvt.s.w $f16, $f10
/* 00114 80B4AC54 44070000 */  mfc1    $a3, $f0
/* 00118 80B4AC58 24A50438 */  addiu   $a1, $a1, 0x0438           ## $a1 = 06000438
/* 0011C 80B4AC5C 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00120 80B4AC60 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00124 80B4AC64 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00128 80B4AC68 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 0012C 80B4AC6C 0C029468 */  jal     SkelAnime_ChangeAnimation

/* 00130 80B4AC70 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00134 80B4AC74 3C0F80B5 */  lui     $t7, %hi(func_80B4BC78)    ## $t7 = 80B50000
/* 00138 80B4AC78 25EFBC78 */  addiu   $t7, $t7, %lo(func_80B4BC78) ## $t7 = 80B4BC78
/* 0013C 80B4AC7C A60001E6 */  sh      $zero, 0x01E6($s0)         ## 000001E6
/* 00140 80B4AC80 10000052 */  beq     $zero, $zero, .L80B4ADCC
/* 00144 80B4AC84 AE0F0190 */  sw      $t7, 0x0190($s0)           ## 00000190
.L80B4AC88:
/* 00148 80B4AC88 0C00D6D3 */  jal     Flags_GetEventChkInf

/* 0014C 80B4AC8C 24040009 */  addiu   $a0, $zero, 0x0009         ## $a0 = 00000009
/* 00150 80B4AC90 1040000D */  beq     $v0, $zero, .L80B4ACC8
/* 00154 80B4AC94 00000000 */  nop
/* 00158 80B4AC98 0C00D6D3 */  jal     Flags_GetEventChkInf

/* 0015C 80B4AC9C 24040025 */  addiu   $a0, $zero, 0x0025         ## $a0 = 00000025
/* 00160 80B4ACA0 10400009 */  beq     $v0, $zero, .L80B4ACC8
/* 00164 80B4ACA4 00000000 */  nop
/* 00168 80B4ACA8 0C00D6D3 */  jal     Flags_GetEventChkInf

/* 0016C 80B4ACAC 24040037 */  addiu   $a0, $zero, 0x0037         ## $a0 = 00000037
/* 00170 80B4ACB0 10400005 */  beq     $v0, $zero, .L80B4ACC8
/* 00174 80B4ACB4 00000000 */  nop
/* 00178 80B4ACB8 0C00B55C */  jal     Actor_Kill

/* 0017C 80B4ACBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00180 80B4ACC0 10000043 */  beq     $zero, $zero, .L80B4ADD0
/* 00184 80B4ACC4 8FBF002C */  lw      $ra, 0x002C($sp)
.L80B4ACC8:
/* 00188 80B4ACC8 0C00D6D3 */  jal     Flags_GetEventChkInf

/* 0018C 80B4ACCC 24040009 */  addiu   $a0, $zero, 0x0009         ## $a0 = 00000009
/* 00190 80B4ACD0 10400005 */  beq     $v0, $zero, .L80B4ACE8
/* 00194 80B4ACD4 00000000 */  nop
/* 00198 80B4ACD8 0C00D6D3 */  jal     Flags_GetEventChkInf

/* 0019C 80B4ACDC 24040025 */  addiu   $a0, $zero, 0x0025         ## $a0 = 00000025
/* 001A0 80B4ACE0 14400008 */  bne     $v0, $zero, .L80B4AD04
/* 001A4 80B4ACE4 00000000 */  nop
.L80B4ACE8:
/* 001A8 80B4ACE8 0C00D6D3 */  jal     Flags_GetEventChkInf

/* 001AC 80B4ACEC 24040009 */  addiu   $a0, $zero, 0x0009         ## $a0 = 00000009
/* 001B0 80B4ACF0 10400019 */  beq     $v0, $zero, .L80B4AD58
/* 001B4 80B4ACF4 00000000 */  nop
/* 001B8 80B4ACF8 0C00D6D3 */  jal     Flags_GetEventChkInf

/* 001BC 80B4ACFC 24040037 */  addiu   $a0, $zero, 0x0037         ## $a0 = 00000037
/* 001C0 80B4AD00 10400015 */  beq     $v0, $zero, .L80B4AD58
.L80B4AD04:
/* 001C4 80B4AD04 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 001C8 80B4AD08 0C028800 */  jal     SkelAnime_GetFrameCount

/* 001CC 80B4AD0C 24840438 */  addiu   $a0, $a0, 0x0438           ## $a0 = 06000438
/* 001D0 80B4AD10 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
/* 001D4 80B4AD14 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 001D8 80B4AD18 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 001DC 80B4AD1C 46809120 */  cvt.s.w $f4, $f18
/* 001E0 80B4AD20 44070000 */  mfc1    $a3, $f0
/* 001E4 80B4AD24 24A50438 */  addiu   $a1, $a1, 0x0438           ## $a1 = 06000438
/* 001E8 80B4AD28 8FA40034 */  lw      $a0, 0x0034($sp)
/* 001EC 80B4AD2C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 001F0 80B4AD30 AFA00014 */  sw      $zero, 0x0014($sp)
/* 001F4 80B4AD34 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 001F8 80B4AD38 0C029468 */  jal     SkelAnime_ChangeAnimation

/* 001FC 80B4AD3C E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00200 80B4AD40 3C1980B5 */  lui     $t9, %hi(func_80B4AF18)    ## $t9 = 80B50000
/* 00204 80B4AD44 2418703D */  addiu   $t8, $zero, 0x703D         ## $t8 = 0000703D
/* 00208 80B4AD48 2739AF18 */  addiu   $t9, $t9, %lo(func_80B4AF18) ## $t9 = 80B4AF18
/* 0020C 80B4AD4C A618010E */  sh      $t8, 0x010E($s0)           ## 0000010E
/* 00210 80B4AD50 1000001E */  beq     $zero, $zero, .L80B4ADCC
/* 00214 80B4AD54 AE190190 */  sw      $t9, 0x0190($s0)           ## 00000190
.L80B4AD58:
/* 00218 80B4AD58 0C00D6D3 */  jal     Flags_GetEventChkInf

/* 0021C 80B4AD5C 24040040 */  addiu   $a0, $zero, 0x0040         ## $a0 = 00000040
/* 00220 80B4AD60 10400016 */  beq     $v0, $zero, .L80B4ADBC
/* 00224 80B4AD64 340AFFFF */  ori     $t2, $zero, 0xFFFF         ## $t2 = 0000FFFF
/* 00228 80B4AD68 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0022C 80B4AD6C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00230 80B4AD70 24840438 */  addiu   $a0, $a0, 0x0438           ## $a0 = 06000438
/* 00234 80B4AD74 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 00238 80B4AD78 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 0023C 80B4AD7C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00240 80B4AD80 46803220 */  cvt.s.w $f8, $f6
/* 00244 80B4AD84 24A50438 */  addiu   $a1, $a1, 0x0438           ## $a1 = 06000438
/* 00248 80B4AD88 8FA40034 */  lw      $a0, 0x0034($sp)
/* 0024C 80B4AD8C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00250 80B4AD90 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00254 80B4AD94 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00258 80B4AD98 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 0025C 80B4AD9C 0C029468 */  jal     SkelAnime_ChangeAnimation

/* 00260 80B4ADA0 E7AA0018 */  swc1    $f10, 0x0018($sp)
/* 00264 80B4ADA4 3C0980B5 */  lui     $t1, %hi(func_80B4AF18)    ## $t1 = 80B50000
/* 00268 80B4ADA8 2408703C */  addiu   $t0, $zero, 0x703C         ## $t0 = 0000703C
/* 0026C 80B4ADAC 2529AF18 */  addiu   $t1, $t1, %lo(func_80B4AF18) ## $t1 = 80B4AF18
/* 00270 80B4ADB0 A608010E */  sh      $t0, 0x010E($s0)           ## 0000010E
/* 00274 80B4ADB4 10000005 */  beq     $zero, $zero, .L80B4ADCC
/* 00278 80B4ADB8 AE090190 */  sw      $t1, 0x0190($s0)           ## 00000190
.L80B4ADBC:
/* 0027C 80B4ADBC 3C0B80B5 */  lui     $t3, %hi(func_80B4B010)    ## $t3 = 80B50000
/* 00280 80B4ADC0 256BB010 */  addiu   $t3, $t3, %lo(func_80B4B010) ## $t3 = 80B4B010
/* 00284 80B4ADC4 A60A010E */  sh      $t2, 0x010E($s0)           ## 0000010E
/* 00288 80B4ADC8 AE0B0190 */  sw      $t3, 0x0190($s0)           ## 00000190
.L80B4ADCC:
/* 0028C 80B4ADCC 8FBF002C */  lw      $ra, 0x002C($sp)
.L80B4ADD0:
/* 00290 80B4ADD0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00294 80B4ADD4 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00298 80B4ADD8 03E00008 */  jr      $ra
/* 0029C 80B4ADDC 00000000 */  nop


