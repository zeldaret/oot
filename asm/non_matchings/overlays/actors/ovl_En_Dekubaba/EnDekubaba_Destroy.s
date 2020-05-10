glabel EnDekubaba_Destroy
/* 00240 809E5A10 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00244 809E5A14 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00248 809E5A18 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0024C 809E5A1C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00250 809E5A20 0C016F32 */  jal     Collider_DestroyJntSph              
/* 00254 809E5A24 24C50238 */  addiu   $a1, $a2, 0x0238           ## $a1 = 00000238
/* 00258 809E5A28 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0025C 809E5A2C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00260 809E5A30 03E00008 */  jr      $ra                        
/* 00264 809E5A34 00000000 */  nop
