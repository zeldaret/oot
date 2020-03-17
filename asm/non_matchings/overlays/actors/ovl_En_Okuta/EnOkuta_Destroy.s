glabel EnOkuta_Destroy
/* 00208 80AC0868 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0020C 80AC086C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00210 80AC0870 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00214 80AC0874 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00218 80AC0878 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 0021C 80AC087C 24C50370 */  addiu   $a1, $a2, 0x0370           ## $a1 = 00000370
/* 00220 80AC0880 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00224 80AC0884 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00228 80AC0888 03E00008 */  jr      $ra                        
/* 0022C 80AC088C 00000000 */  nop


