glabel func_80AECC84
/* 02074 80AECC84 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02078 80AECC88 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0207C 80AECC8C 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 02080 80AECC90 55C00004 */  bnel    $t6, $zero, .L80AECCA4     
/* 02084 80AECC94 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02088 80AECC98 0C00B55C */  jal     Actor_Kill
              
/* 0208C 80AECC9C 00000000 */  nop
/* 02090 80AECCA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AECCA4:
/* 02094 80AECCA4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02098 80AECCA8 03E00008 */  jr      $ra                        
/* 0209C 80AECCAC 00000000 */  nop
