glabel EnToryo_Destroy
/* 00240 80B203B0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00244 80B203B4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00248 80B203B8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0024C 80B203BC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00250 80B203C0 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00254 80B203C4 24C50194 */  addiu   $a1, $a2, 0x0194           ## $a1 = 00000194
/* 00258 80B203C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0025C 80B203CC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00260 80B203D0 03E00008 */  jr      $ra                        
/* 00264 80B203D4 00000000 */  nop


