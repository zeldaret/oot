glabel func_80AEAF58
/* 00348 80AEAF58 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0034C 80AEAF5C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00350 80AEAF60 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00354 80AEAF64 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00358 80AEAF68 0C2BABCE */  jal     func_80AEAF38              
/* 0035C 80AEAF6C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00360 80AEAF70 14400006 */  bne     $v0, $zero, .L80AEAF8C     
/* 00364 80AEAF74 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 00368 80AEAF78 8FAF002C */  lw      $t7, 0x002C($sp)           
/* 0036C 80AEAF7C 8FAE0028 */  lw      $t6, 0x0028($sp)           
/* 00370 80AEAF80 000FC080 */  sll     $t8, $t7,  2               
/* 00374 80AEAF84 01D8C821 */  addu    $t9, $t6, $t8              
/* 00378 80AEAF88 8F231D8C */  lw      $v1, 0x1D8C($t9)           ## 00001D8C
.L80AEAF8C:
/* 0037C 80AEAF8C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00380 80AEAF90 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00384 80AEAF94 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 00388 80AEAF98 03E00008 */  jr      $ra                        
/* 0038C 80AEAF9C 00000000 */  nop
