glabel func_8096DF2C
/* 00A7C 8096DF2C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A80 8096DF30 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A84 8096DF34 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00A88 8096DF38 0C25B54B */  jal     func_8096D52C              
/* 00A8C 8096DF3C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00A90 8096DF40 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00A94 8096DF44 0C25B565 */  jal     func_8096D594              
/* 00A98 8096DF48 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00A9C 8096DF4C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00AA0 8096DF50 0C25B553 */  jal     func_8096D54C              
/* 00AA4 8096DF54 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00AA8 8096DF58 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AAC 8096DF5C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00AB0 8096DF60 03E00008 */  jr      $ra                        
/* 00AB4 8096DF64 00000000 */  nop
