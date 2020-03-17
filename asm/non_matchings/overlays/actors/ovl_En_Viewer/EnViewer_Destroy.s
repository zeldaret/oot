glabel EnViewer_Destroy
/* 000D8 80B2A2D8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000DC 80B2A2DC 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 000E0 80B2A2E0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000E4 80B2A2E4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000E8 80B2A2E8 0C029A22 */  jal     func_800A6888              
/* 000EC 80B2A2EC 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
/* 000F0 80B2A2F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000F4 80B2A2F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000F8 80B2A2F8 03E00008 */  jr      $ra                        
/* 000FC 80B2A2FC 00000000 */  nop


