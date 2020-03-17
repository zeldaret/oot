glabel func_80B56C24
/* 03874 80B56C24 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03878 80B56C28 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0387C 80B56C2C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03880 80B56C30 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03884 80B56C34 0C2D5378 */  jal     func_80B54DE0              
/* 03888 80B56C38 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0388C 80B56C3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03890 80B56C40 0C2D4CFF */  jal     func_80B533FC              
/* 03894 80B56C44 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03898 80B56C48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0389C 80B56C4C 0C2D4D9B */  jal     func_80B5366C              
/* 038A0 80B56C50 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 038A4 80B56C54 0C2D4D33 */  jal     func_80B534CC              
/* 038A8 80B56C58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 038AC 80B56C5C 0C2D4E53 */  jal     func_80B5394C              
/* 038B0 80B56C60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 038B4 80B56C64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 038B8 80B56C68 0C2D58BD */  jal     func_80B562F4              
/* 038BC 80B56C6C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 038C0 80B56C70 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 038C4 80B56C74 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 038C8 80B56C78 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 038CC 80B56C7C 03E00008 */  jr      $ra                        
/* 038D0 80B56C80 00000000 */  nop


