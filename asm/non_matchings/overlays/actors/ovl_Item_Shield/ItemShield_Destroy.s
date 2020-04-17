glabel ItemShield_Destroy
/* 00180 80B86AA0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00184 80B86AA4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00188 80B86AA8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0018C 80B86AAC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00190 80B86AB0 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00194 80B86AB4 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
/* 00198 80B86AB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0019C 80B86ABC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001A0 80B86AC0 03E00008 */  jr      $ra                        
/* 001A4 80B86AC4 00000000 */  nop
