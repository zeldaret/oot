glabel EnMm_Destroy
/* 002D8 80AADA48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002DC 80AADA4C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 002E0 80AADA50 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002E4 80AADA54 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002E8 80AADA58 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 002EC 80AADA5C 24C50194 */  addiu   $a1, $a2, 0x0194           ## $a1 = 00000194
/* 002F0 80AADA60 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002F4 80AADA64 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002F8 80AADA68 03E00008 */  jr      $ra                        
/* 002FC 80AADA6C 00000000 */  nop
