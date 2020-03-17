glabel EnSkjneedle_Destroy
/* 00094 80B01F44 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00098 80B01F48 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0009C 80B01F4C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000A0 80B01F50 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000A4 80B01F54 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 000A8 80B01F58 24C50194 */  addiu   $a1, $a2, 0x0194           ## $a1 = 00000194
/* 000AC 80B01F5C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000B0 80B01F60 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000B4 80B01F64 03E00008 */  jr      $ra                        
/* 000B8 80B01F68 00000000 */  nop


