glabel EnJs_Init
/* 00008 80A88E18 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 0000C 80A88E1C AFB10038 */  sw      $s1, 0x0038($sp)
/* 00010 80A88E20 AFB00034 */  sw      $s0, 0x0034($sp)
/* 00014 80A88E24 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 80A88E28 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0001C 80A88E2C AFBF003C */  sw      $ra, 0x003C($sp)
/* 00020 80A88E30 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00024 80A88E34 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 00028 80A88E38 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0002C 80A88E3C 0C00AC78 */  jal     ActorShape_Init

/* 00030 80A88E40 3C074210 */  lui     $a3, 0x4210                ## $a3 = 42100000
/* 00034 80A88E44 26050198 */  addiu   $a1, $s0, 0x0198           ## $a1 = 00000198
/* 00038 80A88E48 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 0003C 80A88E4C 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00040 80A88E50 260E01DC */  addiu   $t6, $s0, 0x01DC           ## $t6 = 000001DC
/* 00044 80A88E54 260F022A */  addiu   $t7, $s0, 0x022A           ## $t7 = 0000022A
/* 00048 80A88E58 2418000D */  addiu   $t8, $zero, 0x000D         ## $t8 = 0000000D
/* 0004C 80A88E5C AFB80018 */  sw      $t8, 0x0018($sp)
/* 00050 80A88E60 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 00054 80A88E64 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 00058 80A88E68 24E7045C */  addiu   $a3, $a3, 0x045C           ## $a3 = 0600045C
/* 0005C 80A88E6C 24C65EA0 */  addiu   $a2, $a2, 0x5EA0           ## $a2 = 06005EA0
/* 00060 80A88E70 AFA50044 */  sw      $a1, 0x0044($sp)
/* 00064 80A88E74 0C0291BE */  jal     SkelAnime_InitSV
/* 00068 80A88E78 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0006C 80A88E7C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00070 80A88E80 24A5045C */  addiu   $a1, $a1, 0x045C           ## $a1 = 0600045C
/* 00074 80A88E84 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 00078 80A88E88 8FA40044 */  lw      $a0, 0x0044($sp)
/* 0007C 80A88E8C 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00080 80A88E90 AFA50044 */  sw      $a1, 0x0044($sp)
/* 00084 80A88E94 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 00088 80A88E98 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0008C 80A88E9C 3C0780A9 */  lui     $a3, %hi(D_80A896B0)       ## $a3 = 80A90000
/* 00090 80A88EA0 8FA50044 */  lw      $a1, 0x0044($sp)
/* 00094 80A88EA4 24E796B0 */  addiu   $a3, $a3, %lo(D_80A896B0)  ## $a3 = 80A896B0
/* 00098 80A88EA8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0009C 80A88EAC 0C01712B */  jal     ActorCollider_InitCylinder

/* 000A0 80A88EB0 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000A4 80A88EB4 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 000A8 80A88EB8 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 000AC 80A88EBC A21900AE */  sb      $t9, 0x00AE($s0)           ## 000000AE
/* 000B0 80A88EC0 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 000B4 80A88EC4 0C00B58B */  jal     Actor_SetScale

/* 000B8 80A88EC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000BC 80A88ECC 3C0580A9 */  lui     $a1, %hi(func_80A89304)    ## $a1 = 80A90000
/* 000C0 80A88ED0 24A59304 */  addiu   $a1, $a1, %lo(func_80A89304) ## $a1 = 80A89304
/* 000C4 80A88ED4 0C2A2384 */  jal     func_80A88E10
/* 000C8 80A88ED8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000CC 80A88EDC 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 000D0 80A88EE0 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 000D4 80A88EE4 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 000D8 80A88EE8 A6000284 */  sh      $zero, 0x0284($s0)         ## 00000284
/* 000DC 80A88EEC E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 000E0 80A88EF0 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 000E4 80A88EF4 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 000E8 80A88EF8 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 000EC 80A88EFC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 000F0 80A88F00 E7A80014 */  swc1    $f8, 0x0014($sp)
/* 000F4 80A88F04 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 000F8 80A88F08 AFA00028 */  sw      $zero, 0x0028($sp)
/* 000FC 80A88F0C AFA00024 */  sw      $zero, 0x0024($sp)
/* 00100 80A88F10 AFA00020 */  sw      $zero, 0x0020($sp)
/* 00104 80A88F14 AFA0001C */  sw      $zero, 0x001C($sp)
/* 00108 80A88F18 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 0010C 80A88F1C 2407016B */  addiu   $a3, $zero, 0x016B         ## $a3 = 0000016B
/* 00110 80A88F20 0C00C916 */  jal     Actor_SpawnAttached

/* 00114 80A88F24 E7AA0018 */  swc1    $f10, 0x0018($sp)
/* 00118 80A88F28 8FBF003C */  lw      $ra, 0x003C($sp)
/* 0011C 80A88F2C 8FB00034 */  lw      $s0, 0x0034($sp)
/* 00120 80A88F30 8FB10038 */  lw      $s1, 0x0038($sp)
/* 00124 80A88F34 03E00008 */  jr      $ra
/* 00128 80A88F38 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000


