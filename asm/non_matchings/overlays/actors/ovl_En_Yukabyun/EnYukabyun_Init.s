glabel EnYukabyun_Init
/* 00000 80B439C0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00004 80B439C4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00008 80B439C8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0000C 80B439CC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00010 80B439D0 3C0580B4 */  lui     $a1, %hi(D_80B43F5C)       ## $a1 = 80B40000
/* 00014 80B439D4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 80B439D8 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0001C 80B439DC 24A53F5C */  addiu   $a1, $a1, %lo(D_80B43F5C)  ## $a1 = 80B43F5C
/* 00020 80B439E0 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00024 80B439E4 3C073ECC */  lui     $a3, 0x3ECC                ## $a3 = 3ECC0000
/* 00028 80B439E8 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3ECCCCCD
/* 0002C 80B439EC 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 00030 80B439F0 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00034 80B439F4 0C00AC78 */  jal     ActorShape_Init
              
/* 00038 80B439F8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0003C 80B439FC 26050154 */  addiu   $a1, $s0, 0x0154           ## $a1 = 00000154
/* 00040 80B43A00 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00044 80B43A04 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00048 80B43A08 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0004C 80B43A0C 3C0780B4 */  lui     $a3, %hi(D_80B43F30)       ## $a3 = 80B40000
/* 00050 80B43A10 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00054 80B43A14 24E73F30 */  addiu   $a3, $a3, %lo(D_80B43F30)  ## $a3 = 80B43F30
/* 00058 80B43A18 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0005C 80B43A1C 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00060 80B43A20 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00064 80B43A24 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00068 80B43A28 3C0980B4 */  lui     $t1, %hi(func_80B43A94)    ## $t1 = 80B40000
/* 0006C 80B43A2C 25293A94 */  addiu   $t1, $t1, %lo(func_80B43A94) ## $t1 = 80B43A94
/* 00070 80B43A30 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00074 80B43A34 A60F001C */  sh      $t7, 0x001C($s0)           ## 0000001C
/* 00078 80B43A38 9218001D */  lbu     $t8, 0x001D($s0)           ## 0000001D
/* 0007C 80B43A3C A2000152 */  sb      $zero, 0x0152($s0)         ## 00000152
/* 00080 80B43A40 AE09014C */  sw      $t1, 0x014C($s0)           ## 0000014C
/* 00084 80B43A44 0018C880 */  sll     $t9, $t8,  2               
/* 00088 80B43A48 0338C821 */  addu    $t9, $t9, $t8              
/* 0008C 80B43A4C 0019C840 */  sll     $t9, $t9,  1               
/* 00090 80B43A50 27280014 */  addiu   $t0, $t9, 0x0014           ## $t0 = 00000014
/* 00094 80B43A54 A6080150 */  sh      $t0, 0x0150($s0)           ## 00000150
/* 00098 80B43A58 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0009C 80B43A5C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 000A0 80B43A60 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 000A4 80B43A64 03E00008 */  jr      $ra                        
/* 000A8 80B43A68 00000000 */  nop
