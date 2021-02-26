glabel EnMk_Destroy
/* 00118 80AACA18 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0011C 80AACA1C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00120 80AACA20 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00124 80AACA24 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00128 80AACA28 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 0012C 80AACA2C 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
/* 00130 80AACA30 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00134 80AACA34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00138 80AACA38 03E00008 */  jr      $ra                        
/* 0013C 80AACA3C 00000000 */  nop
