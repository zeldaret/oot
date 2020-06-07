glabel func_80AB3BC8
/* 02E38 80AB3BC8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02E3C 80AB3BCC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02E40 80AB3BD0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02E44 80AB3BD4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02E48 80AB3BD8 0C2AC4A1 */  jal     func_80AB1284              
/* 02E4C 80AB3BDC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02E50 80AB3BE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02E54 80AB3BE4 0C2AC3D4 */  jal     func_80AB0F50              
/* 02E58 80AB3BE8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02E5C 80AB3BEC 0C2AC4B3 */  jal     func_80AB12CC              
/* 02E60 80AB3BF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02E64 80AB3BF4 0C2AC459 */  jal     func_80AB1164              
/* 02E68 80AB3BF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02E6C 80AB3BFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02E70 80AB3C00 0C2ACDE3 */  jal     func_80AB378C              
/* 02E74 80AB3C04 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02E78 80AB3C08 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02E7C 80AB3C0C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02E80 80AB3C10 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02E84 80AB3C14 03E00008 */  jr      $ra                        
/* 02E88 80AB3C18 00000000 */  nop
