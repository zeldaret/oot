glabel EnGoroiwa_Destroy
/* 01918 80A4D5B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0191C 80A4D5BC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01920 80A4D5C0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01924 80A4D5C4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01928 80A4D5C8 0C016F32 */  jal     Collider_DestroyJntSph              
/* 0192C 80A4D5CC 24E50150 */  addiu   $a1, $a3, 0x0150           ## $a1 = 00000150
/* 01930 80A4D5D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01934 80A4D5D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01938 80A4D5D8 03E00008 */  jr      $ra                        
/* 0193C 80A4D5DC 00000000 */  nop
