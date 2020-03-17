glabel EnNb_Destroy
/* 00204 80AB0F94 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00208 80AB0F98 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0020C 80AB0F9C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00210 80AB0FA0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00214 80AB0FA4 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00218 80AB0FA8 24C50294 */  addiu   $a1, $a2, 0x0294           ## $a1 = 00000294
/* 0021C 80AB0FAC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00220 80AB0FB0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00224 80AB0FB4 03E00008 */  jr      $ra                        
/* 00228 80AB0FB8 00000000 */  nop


