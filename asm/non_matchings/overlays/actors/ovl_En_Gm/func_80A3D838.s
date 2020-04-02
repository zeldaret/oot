glabel func_80A3D838
/* 00158 80A3D838 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0015C 80A3D83C AFB00024 */  sw      $s0, 0x0024($sp)
/* 00160 80A3D840 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00164 80A3D844 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00168 80A3D848 AFB10028 */  sw      $s1, 0x0028($sp)
/* 0016C 80A3D84C 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00170 80A3D850 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00174 80A3D854 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00178 80A3D858 00A12021 */  addu    $a0, $a1, $at
/* 0017C 80A3D85C 0C026062 */  jal     Object_IsLoaded

/* 00180 80A3D860 820502BC */  lb      $a1, 0x02BC($s0)           ## 000002BC
/* 00184 80A3D864 10400057 */  beq     $v0, $zero, .L80A3D9C4
/* 00188 80A3D868 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 0018C 80A3D86C 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 00190 80A3D870 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00194 80A3D874 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 00198 80A3D878 01C17824 */  and     $t7, $t6, $at
/* 0019C 80A3D87C AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 001A0 80A3D880 26180190 */  addiu   $t8, $s0, 0x0190           ## $t8 = 00000190
/* 001A4 80A3D884 261901FC */  addiu   $t9, $s0, 0x01FC           ## $t9 = 000001FC
/* 001A8 80A3D888 24080012 */  addiu   $t0, $zero, 0x0012         ## $t0 = 00000012
/* 001AC 80A3D88C AFA80018 */  sw      $t0, 0x0018($sp)
/* 001B0 80A3D890 AFB90014 */  sw      $t9, 0x0014($sp)
/* 001B4 80A3D894 AFB80010 */  sw      $t8, 0x0010($sp)
/* 001B8 80A3D898 AFA50030 */  sw      $a1, 0x0030($sp)
/* 001BC 80A3D89C 24C6FEF0 */  addiu   $a2, $a2, 0xFEF0           ## $a2 = 0600FEF0
/* 001C0 80A3D8A0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001C4 80A3D8A4 0C0291BE */  jal     SkelAnime_InitSV
/* 001C8 80A3D8A8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 001CC 80A3D8AC 820902BC */  lb      $t1, 0x02BC($s0)           ## 000002BC
/* 001D0 80A3D8B0 3C0C0001 */  lui     $t4, 0x0001                ## $t4 = 00010000
/* 001D4 80A3D8B4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 001D8 80A3D8B8 00095100 */  sll     $t2, $t1,  4
/* 001DC 80A3D8BC 01495021 */  addu    $t2, $t2, $t1
/* 001E0 80A3D8C0 000A5080 */  sll     $t2, $t2,  2
/* 001E4 80A3D8C4 022A5821 */  addu    $t3, $s1, $t2
/* 001E8 80A3D8C8 018B6021 */  addu    $t4, $t4, $t3
/* 001EC 80A3D8CC 8D8C17B4 */  lw      $t4, 0x17B4($t4)           ## 000117B4
/* 001F0 80A3D8D0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 001F4 80A3D8D4 248402B8 */  addiu   $a0, $a0, 0x02B8           ## $a0 = 060002B8
/* 001F8 80A3D8D8 01816821 */  addu    $t5, $t4, $at
/* 001FC 80A3D8DC 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 00200 80A3D8E0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00204 80A3D8E4 AC2D6FC0 */  sw      $t5, 0x6FC0($at)           ## 80166FC0
/* 00208 80A3D8E8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0020C 80A3D8EC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00210 80A3D8F0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00214 80A3D8F4 468021A0 */  cvt.s.w $f6, $f4
/* 00218 80A3D8F8 44070000 */  mfc1    $a3, $f0
/* 0021C 80A3D8FC 24A502B8 */  addiu   $a1, $a1, 0x02B8           ## $a1 = 060002B8
/* 00220 80A3D900 8FA40030 */  lw      $a0, 0x0030($sp)
/* 00224 80A3D904 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00228 80A3D908 AFA00014 */  sw      $zero, 0x0014($sp)
/* 0022C 80A3D90C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00230 80A3D910 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00234 80A3D914 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00238 80A3D918 3C0E80A4 */  lui     $t6, %hi(func_80A3E1EC)    ## $t6 = 80A40000
/* 0023C 80A3D91C 25CEE1EC */  addiu   $t6, $t6, %lo(func_80A3E1EC) ## $t6 = 80A3E1EC
/* 00240 80A3D920 AE0E0134 */  sw      $t6, 0x0134($s0)           ## 00000134
/* 00244 80A3D924 26050270 */  addiu   $a1, $s0, 0x0270           ## $a1 = 00000270
/* 00248 80A3D928 AFA50030 */  sw      $a1, 0x0030($sp)
/* 0024C 80A3D92C 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 00250 80A3D930 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00254 80A3D934 3C0780A4 */  lui     $a3, %hi(D_80A3E350)       ## $a3 = 80A40000
/* 00258 80A3D938 8FA50030 */  lw      $a1, 0x0030($sp)
/* 0025C 80A3D93C 24E7E350 */  addiu   $a3, $a3, %lo(D_80A3E350)  ## $a3 = 80A3E350
/* 00260 80A3D940 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00264 80A3D944 0C017114 */  jal     func_8005C450
/* 00268 80A3D948 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0026C 80A3D94C 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00270 80A3D950 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 00274 80A3D954 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00278 80A3D958 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0027C 80A3D95C 0C00AC78 */  jal     ActorShape_Init

/* 00280 80A3D960 3C07420C */  lui     $a3, 0x420C                ## $a3 = 420C0000
/* 00284 80A3D964 3C053D4C */  lui     $a1, 0x3D4C                ## $a1 = 3D4C0000
/* 00288 80A3D968 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3D4CCCCD
/* 0028C 80A3D96C 0C00B58B */  jal     Actor_SetScale

/* 00290 80A3D970 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00294 80A3D974 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00298 80A3D978 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 0029C 80A3D97C 44815000 */  mtc1    $at, $f10                  ## $f10 = -1.00
/* 002A0 80A3D980 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 002A4 80A3D984 3C0880A4 */  lui     $t0, %hi(func_80A3DFBC)    ## $t0 = 80A40000
/* 002A8 80A3D988 3C0980A4 */  lui     $t1, %hi(func_80A3DB04)    ## $t1 = 80A40000
/* 002AC 80A3D98C 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 002B0 80A3D990 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 002B4 80A3D994 24193049 */  addiu   $t9, $zero, 0x3049         ## $t9 = 00003049
/* 002B8 80A3D998 2508DFBC */  addiu   $t0, $t0, %lo(func_80A3DFBC) ## $t0 = 80A3DFBC
/* 002BC 80A3D99C 2529DB04 */  addiu   $t1, $t1, %lo(func_80A3DB04) ## $t1 = 80A3DB04
/* 002C0 80A3D9A0 A20F00AE */  sb      $t7, 0x00AE($s0)           ## 000000AE
/* 002C4 80A3D9A4 A20002C2 */  sb      $zero, 0x02C2($s0)         ## 000002C2
/* 002C8 80A3D9A8 A61802C0 */  sh      $t8, 0x02C0($s0)           ## 000002C0
/* 002CC 80A3D9AC A619010E */  sh      $t9, 0x010E($s0)           ## 0000010E
/* 002D0 80A3D9B0 AE080268 */  sw      $t0, 0x0268($s0)           ## 00000268
/* 002D4 80A3D9B4 AE09026C */  sw      $t1, 0x026C($s0)           ## 0000026C
/* 002D8 80A3D9B8 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 002DC 80A3D9BC E60A006C */  swc1    $f10, 0x006C($s0)          ## 0000006C
/* 002E0 80A3D9C0 E6100060 */  swc1    $f16, 0x0060($s0)          ## 00000060
.L80A3D9C4:
/* 002E4 80A3D9C4 8FBF002C */  lw      $ra, 0x002C($sp)
/* 002E8 80A3D9C8 8FB00024 */  lw      $s0, 0x0024($sp)
/* 002EC 80A3D9CC 8FB10028 */  lw      $s1, 0x0028($sp)
/* 002F0 80A3D9D0 03E00008 */  jr      $ra
/* 002F4 80A3D9D4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000


