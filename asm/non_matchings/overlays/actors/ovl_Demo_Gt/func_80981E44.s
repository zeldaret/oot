glabel func_80981E44
/* 047D4 80981E44 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 047D8 80981E48 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 047DC 80981E4C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 047E0 80981E50 0C260748 */  jal     func_80981D20              
/* 047E4 80981E54 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 047E8 80981E58 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 047EC 80981E5C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 047F0 80981E60 0C25FB59 */  jal     func_8097ED64              
/* 047F4 80981E64 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 047F8 80981E68 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 047FC 80981E6C 0C26073B */  jal     func_80981CEC              
/* 04800 80981E70 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 04804 80981E74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04808 80981E78 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0480C 80981E7C 03E00008 */  jr      $ra                        
/* 04810 80981E80 00000000 */  nop


