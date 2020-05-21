glabel EnKakasi3_Destroy
/* 00000 80A90D20 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 80A90D24 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00008 80A90D28 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0000C 80A90D2C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00010 80A90D30 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 00014 80A90D34 24C501BC */  addiu   $a1, $a2, 0x01BC           ## $a1 = 000001BC
/* 00018 80A90D38 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0001C 80A90D3C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00020 80A90D40 03E00008 */  jr      $ra                        
/* 00024 80A90D44 00000000 */  nop
