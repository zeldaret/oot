glabel EnfHG_Destroy
/* 000FC 80B62ABC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00100 80B62AC0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00104 80B62AC4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00108 80B62AC8 3C0480B6 */  lui     $a0, %hi(D_80B65210)       ## $a0 = 80B60000
/* 0010C 80B62ACC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00110 80B62AD0 0C00084C */  jal     osSyncPrintf
              
/* 00114 80B62AD4 24845210 */  addiu   $a0, $a0, %lo(D_80B65210)  ## $a0 = 80B65210
/* 00118 80B62AD8 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0011C 80B62ADC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00120 80B62AE0 0C029A22 */  jal     func_800A6888              
/* 00124 80B62AE4 24A50204 */  addiu   $a1, $a1, 0x0204           ## $a1 = 00000204
/* 00128 80B62AE8 3C0480B6 */  lui     $a0, %hi(D_80B65218)       ## $a0 = 80B60000
/* 0012C 80B62AEC 0C00084C */  jal     osSyncPrintf
              
/* 00130 80B62AF0 24845218 */  addiu   $a0, $a0, %lo(D_80B65218)  ## $a0 = 80B65218
/* 00134 80B62AF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00138 80B62AF8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0013C 80B62AFC 03E00008 */  jr      $ra                        
/* 00140 80B62B00 00000000 */  nop


