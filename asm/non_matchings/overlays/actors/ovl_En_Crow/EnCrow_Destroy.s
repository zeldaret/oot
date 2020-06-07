glabel EnCrow_Destroy
/* 000EC 809E032C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000F0 809E0330 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 000F4 809E0334 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000F8 809E0338 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000FC 809E033C 0C016F32 */  jal     Collider_DestroyJntSph              
/* 00100 809E0340 24C50238 */  addiu   $a1, $a2, 0x0238           ## $a1 = 00000238
/* 00104 809E0344 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00108 809E0348 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0010C 809E034C 03E00008 */  jr      $ra                        
/* 00110 809E0350 00000000 */  nop
