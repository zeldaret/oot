glabel EnKo_Destroy
/* 02270 80A99020 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02274 80A99024 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 02278 80A99028 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0227C 80A9902C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 02280 80A99030 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 02284 80A99034 24C50198 */  addiu   $a1, $a2, 0x0198           ## $a1 = 00000198
/* 02288 80A99038 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0228C 80A9903C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02290 80A99040 03E00008 */  jr      $ra                        
/* 02294 80A99044 00000000 */  nop
