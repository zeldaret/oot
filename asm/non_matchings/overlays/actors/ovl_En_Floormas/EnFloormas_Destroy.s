glabel EnFloormas_Destroy
/* 00210 80A17720 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00214 80A17724 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00218 80A17728 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0021C 80A1772C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00220 80A17730 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00224 80A17734 24C502C8 */  addiu   $a1, $a2, 0x02C8           ## $a1 = 000002C8
/* 00228 80A17738 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0022C 80A1773C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00230 80A17740 03E00008 */  jr      $ra                        
/* 00234 80A17744 00000000 */  nop


