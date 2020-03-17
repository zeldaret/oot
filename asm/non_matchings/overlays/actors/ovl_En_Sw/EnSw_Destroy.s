glabel EnSw_Destroy
/* 00C18 80B0C9C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C1C 80B0C9CC 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00C20 80B0C9D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C24 80B0C9D4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00C28 80B0C9D8 0C016F32 */  jal     func_8005BCC8              
/* 00C2C 80B0C9DC 24C50194 */  addiu   $a1, $a2, 0x0194           ## $a1 = 00000194
/* 00C30 80B0C9E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C34 80B0C9E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C38 80B0C9E8 03E00008 */  jr      $ra                        
/* 00C3C 80B0C9EC 00000000 */  nop


