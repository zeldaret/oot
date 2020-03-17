glabel EnDog_Destroy
/* 006CC 809FB69C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006D0 809FB6A0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 006D4 809FB6A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006D8 809FB6A8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 006DC 809FB6AC 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 006E0 809FB6B0 24C50194 */  addiu   $a1, $a2, 0x0194           ## $a1 = 00000194
/* 006E4 809FB6B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006E8 809FB6B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006EC 809FB6BC 03E00008 */  jr      $ra                        
/* 006F0 809FB6C0 00000000 */  nop


