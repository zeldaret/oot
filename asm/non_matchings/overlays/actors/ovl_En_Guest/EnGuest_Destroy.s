glabel EnGuest_Destroy
/* 000B4 80A502D4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000B8 80A502D8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 000BC 80A502DC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000C0 80A502E0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000C4 80A502E4 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 000C8 80A502E8 24C50254 */  addiu   $a1, $a2, 0x0254           ## $a1 = 00000254
/* 000CC 80A502EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000D0 80A502F0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000D4 80A502F4 03E00008 */  jr      $ra                        
/* 000D8 80A502F8 00000000 */  nop
