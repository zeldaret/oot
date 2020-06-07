glabel func_80B3E6D0
/* 024F0 80B3E6D0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 024F4 80B3E6D4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 024F8 80B3E6D8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 024FC 80B3E6DC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02500 80B3E6E0 0C2CF5C4 */  jal     func_80B3D710              
/* 02504 80B3E6E4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02508 80B3E6E8 0C2CF12C */  jal     func_80B3C4B0              
/* 0250C 80B3E6EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02510 80B3E6F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02514 80B3E6F4 0C2CF11A */  jal     func_80B3C468              
/* 02518 80B3E6F8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0251C 80B3E6FC 0C2CF0C7 */  jal     func_80B3C31C              
/* 02520 80B3E700 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02524 80B3E704 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02528 80B3E708 0C2CF3A1 */  jal     func_80B3CE84              
/* 0252C 80B3E70C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02530 80B3E710 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02534 80B3E714 0C2CF4FC */  jal     func_80B3D3F0              
/* 02538 80B3E718 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0253C 80B3E71C 0C2CF805 */  jal     func_80B3E014              
/* 02540 80B3E720 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02544 80B3E724 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02548 80B3E728 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0254C 80B3E72C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02550 80B3E730 03E00008 */  jr      $ra                        
/* 02554 80B3E734 00000000 */  nop
