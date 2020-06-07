glabel func_80B3ED88
/* 02BA8 80B3ED88 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02BAC 80B3ED8C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02BB0 80B3ED90 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02BB4 80B3ED94 0C2CF12C */  jal     func_80B3C4B0              
/* 02BB8 80B3ED98 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02BBC 80B3ED9C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02BC0 80B3EDA0 0C2CF11A */  jal     func_80B3C468              
/* 02BC4 80B3EDA4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02BC8 80B3EDA8 0C2CF0C7 */  jal     func_80B3C31C              
/* 02BCC 80B3EDAC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02BD0 80B3EDB0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02BD4 80B3EDB4 0C2CFB24 */  jal     func_80B3EC90              
/* 02BD8 80B3EDB8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02BDC 80B3EDBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02BE0 80B3EDC0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02BE4 80B3EDC4 03E00008 */  jr      $ra                        
/* 02BE8 80B3EDC8 00000000 */  nop
