glabel EnBa_Destroy
/* 001F0 809B6540 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001F4 809B6544 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 001F8 809B6548 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001FC 809B654C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00200 809B6550 0C016F32 */  jal     Collider_DestroyJntSph              
/* 00204 809B6554 24C50320 */  addiu   $a1, $a2, 0x0320           ## $a1 = 00000320
/* 00208 809B6558 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0020C 809B655C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00210 809B6560 03E00008 */  jr      $ra                        
/* 00214 809B6564 00000000 */  nop
