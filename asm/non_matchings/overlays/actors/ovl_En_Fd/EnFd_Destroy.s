glabel EnFd_Destroy
/* 00C28 80A0C2E8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C2C 80A0C2EC 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00C30 80A0C2F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C34 80A0C2F4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00C38 80A0C2F8 0C016F32 */  jal     func_8005BCC8              
/* 00C3C 80A0C2FC 24C50194 */  addiu   $a1, $a2, 0x0194           ## $a1 = 00000194
/* 00C40 80A0C300 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C44 80A0C304 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C48 80A0C308 03E00008 */  jr      $ra                        
/* 00C4C 80A0C30C 00000000 */  nop
