glabel EnDodojr_Init
/* 00000 809F63C0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00004 809F63C4 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00008 809F63C8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0000C 809F63CC AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00010 809F63D0 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00014 809F63D4 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00018 809F63D8 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 0001C 809F63DC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00020 809F63E0 0C00AC78 */  jal     ActorShape_Init
              
/* 00024 809F63E4 3C074190 */  lui     $a3, 0x4190                ## $a3 = 41900000
/* 00028 809F63E8 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 0002C 809F63EC 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00030 809F63F0 260E020C */  addiu   $t6, $s0, 0x020C           ## $t6 = 0000020C
/* 00034 809F63F4 260F0266 */  addiu   $t7, $s0, 0x0266           ## $t7 = 00000266
/* 00038 809F63F8 2418000F */  addiu   $t8, $zero, 0x000F         ## $t8 = 0000000F
/* 0003C 809F63FC AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00040 809F6400 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00044 809F6404 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00048 809F6408 24E709D4 */  addiu   $a3, $a3, 0x09D4           ## $a3 = 060009D4
/* 0004C 809F640C 24C620E0 */  addiu   $a2, $a2, 0x20E0           ## $a2 = 060020E0
/* 00050 809F6410 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00054 809F6414 0C02915F */  jal     SkelAnime_Init
              
/* 00058 809F6418 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 0005C 809F641C 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 00060 809F6420 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00064 809F6424 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00068 809F6428 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 0006C 809F642C 3C07809F */  lui     $a3, %hi(D_809F7EB0)       ## $a3 = 809F0000
/* 00070 809F6430 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00074 809F6434 24E77EB0 */  addiu   $a3, $a3, %lo(D_809F7EB0)  ## $a3 = 809F7EB0
/* 00078 809F6438 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 0007C 809F643C 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00080 809F6440 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00084 809F6444 0C016C80 */  jal     CollisionBtlTbl_Get
              
/* 00088 809F6448 24040004 */  addiu   $a0, $zero, 0x0004         ## $a0 = 00000004
/* 0008C 809F644C 3C06809F */  lui     $a2, %hi(D_809F7EDC)       ## $a2 = 809F0000
/* 00090 809F6450 24C67EDC */  addiu   $a2, $a2, %lo(D_809F7EDC)  ## $a2 = 809F7EDC
/* 00094 809F6454 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 00098 809F6458 0C0187BF */  jal     func_80061EFC              
/* 0009C 809F645C 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 000A0 809F6460 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
/* 000A4 809F6464 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 000A8 809F6468 2419000E */  addiu   $t9, $zero, 0x000E         ## $t9 = 0000000E
/* 000AC 809F646C 3C053CA3 */  lui     $a1, 0x3CA3                ## $a1 = 3CA30000
/* 000B0 809F6470 01014824 */  and     $t1, $t0, $at              
/* 000B4 809F6474 A2190117 */  sb      $t9, 0x0117($s0)           ## 00000117
/* 000B8 809F6478 AE090004 */  sw      $t1, 0x0004($s0)           ## 00000004
/* 000BC 809F647C 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3CA3D70A
/* 000C0 809F6480 0C00B58B */  jal     Actor_SetScale
              
/* 000C4 809F6484 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000C8 809F6488 3C0A809F */  lui     $t2, %hi(func_809F73AC)    ## $t2 = 809F0000
/* 000CC 809F648C 254A73AC */  addiu   $t2, $t2, %lo(func_809F73AC) ## $t2 = 809F73AC
/* 000D0 809F6490 AE0A0190 */  sw      $t2, 0x0190($s0)           ## 00000190
/* 000D4 809F6494 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 000D8 809F6498 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 000DC 809F649C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 000E0 809F64A0 03E00008 */  jr      $ra                        
/* 000E4 809F64A4 00000000 */  nop
