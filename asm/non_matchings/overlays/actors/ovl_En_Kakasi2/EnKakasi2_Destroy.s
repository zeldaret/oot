glabel EnKakasi2_Destroy
/* 0022C 80A9023C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00230 80A90240 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00234 80A90244 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00238 80A90248 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0023C 80A9024C 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00240 80A90250 24C501AC */  addiu   $a1, $a2, 0x01AC           ## $a1 = 000001AC
/* 00244 80A90254 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00248 80A90258 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0024C 80A9025C 03E00008 */  jr      $ra                        
/* 00250 80A90260 00000000 */  nop
