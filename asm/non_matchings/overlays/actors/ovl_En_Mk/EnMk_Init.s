glabel EnMk_Init
/* 00000 80AAC900 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00004 80AAC904 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00008 80AAC908 44812000 */  mtc1    $at, $f4                   ## $f4 = -4.00
/* 0000C 80AAC90C 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00010 80AAC910 44813000 */  mtc1    $at, $f6                   ## $f6 = -1.00
/* 00014 80AAC914 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00018 80AAC918 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0001C 80AAC91C AFA50044 */  sw      $a1, 0x0044($sp)
/* 00020 80AAC920 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00024 80AAC924 3C068003 */  lui     $a2, %hi(ActorShadow_DrawCircle)
/* 00028 80AAC928 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawCircle)
/* 0002C 80AAC92C 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 00030 80AAC930 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00034 80AAC934 3C074210 */  lui     $a3, 0x4210                ## $a3 = 42100000
/* 00038 80AAC938 E484FFBC */  swc1    $f4, -0x0044($a0)          ## 00000070
/* 0003C 80AAC93C 0C00AC78 */  jal     ActorShape_Init

/* 00040 80AAC940 E486FFB8 */  swc1    $f6, -0x0048($a0)          ## 0000006C
/* 00044 80AAC944 26050198 */  addiu   $a1, $s0, 0x0198           ## $a1 = 00000198
/* 00048 80AAC948 3C060600 */  lui     $a2, %hi(D_06005DF0)                ## $a2 = 06000000
/* 0004C 80AAC94C 3C070600 */  lui     $a3, %hi(D_06000D88)                ## $a3 = 06000000
/* 00050 80AAC950 260E01DC */  addiu   $t6, $s0, 0x01DC           ## $t6 = 000001DC
/* 00054 80AAC954 260F022A */  addiu   $t7, $s0, 0x022A           ## $t7 = 0000022A
/* 00058 80AAC958 2418000D */  addiu   $t8, $zero, 0x000D         ## $t8 = 0000000D
/* 0005C 80AAC95C AFB80018 */  sw      $t8, 0x0018($sp)
/* 00060 80AAC960 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 00064 80AAC964 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 00068 80AAC968 24E70D88 */  addiu   $a3, $a3, %lo(D_06000D88)           ## $a3 = 06000D88
/* 0006C 80AAC96C 24C65DF0 */  addiu   $a2, $a2, %lo(D_06005DF0)           ## $a2 = 06005DF0
/* 00070 80AAC970 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00074 80AAC974 0C0291BE */  jal     SkelAnime_InitFlex
/* 00078 80AAC978 8FA40044 */  lw      $a0, 0x0044($sp)
/* 0007C 80AAC97C 3C050600 */  lui     $a1, %hi(D_06000D88)                ## $a1 = 06000000
/* 00080 80AAC980 24A50D88 */  addiu   $a1, $a1, %lo(D_06000D88)           ## $a1 = 06000D88
/* 00084 80AAC984 0C0294BE */  jal     Animation_PlayLoop
/* 00088 80AAC988 8FA40034 */  lw      $a0, 0x0034($sp)
/* 0008C 80AAC98C 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00090 80AAC990 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00094 80AAC994 0C0170D9 */  jal     Collider_InitCylinder

/* 00098 80AAC998 8FA40044 */  lw      $a0, 0x0044($sp)
/* 0009C 80AAC99C 3C0780AB */  lui     $a3, %hi(D_80AAD620)       ## $a3 = 80AB0000
/* 000A0 80AAC9A0 8FA50034 */  lw      $a1, 0x0034($sp)
/* 000A4 80AAC9A4 24E7D620 */  addiu   $a3, $a3, %lo(D_80AAD620)  ## $a3 = 80AAD620
/* 000A8 80AAC9A8 8FA40044 */  lw      $a0, 0x0044($sp)
/* 000AC 80AAC9AC 0C01712B */  jal     Collider_SetCylinder

/* 000B0 80AAC9B0 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000B4 80AAC9B4 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 000B8 80AAC9B8 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 000BC 80AAC9BC A21900AE */  sb      $t9, 0x00AE($s0)           ## 000000AE
/* 000C0 80AAC9C0 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 000C4 80AAC9C4 0C00B58B */  jal     Actor_SetScale

/* 000C8 80AAC9C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000CC 80AAC9CC 3C0880AB */  lui     $t0, %hi(func_80AAD080)    ## $t0 = 80AB0000
/* 000D0 80AAC9D0 2508D080 */  addiu   $t0, $t0, %lo(func_80AAD080) ## $t0 = 80AAD080
/* 000D4 80AAC9D4 24090006 */  addiu   $t1, $zero, 0x0006         ## $t1 = 00000006
/* 000D8 80AAC9D8 AE080284 */  sw      $t0, 0x0284($s0)           ## 00000284
/* 000DC 80AAC9DC A600027E */  sh      $zero, 0x027E($s0)         ## 0000027E
/* 000E0 80AAC9E0 A6000280 */  sh      $zero, 0x0280($s0)         ## 00000280
/* 000E4 80AAC9E4 A209001F */  sb      $t1, 0x001F($s0)           ## 0000001F
/* 000E8 80AAC9E8 3C0A8016 */  lui     $t2, %hi(gSaveContext+0xef2)
/* 000EC 80AAC9EC 954AF552 */  lhu     $t2, %lo(gSaveContext+0xef2)($t2)
/* 000F0 80AAC9F0 340D0004 */  ori     $t5, $zero, 0x0004         ## $t5 = 00000004
/* 000F4 80AAC9F4 314B0001 */  andi    $t3, $t2, 0x0001           ## $t3 = 00000000
/* 000F8 80AAC9F8 51600003 */  beql    $t3, $zero, .L80AACA08
/* 000FC 80AAC9FC 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00100 80AACA00 A60D027E */  sh      $t5, 0x027E($s0)           ## 0000027E
/* 00104 80AACA04 8FBF002C */  lw      $ra, 0x002C($sp)
.L80AACA08:
/* 00108 80AACA08 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0010C 80AACA0C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00110 80AACA10 03E00008 */  jr      $ra
/* 00114 80AACA14 00000000 */  nop
