glabel EnSb_Init
/* 00000 80AF77F0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 80AF77F4 AFA5003C */  sw      $a1, 0x003C($sp)
/* 00008 80AF77F8 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0000C 80AF77FC AFB00028 */  sw      $s0, 0x0028($sp)
/* 00010 80AF7800 3C0580B0 */  lui     $a1, %hi(D_80AF8A1C)       ## $a1 = 80B00000
/* 00014 80AF7804 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 80AF7808 0C01E037 */  jal     Actor_ProcessInitChain

/* 0001C 80AF780C 24A58A1C */  addiu   $a1, $a1, %lo(D_80AF8A1C)  ## $a1 = 80AF8A1C
/* 00020 80AF7810 3C0E80B0 */  lui     $t6, %hi(D_80AF89FC)       ## $t6 = 80B00000
/* 00024 80AF7814 25CE89FC */  addiu   $t6, $t6, %lo(D_80AF89FC)  ## $t6 = 80AF89FC
/* 00028 80AF7818 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 0002C 80AF781C AE0E0098 */  sw      $t6, 0x0098($s0)           ## 00000098
/* 00030 80AF7820 A20F00AF */  sb      $t7, 0x00AF($s0)           ## 000000AF
/* 00034 80AF7824 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00038 80AF7828 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 0003C 80AF782C 24E70194 */  addiu   $a3, $a3, 0x0194           ## $a3 = 06000194
/* 00040 80AF7830 24C62BF0 */  addiu   $a2, $a2, 0x2BF0           ## $a2 = 06002BF0
/* 00044 80AF7834 AFA00018 */  sw      $zero, 0x0018($sp)
/* 00048 80AF7838 AFA00014 */  sw      $zero, 0x0014($sp)
/* 0004C 80AF783C AFA00010 */  sw      $zero, 0x0010($sp)
/* 00050 80AF7840 8FA4003C */  lw      $a0, 0x003C($sp)
/* 00054 80AF7844 0C0291BE */  jal     SkelAnime_InitSV
/* 00058 80AF7848 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 0005C 80AF784C 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 00060 80AF7850 AFA50030 */  sw      $a1, 0x0030($sp)
/* 00064 80AF7854 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 00068 80AF7858 8FA4003C */  lw      $a0, 0x003C($sp)
/* 0006C 80AF785C 3C0780B0 */  lui     $a3, %hi(D_80AF89D0)       ## $a3 = 80B00000
/* 00070 80AF7860 8FA50030 */  lw      $a1, 0x0030($sp)
/* 00074 80AF7864 24E789D0 */  addiu   $a3, $a3, %lo(D_80AF89D0)  ## $a3 = 80AF89D0
/* 00078 80AF7868 8FA4003C */  lw      $a0, 0x003C($sp)
/* 0007C 80AF786C 0C017114 */  jal     func_8005C450
/* 00080 80AF7870 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00084 80AF7874 3C053BC4 */  lui     $a1, 0x3BC4                ## $a1 = 3BC40000
/* 00088 80AF7878 A60001FC */  sh      $zero, 0x01FC($s0)         ## 000001FC
/* 0008C 80AF787C A20000AE */  sb      $zero, 0x00AE($s0)         ## 000000AE
/* 00090 80AF7880 34A59BA6 */  ori     $a1, $a1, 0x9BA6           ## $a1 = 3BC49BA6
/* 00094 80AF7884 0C00B58B */  jal     Actor_SetScale

/* 00098 80AF7888 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0009C 80AF788C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 000A0 80AF7890 A60000B6 */  sh      $zero, 0x00B6($s0)         ## 000000B6
/* 000A4 80AF7894 3C0180B0 */  lui     $at, %hi(D_80AF8A8C)       ## $at = 80B00000
/* 000A8 80AF7898 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 000AC 80AF789C C4268A8C */  lwc1    $f6, %lo(D_80AF8A8C)($at)
/* 000B0 80AF78A0 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 000B4 80AF78A4 44814000 */  mtc1    $at, $f8                   ## $f8 = -1.00
/* 000B8 80AF78A8 A60001F8 */  sh      $zero, 0x01F8($s0)         ## 000001F8
/* 000BC 80AF78AC A2000204 */  sb      $zero, 0x0204($s0)         ## 00000204
/* 000C0 80AF78B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000C4 80AF78B4 E606006C */  swc1    $f6, 0x006C($s0)           ## 0000006C
/* 000C8 80AF78B8 0C2BDE6F */  jal     func_80AF79BC
/* 000CC 80AF78BC E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 000D0 80AF78C0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 000D4 80AF78C4 8FB00028 */  lw      $s0, 0x0028($sp)
/* 000D8 80AF78C8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 000DC 80AF78CC 03E00008 */  jr      $ra
/* 000E0 80AF78D0 00000000 */  nop


