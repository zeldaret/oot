glabel func_8096E034
/* 00B84 8096E034 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B88 8096E038 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B8C 8096E03C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B90 8096E040 0C25B54B */  jal     func_8096D52C              
/* 00B94 8096E044 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00B98 8096E048 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00B9C 8096E04C 0C25B565 */  jal     func_8096D594              
/* 00BA0 8096E050 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00BA4 8096E054 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00BA8 8096E058 0C25B553 */  jal     func_8096D54C              
/* 00BAC 8096E05C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00BB0 8096E060 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BB4 8096E064 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BB8 8096E068 03E00008 */  jr      $ra                        
/* 00BBC 8096E06C 00000000 */  nop


