glabel EnDodojr_Destroy
/* 000E8 809F64A8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000EC 809F64AC 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 000F0 809F64B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000F4 809F64B4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000F8 809F64B8 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 000FC 809F64BC 24C50194 */  addiu   $a1, $a2, 0x0194           ## $a1 = 00000194
/* 00100 809F64C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00104 809F64C4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00108 809F64C8 03E00008 */  jr      $ra                        
/* 0010C 809F64CC 00000000 */  nop
