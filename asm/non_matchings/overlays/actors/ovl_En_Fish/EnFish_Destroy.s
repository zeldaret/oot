glabel EnFish_Destroy
/* 00328 80A155A8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0032C 80A155AC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00330 80A155B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00334 80A155B4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00338 80A155B8 0C016F32 */  jal     Collider_DestroyJntSph              
/* 0033C 80A155BC 24E5014C */  addiu   $a1, $a3, 0x014C           ## $a1 = 0000014C
/* 00340 80A155C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00344 80A155C4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00348 80A155C8 03E00008 */  jr      $ra                        
/* 0034C 80A155CC 00000000 */  nop
