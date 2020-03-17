glabel EnJs_Destroy
/* 0012C 80A88F3C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00130 80A88F40 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00134 80A88F44 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00138 80A88F48 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0013C 80A88F4C 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00140 80A88F50 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
/* 00144 80A88F54 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00148 80A88F58 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0014C 80A88F5C 03E00008 */  jr      $ra                        
/* 00150 80A88F60 00000000 */  nop


