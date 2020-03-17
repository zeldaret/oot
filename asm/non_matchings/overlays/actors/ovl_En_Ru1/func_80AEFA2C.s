glabel func_80AEFA2C
/* 04E1C 80AEFA2C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 04E20 80AEFA30 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 04E24 80AEFA34 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 04E28 80AEFA38 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04E2C 80AEFA3C 0C2BB60F */  jal     func_80AED83C              
/* 04E30 80AEFA40 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 04E34 80AEFA44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04E38 80AEFA48 0C2BACD9 */  jal     func_80AEB364              
/* 04E3C 80AEFA4C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 04E40 80AEFA50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04E44 80AEFA54 0C2BABB3 */  jal     func_80AEAECC              
/* 04E48 80AEFA58 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 04E4C 80AEFA5C 0C2BACC8 */  jal     func_80AEB320              
/* 04E50 80AEFA60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04E54 80AEFA64 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 04E58 80AEFA68 0C2BBD38 */  jal     func_80AEF4E0              
/* 04E5C 80AEFA6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04E60 80AEFA70 0C2BBD6E */  jal     func_80AEF5B8              
/* 04E64 80AEFA74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04E68 80AEFA78 0C2BBD03 */  jal     func_80AEF40C              
/* 04E6C 80AEFA7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04E70 80AEFA80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04E74 80AEFA84 0C2BBDCA */  jal     func_80AEF728              
/* 04E78 80AEFA88 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04E7C 80AEFA8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04E80 80AEFA90 0C2BAC88 */  jal     func_80AEB220              
/* 04E84 80AEFA94 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 04E88 80AEFA98 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 04E8C 80AEFA9C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 04E90 80AEFAA0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 04E94 80AEFAA4 03E00008 */  jr      $ra                        
/* 04E98 80AEFAA8 00000000 */  nop


