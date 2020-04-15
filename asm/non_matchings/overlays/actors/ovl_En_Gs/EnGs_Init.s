glabel EnGs_Init
/* 00000 80A4E320 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00004 80A4E324 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00008 80A4E328 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0000C 80A4E32C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00010 80A4E330 3C0580A5 */  lui     $a1, %hi(D_80A4FDF8)       ## $a1 = 80A50000
/* 00014 80A4E334 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 80A4E338 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0001C 80A4E33C 24A5FDF8 */  addiu   $a1, $a1, %lo(D_80A4FDF8)  ## $a1 = 80A4FDF8
/* 00020 80A4E340 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00024 80A4E344 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00028 80A4E348 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 0002C 80A4E34C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00030 80A4E350 3C0780A5 */  lui     $a3, %hi(D_80A4FDA0)       ## $a3 = 80A50000
/* 00034 80A4E354 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00038 80A4E358 24E7FDA0 */  addiu   $a3, $a3, %lo(D_80A4FDA0)  ## $a3 = 80A4FDA0
/* 0003C 80A4E35C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00040 80A4E360 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00044 80A4E364 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00048 80A4E368 3C0580A5 */  lui     $a1, %hi(D_80A4FDD8)       ## $a1 = 80A50000
/* 0004C 80A4E36C 3C0680A5 */  lui     $a2, %hi(D_80A4FDCC)       ## $a2 = 80A50000
/* 00050 80A4E370 24C6FDCC */  addiu   $a2, $a2, %lo(D_80A4FDCC)  ## $a2 = 80A4FDCC
/* 00054 80A4E374 24A5FDD8 */  addiu   $a1, $a1, %lo(D_80A4FDD8)  ## $a1 = 80A4FDD8
/* 00058 80A4E378 0C0187BF */  jal     func_80061EFC              
/* 0005C 80A4E37C 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 00060 80A4E380 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00064 80A4E384 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00068 80A4E388 8E180024 */  lw      $t8, 0x0024($s0)           ## 00000024
/* 0006C 80A4E38C 8E0F0028 */  lw      $t7, 0x0028($s0)           ## 00000028
/* 00070 80A4E390 3C1980A5 */  lui     $t9, %hi(func_80A4F734)    ## $t9 = 80A50000
/* 00074 80A4E394 AE1801D8 */  sw      $t8, 0x01D8($s0)           ## 000001D8
/* 00078 80A4E398 8E18002C */  lw      $t8, 0x002C($s0)           ## 0000002C
/* 0007C 80A4E39C 240E0006 */  addiu   $t6, $zero, 0x0006         ## $t6 = 00000006
/* 00080 80A4E3A0 2739F734 */  addiu   $t9, $t9, %lo(func_80A4F734) ## $t9 = 80A4F734
/* 00084 80A4E3A4 A20E001F */  sb      $t6, 0x001F($s0)           ## 0000001F
/* 00088 80A4E3A8 AE190198 */  sw      $t9, 0x0198($s0)           ## 00000198
/* 0008C 80A4E3AC E60001B4 */  swc1    $f0, 0x01B4($s0)           ## 000001B4
/* 00090 80A4E3B0 E60001B8 */  swc1    $f0, 0x01B8($s0)           ## 000001B8
/* 00094 80A4E3B4 E60001BC */  swc1    $f0, 0x01BC($s0)           ## 000001BC
/* 00098 80A4E3B8 E60001C0 */  swc1    $f0, 0x01C0($s0)           ## 000001C0
/* 0009C 80A4E3BC E60001C4 */  swc1    $f0, 0x01C4($s0)           ## 000001C4
/* 000A0 80A4E3C0 E60001C8 */  swc1    $f0, 0x01C8($s0)           ## 000001C8
/* 000A4 80A4E3C4 AE0F01DC */  sw      $t7, 0x01DC($s0)           ## 000001DC
/* 000A8 80A4E3C8 AE1801E0 */  sw      $t8, 0x01E0($s0)           ## 000001E0
/* 000AC 80A4E3CC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 000B0 80A4E3D0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 000B4 80A4E3D4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 000B8 80A4E3D8 03E00008 */  jr      $ra                        
/* 000BC 80A4E3DC 00000000 */  nop
