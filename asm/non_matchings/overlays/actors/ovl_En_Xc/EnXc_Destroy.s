glabel EnXc_Destroy
/* 00090 80B3C270 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00094 80B3C274 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00098 80B3C278 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0009C 80B3C27C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000A0 80B3C280 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 000A4 80B3C284 24C502C0 */  addiu   $a1, $a2, 0x02C0           ## $a1 = 000002C0
/* 000A8 80B3C288 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000AC 80B3C28C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000B0 80B3C290 03E00008 */  jr      $ra                        
/* 000B4 80B3C294 00000000 */  nop
