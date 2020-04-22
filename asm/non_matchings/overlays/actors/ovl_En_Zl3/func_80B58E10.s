glabel func_80B58E10
/* 05A60 80B58E10 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 05A64 80B58E14 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 05A68 80B58E18 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 05A6C 80B58E1C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05A70 80B58E20 0C2D5378 */  jal     func_80B54DE0              
/* 05A74 80B58E24 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 05A78 80B58E28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05A7C 80B58E2C 0C00B56E */  jal     Actor_SetHeight
              
/* 05A80 80B58E30 3C054270 */  lui     $a1, 0x4270                ## $a1 = 42700000
/* 05A84 80B58E34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05A88 80B58E38 0C2D4CFF */  jal     func_80B533FC              
/* 05A8C 80B58E3C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05A90 80B58E40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05A94 80B58E44 0C2D4D9B */  jal     func_80B5366C              
/* 05A98 80B58E48 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05A9C 80B58E4C 0C2D4D33 */  jal     func_80B534CC              
/* 05AA0 80B58E50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05AA4 80B58E54 0C2D4E53 */  jal     func_80B5394C              
/* 05AA8 80B58E58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05AAC 80B58E5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05AB0 80B58E60 0C2D5FC7 */  jal     func_80B57F1C              
/* 05AB4 80B58E64 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05AB8 80B58E68 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 05ABC 80B58E6C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 05AC0 80B58E70 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 05AC4 80B58E74 03E00008 */  jr      $ra                        
/* 05AC8 80B58E78 00000000 */  nop
