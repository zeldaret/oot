glabel EnMm_Init
/* 00120 80AAD890 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00124 80AAD894 AFA5004C */  sw      $a1, 0x004C($sp)
/* 00128 80AAD898 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0012C 80AAD89C AFB00028 */  sw      $s0, 0x0028($sp)
/* 00130 80AAD8A0 3C0580AB */  lui     $a1, %hi(D_80AAEBE8)       ## $a1 = 80AB0000
/* 00134 80AAD8A4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00138 80AAD8A8 0C01E037 */  jal     Actor_ProcessInitChain

/* 0013C 80AAD8AC 24A5EBE8 */  addiu   $a1, $a1, %lo(D_80AAEBE8)  ## $a1 = 80AAEBE8
/* 00140 80AAD8B0 3C068003 */  lui     $a2, %hi(ActorShadow_DrawCircle)
/* 00144 80AAD8B4 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawCircle)
/* 00148 80AAD8B8 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 0014C 80AAD8BC 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00150 80AAD8C0 0C00AC78 */  jal     ActorShape_Init

/* 00154 80AAD8C4 3C0741A8 */  lui     $a3, 0x41A8                ## $a3 = 41A80000
/* 00158 80AAD8C8 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 0015C 80AAD8CC 3C060600 */  lui     $a2, %hi(D_06005E18)                ## $a2 = 06000000
/* 00160 80AAD8D0 260E0260 */  addiu   $t6, $s0, 0x0260           ## $t6 = 00000260
/* 00164 80AAD8D4 260F02C0 */  addiu   $t7, $s0, 0x02C0           ## $t7 = 000002C0
/* 00168 80AAD8D8 24180010 */  addiu   $t8, $zero, 0x0010         ## $t8 = 00000010
/* 0016C 80AAD8DC AFB80018 */  sw      $t8, 0x0018($sp)
/* 00170 80AAD8E0 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 00174 80AAD8E4 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 00178 80AAD8E8 24C65E18 */  addiu   $a2, $a2, %lo(D_06005E18)           ## $a2 = 06005E18
/* 0017C 80AAD8EC AFA50038 */  sw      $a1, 0x0038($sp)
/* 00180 80AAD8F0 8FA4004C */  lw      $a0, 0x004C($sp)
/* 00184 80AAD8F4 0C0291BE */  jal     SkelAnime_InitFlex
/* 00188 80AAD8F8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0018C 80AAD8FC 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 00190 80AAD900 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00194 80AAD904 0C0170D9 */  jal     Collider_InitCylinder

/* 00198 80AAD908 8FA4004C */  lw      $a0, 0x004C($sp)
/* 0019C 80AAD90C 3C0780AB */  lui     $a3, %hi(D_80AAEAE0)       ## $a3 = 80AB0000
/* 001A0 80AAD910 8FA50034 */  lw      $a1, 0x0034($sp)
/* 001A4 80AAD914 24E7EAE0 */  addiu   $a3, $a3, %lo(D_80AAEAE0)  ## $a3 = 80AAEAE0
/* 001A8 80AAD918 8FA4004C */  lw      $a0, 0x004C($sp)
/* 001AC 80AAD91C 0C01712B */  jal     Collider_SetCylinder

/* 001B0 80AAD920 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 001B4 80AAD924 3C0580AB */  lui     $a1, %hi(D_80AAEB18)       ## $a1 = 80AB0000
/* 001B8 80AAD928 3C0680AB */  lui     $a2, %hi(D_80AAEB0C)       ## $a2 = 80AB0000
/* 001BC 80AAD92C 24C6EB0C */  addiu   $a2, $a2, %lo(D_80AAEB0C)  ## $a2 = 80AAEB0C
/* 001C0 80AAD930 24A5EB18 */  addiu   $a1, $a1, %lo(D_80AAEB18)  ## $a1 = 80AAEB18
/* 001C4 80AAD934 0C0187BF */  jal     CollisionCheck_SetInfo2
/* 001C8 80AAD938 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 001CC 80AAD93C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 001D0 80AAD940 24190004 */  addiu   $t9, $zero, 0x0004         ## $t9 = 00000004
/* 001D4 80AAD944 AFB90014 */  sw      $t9, 0x0014($sp)
/* 001D8 80AAD948 44060000 */  mfc1    $a2, $f0
/* 001DC 80AAD94C 44070000 */  mfc1    $a3, $f0
/* 001E0 80AAD950 8FA4004C */  lw      $a0, 0x004C($sp)
/* 001E4 80AAD954 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 001E8 80AAD958 0C00B92D */  jal     Actor_UpdateBgCheckInfo
/* 001EC 80AAD95C E7A00010 */  swc1    $f0, 0x0010($sp)
/* 001F0 80AAD960 3C0380AB */  lui     $v1, %hi(D_80AAEB38)       ## $v1 = 80AB0000
/* 001F4 80AAD964 2463EB38 */  addiu   $v1, $v1, %lo(D_80AAEB38)  ## $v1 = 80AAEB38
/* 001F8 80AAD968 0C028800 */  jal     Animation_GetLastFrame

/* 001FC 80AAD96C 8C640000 */  lw      $a0, 0x0000($v1)           ## 80AAEB38
/* 00200 80AAD970 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00204 80AAD974 3C0380AB */  lui     $v1, %hi(D_80AAEB38)       ## $v1 = 80AB0000
/* 00208 80AAD978 2463EB38 */  addiu   $v1, $v1, %lo(D_80AAEB38)  ## $v1 = 80AAEB38
/* 0020C 80AAD97C 468021A0 */  cvt.s.w $f6, $f4
/* 00210 80AAD980 90680008 */  lbu     $t0, 0x0008($v1)           ## 80AAEB40
/* 00214 80AAD984 C468000C */  lwc1    $f8, 0x000C($v1)           ## 80AAEB44
/* 00218 80AAD988 8C650000 */  lw      $a1, 0x0000($v1)           ## 80AAEB38
/* 0021C 80AAD98C 8FA40038 */  lw      $a0, 0x0038($sp)
/* 00220 80AAD990 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00224 80AAD994 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00228 80AAD998 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 0022C 80AAD99C AFA80014 */  sw      $t0, 0x0014($sp)
/* 00230 80AAD9A0 0C029468 */  jal     Animation_Change

/* 00234 80AAD9A4 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00238 80AAD9A8 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 0023C 80AAD9AC 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
/* 00240 80AAD9B0 44815000 */  mtc1    $at, $f10                  ## $f10 = -1.00
/* 00244 80AAD9B4 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00248 80AAD9B8 44818000 */  mtc1    $at, $f16                  ## $f16 = 3.00
/* 0024C 80AAD9BC 820B001E */  lb      $t3, 0x001E($s0)           ## 0000001E
/* 00250 80AAD9C0 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
/* 00254 80AAD9C4 312A00FF */  andi    $t2, $t1, 0x00FF           ## $t2 = 00000000
/* 00258 80AAD9C8 AE0A01EC */  sw      $t2, 0x01EC($s0)           ## 000001EC
/* 0025C 80AAD9CC AE0201F0 */  sw      $v0, 0x01F0($s0)           ## 000001F0
/* 00260 80AAD9D0 AE0001E8 */  sw      $zero, 0x01E8($s0)         ## 000001E8
/* 00264 80AAD9D4 A202001F */  sb      $v0, 0x001F($s0)           ## 0000001F
/* 00268 80AAD9D8 E60A006C */  swc1    $f10, 0x006C($s0)          ## 0000006C
/* 0026C 80AAD9DC E6100200 */  swc1    $f16, 0x0200($s0)          ## 00000200
/* 00270 80AAD9E0 0C2AB69C */  jal     func_80AADA70
/* 00274 80AAD9E4 AE0B0204 */  sw      $t3, 0x0204($s0)           ## 00000204
/* 00278 80AAD9E8 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 0027C 80AAD9EC 1443000A */  bne     $v0, $v1, .L80AADA18
/* 00280 80AAD9F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00284 80AAD9F4 AE0301E4 */  sw      $v1, 0x01E4($s0)           ## 000001E4
/* 00288 80AAD9F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0028C 80AAD9FC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00290 80AADA00 0C2AB5DC */  jal     func_80AAD770
/* 00294 80AADA04 26060258 */  addiu   $a2, $s0, 0x0258           ## $a2 = 00000258
/* 00298 80AADA08 3C0C80AB */  lui     $t4, %hi(func_80AAE598)    ## $t4 = 80AB0000
/* 0029C 80AADA0C 258CE598 */  addiu   $t4, $t4, %lo(func_80AAE598) ## $t4 = 80AAE598
/* 002A0 80AADA10 10000008 */  beq     $zero, $zero, .L80AADA34
/* 002A4 80AADA14 AE0C0190 */  sw      $t4, 0x0190($s0)           ## 00000190
.L80AADA18:
/* 002A8 80AADA18 AE0001E4 */  sw      $zero, 0x01E4($s0)         ## 000001E4
/* 002AC 80AADA1C 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 002B0 80AADA20 0C2AB5DC */  jal     func_80AAD770
/* 002B4 80AADA24 26060258 */  addiu   $a2, $s0, 0x0258           ## $a2 = 00000258
/* 002B8 80AADA28 3C0D80AB */  lui     $t5, %hi(func_80AAE294)    ## $t5 = 80AB0000
/* 002BC 80AADA2C 25ADE294 */  addiu   $t5, $t5, %lo(func_80AAE294) ## $t5 = 80AAE294
/* 002C0 80AADA30 AE0D0190 */  sw      $t5, 0x0190($s0)           ## 00000190
.L80AADA34:
/* 002C4 80AADA34 8FBF002C */  lw      $ra, 0x002C($sp)
/* 002C8 80AADA38 8FB00028 */  lw      $s0, 0x0028($sp)
/* 002CC 80AADA3C 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 002D0 80AADA40 03E00008 */  jr      $ra
/* 002D4 80AADA44 00000000 */  nop
