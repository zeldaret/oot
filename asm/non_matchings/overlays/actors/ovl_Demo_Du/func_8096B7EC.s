glabel func_8096B7EC
/* 01D1C 8096B7EC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01D20 8096B7F0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01D24 8096B7F4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01D28 8096B7F8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01D2C 8096B7FC 0C25A716 */  jal     func_80969C58              
/* 01D30 8096B800 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01D34 8096B804 0C25A70E */  jal     func_80969C38              
/* 01D38 8096B808 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D3C 8096B80C 0C25A6BC */  jal     func_80969AF0              
/* 01D40 8096B810 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D44 8096B814 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D48 8096B818 0C25ADB4 */  jal     func_8096B6D0              
/* 01D4C 8096B81C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01D50 8096B820 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D54 8096B824 0C25A6F1 */  jal     func_80969BC4              
/* 01D58 8096B828 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01D5C 8096B82C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01D60 8096B830 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01D64 8096B834 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01D68 8096B838 03E00008 */  jr      $ra                        
/* 01D6C 8096B83C 00000000 */  nop


