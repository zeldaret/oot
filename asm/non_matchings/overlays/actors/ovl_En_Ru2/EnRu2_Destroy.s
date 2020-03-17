glabel EnRu2_Destroy
/* 00090 80AF25E0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00094 80AF25E4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00098 80AF25E8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0009C 80AF25EC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000A0 80AF25F0 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 000A4 80AF25F4 24C502C8 */  addiu   $a1, $a2, 0x02C8           ## $a1 = 000002C8
/* 000A8 80AF25F8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000AC 80AF25FC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000B0 80AF2600 03E00008 */  jr      $ra                        
/* 000B4 80AF2604 00000000 */  nop


