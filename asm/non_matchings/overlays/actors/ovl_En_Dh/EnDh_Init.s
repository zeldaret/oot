glabel EnDh_Init
/* 00008 809EAD48 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0000C 809EAD4C AFB10028 */  sw      $s1, 0x0028($sp)
/* 00010 809EAD50 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00014 809EAD54 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00018 809EAD58 AFB00024 */  sw      $s0, 0x0024($sp)
/* 0001C 809EAD5C 3C05809F */  lui     $a1, %hi(D_809EC640)       ## $a1 = 809F0000
/* 00020 809EAD60 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00024 809EAD64 0C01E037 */  jal     Actor_ProcessInitChain

/* 00028 809EAD68 24A5C640 */  addiu   $a1, $a1, %lo(D_809EC640)  ## $a1 = 809EC640
/* 0002C 809EAD6C 3C0E809F */  lui     $t6, %hi(D_809EC620)       ## $t6 = 809F0000
/* 00030 809EAD70 25CEC620 */  addiu   $t6, $t6, %lo(D_809EC620)  ## $t6 = 809EC620
/* 00034 809EAD74 AE0E0098 */  sw      $t6, 0x0098($s0)           ## 00000098
/* 00038 809EAD78 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 0003C 809EAD7C 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00040 809EAD80 260F0190 */  addiu   $t7, $s0, 0x0190           ## $t7 = 00000190
/* 00044 809EAD84 261801F0 */  addiu   $t8, $s0, 0x01F0           ## $t8 = 000001F0
/* 00048 809EAD88 24190010 */  addiu   $t9, $zero, 0x0010         ## $t9 = 00000010
/* 0004C 809EAD8C AFB90018 */  sw      $t9, 0x0018($sp)
/* 00050 809EAD90 AFB80014 */  sw      $t8, 0x0014($sp)
/* 00054 809EAD94 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 00058 809EAD98 24E75880 */  addiu   $a3, $a3, 0x5880           ## $a3 = 06005880
/* 0005C 809EAD9C 24C67E88 */  addiu   $a2, $a2, 0x7E88           ## $a2 = 06007E88
/* 00060 809EADA0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00064 809EADA4 0C0291BE */  jal     SkelAnime_InitSV
/* 00068 809EADA8 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 0006C 809EADAC 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00070 809EADB0 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 00074 809EADB4 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00078 809EADB8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0007C 809EADBC 0C00AC78 */  jal     ActorShape_Init

/* 00080 809EADC0 3C074280 */  lui     $a3, 0x4280                ## $a3 = 42800000
/* 00084 809EADC4 240800FE */  addiu   $t0, $zero, 0x00FE         ## $t0 = 000000FE
/* 00088 809EADC8 A600001C */  sh      $zero, 0x001C($s0)         ## 0000001C
/* 0008C 809EADCC A20800AE */  sb      $t0, 0x00AE($s0)           ## 000000AE
/* 00090 809EADD0 3C098016 */  lui     $t1, %hi(gSaveContext+4)
/* 00094 809EADD4 8D29E664 */  lw      $t1, %lo(gSaveContext+4)($t1)
/* 00098 809EADD8 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 0009C 809EADDC 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 000A0 809EADE0 15200004 */  bne     $t1, $zero, .L809EADF4
/* 000A4 809EADE4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000A8 809EADE8 240A000E */  addiu   $t2, $zero, 0x000E         ## $t2 = 0000000E
/* 000AC 809EADEC 10000003 */  beq     $zero, $zero, .L809EADFC
/* 000B0 809EADF0 A20A00AF */  sb      $t2, 0x00AF($s0)           ## 000000AF
.L809EADF4:
/* 000B4 809EADF4 240B0014 */  addiu   $t3, $zero, 0x0014         ## $t3 = 00000014
/* 000B8 809EADF8 A20B00AF */  sb      $t3, 0x00AF($s0)           ## 000000AF
.L809EADFC:
/* 000BC 809EADFC 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 000C0 809EAE00 A20D0258 */  sb      $t5, 0x0258($s0)           ## 00000258
/* 000C4 809EAE04 A20D025A */  sb      $t5, 0x025A($s0)           ## 0000025A
/* 000C8 809EAE08 01C17824 */  and     $t7, $t6, $at
/* 000CC 809EAE0C AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 000D0 809EAE10 26050260 */  addiu   $a1, $s0, 0x0260           ## $a1 = 00000260
/* 000D4 809EAE14 0C0170D9 */  jal     Collider_InitCylinder

/* 000D8 809EAE18 AFA50030 */  sw      $a1, 0x0030($sp)
/* 000DC 809EAE1C 3C07809F */  lui     $a3, %hi(D_809EC5C0)       ## $a3 = 809F0000
/* 000E0 809EAE20 8FA50030 */  lw      $a1, 0x0030($sp)
/* 000E4 809EAE24 24E7C5C0 */  addiu   $a3, $a3, %lo(D_809EC5C0)  ## $a3 = 809EC5C0
/* 000E8 809EAE28 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000EC 809EAE2C 0C01712B */  jal     Collider_SetCylinder

/* 000F0 809EAE30 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000F4 809EAE34 260502AC */  addiu   $a1, $s0, 0x02AC           ## $a1 = 000002AC
/* 000F8 809EAE38 AFA50030 */  sw      $a1, 0x0030($sp)
/* 000FC 809EAE3C 0C016EFE */  jal     Collider_InitJntSph
/* 00100 809EAE40 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00104 809EAE44 3C07809F */  lui     $a3, %hi(D_809EC610)       ## $a3 = 809F0000
/* 00108 809EAE48 261802CC */  addiu   $t8, $s0, 0x02CC           ## $t8 = 000002CC
/* 0010C 809EAE4C 8FA50030 */  lw      $a1, 0x0030($sp)
/* 00110 809EAE50 AFB80010 */  sw      $t8, 0x0010($sp)
/* 00114 809EAE54 24E7C610 */  addiu   $a3, $a3, %lo(D_809EC610)  ## $a3 = 809EC610
/* 00118 809EAE58 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0011C 809EAE5C 0C017014 */  jal     Collider_SetJntSph
/* 00120 809EAE60 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00124 809EAE64 0C27AC17 */  jal     func_809EB05C
/* 00128 809EAE68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0012C 809EAE6C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00130 809EAE70 8FB00024 */  lw      $s0, 0x0024($sp)
/* 00134 809EAE74 8FB10028 */  lw      $s1, 0x0028($sp)
/* 00138 809EAE78 03E00008 */  jr      $ra
/* 0013C 809EAE7C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
