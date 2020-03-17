glabel func_80B41020
/* 04E40 80B41020 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04E44 80B41024 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04E48 80B41028 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 04E4C 80B4102C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 04E50 80B41030 0C2CF162 */  jal     func_80B3C588              
/* 04E54 80B41034 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 04E58 80B41038 0C2CF12C */  jal     func_80B3C4B0              
/* 04E5C 80B4103C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 04E60 80B41040 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 04E64 80B41044 0C2CF11A */  jal     func_80B3C468              
/* 04E68 80B41048 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 04E6C 80B4104C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 04E70 80B41050 0C2D03AB */  jal     func_80B40EAC              
/* 04E74 80B41054 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 04E78 80B41058 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04E7C 80B4105C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04E80 80B41060 03E00008 */  jr      $ra                        
/* 04E84 80B41064 00000000 */  nop


