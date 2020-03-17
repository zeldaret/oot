glabel func_80AF3C04
/* 016B4 80AF3C04 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 016B8 80AF3C08 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 016BC 80AF3C0C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 016C0 80AF3C10 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 016C4 80AF3C14 0C2BC9D1 */  jal     func_80AF2744              
/* 016C8 80AF3C18 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 016CC 80AF3C1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016D0 80AF3C20 0C2BC967 */  jal     func_80AF259C              
/* 016D4 80AF3C24 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 016D8 80AF3C28 0C2BC9E3 */  jal     func_80AF278C              
/* 016DC 80AF3C2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016E0 80AF3C30 0C2BC982 */  jal     func_80AF2608              
/* 016E4 80AF3C34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016E8 80AF3C38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016EC 80AF3C3C 0C00B56E */  jal     Actor_SetHeight
              
/* 016F0 80AF3C40 3C054248 */  lui     $a1, 0x4248                ## $a1 = 42480000
/* 016F4 80AF3C44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016F8 80AF3C48 0C2BCE34 */  jal     func_80AF38D0              
/* 016FC 80AF3C4C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01700 80AF3C50 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01704 80AF3C54 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01708 80AF3C58 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0170C 80AF3C5C 03E00008 */  jr      $ra                        
/* 01710 80AF3C60 00000000 */  nop


