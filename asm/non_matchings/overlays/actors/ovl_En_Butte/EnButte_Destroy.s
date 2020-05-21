glabel EnButte_Destroy
/* 004D4 809CD544 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004D8 809CD548 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 004DC 809CD54C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004E0 809CD550 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 004E4 809CD554 0C016F32 */  jal     Collider_DestroyJntSph              
/* 004E8 809CD558 24E5014C */  addiu   $a1, $a3, 0x014C           ## $a1 = 0000014C
/* 004EC 809CD55C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004F0 809CD560 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004F4 809CD564 03E00008 */  jr      $ra                        
/* 004F8 809CD568 00000000 */  nop
