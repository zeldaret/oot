glabel EnZl3_Destroy
/* 00090 80B53440 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00094 80B53444 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00098 80B53448 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0009C 80B5344C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000A0 80B53450 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 000A4 80B53454 24C50378 */  addiu   $a1, $a2, 0x0378           ## $a1 = 00000378
/* 000A8 80B53458 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000AC 80B5345C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000B0 80B53460 03E00008 */  jr      $ra                        
/* 000B4 80B53464 00000000 */  nop
