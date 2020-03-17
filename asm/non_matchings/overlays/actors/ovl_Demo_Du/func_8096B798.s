glabel func_8096B798
/* 01CC8 8096B798 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01CCC 8096B79C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01CD0 8096B7A0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01CD4 8096B7A4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01CD8 8096B7A8 0C25A716 */  jal     func_80969C58              
/* 01CDC 8096B7AC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01CE0 8096B7B0 0C25A70E */  jal     func_80969C38              
/* 01CE4 8096B7B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CE8 8096B7B8 0C25A6BC */  jal     func_80969AF0              
/* 01CEC 8096B7BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CF0 8096B7C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CF4 8096B7C4 0C25AD5F */  jal     func_8096B57C              
/* 01CF8 8096B7C8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01CFC 8096B7CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D00 8096B7D0 0C25A6F1 */  jal     func_80969BC4              
/* 01D04 8096B7D4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01D08 8096B7D8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01D0C 8096B7DC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01D10 8096B7E0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01D14 8096B7E4 03E00008 */  jr      $ra                        
/* 01D18 8096B7E8 00000000 */  nop


