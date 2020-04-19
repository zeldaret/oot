.rdata
glabel D_80A6EE10
    .asciz "[36m ヒヨコの店(大人の時) \n[m"
    .balign 4

glabel D_80A6EE30
    .asciz "[36m ヒヨコ屋閉店 \n[m"
    .balign 4

glabel D_80A6EE48
    .asciz "[36m ヒヨコの店(子人の時) \n[m"
    .balign 4

.text
glabel EnHs_Init
/* 00008 80A6E3A8 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0000C 80A6E3AC AFB00028 */  sw      $s0, 0x0028($sp)
/* 00010 80A6E3B0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00014 80A6E3B4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00018 80A6E3B8 AFA50044 */  sw      $a1, 0x0044($sp)
/* 0001C 80A6E3BC 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00020 80A6E3C0 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 00024 80A6E3C4 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00028 80A6E3C8 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 0002C 80A6E3CC 0C00AC78 */  jal     ActorShape_Init

/* 00030 80A6E3D0 3C074210 */  lui     $a3, 0x4210                ## $a3 = 42100000
/* 00034 80A6E3D4 26050198 */  addiu   $a1, $s0, 0x0198           ## $a1 = 00000198
/* 00038 80A6E3D8 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 0003C 80A6E3DC 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00040 80A6E3E0 260E01DC */  addiu   $t6, $s0, 0x01DC           ## $t6 = 000001DC
/* 00044 80A6E3E4 260F023C */  addiu   $t7, $s0, 0x023C           ## $t7 = 0000023C
/* 00048 80A6E3E8 24180010 */  addiu   $t8, $zero, 0x0010         ## $t8 = 00000010
/* 0004C 80A6E3EC AFB80018 */  sw      $t8, 0x0018($sp)
/* 00050 80A6E3F0 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 00054 80A6E3F4 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 00058 80A6E3F8 24E705C0 */  addiu   $a3, $a3, 0x05C0           ## $a3 = 060005C0
/* 0005C 80A6E3FC 24C66260 */  addiu   $a2, $a2, 0x6260           ## $a2 = 06006260
/* 00060 80A6E400 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00064 80A6E404 0C0291BE */  jal     SkelAnime_InitSV
/* 00068 80A6E408 8FA40044 */  lw      $a0, 0x0044($sp)
/* 0006C 80A6E40C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00070 80A6E410 24A505C0 */  addiu   $a1, $a1, 0x05C0           ## $a1 = 060005C0
/* 00074 80A6E414 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 00078 80A6E418 8FA40034 */  lw      $a0, 0x0034($sp)
/* 0007C 80A6E41C 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00080 80A6E420 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00084 80A6E424 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 00088 80A6E428 8FA40044 */  lw      $a0, 0x0044($sp)
/* 0008C 80A6E42C 3C0780A7 */  lui     $a3, %hi(D_80A6EDD0)       ## $a3 = 80A70000
/* 00090 80A6E430 8FA50034 */  lw      $a1, 0x0034($sp)
/* 00094 80A6E434 24E7EDD0 */  addiu   $a3, $a3, %lo(D_80A6EDD0)  ## $a3 = 80A6EDD0
/* 00098 80A6E438 8FA40044 */  lw      $a0, 0x0044($sp)
/* 0009C 80A6E43C 0C01712B */  jal     ActorCollider_InitCylinder

/* 000A0 80A6E440 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000A4 80A6E444 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 000A8 80A6E448 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 000AC 80A6E44C A21900AE */  sb      $t9, 0x00AE($s0)           ## 000000AE
/* 000B0 80A6E450 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 000B4 80A6E454 0C00B58B */  jal     Actor_SetScale

/* 000B8 80A6E458 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000BC 80A6E45C 3C088016 */  lui     $t0, %hi(gSaveContext+4)
/* 000C0 80A6E460 8D08E664 */  lw      $t0, %lo(gSaveContext+4)($t0)
/* 000C4 80A6E464 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 000C8 80A6E468 3C0480A7 */  lui     $a0, %hi(D_80A6EE48)       ## $a0 = 80A70000
/* 000CC 80A6E46C 51000004 */  beql    $t0, $zero, .L80A6E480
/* 000D0 80A6E470 A609001C */  sh      $t1, 0x001C($s0)           ## 0000001C
/* 000D4 80A6E474 10000002 */  beq     $zero, $zero, .L80A6E480
/* 000D8 80A6E478 A600001C */  sh      $zero, 0x001C($s0)         ## 0000001C
/* 000DC 80A6E47C A609001C */  sh      $t1, 0x001C($s0)           ## 0000001C
.L80A6E480:
/* 000E0 80A6E480 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 000E4 80A6E484 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 000E8 80A6E488 15410014 */  bne     $t2, $at, .L80A6E4DC
/* 000EC 80A6E48C 00000000 */  nop
/* 000F0 80A6E490 3C0480A7 */  lui     $a0, %hi(D_80A6EE10)       ## $a0 = 80A70000
/* 000F4 80A6E494 0C00084C */  jal     osSyncPrintf

/* 000F8 80A6E498 2484EE10 */  addiu   $a0, $a0, %lo(D_80A6EE10)  ## $a0 = 80A6EE10
/* 000FC 80A6E49C 3C0580A7 */  lui     $a1, %hi(func_80A6E9AC)    ## $a1 = 80A70000
/* 00100 80A6E4A0 24A5E9AC */  addiu   $a1, $a1, %lo(func_80A6E9AC) ## $a1 = 80A6E9AC
/* 00104 80A6E4A4 0C29B8E8 */  jal     func_80A6E3A0
/* 00108 80A6E4A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0010C 80A6E4AC 3C0B8016 */  lui     $t3, %hi(gSaveContext+0xef6)
/* 00110 80A6E4B0 956BF556 */  lhu     $t3, %lo(gSaveContext+0xef6)($t3)
/* 00114 80A6E4B4 3C0480A7 */  lui     $a0, %hi(D_80A6EE30)       ## $a0 = 80A70000
/* 00118 80A6E4B8 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 0011C 80A6E4BC 5180000E */  beql    $t4, $zero, .L80A6E4F8
/* 00120 80A6E4C0 240D0006 */  addiu   $t5, $zero, 0x0006         ## $t5 = 00000006
/* 00124 80A6E4C4 0C00084C */  jal     osSyncPrintf

/* 00128 80A6E4C8 2484EE30 */  addiu   $a0, $a0, %lo(D_80A6EE30)  ## $a0 = 80A6EE30
/* 0012C 80A6E4CC 0C00B55C */  jal     Actor_Kill

/* 00130 80A6E4D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00134 80A6E4D4 10000008 */  beq     $zero, $zero, .L80A6E4F8
/* 00138 80A6E4D8 240D0006 */  addiu   $t5, $zero, 0x0006         ## $t5 = 00000006
.L80A6E4DC:
/* 0013C 80A6E4DC 0C00084C */  jal     osSyncPrintf

/* 00140 80A6E4E0 2484EE48 */  addiu   $a0, $a0, %lo(D_80A6EE48)  ## $a0 = FFFFEE48
/* 00144 80A6E4E4 3C0580A7 */  lui     $a1, %hi(func_80A6E9AC)    ## $a1 = 80A70000
/* 00148 80A6E4E8 24A5E9AC */  addiu   $a1, $a1, %lo(func_80A6E9AC) ## $a1 = 80A6E9AC
/* 0014C 80A6E4EC 0C29B8E8 */  jal     func_80A6E3A0
/* 00150 80A6E4F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00154 80A6E4F4 240D0006 */  addiu   $t5, $zero, 0x0006         ## $t5 = 00000006
.L80A6E4F8:
/* 00158 80A6E4F8 A60002A8 */  sh      $zero, 0x02A8($s0)         ## 000002A8
/* 0015C 80A6E4FC A20D001F */  sb      $t5, 0x001F($s0)           ## 0000001F
/* 00160 80A6E500 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00164 80A6E504 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00168 80A6E508 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0016C 80A6E50C 03E00008 */  jr      $ra
/* 00170 80A6E510 00000000 */  nop
