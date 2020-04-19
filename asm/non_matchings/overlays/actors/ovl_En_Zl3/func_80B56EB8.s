glabel func_80B56EB8
/* 03B08 80B56EB8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03B0C 80B56EBC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03B10 80B56EC0 0C2D536D */  jal     func_80B54DB4              
/* 03B14 80B56EC4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03B18 80B56EC8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 03B1C 80B56ECC 0C00B2DD */  jal     Flags_SetSwitch
              
/* 03B20 80B56ED0 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 03B24 80B56ED4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03B28 80B56ED8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03B2C 80B56EDC 03E00008 */  jr      $ra                        
/* 03B30 80B56EE0 00000000 */  nop
