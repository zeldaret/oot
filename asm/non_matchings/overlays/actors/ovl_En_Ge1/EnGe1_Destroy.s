glabel EnGe1_Destroy
/* 002D8 80A30C48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002DC 80A30C4C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 002E0 80A30C50 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002E4 80A30C54 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002E8 80A30C58 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 002EC 80A30C5C 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
/* 002F0 80A30C60 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002F4 80A30C64 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002F8 80A30C68 03E00008 */  jr      $ra                        
/* 002FC 80A30C6C 00000000 */  nop
