glabel func_80B3E804
/* 02624 80B3E804 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02628 80B3E808 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0262C 80B3E80C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02630 80B3E810 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02634 80B3E814 0C2CF12C */  jal     func_80B3C4B0              
/* 02638 80B3E818 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0263C 80B3E81C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02640 80B3E820 0C2CF11A */  jal     func_80B3C468              
/* 02644 80B3E824 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02648 80B3E828 0C2CF0C7 */  jal     func_80B3C31C              
/* 0264C 80B3E82C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02650 80B3E830 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02654 80B3E834 0C2CF4FC */  jal     func_80B3D3F0              
/* 02658 80B3E838 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0265C 80B3E83C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02660 80B3E840 0C2CF86E */  jal     func_80B3E1B8              
/* 02664 80B3E844 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02668 80B3E848 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0266C 80B3E84C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02670 80B3E850 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02674 80B3E854 03E00008 */  jr      $ra                        
/* 02678 80B3E858 00000000 */  nop
