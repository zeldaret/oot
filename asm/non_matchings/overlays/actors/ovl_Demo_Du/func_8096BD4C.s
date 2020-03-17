glabel func_8096BD4C
/* 0227C 8096BD4C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02280 8096BD50 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02284 8096BD54 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02288 8096BD58 0C25A716 */  jal     func_80969C58              
/* 0228C 8096BD5C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02290 8096BD60 0C25A70E */  jal     func_80969C38              
/* 02294 8096BD64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02298 8096BD68 0C25A6BC */  jal     func_80969AF0              
/* 0229C 8096BD6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 022A0 8096BD70 0C25AEA6 */  jal     func_8096BA98              
/* 022A4 8096BD74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 022A8 8096BD78 0C25AED7 */  jal     func_8096BB5C              
/* 022AC 8096BD7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 022B0 8096BD80 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 022B4 8096BD84 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 022B8 8096BD88 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 022BC 8096BD8C 03E00008 */  jr      $ra                        
/* 022C0 8096BD90 00000000 */  nop


