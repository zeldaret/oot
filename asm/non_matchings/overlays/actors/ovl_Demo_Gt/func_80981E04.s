glabel func_80981E04
/* 04794 80981E04 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04798 80981E08 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0479C 80981E0C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 047A0 80981E10 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 047A4 80981E14 0C25FA09 */  jal     func_8097E824              
/* 047A8 80981E18 24050007 */  addiu   $a1, $zero, 0x0007         ## $a1 = 00000007
/* 047AC 80981E1C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 047B0 80981E20 0C26073B */  jal     func_80981CEC              
/* 047B4 80981E24 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 047B8 80981E28 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 047BC 80981E2C 0C260772 */  jal     func_80981DC8              
/* 047C0 80981E30 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 047C4 80981E34 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 047C8 80981E38 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 047CC 80981E3C 03E00008 */  jr      $ra                        
/* 047D0 80981E40 00000000 */  nop


