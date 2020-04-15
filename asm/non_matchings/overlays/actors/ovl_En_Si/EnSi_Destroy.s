glabel EnSi_Destroy
/* 00090 80AFB720 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00094 80AFB724 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00098 80AFB728 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0009C 80AFB72C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000A0 80AFB730 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 000A4 80AFB734 24C50150 */  addiu   $a1, $a2, 0x0150           ## $a1 = 00000150
/* 000A8 80AFB738 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000AC 80AFB73C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000B0 80AFB740 03E00008 */  jr      $ra                        
/* 000B4 80AFB744 00000000 */  nop
