glabel func_80AFFD14
/* 01A64 80AFFD14 3C0E80B0 */  lui     $t6, %hi(D_80B01EA0)       ## $t6 = 80B00000
/* 01A68 80AFFD18 8DCE1EA0 */  lw      $t6, %lo(D_80B01EA0)($t6)  
/* 01A6C 80AFFD1C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01A70 80AFFD20 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01A74 80AFFD24 11C00005 */  beq     $t6, $zero, .L80AFFD3C     
/* 01A78 80AFFD28 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01A7C 80AFFD2C 0C2BFF59 */  jal     func_80AFFD64              
/* 01A80 80AFFD30 00000000 */  nop
/* 01A84 80AFFD34 10000008 */  beq     $zero, $zero, .L80AFFD58   
/* 01A88 80AFFD38 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFFD3C:
/* 01A8C 80AFFD3C 0C2BFA5A */  jal     func_80AFE968              
/* 01A90 80AFFD40 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01A94 80AFFD44 44060000 */  mfc1    $a2, $f0                   
/* 01A98 80AFFD48 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01A9C 80AFFD4C 0C00BCB3 */  jal     func_8002F2CC              
/* 01AA0 80AFFD50 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01AA4 80AFFD54 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFFD58:
/* 01AA8 80AFFD58 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01AAC 80AFFD5C 03E00008 */  jr      $ra                        
/* 01AB0 80AFFD60 00000000 */  nop


