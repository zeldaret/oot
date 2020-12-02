glabel EnCs_Init
/* 00120 809E19D0 3C0E8016 */  lui     $t6, %hi(gSaveContext+0x10)
/* 00124 809E19D4 8DCEE670 */  lw      $t6, %lo(gSaveContext+0x10)($t6)
/* 00128 809E19D8 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 0012C 809E19DC AFB00028 */  sw      $s0, 0x0028($sp)
/* 00130 809E19E0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00134 809E19E4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00138 809E19E8 11C00005 */  beq     $t6, $zero, .L809E1A00
/* 0013C 809E19EC AFA5004C */  sw      $a1, 0x004C($sp)
/* 00140 809E19F0 0C00B55C */  jal     Actor_Kill

/* 00144 809E19F4 00000000 */  nop
/* 00148 809E19F8 10000056 */  beq     $zero, $zero, .L809E1B54
/* 0014C 809E19FC 8FBF002C */  lw      $ra, 0x002C($sp)
.L809E1A00:
/* 00150 809E1A00 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00154 809E1A04 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 00158 809E1A08 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 0015C 809E1A0C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00160 809E1A10 0C00AC78 */  jal     ActorShape_Init

/* 00164 809E1A14 3C074198 */  lui     $a3, 0x4198                ## $a3 = 41980000
/* 00168 809E1A18 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 0016C 809E1A1C 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 00170 809E1A20 260F0284 */  addiu   $t7, $s0, 0x0284           ## $t7 = 00000284
/* 00174 809E1A24 261802E4 */  addiu   $t8, $s0, 0x02E4           ## $t8 = 000002E4
/* 00178 809E1A28 24190010 */  addiu   $t9, $zero, 0x0010         ## $t9 = 00000010
/* 0017C 809E1A2C AFB90018 */  sw      $t9, 0x0018($sp)
/* 00180 809E1A30 AFB80014 */  sw      $t8, 0x0014($sp)
/* 00184 809E1A34 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 00188 809E1A38 24C68540 */  addiu   $a2, $a2, 0x8540           ## $a2 = 06008540
/* 0018C 809E1A3C AFA50038 */  sw      $a1, 0x0038($sp)
/* 00190 809E1A40 8FA4004C */  lw      $a0, 0x004C($sp)
/* 00194 809E1A44 0C0291BE */  jal     SkelAnime_InitFlex
/* 00198 809E1A48 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0019C 809E1A4C 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 001A0 809E1A50 AFA50034 */  sw      $a1, 0x0034($sp)
/* 001A4 809E1A54 0C0170D9 */  jal     Collider_InitCylinder

/* 001A8 809E1A58 8FA4004C */  lw      $a0, 0x004C($sp)
/* 001AC 809E1A5C 3C07809E */  lui     $a3, %hi(D_809E28C0)       ## $a3 = 809E0000
/* 001B0 809E1A60 8FA50034 */  lw      $a1, 0x0034($sp)
/* 001B4 809E1A64 24E728C0 */  addiu   $a3, $a3, %lo(D_809E28C0)  ## $a3 = 809E28C0
/* 001B8 809E1A68 8FA4004C */  lw      $a0, 0x004C($sp)
/* 001BC 809E1A6C 0C01712B */  jal     Collider_SetCylinder

/* 001C0 809E1A70 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 001C4 809E1A74 3C05809E */  lui     $a1, %hi(D_809E28F8)       ## $a1 = 809E0000
/* 001C8 809E1A78 3C06809E */  lui     $a2, %hi(D_809E28EC)       ## $a2 = 809E0000
/* 001CC 809E1A7C 24C628EC */  addiu   $a2, $a2, %lo(D_809E28EC)  ## $a2 = 809E28EC
/* 001D0 809E1A80 24A528F8 */  addiu   $a1, $a1, %lo(D_809E28F8)  ## $a1 = 809E28F8
/* 001D4 809E1A84 0C0187BF */  jal     func_80061EFC
/* 001D8 809E1A88 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 001DC 809E1A8C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 001E0 809E1A90 24080004 */  addiu   $t0, $zero, 0x0004         ## $t0 = 00000004
/* 001E4 809E1A94 AFA80014 */  sw      $t0, 0x0014($sp)
/* 001E8 809E1A98 44060000 */  mfc1    $a2, $f0
/* 001EC 809E1A9C 44070000 */  mfc1    $a3, $f0
/* 001F0 809E1AA0 8FA4004C */  lw      $a0, 0x004C($sp)
/* 001F4 809E1AA4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 001F8 809E1AA8 0C00B92D */  jal     func_8002E4B4
/* 001FC 809E1AAC E7A00010 */  swc1    $f0, 0x0010($sp)
/* 00200 809E1AB0 3C03809E */  lui     $v1, %hi(D_809E2918)       ## $v1 = 809E0000
/* 00204 809E1AB4 24632918 */  addiu   $v1, $v1, %lo(D_809E2918)  ## $v1 = 809E2918
/* 00208 809E1AB8 0C028800 */  jal     SkelAnime_GetFrameCount

/* 0020C 809E1ABC 8C640000 */  lw      $a0, 0x0000($v1)           ## 809E2918
/* 00210 809E1AC0 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00214 809E1AC4 3C03809E */  lui     $v1, %hi(D_809E2918)       ## $v1 = 809E0000
/* 00218 809E1AC8 24632918 */  addiu   $v1, $v1, %lo(D_809E2918)  ## $v1 = 809E2918
/* 0021C 809E1ACC 468021A0 */  cvt.s.w $f6, $f4
/* 00220 809E1AD0 90690008 */  lbu     $t1, 0x0008($v1)           ## 809E2920
/* 00224 809E1AD4 C468000C */  lwc1    $f8, 0x000C($v1)           ## 809E2924
/* 00228 809E1AD8 8C650000 */  lw      $a1, 0x0000($v1)           ## 809E2918
/* 0022C 809E1ADC 8FA40038 */  lw      $a0, 0x0038($sp)
/* 00230 809E1AE0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00234 809E1AE4 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00238 809E1AE8 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 0023C 809E1AEC AFA90014 */  sw      $t1, 0x0014($sp)
/* 00240 809E1AF0 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00244 809E1AF4 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00248 809E1AF8 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 0024C 809E1AFC 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00250 809E1B00 44815000 */  mtc1    $at, $f10                  ## $f10 = -1.00
/* 00254 809E1B04 240A0006 */  addiu   $t2, $zero, 0x0006         ## $t2 = 00000006
/* 00258 809E1B08 240DFFFF */  addiu   $t5, $zero, 0xFFFF         ## $t5 = FFFFFFFF
/* 0025C 809E1B0C 316C00FF */  andi    $t4, $t3, 0x00FF           ## $t4 = 00000000
/* 00260 809E1B10 A20A001F */  sb      $t2, 0x001F($s0)           ## 0000001F
/* 00264 809E1B14 AE0C01F4 */  sw      $t4, 0x01F4($s0)           ## 000001F4
/* 00268 809E1B18 AE0001EC */  sw      $zero, 0x01EC($s0)         ## 000001EC
/* 0026C 809E1B1C AE0001E0 */  sw      $zero, 0x01E0($s0)         ## 000001E0
/* 00270 809E1B20 AE0D0210 */  sw      $t5, 0x0210($s0)           ## 00000210
/* 00274 809E1B24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00278 809E1B28 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0027C 809E1B2C 26060210 */  addiu   $a2, $s0, 0x0210           ## $a2 = 00000210
/* 00280 809E1B30 0C27862C */  jal     func_809E18B0
/* 00284 809E1B34 E60A006C */  swc1    $f10, 0x006C($s0)          ## 0000006C
/* 00288 809E1B38 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0028C 809E1B3C 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 00290 809E1B40 3C0E809E */  lui     $t6, %hi(func_809E2134)    ## $t6 = 809E0000
/* 00294 809E1B44 25CE2134 */  addiu   $t6, $t6, %lo(func_809E2134) ## $t6 = 809E2134
/* 00298 809E1B48 AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
/* 0029C 809E1B4C E610020C */  swc1    $f16, 0x020C($s0)          ## 0000020C
/* 002A0 809E1B50 8FBF002C */  lw      $ra, 0x002C($sp)
.L809E1B54:
/* 002A4 809E1B54 8FB00028 */  lw      $s0, 0x0028($sp)
/* 002A8 809E1B58 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 002AC 809E1B5C 03E00008 */  jr      $ra
/* 002B0 809E1B60 00000000 */  nop
