glabel EnKz_Destroy
/* 00B48 80A9D098 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B4C 80A9D09C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00B50 80A9D0A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B54 80A9D0A4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00B58 80A9D0A8 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00B5C 80A9D0AC 24C50194 */  addiu   $a1, $a2, 0x0194           ## $a1 = 00000194
/* 00B60 80A9D0B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B64 80A9D0B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B68 80A9D0B8 03E00008 */  jr      $ra                        
/* 00B6C 80A9D0BC 00000000 */  nop


