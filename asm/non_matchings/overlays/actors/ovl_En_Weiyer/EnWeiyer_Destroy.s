glabel EnWeiyer_Destroy
/* 000CC 80B3235C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000D0 80B32360 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 000D4 80B32364 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000D8 80B32368 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000DC 80B3236C 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 000E0 80B32370 24C50284 */  addiu   $a1, $a2, 0x0284           ## $a1 = 00000284
/* 000E4 80B32374 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000E8 80B32378 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000EC 80B3237C 03E00008 */  jr      $ra                        
/* 000F0 80B32380 00000000 */  nop
