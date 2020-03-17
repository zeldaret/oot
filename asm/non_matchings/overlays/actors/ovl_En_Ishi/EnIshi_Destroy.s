glabel EnIshi_Destroy
/* 00C10 80A7F070 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C14 80A7F074 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00C18 80A7F078 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C1C 80A7F07C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00C20 80A7F080 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00C24 80A7F084 24E50150 */  addiu   $a1, $a3, 0x0150           ## $a1 = 00000150
/* 00C28 80A7F088 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C2C 80A7F08C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C30 80A7F090 03E00008 */  jr      $ra                        
/* 00C34 80A7F094 00000000 */  nop


