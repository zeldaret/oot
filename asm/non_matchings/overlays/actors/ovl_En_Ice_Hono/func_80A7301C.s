glabel func_80A7301C
/* 0002C 80A7301C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00030 80A73020 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00034 80A73024 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00038 80A73028 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0003C 80A7302C 3C0580A7 */  lui     $a1, %hi(D_80A74068)       ## $a1 = 80A70000
/* 00040 80A73030 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00044 80A73034 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00048 80A73038 24A54068 */  addiu   $a1, $a1, %lo(D_80A74068)  ## $a1 = 80A74068
/* 0004C 80A7303C 3C053BF2 */  lui     $a1, 0x3BF2                ## $a1 = 3BF20000
/* 00050 80A73040 34A57BB3 */  ori     $a1, $a1, 0x7BB3           ## $a1 = 3BF27BB3
/* 00054 80A73044 0C00B58B */  jal     Actor_SetScale
              
/* 00058 80A73048 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0005C 80A7304C 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 00060 80A73050 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00064 80A73054 3C054120 */  lui     $a1, 0x4120                ## $a1 = 41200000
/* 00068 80A73058 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 0006C 80A7305C 0C00B56E */  jal     Actor_SetHeight
              
/* 00070 80A73060 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 00074 80A73064 2605015C */  addiu   $a1, $s0, 0x015C           ## $a1 = 0000015C
/* 00078 80A73068 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 0007C 80A7306C 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00080 80A73070 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00084 80A73074 3C0780A7 */  lui     $a3, %hi(D_80A74010)       ## $a3 = 80A70000
/* 00088 80A73078 24E74010 */  addiu   $a3, $a3, %lo(D_80A74010)  ## $a3 = 80A74010
/* 0008C 80A7307C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00090 80A73080 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00094 80A73084 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00098 80A73088 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0009C 80A7308C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000A0 80A73090 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 000A4 80A73094 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 000A8 80A73098 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 000AC 80A7309C A21800AE */  sb      $t8, 0x00AE($s0)           ## 000000AE
/* 000B0 80A730A0 0C29CD35 */  jal     func_80A734D4              
/* 000B4 80A730A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000B8 80A730A8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 000BC 80A730AC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 000C0 80A730B0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 000C4 80A730B4 03E00008 */  jr      $ra                        
/* 000C8 80A730B8 00000000 */  nop
