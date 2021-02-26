glabel EnGe2_Destroy
/* 002D4 80A32EA4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002D8 80A32EA8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 002DC 80A32EAC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002E0 80A32EB0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002E4 80A32EB4 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 002E8 80A32EB8 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
/* 002EC 80A32EBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002F0 80A32EC0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002F4 80A32EC4 03E00008 */  jr      $ra                        
/* 002F8 80A32EC8 00000000 */  nop
