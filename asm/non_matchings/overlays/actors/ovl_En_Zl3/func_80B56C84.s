glabel func_80B56C84
/* 038D4 80B56C84 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 038D8 80B56C88 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 038DC 80B56C8C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 038E0 80B56C90 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 038E4 80B56C94 0C2D5378 */  jal     func_80B54DE0              
/* 038E8 80B56C98 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 038EC 80B56C9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 038F0 80B56CA0 0C2D4D9B */  jal     func_80B5366C              
/* 038F4 80B56CA4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 038F8 80B56CA8 0C2D4D33 */  jal     func_80B534CC              
/* 038FC 80B56CAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03900 80B56CB0 0C2D4E53 */  jal     func_80B5394C              
/* 03904 80B56CB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03908 80B56CB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0390C 80B56CBC 0C2D58E3 */  jal     func_80B5638C              
/* 03910 80B56CC0 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 03914 80B56CC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03918 80B56CC8 0C2D592A */  jal     func_80B564A8              
/* 0391C 80B56CCC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03920 80B56CD0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03924 80B56CD4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03928 80B56CD8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0392C 80B56CDC 03E00008 */  jr      $ra                        
/* 03930 80B56CE0 00000000 */  nop


