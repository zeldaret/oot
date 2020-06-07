glabel func_8098F118
/* 00CB8 8098F118 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00CBC 8098F11C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00CC0 8098F120 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00CC4 8098F124 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00CC8 8098F128 0C263972 */  jal     func_8098E5C8              
/* 00CCC 8098F12C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00CD0 8098F130 0C263984 */  jal     func_8098E610              
/* 00CD4 8098F134 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CD8 8098F138 0C263920 */  jal     func_8098E480              
/* 00CDC 8098F13C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CE0 8098F140 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CE4 8098F144 0C263BBF */  jal     func_8098EEFC              
/* 00CE8 8098F148 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00CEC 8098F14C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CF0 8098F150 0C263955 */  jal     func_8098E554              
/* 00CF4 8098F154 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00CF8 8098F158 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00CFC 8098F15C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00D00 8098F160 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00D04 8098F164 03E00008 */  jr      $ra                        
/* 00D08 8098F168 00000000 */  nop
