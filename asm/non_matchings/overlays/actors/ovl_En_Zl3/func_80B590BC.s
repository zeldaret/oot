glabel func_80B590BC
/* 05D0C 80B590BC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 05D10 80B590C0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 05D14 80B590C4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 05D18 80B590C8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05D1C 80B590CC 0C2D5378 */  jal     func_80B54DE0              
/* 05D20 80B590D0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 05D24 80B590D4 0C2D4DFA */  jal     func_80B537E8              
/* 05D28 80B590D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05D2C 80B590DC 0C2D4DB1 */  jal     func_80B536C4              
/* 05D30 80B590E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05D34 80B590E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05D38 80B590E8 0C2D4CFF */  jal     func_80B533FC              
/* 05D3C 80B590EC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05D40 80B590F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05D44 80B590F4 0C2D4D9B */  jal     func_80B5366C              
/* 05D48 80B590F8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05D4C 80B590FC 0C2D4D33 */  jal     func_80B534CC              
/* 05D50 80B59100 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05D54 80B59104 0C2D4E53 */  jal     func_80B5394C              
/* 05D58 80B59108 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05D5C 80B5910C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05D60 80B59110 0C2D6189 */  jal     func_80B58624              
/* 05D64 80B59114 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05D68 80B59118 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 05D6C 80B5911C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 05D70 80B59120 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 05D74 80B59124 03E00008 */  jr      $ra                        
/* 05D78 80B59128 00000000 */  nop


