glabel EnHs2_Init
/* 00000 80A6EFA0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00004 80A6EFA4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00008 80A6EFA8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0000C 80A6EFAC AFBF002C */  sw      $ra, 0x002C($sp)
/* 00010 80A6EFB0 AFA50044 */  sw      $a1, 0x0044($sp)
/* 00014 80A6EFB4 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00018 80A6EFB8 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 0001C 80A6EFBC 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00020 80A6EFC0 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 00024 80A6EFC4 0C00AC78 */  jal     ActorShape_Init

/* 00028 80A6EFC8 3C074210 */  lui     $a3, 0x4210                ## $a3 = 42100000
/* 0002C 80A6EFCC 26050198 */  addiu   $a1, $s0, 0x0198           ## $a1 = 00000198
/* 00030 80A6EFD0 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00034 80A6EFD4 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00038 80A6EFD8 260E01DC */  addiu   $t6, $s0, 0x01DC           ## $t6 = 000001DC
/* 0003C 80A6EFDC 260F023C */  addiu   $t7, $s0, 0x023C           ## $t7 = 0000023C
/* 00040 80A6EFE0 24180010 */  addiu   $t8, $zero, 0x0010         ## $t8 = 00000010
/* 00044 80A6EFE4 AFB80018 */  sw      $t8, 0x0018($sp)
/* 00048 80A6EFE8 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 0004C 80A6EFEC AFAE0010 */  sw      $t6, 0x0010($sp)
/* 00050 80A6EFF0 24E705C0 */  addiu   $a3, $a3, 0x05C0           ## $a3 = 060005C0
/* 00054 80A6EFF4 24C66260 */  addiu   $a2, $a2, 0x6260           ## $a2 = 06006260
/* 00058 80A6EFF8 AFA50034 */  sw      $a1, 0x0034($sp)
/* 0005C 80A6EFFC 0C0291BE */  jal     SkelAnime_InitSV
/* 00060 80A6F000 8FA40044 */  lw      $a0, 0x0044($sp)
/* 00064 80A6F004 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00068 80A6F008 24A505C0 */  addiu   $a1, $a1, 0x05C0           ## $a1 = 060005C0
/* 0006C 80A6F00C 0C0294BE */  jal     SkelAnime_ChangeAnimationDefault
/* 00070 80A6F010 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00074 80A6F014 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00078 80A6F018 AFA50034 */  sw      $a1, 0x0034($sp)
/* 0007C 80A6F01C 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 00080 80A6F020 8FA40044 */  lw      $a0, 0x0044($sp)
/* 00084 80A6F024 3C0780A7 */  lui     $a3, %hi(D_80A6F4A0)       ## $a3 = 80A70000
/* 00088 80A6F028 8FA50034 */  lw      $a1, 0x0034($sp)
/* 0008C 80A6F02C 24E7F4A0 */  addiu   $a3, $a3, %lo(D_80A6F4A0)  ## $a3 = 80A6F4A0
/* 00090 80A6F030 8FA40044 */  lw      $a0, 0x0044($sp)
/* 00094 80A6F034 0C01712B */  jal     ActorCollider_InitCylinder

/* 00098 80A6F038 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0009C 80A6F03C 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 000A0 80A6F040 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 000A4 80A6F044 A21900AE */  sb      $t9, 0x00AE($s0)           ## 000000AE
/* 000A8 80A6F048 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 000AC 80A6F04C 0C00B58B */  jal     Actor_SetScale

/* 000B0 80A6F050 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000B4 80A6F054 3C0480A7 */  lui     $a0, %hi(D_80A6F4E0)       ## $a0 = 80A70000
/* 000B8 80A6F058 0C00084C */  jal     osSyncPrintf

/* 000BC 80A6F05C 2484F4E0 */  addiu   $a0, $a0, %lo(D_80A6F4E0)  ## $a0 = 80A6F4E0
/* 000C0 80A6F060 3C0880A7 */  lui     $t0, %hi(func_80A6F1A4)    ## $t0 = 80A70000
/* 000C4 80A6F064 2508F1A4 */  addiu   $t0, $t0, %lo(func_80A6F1A4) ## $t0 = 80A6F1A4
/* 000C8 80A6F068 24090006 */  addiu   $t1, $zero, 0x0006         ## $t1 = 00000006
/* 000CC 80A6F06C AE0802AC */  sw      $t0, 0x02AC($s0)           ## 000002AC
/* 000D0 80A6F070 A60002A8 */  sh      $zero, 0x02A8($s0)         ## 000002A8
/* 000D4 80A6F074 A209001F */  sb      $t1, 0x001F($s0)           ## 0000001F
/* 000D8 80A6F078 8FBF002C */  lw      $ra, 0x002C($sp)
/* 000DC 80A6F07C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 000E0 80A6F080 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 000E4 80A6F084 03E00008 */  jr      $ra
/* 000E8 80A6F088 00000000 */  nop


