glabel func_8098F734
/* 012D4 8098F734 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 012D8 8098F738 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 012DC 8098F73C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 012E0 8098F740 0C263972 */  jal     func_8098E5C8              
/* 012E4 8098F744 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 012E8 8098F748 0C263984 */  jal     func_8098E610              
/* 012EC 8098F74C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012F0 8098F750 0C263920 */  jal     func_8098E480              
/* 012F4 8098F754 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012F8 8098F758 0C263D20 */  jal     func_8098F480              
/* 012FC 8098F75C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01300 8098F760 0C263D51 */  jal     func_8098F544              
/* 01304 8098F764 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01308 8098F768 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0130C 8098F76C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01310 8098F770 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01314 8098F774 03E00008 */  jr      $ra                        
/* 01318 8098F778 00000000 */  nop
