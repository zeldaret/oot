glabel EnTk_Destroy
/* 012DC 80B1CBDC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 012E0 80B1CBE0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 012E4 80B1CBE4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 012E8 80B1CBE8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 012EC 80B1CBEC 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 012F0 80B1CBF0 24C50194 */  addiu   $a1, $a2, 0x0194           ## $a1 = 00000194
/* 012F4 80B1CBF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 012F8 80B1CBF8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 012FC 80B1CBFC 03E00008 */  jr      $ra                        
/* 01300 80B1CC00 00000000 */  nop


