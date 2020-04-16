glabel EnBx_Destroy
/* 00204 809D1CE4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00208 809D1CE8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0020C 809D1CEC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00210 809D1CF0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00214 809D1CF4 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 00218 809D1CF8 24C501CC */  addiu   $a1, $a2, 0x01CC           ## $a1 = 000001CC
/* 0021C 809D1CFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00220 809D1D00 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00224 809D1D04 03E00008 */  jr      $ra                        
/* 00228 809D1D08 00000000 */  nop
