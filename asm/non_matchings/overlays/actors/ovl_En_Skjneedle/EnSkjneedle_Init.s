glabel EnSkjneedle_Init
/* 00000 80B01EB0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00004 80B01EB4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00008 80B01EB8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0000C 80B01EBC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00010 80B01EC0 3C0580B0 */  lui     $a1, %hi(D_80B021AC)       ## $a1 = 80B00000
/* 00014 80B01EC4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 80B01EC8 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0001C 80B01ECC 24A521AC */  addiu   $a1, $a1, %lo(D_80B021AC)  ## $a1 = 80B021AC
/* 00020 80B01ED0 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 00024 80B01ED4 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00028 80B01ED8 0C0170D9 */  jal     Collider_InitCylinder
              
/* 0002C 80B01EDC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00030 80B01EE0 3C0780B0 */  lui     $a3, %hi(D_80B02180)       ## $a3 = 80B00000
/* 00034 80B01EE4 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00038 80B01EE8 24E72180 */  addiu   $a3, $a3, %lo(D_80B02180)  ## $a3 = 80B02180
/* 0003C 80B01EEC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00040 80B01EF0 0C017114 */  jal     Collider_SetCylinder_Set3              
/* 00044 80B01EF4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00048 80B01EF8 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 0004C 80B01EFC 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 00050 80B01F00 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00054 80B01F04 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00058 80B01F08 0C00AC78 */  jal     ActorShape_Init
              
/* 0005C 80B01F0C 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 00060 80B01F10 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 00064 80B01F14 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00068 80B01F18 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 0006C 80B01F1C 01C17824 */  and     $t7, $t6, $at              
/* 00070 80B01F20 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 00074 80B01F24 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00078 80B01F28 0C00B58B */  jal     Actor_SetScale
              
/* 0007C 80B01F2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00080 80B01F30 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00084 80B01F34 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00088 80B01F38 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0008C 80B01F3C 03E00008 */  jr      $ra                        
/* 00090 80B01F40 00000000 */  nop
