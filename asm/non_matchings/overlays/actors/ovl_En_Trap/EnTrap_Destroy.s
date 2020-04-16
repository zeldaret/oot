glabel EnTrap_Destroy
/* 003B8 80B24A18 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003BC 80B24A1C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 003C0 80B24A20 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003C4 80B24A24 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 003C8 80B24A28 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 003CC 80B24A2C 24C501A0 */  addiu   $a1, $a2, 0x01A0           ## $a1 = 000001A0
/* 003D0 80B24A30 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003D4 80B24A34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003D8 80B24A38 03E00008 */  jr      $ra                        
/* 003DC 80B24A3C 00000000 */  nop
