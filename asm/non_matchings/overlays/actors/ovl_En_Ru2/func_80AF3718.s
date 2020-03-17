glabel func_80AF3718
/* 011C8 80AF3718 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 011CC 80AF371C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 011D0 80AF3720 0C2BC9A4 */  jal     func_80AF2690              
/* 011D4 80AF3724 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 011D8 80AF3728 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 011DC 80AF372C 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 011E0 80AF3730 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 011E4 80AF3734 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 011E8 80AF3738 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 011EC 80AF373C 03E00008 */  jr      $ra                        
/* 011F0 80AF3740 00000000 */  nop


