glabel EnFu_Init
/* 00000 80A1D810 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00004 80A1D814 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00008 80A1D818 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0000C 80A1D81C AFBF002C */  sw      $ra, 0x002C($sp)
/* 00010 80A1D820 AFA50044 */  sw      $a1, 0x0044($sp)
/* 00014 80A1D824 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00018 80A1D828 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 0001C 80A1D82C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00020 80A1D830 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 00024 80A1D834 0C00AC78 */  jal     ActorShape_Init

/* 00028 80A1D838 3C074210 */  lui     $a3, 0x4210                ## $a3 = 42100000
/* 0002C 80A1D83C 26050198 */  addiu   $a1, $s0, 0x0198           ## $a1 = 00000198
/* 00030 80A1D840 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00034 80A1D844 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00038 80A1D848 260E01DC */  addiu   $t6, $s0, 0x01DC           ## $t6 = 000001DC
/* 0003C 80A1D84C 260F023C */  addiu   $t7, $s0, 0x023C           ## $t7 = 0000023C
/* 00040 80A1D850 24180010 */  addiu   $t8, $zero, 0x0010         ## $t8 = 00000010
/* 00044 80A1D854 AFB80018 */  sw      $t8, 0x0018($sp)
/* 00048 80A1D858 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 0004C 80A1D85C AFAE0010 */  sw      $t6, 0x0010($sp)
/* 00050 80A1D860 24E70B04 */  addiu   $a3, $a3, 0x0B04           ## $a3 = 06000B04
/* 00054 80A1D864 24C66C90 */  addiu   $a2, $a2, 0x6C90           ## $a2 = 06006C90
/* 00058 80A1D868 AFA50034 */  sw      $a1, 0x0034($sp)
/* 0005C 80A1D86C 0C0291BE */  jal     SkelAnime_InitSV
/* 00060 80A1D870 8FA40044 */  lw      $a0, 0x0044($sp)
/* 00064 80A1D874 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00068 80A1D878 24A50B04 */  addiu   $a1, $a1, 0x0B04           ## $a1 = 06000B04
/* 0006C 80A1D87C 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 00070 80A1D880 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00074 80A1D884 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00078 80A1D888 AFA50034 */  sw      $a1, 0x0034($sp)
/* 0007C 80A1D88C 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 00080 80A1D890 8FA40044 */  lw      $a0, 0x0044($sp)
/* 00084 80A1D894 3C0780A2 */  lui     $a3, %hi(D_80A1E420)       ## $a3 = 80A20000
/* 00088 80A1D898 8FA50034 */  lw      $a1, 0x0034($sp)
/* 0008C 80A1D89C 24E7E420 */  addiu   $a3, $a3, %lo(D_80A1E420)  ## $a3 = 80A1E420
/* 00090 80A1D8A0 8FA40044 */  lw      $a0, 0x0044($sp)
/* 00094 80A1D8A4 0C01712B */  jal     ActorCollider_InitCylinder

/* 00098 80A1D8A8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0009C 80A1D8AC 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 000A0 80A1D8B0 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 000A4 80A1D8B4 A21900AE */  sb      $t9, 0x00AE($s0)           ## 000000AE
/* 000A8 80A1D8B8 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 000AC 80A1D8BC 0C00B58B */  jal     Actor_SetScale

/* 000B0 80A1D8C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000B4 80A1D8C4 3C088016 */  lui     $t0, %hi(gSaveContext+4)
/* 000B8 80A1D8C8 8D08E664 */  lw      $t0, %lo(gSaveContext+4)($t0)
/* 000BC 80A1D8CC 3C0A80A2 */  lui     $t2, %hi(func_80A1DE24)    ## $t2 = 80A20000
/* 000C0 80A1D8D0 254ADE24 */  addiu   $t2, $t2, %lo(func_80A1DE24) ## $t2 = 80A1DE24
/* 000C4 80A1D8D4 11000006 */  beq     $t0, $zero, .L80A1D8F0
/* 000C8 80A1D8D8 240C0006 */  addiu   $t4, $zero, 0x0006         ## $t4 = 00000006
/* 000CC 80A1D8DC 3C0980A2 */  lui     $t1, %hi(func_80A1DA9C)    ## $t1 = 80A20000
/* 000D0 80A1D8E0 2529DA9C */  addiu   $t1, $t1, %lo(func_80A1DA9C) ## $t1 = 80A1DA9C
/* 000D4 80A1D8E4 AE0902AC */  sw      $t1, 0x02AC($s0)           ## 000002AC
/* 000D8 80A1D8E8 10000007 */  beq     $zero, $zero, .L80A1D908
/* 000DC 80A1D8EC A60002AA */  sh      $zero, 0x02AA($s0)         ## 000002AA
.L80A1D8F0:
/* 000E0 80A1D8F0 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 000E4 80A1D8F4 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 000E8 80A1D8F8 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 000EC 80A1D8FC AE0A02AC */  sw      $t2, 0x02AC($s0)           ## 000002AC
/* 000F0 80A1D900 A60B02AA */  sh      $t3, 0x02AA($s0)           ## 000002AA
/* 000F4 80A1D904 E60401B4 */  swc1    $f4, 0x01B4($s0)           ## 000001B4
.L80A1D908:
/* 000F8 80A1D908 A60002A8 */  sh      $zero, 0x02A8($s0)         ## 000002A8
/* 000FC 80A1D90C A20C001F */  sb      $t4, 0x001F($s0)           ## 0000001F
/* 00100 80A1D910 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00104 80A1D914 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00108 80A1D918 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0010C 80A1D91C 03E00008 */  jr      $ra
/* 00110 80A1D920 00000000 */  nop
