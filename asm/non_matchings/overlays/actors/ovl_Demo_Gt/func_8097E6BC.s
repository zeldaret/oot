glabel func_8097E6BC
/* 0104C 8097E6BC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01050 8097E6C0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01054 8097E6C4 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 01058 8097E6C8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0105C 8097E6CC 0C25F9A7 */  jal     func_8097E69C              
/* 01060 8097E6D0 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 01064 8097E6D4 14400006 */  bne     $v0, $zero, .L8097E6F0     
/* 01068 8097E6D8 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 0106C 8097E6DC 8FAF002C */  lw      $t7, 0x002C($sp)           
/* 01070 8097E6E0 8FAE0028 */  lw      $t6, 0x0028($sp)           
/* 01074 8097E6E4 000FC080 */  sll     $t8, $t7,  2               
/* 01078 8097E6E8 01D8C821 */  addu    $t9, $t6, $t8              
/* 0107C 8097E6EC 8F231D8C */  lw      $v1, 0x1D8C($t9)           ## 00001D8C
.L8097E6F0:
/* 01080 8097E6F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01084 8097E6F4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01088 8097E6F8 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 0108C 8097E6FC 03E00008 */  jr      $ra                        
/* 01090 8097E700 00000000 */  nop


