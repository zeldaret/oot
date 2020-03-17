glabel EnKusa_Destroy
/* 00824 80A9B7C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00828 80A9B7C8 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0082C 80A9B7CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00830 80A9B7D0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00834 80A9B7D4 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00838 80A9B7D8 24E50150 */  addiu   $a1, $a3, 0x0150           ## $a1 = 00000150
/* 0083C 80A9B7DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00840 80A9B7E0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00844 80A9B7E4 03E00008 */  jr      $ra                        
/* 00848 80A9B7E8 00000000 */  nop


