glabel EnFw_Destroy
/* 006A8 80A1EC48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006AC 80A1EC4C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 006B0 80A1EC50 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006B4 80A1EC54 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 006B8 80A1EC58 0C016F32 */  jal     func_8005BCC8              
/* 006BC 80A1EC5C 24C50194 */  addiu   $a1, $a2, 0x0194           ## $a1 = 00000194
/* 006C0 80A1EC60 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006C4 80A1EC64 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006C8 80A1EC68 03E00008 */  jr      $ra                        
/* 006CC 80A1EC6C 00000000 */  nop
