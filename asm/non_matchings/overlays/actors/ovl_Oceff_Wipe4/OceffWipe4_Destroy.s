glabel OceffWipe4_Destroy
/* 00070 80BACC80 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00074 80BACC84 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00078 80BACC88 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0007C 80BACC8C 0C021DB2 */  jal     func_800876C8              
/* 00080 80BACC90 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00084 80BACC94 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00088 80BACC98 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0008C 80BACC9C 03E00008 */  jr      $ra                        
/* 00090 80BACCA0 00000000 */  nop
