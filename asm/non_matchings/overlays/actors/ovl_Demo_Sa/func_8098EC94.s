glabel func_8098EC94
/* 00834 8098EC94 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00838 8098EC98 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0083C 8098EC9C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00840 8098ECA0 0C263972 */  jal     func_8098E5C8              
/* 00844 8098ECA4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00848 8098ECA8 0C263984 */  jal     func_8098E610              
/* 0084C 8098ECAC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00850 8098ECB0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00854 8098ECB4 0C263ADB */  jal     func_8098EB6C              
/* 00858 8098ECB8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0085C 8098ECBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00860 8098ECC0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00864 8098ECC4 03E00008 */  jr      $ra                        
/* 00868 8098ECC8 00000000 */  nop
