glabel func_80970058
/* 02BA8 80970058 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02BAC 8097005C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02BB0 80970060 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02BB4 80970064 0C25B54B */  jal     func_8096D52C              
/* 02BB8 80970068 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02BBC 8097006C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02BC0 80970070 0C25B565 */  jal     func_8096D594              
/* 02BC4 80970074 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02BC8 80970078 0C25B5A3 */  jal     func_8096D68C              
/* 02BCC 8097007C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02BD0 80970080 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02BD4 80970084 0C25B553 */  jal     func_8096D54C              
/* 02BD8 80970088 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02BDC 8097008C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02BE0 80970090 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02BE4 80970094 03E00008 */  jr      $ra                        
/* 02BE8 80970098 00000000 */  nop
