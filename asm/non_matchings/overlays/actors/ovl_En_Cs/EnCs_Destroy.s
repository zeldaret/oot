glabel EnCs_Destroy
/* 002B4 809E1B64 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002B8 809E1B68 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 002BC 809E1B6C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002C0 809E1B70 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002C4 809E1B74 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 002C8 809E1B78 24C50194 */  addiu   $a1, $a2, 0x0194           ## $a1 = 00000194
/* 002CC 809E1B7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002D0 809E1B80 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002D4 809E1B84 03E00008 */  jr      $ra                        
/* 002D8 809E1B88 00000000 */  nop


