glabel EnSkj_Destroy
/* 00614 80AFE8C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00618 80AFE8C8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0061C 80AFE8CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00620 80AFE8D0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00624 80AFE8D4 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00628 80AFE8D8 24C50278 */  addiu   $a1, $a2, 0x0278           ## $a1 = 00000278
/* 0062C 80AFE8DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00630 80AFE8E0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00634 80AFE8E4 03E00008 */  jr      $ra                        
/* 00638 80AFE8E8 00000000 */  nop
